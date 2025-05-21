@EndUserText.label: 'Multiple Travel Booking'
define view entity ZC_TravMultiBook_v1
  as select from ZI_RAP_Travel_V01   as Travel
    inner join   ZI_TravMultiBook_v1 as MultiBook on Travel.TravelUUID = MultiBook.TravelUUID
{
  key Travel.TravelUUID,
      Travel.TravelID,
      Travel._Booking.BookingID,
      Travel._Booking.BookingDate,
      concat(
        concat(
          concat(substring(Travel._Booking.BookingDate, 7, 2), '/' ),
          concat(substring(Travel._Booking.BookingDate, 5, 2), '/' )
        ),
        substring(Travel._Booking.BookingDate, 3, 2)
      ) as NewBookingDate,
      Travel.BookingFee,
      Travel.AgencyID,
      Travel.CustomerID,
      Travel.BeginDate,
      Travel.EndDate,

      Travel.TotalPrice,
      Travel.CurrencyCode,
      Travel.Description,
      Travel.TravelStatus
}













//  as select from ZI_TravMultiBook_v1 as Travel
//    inner join   ZRAP_BOOKING_V01    as Book on Travel.TravelUUID = Book.TravelUUID
//{
//  key Travel.TravelUUID,
//      Book.BookingUUID,
//      Book.BookingID,
//      concat(
//        concat(
//          concat(substring(Book.BookingDate, 7, 2), '/' ),
//          concat(substring(Book.BookingDate, 5, 2), '/' )
//        ),
//        substring(Book.BookingDate, 3, 2)
//      ) as BookingDate
//
//
//}
//where
//  Travel.Travel_Count > 2


//  define view entity ZC_TravMultiBook_v1
//    as select from ZI_TravMultiBook_v1 as Travel
//    inner join   ZRAP_BOOKING_V01    as Book on Travel.TravelUUID = Book.TravelUUID
//{
//  key Travel.TravelUUID,
//      Book.BookingUUID,
//      Book.BookingID,
//      concat(
//        concat(
//          concat(substring(Book.BookingDate, 7, 2), '/' ),
//          concat(substring(Book.BookingDate, 5, 2), '/' )
//        ),
//        substring(Book.BookingDate, 3, 2)
//      ) as BookingDate
//
//
//}
//where
//  Travel.Travel_Count > 2
//
