@EndUserText.label: 'Total Travel Amount'
define view entity ZC_TOTALTRAVELAMOUNT_V1
  with parameters
    P_Curr1 : /dmo/currency_code
  as select from ZI_TOTALTRAVELAMOUNT_V1( P_Curr: $parameters.P_Curr1)

{
  key TravelStatus,
      $parameters.P_Curr1 as CurrCode,
      @Semantics.amount.currencyCode: 'CurrCode'
      sum( TotalAmount )  as NetAmount

}
group by TravelStatus

