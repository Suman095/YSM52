@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking view for Future Date'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_Booking_Date 
  as select distinct from yyrap_book
{
  key travel_uuid as TravelUUID
//      booking_id as BookingID,
//      flight_date as FlightDate
}
where
      flight_date >= $session.system_date
  and flight_date <= dats_add_days( $session.system_date, 240, 'INITIAL' )
