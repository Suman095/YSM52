@EndUserText.label: 'Tola Travel Amount'
define view entity ZI_TOTALTRAVELAMOUNT_V1

  as select from ZI_RAP_Travel_V01

{
  key case when  TravelStatus = 'O'
   then 'Open'
   when TravelStatus = 'A'
   then 'Approved'
   else 'Other'
   end                   as TravelStatus,
      CurrencyCode,
      @Semantics.amount.currencyCode: 'CurrencyCode'

      sum(  TotalPrice ) as Total_amt
}
group by
  TravelStatus,
  CurrencyCode
