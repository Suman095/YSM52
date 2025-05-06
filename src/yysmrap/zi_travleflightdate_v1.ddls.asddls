@EndUserText.label: 'FLight Date in Future'
define view entity ZI_TravleFlightDate_v1 as select from
ZI_RAP_Booking_V01
{
key BookingUUID,
TravelUUID,
_Travel.TravelID as TravelID,
BookingID,
BookingDate,
FlightDate,

CustomerID,
CarrierID,
ConnectionID,

FlightPrice,
CurrencyCode,
CreatedBy,
LastChangedBy,
LocalLastChangedAt

} where  FlightDate >= $session.system_date
        and  FlightDate <= dats_add_days( $session.system_date, 240, 'INITIAL' )
        
        
        
        
        
        
        
//                                                                  

//from yyrap_book as Book inner join yyrap_travel as Travel on Book.travel_uuid   = Travel.travel_uuid
                                                            
//{
//key Book.travel_uuid  as TravelUUID ,
//Travel.travel_id,
//Book.booking_uuid,
//Book.booking_id,
//Travel.agency_id,
//Travel.customer_id,
//Book.flight_date,
//Travel.begin_date,
//Travel.end_date,
//Travel.booking_fee,
//Travel.total_price,
//Travel.currency_code,
//Travel.description,
//Travel.overall_status,
//
//Travel.created_by,
//Travel.created_at

//} where  Book.flight_date >= $session.system_date
//        and  Book.flight_date <= dats_add_days( $session.system_date, 360, 'INITIAL' )
//                                                                  


//where _Booking.FlightDate >= $session.system_date 
//and _Booking.FlightDate <= ( $session.system_date + 60 )
