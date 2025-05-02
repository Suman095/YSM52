@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Connection'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZI_Conn_TM_v1
  as select from /dmo/connection
{
      @UI.lineItem: [{ position: 10 , label: 'Airline' }]
      @UI.selectionField: [{ position: 30 }]
  key carrier_id      as CarrierId,
      @UI.lineItem: [{ position: 20 }]
  key connection_id   as ConnectionId,
      @UI.selectionField: [{ position: 10 }]
      @UI.lineItem: [{ position: 30 , label: 'Departure' }]
      airport_from_id as AirportFromId,
      @UI.selectionField: [{ position: 20 }]
      @UI.lineItem: [{ position: 40 , label: 'Arrival' }]
      airport_to_id   as AirportToId,
      @UI.lineItem: [{ position: 50 , label: 'Start Time' }]
      departure_time  as DepartureTime,
      @UI.lineItem: [{ position: 60 , label: 'End Time' }]
      arrival_time    as ArrivalTime,
      distance        as Distance,
      distance_unit   as DistanceUnit
}
