@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root View for ZJP_RAP_BOOK_V01 Table'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zi_rap_book_v01
  as select from zjp_rap_book_v01
{
      //  key travel_id     as TravelId,
      //  key booking_id    as BookingId,
      //      booking_date  as BookingDate,
      //      customer_id   as CustomerId,
      //      carrier_id    as CarrierId,
      //      connection_id as ConnectionId,
      //      flight_date   as FlightDate,
      //      @Semantics.amount.currencyCode: 'CurrencyCode'
      //      flight_price  as FlightPrice,
      //      currency_code as CurrencyCode

  key travel_id     as Travel_Id,
  key booking_id    as Booking_Id,
      booking_date  as Booking_Date,
      customer_id   as Customer_Id,
      carrier_id    as Carrier_Id,
      connection_id as Connection_Id,
      flight_date   as Flight_Date,
      @Semantics.amount.currencyCode: 'Currency_Code'
      flight_price  as Flight_Price,
      currency_code as Currency_Code
}
