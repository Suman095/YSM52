@EndUserText.label: 'Tola Travel Amount'
define view entity ZI_TOTALTRAVELAMOUNT_V1
  with parameters
    P_Curr : /dmo/currency_code
  as select from ZI_RAP_Travel_V01

{
  key case when  TravelStatus = 'O'
   then 'Open'
   when TravelStatus = 'A'
   then 'Approved'
   else 'Other'
   end                                                      as TravelStatus,
      CurrencyCode,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      currency_conversion( amount => TotalPrice,
                          source_currency =>  CurrencyCode,
                          target_currency => $parameters.P_Curr,
                          exchange_rate_date => $session.system_date,
                          error_handling => 'SET_TO_NULL' ) as TotalAmount
}
