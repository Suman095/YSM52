@EndUserText.label: 'Total Travel Amount'
define view entity ZC_TOTALTRAVELAMOUNT_V1 
  with parameters
    P_Curr1 : /dmo/currency_code
  as select from ZI_TOTALTRAVELAMOUNT_V1

{
key TravelStatus,
 cast ( sum ( currency_conversion( amount => Total_amt,
                                source_currency =>  CurrencyCode,
                                target_currency => $parameters.P_Curr1,
                                exchange_rate_date => $session.system_date,
                                error_handling => 'SET_TO_NULL' ) ) as abap.char( 50 ) ) as Amount
                                
} group by TravelStatus


