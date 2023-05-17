/*!
 * \file      Region.c
 *
 * \brief     Region implementation.
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
 *              (C)2013-2017 Semtech
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
#include "LoRaMac.h"

// Setup regions


#ifdef REGION_CN470
#include "RegionCN470.h"
#define CN470_CASE                                 case LORAMAC_REGION_CN470:
#define CN470_IS_ACTIVE( )                         CN470_CASE { return true; }
#define CN470_GET_PHY_PARAM( )                     CN470_CASE { return RegionCN470GetPhyParam( getPhy ); }
#define CN470_SET_BAND_TX_DONE( )                  CN470_CASE { RegionCN470SetBandTxDone( txDone ); break; }
#define CN470_INIT_DEFAULTS( )                     CN470_CASE { RegionCN470InitDefaults( params ); break; }
#define CN470_GET_NVM_CTX( )                       CN470_CASE { return RegionCN470GetNvmCtx( params ); }
#define CN470_VERIFY( )                            CN470_CASE { return RegionCN470Verify( verify, phyAttribute ); }
#define CN470_APPLY_CF_LIST( )                     CN470_CASE { RegionCN470ApplyCFList( applyCFList ); break; }
#define CN470_CHAN_MASK_SET( )                     CN470_CASE { return RegionCN470ChanMaskSet( chanMaskSet ); }
#define CN470_COMPUTE_RX_WINDOW_PARAMETERS( )      CN470_CASE { RegionCN470ComputeRxWindowParameters( datarate, minRxSymbols, rxError, rxConfigParams ); break; }
#define CN470_RX_CONFIG( )                         CN470_CASE { return RegionCN470RxConfig( rxConfig, datarate ); }
#define CN470_TX_CONFIG( )                         CN470_CASE { return RegionCN470TxConfig( txConfig, txPower, txTimeOnAir ); }
#define CN470_LINK_ADR_REQ( )                      CN470_CASE { return RegionCN470LinkAdrReq( linkAdrReq, drOut, txPowOut, nbRepOut, nbBytesParsed ); }
#define CN470_RX_PARAM_SETUP_REQ( )                CN470_CASE { return RegionCN470RxParamSetupReq( rxParamSetupReq ); }
#define CN470_NEW_CHANNEL_REQ( )                   CN470_CASE { return RegionCN470NewChannelReq( newChannelReq ); }
#define CN470_TX_PARAM_SETUP_REQ( )                CN470_CASE { return RegionCN470TxParamSetupReq( txParamSetupReq ); }
#define CN470_DL_CHANNEL_REQ( )                    CN470_CASE { return RegionCN470DlChannelReq( dlChannelReq ); }
#define CN470_ALTERNATE_DR( )                      CN470_CASE { return RegionCN470AlternateDr( currentDr, type ); }
#define CN470_NEXT_CHANNEL( )                      CN470_CASE { return RegionCN470NextChannel( nextChanParams, channel, time, aggregatedTimeOff ); }
#define CN470_CHANNEL_ADD( )                       CN470_CASE { return RegionCN470ChannelAdd( channelAdd ); }
#define CN470_CHANNEL_REMOVE( )                    CN470_CASE { return RegionCN470ChannelsRemove( channelRemove ); }
#define CN470_SET_CONTINUOUS_WAVE( )               CN470_CASE { RegionCN470SetContinuousWave( continuousWave ); break; }
#define CN470_APPLY_DR_OFFSET( )                   CN470_CASE { return RegionCN470ApplyDrOffset( downlinkDwellTime, dr, drOffset ); }
#define CN470_RX_BEACON_SETUP( )                   CN470_CASE { RegionCN470RxBeaconSetup( rxBeaconSetup, outDr ); break; }
#else
#define CN470_IS_ACTIVE( )
#define CN470_GET_PHY_PARAM( )
#define CN470_SET_BAND_TX_DONE( )
#define CN470_INIT_DEFAULTS( )
#define CN470_GET_NVM_CTX( )
#define CN470_VERIFY( )
#define CN470_APPLY_CF_LIST( )
#define CN470_CHAN_MASK_SET( )
#define CN470_COMPUTE_RX_WINDOW_PARAMETERS( )
#define CN470_RX_CONFIG( )
#define CN470_TX_CONFIG( )
#define CN470_LINK_ADR_REQ( )
#define CN470_RX_PARAM_SETUP_REQ( )
#define CN470_NEW_CHANNEL_REQ( )
#define CN470_TX_PARAM_SETUP_REQ( )
#define CN470_DL_CHANNEL_REQ( )
#define CN470_ALTERNATE_DR( )
#define CN470_NEXT_CHANNEL( )
#define CN470_CHANNEL_ADD( )
#define CN470_CHANNEL_REMOVE( )
#define CN470_SET_CONTINUOUS_WAVE( )
#define CN470_APPLY_DR_OFFSET( )
#define CN470_RX_BEACON_SETUP( )
#endif

bool RegionIsActive( LoRaMacRegion_t region )
{
    switch( region )
    {
        /*AS923_IS_ACTIVE( );
        AU915_IS_ACTIVE( );*/
        CN470_IS_ACTIVE( );
        /*CN779_IS_ACTIVE( );
        EU433_IS_ACTIVE( );
        EU868_IS_ACTIVE( );
        KR920_IS_ACTIVE( );
        IN865_IS_ACTIVE( );
        US915_IS_ACTIVE( );
        RU864_IS_ACTIVE( );*/
        default:
        {
            return false;
        }
    }
}

