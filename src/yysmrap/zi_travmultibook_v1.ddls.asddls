
@EndUserText.label: 'Travel View with Multiple Booking'
define view entity ZI_TravMultiBook_v1 as select from ZI_RAP_Booking_V01

{
key TravelUUID,
count(*) as Travel_Count 
} group by TravelUUID having count(*) > 2



//define view entity ZI_TravMultiBook_v1 as select from ZI_RAP_Booking_V01
//{
//   key TravelUUID,
//   count(*) as Travel_Count 
//} group by TravelUUID  
 
