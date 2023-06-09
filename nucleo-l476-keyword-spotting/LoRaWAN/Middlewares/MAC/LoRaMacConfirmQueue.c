/*!
 * \file      LoRaMacConfirmQueue.c
 *
 * \brief     LoRa MAC confirm queue implementation
 *
 * \copyright Revised BSD License, see section \ref LICENSE.
 *
 * \code
 *                ______                              _
 *               / _____)             _              | |
 *              ( (____  _____ ____ _| |_ _____  ____| |__
 *               \____ \| ___ |    (_   _) ___ |/ ___)  _ \
 *               _____) ) ____| | | || |_| ____( (___| | | |
 *              (______/|_____)_|_|_| \__)_____)\____)_| |_|
 *              (C)2013 Semtech
 *
 *               ___ _____ _   ___ _  _____ ___  ___  ___ ___
 *              / __|_   _/_\ / __| |/ / __/ _ \| _ \/ __| __|
 *              \__ \ | |/ _ \ (__| ' <| _| (_) |   / (__| _|
 *              |___/ |_/_/ \_\___|_|\_\_| \___/|_|_\\___|___|
 *              embedded.connectivity.solutions===============
 *
 * \endcode
 *
 * \author    Miguel Luis ( Semtech )
 *
 * \author    Gregory Cristian ( Semtech )
 *
 * \author    Daniel Jaeckle ( STACKFORCE )
 */
#include <stdint.h>
#include <stdbool.h>
#include <stddef.h>

#include "timer.h"
#include "utilities.h"
#include "LoRaMac.h"
#include "LoRaMacConfirmQueue.h"


/*
 * LoRaMac Confirm Queue Context NVM structure
 */
typedef struct sLoRaMacConfirmQueueNvmCtx
{
    /*!
    * MlmeConfirm queue data structure
    */
    MlmeConfirmQueue_t MlmeConfirmQueue[LORA_MAC_MLME_CONFIRM_QUEUE_LEN];
    /*!
    * Counts the number of MlmeConfirms to process
    */
    uint8_t MlmeConfirmQueueCnt;
    /*!
    * Variable which holds a common status
    */
    LoRaMacEventInfoStatus_t CommonStatus;
} LoRaMacConfirmQueueNvmCtx_t;

/*
 * LoRaMac Confirm Queue Context structure
 */
typedef struct sLoRaMacConfirmQueueCtx
{
    /*!
    * LoRaMac callback function primitives
    */
    LoRaMacPrimitives_t* Primitives;
    /*!
    * Pointer to the first element of the ring buffer
    */
    MlmeConfirmQueue_t* BufferStart;
    /*!
    * Pointer to the last element of the ring buffer
    */
    MlmeConfirmQueue_t* BufferEnd;
    /*
     * Callback function to notify the upper layer about context change
     */
    LoRaMacConfirmQueueNvmEvent LoRaMacConfirmQueueNvmEvent;
    /*!
    * Non-volatile module context.
    */
    LoRaMacConfirmQueueNvmCtx_t* ConfirmQueueNvmCtx;
} LoRaMacConfirmQueueCtx_t;

/*
 * Non-volatile module context.
 */
static LoRaMacConfirmQueueNvmCtx_t ConfirmQueueNvmCtx;

/*
 * Module context.
 */
static LoRaMacConfirmQueueCtx_t ConfirmQueueCtx;

static MlmeConfirmQueue_t* IncreaseBufferPointer( MlmeConfirmQueue_t* bufferPointer )
{
    if( bufferPointer == &ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueue[LORA_MAC_MLME_CONFIRM_QUEUE_LEN - 1] )
    {
        // Reset to the first element
        bufferPointer = ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueue;
    }
    else
    {
        // Increase
        bufferPointer++;
    }
    return bufferPointer;
}

static MlmeConfirmQueue_t* DecreaseBufferPointer( MlmeConfirmQueue_t* bufferPointer )
{
    if( bufferPointer == ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueue )
    {
        // Reset to the last element
        bufferPointer = &ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueue[LORA_MAC_MLME_CONFIRM_QUEUE_LEN - 1];
    }
    else
    {
        bufferPointer--;
    }
    return bufferPointer;
}