PhyParam_t RegionGetPhyParam( LoRaMacRegion_t region, GetPhyParams_t* getPhy )
{
    PhyParam_t phyParam = { 0 };
    switch( region )
    {
        //AS923_GET_PHY_PARAM( );
        //AU915_GET_PHY_PARAM( );
        CN470_GET_PHY_PARAM( );
        /*CN779_GET_PHY_PARAM( );
        EU433_GET_PHY_PARAM( );
        EU868_GET_PHY_PARAM( );
        KR920_GET_PHY_PARAM( );
        IN865_GET_PHY_PARAM( );
        US915_GET_PHY_PARAM( );
        RU864_GET_PHY_PARAM( );*/
        default:
        {
            return phyParam;
        }
    }
}

void RegionSetBandTxDone( LoRaMacRegion_t region, SetBandTxDoneParams_t* txDone )
{
    switch( region )
    {
        //AS923_SET_BAND_TX_DONE( );
        //AU915_SET_BAND_TX_DONE( );
        CN470_SET_BAND_TX_DONE( );
        /*CN779_SET_BAND_TX_DONE( );
        EU433_SET_BAND_TX_DONE( );
        EU868_SET_BAND_TX_DONE( );
        KR920_SET_BAND_TX_DONE( );
        IN865_SET_BAND_TX_DONE( );
        US915_SET_BAND_TX_DONE( );
        RU864_SET_BAND_TX_DONE( );*/
        default:
        {
            return;
        }
    }
}

void RegionInitDefaults( LoRaMacRegion_t region, InitDefaultsParams_t* params )
{
    switch( region )
    {
        //AS923_INIT_DEFAULTS( );
        //AU915_INIT_DEFAULTS( );
        CN470_INIT_DEFAULTS( );
        /*CN779_INIT_DEFAULTS( );
        EU433_INIT_DEFAULTS( );
        EU868_INIT_DEFAULTS( );
        KR920_INIT_DEFAULTS( );
        IN865_INIT_DEFAULTS( );
        US915_INIT_DEFAULTS( );
        RU864_INIT_DEFAULTS( );*/
        default:
        {
            break;
        }
    }
}

void* RegionGetNvmCtx( LoRaMacRegion_t region, GetNvmCtxParams_t* params )
{
    switch( region )
    {
        //AS923_GET_NVM_CTX( );
        //AU915_GET_NVM_CTX( );
        CN470_GET_NVM_CTX( );
        /*CN779_GET_NVM_CTX( );
        EU433_GET_NVM_CTX( );
        EU868_GET_NVM_CTX( );
        KR920_GET_NVM_CTX( );
        IN865_GET_NVM_CTX( );
        US915_GET_NVM_CTX( );
        RU864_GET_NVM_CTX( );*/
        default:
        {
           return 0;
        }
    }
}

bool RegionVerify( LoRaMacRegion_t region, VerifyParams_t* verify, PhyAttribute_t phyAttribute )
{
    switch( region )
    {
        //AS923_VERIFY( );
        //AU915_VERIFY( );
        CN470_VERIFY( );
        /*CN779_VERIFY( );
        EU433_VERIFY( );
        EU868_VERIFY( );
        KR920_VERIFY( );
        IN865_VERIFY( );
        US915_VERIFY( );
        RU864_VERIFY( );*/
        default:
        {
            return false;
        }
    }
}

