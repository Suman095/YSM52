@EndUserText.label: 'Multiple Travel Booking'
define view entity ZC_TravMultiBook_v1
  as select from ZI_TravMultiBook_v1 as Travel
    inner join   ZRAP_BOOKING_V01    as Book on Travel.TravelUUID = Book.TravelUUID
{
  key Travel.TravelUUID,
      Book.BookingUUID,
      Book.BookingID,
      
      concat(
        concat(
          concat(substring(Book.BookingDate, 7, 2), '/' ),
          concat(substring(Book.BookingDate, 5, 2), '/' )
        ),
        substring(Book.BookingDate, 3, 2)        
      ) as BookingDate
      

}
where
  Travel.Travel_Count > 3