static bool IsListEmpty( uint8_t count )
{
    if( count == 0 )
    {
        return true;
    }
    return false;
}

static bool IsListFull( uint8_t count )
{
    if( count >= LORA_MAC_MLME_CONFIRM_QUEUE_LEN )
    {
        return true;
    }
    return false;
}

static MlmeConfirmQueue_t* GetElement( Mlme_t request, MlmeConfirmQueue_t* bufferStart, MlmeConfirmQueue_t* bufferEnd )
{
    MlmeConfirmQueue_t* element = bufferStart;

    if( IsListEmpty( ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueueCnt ) == true )
    {
        return NULL;
    }

    for( uint8_t elementCnt = 0; elementCnt < ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueueCnt; elementCnt++ )
    {
        if( element->Request == request )
        {
            // We have found the element
            return element;
        }
        element = IncreaseBufferPointer( element );
    }

    return NULL;
}

void LoRaMacConfirmQueueInit( LoRaMacPrimitives_t* primitives, LoRaMacConfirmQueueNvmEvent confirmQueueNvmCtxChanged )
{
    ConfirmQueueCtx.Primitives = primitives;

    // Assign nvm context
    ConfirmQueueCtx.ConfirmQueueNvmCtx = &ConfirmQueueNvmCtx;

    // Init counter
    ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueueCnt = 0;

    // Init buffer
    ConfirmQueueCtx.BufferStart = ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueue;
    ConfirmQueueCtx.BufferEnd = ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueue;

    memset1( ( uint8_t* )ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueue, 0xFF, sizeof( ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueue ) );

    // Common status
    ConfirmQueueCtx.ConfirmQueueNvmCtx->CommonStatus = LORAMAC_EVENT_INFO_STATUS_ERROR;

    // Assign callback
    ConfirmQueueCtx.LoRaMacConfirmQueueNvmEvent = confirmQueueNvmCtxChanged;
}

bool LoRaMacConfirmQueueRestoreNvmCtx( void* confirmQueueNvmCtx )
{
    // Restore module context
    if( confirmQueueNvmCtx != NULL )
    {
        memcpy1( ( uint8_t* )&ConfirmQueueNvmCtx, ( uint8_t* ) confirmQueueNvmCtx, sizeof( ConfirmQueueNvmCtx ) );
        return true;
    }
    else
    {
        return false;
    }
}

void* LoRaMacConfirmQueueGetNvmCtx( size_t* confirmQueueNvmCtxSize )
{
    *confirmQueueNvmCtxSize = sizeof( ConfirmQueueNvmCtx );
    return &ConfirmQueueNvmCtx;
}

bool LoRaMacConfirmQueueAdd( MlmeConfirmQueue_t* mlmeConfirm )
{
    if( IsListFull( ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueueCnt ) == true )
    {
        // Protect the buffer against overwrites
        return false;
    }

    // Add the element to the ring buffer
    ConfirmQueueCtx.BufferEnd->Request = mlmeConfirm->Request;
    ConfirmQueueCtx.BufferEnd->Status = mlmeConfirm->Status;
    ConfirmQueueCtx.BufferEnd->RestrictCommonReadyToHandle = mlmeConfirm->RestrictCommonReadyToHandle;
    ConfirmQueueCtx.BufferEnd->ReadyToHandle = false;
    // Increase counter
    ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueueCnt++;
    // Update end pointer
    ConfirmQueueCtx.BufferEnd = IncreaseBufferPointer( ConfirmQueueCtx.BufferEnd );

    return true;
}

bool LoRaMacConfirmQueueRemoveLast( void )
{
    if( IsListEmpty( ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueueCnt ) == true )
    {
        return false;
    }

    // Increase counter
    ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueueCnt--;
    // Update start pointer
    ConfirmQueueCtx.BufferEnd = DecreaseBufferPointer( ConfirmQueueCtx.BufferEnd );

    return true;
}

bool LoRaMacConfirmQueueRemoveFirst( void )
{
    if( IsListEmpty( ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueueCnt ) == true )
    {
        return false;
    }

    // Increase counter
    ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueueCnt--;
    // Update start pointer
    ConfirmQueueCtx.BufferStart = IncreaseBufferPointer( ConfirmQueueCtx.BufferStart );

    return true;
}