void RegionApplyCFList( LoRaMacRegion_t region, ApplyCFListParams_t* applyCFList )
{
    switch( region )
    {
        //AS923_APPLY_CF_LIST( );
        //AU915_APPLY_CF_LIST( );
        CN470_APPLY_CF_LIST( );
//        CN779_APPLY_CF_LIST( );
//        EU433_APPLY_CF_LIST( );
//        EU868_APPLY_CF_LIST( );
//        KR920_APPLY_CF_LIST( );
//        IN865_APPLY_CF_LIST( );
//        US915_APPLY_CF_LIST( );
//        RU864_APPLY_CF_LIST( );
        default:
        {
            break;
        }
    }
}

bool RegionChanMaskSet( LoRaMacRegion_t region, ChanMaskSetParams_t* chanMaskSet )
{
    switch( region )
    {
//        AS923_CHAN_MASK_SET( );
//        AU915_CHAN_MASK_SET( );
        CN470_CHAN_MASK_SET( );
//        CN779_CHAN_MASK_SET( );
//        EU433_CHAN_MASK_SET( );
//        EU868_CHAN_MASK_SET( );
//        KR920_CHAN_MASK_SET( );
//        IN865_CHAN_MASK_SET( );
//        US915_CHAN_MASK_SET( );
//        RU864_CHAN_MASK_SET( );
        default:
        {
            return false;
        }
    }
}

void RegionComputeRxWindowParameters( LoRaMacRegion_t region, int8_t datarate, uint8_t minRxSymbols, uint32_t rxError, RxConfigParams_t *rxConfigParams )
{
    switch( region )
    {
//        AS923_COMPUTE_RX_WINDOW_PARAMETERS( );
//        AU915_COMPUTE_RX_WINDOW_PARAMETERS( );
        CN470_COMPUTE_RX_WINDOW_PARAMETERS( );
//        CN779_COMPUTE_RX_WINDOW_PARAMETERS( );
//        EU433_COMPUTE_RX_WINDOW_PARAMETERS( );
//        EU868_COMPUTE_RX_WINDOW_PARAMETERS( );
//        KR920_COMPUTE_RX_WINDOW_PARAMETERS( );
//        IN865_COMPUTE_RX_WINDOW_PARAMETERS( );
//        US915_COMPUTE_RX_WINDOW_PARAMETERS( );
//        RU864_COMPUTE_RX_WINDOW_PARAMETERS( );
        default:
        {
            break;
        }
    }
}

bool RegionRxConfig( LoRaMacRegion_t region, RxConfigParams_t* rxConfig, int8_t* datarate )
{
    switch( region )
    {
//        AS923_RX_CONFIG( );
//        AU915_RX_CONFIG( );
        CN470_RX_CONFIG( );
//        CN779_RX_CONFIG( );
//        EU433_RX_CONFIG( );
//        EU868_RX_CONFIG( );
//        KR920_RX_CONFIG( );
//        IN865_RX_CONFIG( );
//        US915_RX_CONFIG( );
//        RU864_RX_CONFIG( );
        default:
        {
            return false;
        }
    }
}

bool RegionTxConfig( LoRaMacRegion_t region, TxConfigParams_t* txConfig, int8_t* txPower, TimerTime_t* txTimeOnAir )
{
    switch( region )
    {
//        AS923_TX_CONFIG( );
//        AU915_TX_CONFIG( );
        CN470_TX_CONFIG( );
//        CN779_TX_CONFIG( );
//        EU433_TX_CONFIG( );
//        EU868_TX_CONFIG( );
//        KR920_TX_CONFIG( );
//        IN865_TX_CONFIG( );
//        US915_TX_CONFIG( );
//        RU864_TX_CONFIG( );
        default:
        {
            return false;
        }
    }
}

uint8_t RegionLinkAdrReq( LoRaMacRegion_t region, LinkAdrReqParams_t* linkAdrReq, int8_t* drOut, int8_t* txPowOut, uint8_t* nbRepOut, uint8_t* nbBytesParsed )
{
    switch( region )
    {
//        AS923_LINK_ADR_REQ( );
//        AU915_LINK_ADR_REQ( );
        CN470_LINK_ADR_REQ( );
//        CN779_LINK_ADR_REQ( );
//        EU433_LINK_ADR_REQ( );
//        EU868_LINK_ADR_REQ( );
//        KR920_LINK_ADR_REQ( );
//        IN865_LINK_ADR_REQ( );
//        US915_LINK_ADR_REQ( );
//        RU864_LINK_ADR_REQ( );
        default:
        {
            return 0;
        }
    }
}

