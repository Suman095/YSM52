@EndUserText.label: 'Total Travel Amount'
define view entity ZC_TOTALTRAVELAMOUNT_V1
with parameters P_Curr1 : /dmo/currency_code
as select from ZI_TOTALTRAVELAMOUNT_V1( P_Curr: $parameters.P_Curr1)

{
key TravelStatus,
cast( NetPrice as abap.char(50) ) as Netprice1
 
// CurrencyCode,
// @Semantics.amount.currencyCode: 'CurrencyCode'
// sum(TotalPrice) as NetPrice

} 
//where CurrencyCode = $parameters.P_Curr
//group by TravelStatus, CurrencyCode