void LoRaMacConfirmQueueSetStatus( LoRaMacEventInfoStatus_t status, Mlme_t request )
{
    MlmeConfirmQueue_t* element = NULL;

    if( IsListEmpty( ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueueCnt ) == false )
    {
        element = GetElement( request, ConfirmQueueCtx.BufferStart, ConfirmQueueCtx.BufferEnd );
        if( element != NULL )
        {
            element->Status = status;
            element->ReadyToHandle = true;
        }
    }
}

LoRaMacEventInfoStatus_t LoRaMacConfirmQueueGetStatus( Mlme_t request )
{
    MlmeConfirmQueue_t* element = NULL;

    if( IsListEmpty( ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueueCnt ) == false )
    {
        element = GetElement( request, ConfirmQueueCtx.BufferStart, ConfirmQueueCtx.BufferEnd );
        if( element != NULL )
        {
            return element->Status;
        }
    }
    return LORAMAC_EVENT_INFO_STATUS_ERROR;
}

void LoRaMacConfirmQueueSetStatusCmn( LoRaMacEventInfoStatus_t status )
{
    MlmeConfirmQueue_t* element = ConfirmQueueCtx.BufferStart;

    ConfirmQueueCtx.ConfirmQueueNvmCtx->CommonStatus = status;

    if( IsListEmpty( ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueueCnt ) == false )
    {
        do
        {
            element->Status = status;
            // Set the status if it is allowed to set it with a call to
            // LoRaMacConfirmQueueSetStatusCmn.
            if( element->RestrictCommonReadyToHandle == false )
            {
                element->ReadyToHandle = true;
            }
            element = IncreaseBufferPointer( element );
        }while( element != ConfirmQueueCtx.BufferEnd );
    }
}

LoRaMacEventInfoStatus_t LoRaMacConfirmQueueGetStatusCmn( void )
{
    return ConfirmQueueCtx.ConfirmQueueNvmCtx->CommonStatus;
}

bool LoRaMacConfirmQueueIsCmdActive( Mlme_t request )
{
    if( GetElement( request, ConfirmQueueCtx.BufferStart, ConfirmQueueCtx.BufferEnd ) != NULL )
    {
        return true;
    }
    return false;
}
/*OTAA==============*/
void LoRaMacConfirmQueueHandleCb( MlmeConfirm_t* mlmeConfirm )
{
    uint8_t nbElements = ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueueCnt;
    bool readyToHandle = false;
    MlmeConfirmQueue_t mlmeConfirmToStore;

    for( uint8_t i = 0; i < nbElements; i++ )
    {
        mlmeConfirm->MlmeRequest = ConfirmQueueCtx.BufferStart->Request;
        mlmeConfirm->Status = ConfirmQueueCtx.BufferStart->Status;
        readyToHandle = ConfirmQueueCtx.BufferStart->ReadyToHandle;

        if( readyToHandle == true )
        {
            ConfirmQueueCtx.Primitives->MacMlmeConfirm( mlmeConfirm );
        }
        else
        {
            // The request is not processed yet. Store the state.
            mlmeConfirmToStore.Request = ConfirmQueueCtx.BufferStart->Request;
            mlmeConfirmToStore.Status = ConfirmQueueCtx.BufferStart->Status;
            mlmeConfirmToStore.RestrictCommonReadyToHandle = ConfirmQueueCtx.BufferStart->RestrictCommonReadyToHandle;
        }

        // Increase the pointer afterwards to prevent overwrites
        LoRaMacConfirmQueueRemoveFirst( );

        if( readyToHandle == false )
        {
            // Add a request which has not been finished again to the queue
            LoRaMacConfirmQueueAdd( &mlmeConfirmToStore );
        }
    }
}

uint8_t LoRaMacConfirmQueueGetCnt( void )
{
    return ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueueCnt;
}

bool LoRaMacConfirmQueueIsFull( void )
{
    if( IsListFull( ConfirmQueueCtx.ConfirmQueueNvmCtx->MlmeConfirmQueueCnt ) == true )
    {
        return true;
    }
    else
    {
        return false;
    }
}