uint8_t RegionRxParamSetupReq( LoRaMacRegion_t region, RxParamSetupReqParams_t* rxParamSetupReq )
{
    switch( region )
    {
//        AS923_RX_PARAM_SETUP_REQ( );
//        AU915_RX_PARAM_SETUP_REQ( );
        CN470_RX_PARAM_SETUP_REQ( );
//        CN779_RX_PARAM_SETUP_REQ( );
//        EU433_RX_PARAM_SETUP_REQ( );
//        EU868_RX_PARAM_SETUP_REQ( );
//        KR920_RX_PARAM_SETUP_REQ( );
//        IN865_RX_PARAM_SETUP_REQ( );
//        US915_RX_PARAM_SETUP_REQ( );
//        RU864_RX_PARAM_SETUP_REQ( );
        default:
        {
            return 0;
        }
    }
}

uint8_t RegionNewChannelReq( LoRaMacRegion_t region, NewChannelReqParams_t* newChannelReq )
{
    switch( region )
    {
//        AS923_NEW_CHANNEL_REQ( );
//        AU915_NEW_CHANNEL_REQ( );
        CN470_NEW_CHANNEL_REQ( );
//        CN779_NEW_CHANNEL_REQ( );
//        EU433_NEW_CHANNEL_REQ( );
//        EU868_NEW_CHANNEL_REQ( );
//        KR920_NEW_CHANNEL_REQ( );
//        IN865_NEW_CHANNEL_REQ( );
//        US915_NEW_CHANNEL_REQ( );
//        RU864_NEW_CHANNEL_REQ( );
        default:
        {
            return 0;
        }
    }
}

int8_t RegionTxParamSetupReq( LoRaMacRegion_t region, TxParamSetupReqParams_t* txParamSetupReq )
{
    switch( region )
    {
//        AS923_TX_PARAM_SETUP_REQ( );
//        AU915_TX_PARAM_SETUP_REQ( );
        CN470_TX_PARAM_SETUP_REQ( );
//        CN779_TX_PARAM_SETUP_REQ( );
//        EU433_TX_PARAM_SETUP_REQ( );
//        EU868_TX_PARAM_SETUP_REQ( );
//        KR920_TX_PARAM_SETUP_REQ( );
//        IN865_TX_PARAM_SETUP_REQ( );
//        US915_TX_PARAM_SETUP_REQ( );
//        RU864_TX_PARAM_SETUP_REQ( );
        default:
        {
            return 0;
        }
    }
}

uint8_t RegionDlChannelReq( LoRaMacRegion_t region, DlChannelReqParams_t* dlChannelReq )
{
    switch( region )
    {
//        AS923_DL_CHANNEL_REQ( );
//        AU915_DL_CHANNEL_REQ( );
    CN470_DL_CHANNEL_REQ( );
//        CN779_DL_CHANNEL_REQ( );
//        EU433_DL_CHANNEL_REQ( );
//        EU868_DL_CHANNEL_REQ( );
//        KR920_DL_CHANNEL_REQ( );
//        IN865_DL_CHANNEL_REQ( );
//        US915_DL_CHANNEL_REQ( );
//        RU864_DL_CHANNEL_REQ( );
        default:
        {
            return 0;
        }
    }
}

int8_t RegionAlternateDr( LoRaMacRegion_t region, int8_t currentDr, AlternateDrType_t type )
{
    switch( region )
    {
//        AS923_ALTERNATE_DR( );
//        AU915_ALTERNATE_DR( );
        CN470_ALTERNATE_DR( );
//        CN779_ALTERNATE_DR( );
//        EU433_ALTERNATE_DR( );
//        EU868_ALTERNATE_DR( );
//        KR920_ALTERNATE_DR( );
//        IN865_ALTERNATE_DR( );
//        US915_ALTERNATE_DR( );
//        RU864_ALTERNATE_DR( );
        default:
        {
            return 0;
        }
    }
}

LoRaMacStatus_t RegionNextChannel( LoRaMacRegion_t region, NextChanParams_t* nextChanParams, uint8_t* channel, TimerTime_t* time, TimerTime_t* aggregatedTimeOff )
{
    switch( region )
    {
//        AS923_NEXT_CHANNEL( );
//        AU915_NEXT_CHANNEL( );
        CN470_NEXT_CHANNEL( );
//        CN779_NEXT_CHANNEL( );
//        EU433_NEXT_CHANNEL( );
//        EU868_NEXT_CHANNEL( );
//        KR920_NEXT_CHANNEL( );
//        IN865_NEXT_CHANNEL( );
//        US915_NEXT_CHANNEL( );
//        RU864_NEXT_CHANNEL( );
        default:
        {
            return LORAMAC_STATUS_REGION_NOT_SUPPORTED;
        }
    }
}

LoRaMacStatus_t RegionChannelAdd( LoRaMacRegion_t region, ChannelAddParams_t* channelAdd )
{
    switch( region )
    {
//        AS923_CHANNEL_ADD( );
//        AU915_CHANNEL_ADD( );
        CN470_CHANNEL_ADD( );
//        CN779_CHANNEL_ADD( );
//        EU433_CHANNEL_ADD( );
//        EU868_CHANNEL_ADD( );
//        KR920_CHANNEL_ADD( );
//        IN865_CHANNEL_ADD( );
//        US915_CHANNEL_ADD( );
//        RU864_CHANNEL_ADD( );
        default:
        {
            return LORAMAC_STATUS_PARAMETER_INVALID;
        }
    }
}

bool RegionChannelsRemove( LoRaMacRegion_t region, ChannelRemoveParams_t* channelRemove )
{
    switch( region )
    {
//        AS923_CHANNEL_REMOVE( );
//        AU915_CHANNEL_REMOVE( );
        CN470_CHANNEL_REMOVE( );
//        CN779_CHANNEL_REMOVE( );
//        EU433_CHANNEL_REMOVE( );
//        EU868_CHANNEL_REMOVE( );
//        KR920_CHANNEL_REMOVE( );
//        IN865_CHANNEL_REMOVE( );
//        US915_CHANNEL_REMOVE( );
//        RU864_CHANNEL_REMOVE( );
        default:
        {
            return false;
        }
    }
}

void RegionSetContinuousWave( LoRaMacRegion_t region, ContinuousWaveParams_t* continuousWave )
{
    switch( region )
    {
//        AS923_SET_CONTINUOUS_WAVE( );
//        AU915_SET_CONTINUOUS_WAVE( );
        CN470_SET_CONTINUOUS_WAVE( );
//        CN779_SET_CONTINUOUS_WAVE( );
//        EU433_SET_CONTINUOUS_WAVE( );
//        EU868_SET_CONTINUOUS_WAVE( );
//        KR920_SET_CONTINUOUS_WAVE( );
//        IN865_SET_CONTINUOUS_WAVE( );
//        US915_SET_CONTINUOUS_WAVE( );
//        RU864_SET_CONTINUOUS_WAVE( );
        default:
        {
            break;
        }
    }
}

uint8_t RegionApplyDrOffset( LoRaMacRegion_t region, uint8_t downlinkDwellTime, int8_t dr, int8_t drOffset )
{
    switch( region )
    {
//        AS923_APPLY_DR_OFFSET( );
//        AU915_APPLY_DR_OFFSET( );
        CN470_APPLY_DR_OFFSET( );
//        CN779_APPLY_DR_OFFSET( );
//        EU433_APPLY_DR_OFFSET( );
//        EU868_APPLY_DR_OFFSET( );
//        KR920_APPLY_DR_OFFSET( );
//        IN865_APPLY_DR_OFFSET( );
//        US915_APPLY_DR_OFFSET( );
//        RU864_APPLY_DR_OFFSET( );
        default:
        {
            return dr;
        }
    }
}

void RegionRxBeaconSetup( LoRaMacRegion_t region, RxBeaconSetup_t* rxBeaconSetup, uint8_t* outDr )
{
    switch( region )
    {
//        AS923_RX_BEACON_SETUP( );
//        AU915_RX_BEACON_SETUP( );
        CN470_RX_BEACON_SETUP( );
//        CN779_RX_BEACON_SETUP( );
//        EU433_RX_BEACON_SETUP( );
//        EU868_RX_BEACON_SETUP( );
//        KR920_RX_BEACON_SETUP( );
//        IN865_RX_BEACON_SETUP( );
//        US915_RX_BEACON_SETUP( );
//        RU864_RX_BEACON_SETUP( );
        default:
        {
            break;
        }
    }
}

Version_t RegionGetVersion( void )
{
    Version_t version;

    version.Value = REGION_VERSION;

    return version;
}

