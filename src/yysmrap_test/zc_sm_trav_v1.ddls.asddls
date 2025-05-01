//@AccessControl.authorizationCheck: #NOT_REQUIRED
//@EndUserText.label: 'Projection for ZI_SM_Trav_v1'
//@Metadata.ignorePropagatedAnnotations: true

@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection for ZI_SM_Trav_v1'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@Search.searchable: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}

@UI:{ 
     headerInfo: {
    typeName: 'Travel',
    typeNamePlural: 'Travels',
    title: {
        type: #STANDARD,
        value: 'TravelID'
          } ,
      description : { 
         type : #STANDARD,
         label : 'Test description'
       }
      } 
}

define root view entity ZC_SM_Trav_v1 
 provider contract transactional_query
   as projection on ZI_SM_Trav_v1
{
key TravelId,

      @Consumption.valueHelpDefinition: [{
          entity: {
              name: '/DMO/I_Agency',
              element: 'AgencyID'
                   }
               }
          ]
          
      @ObjectModel.text.element: ['AgencyName']
      
      @Search.defaultSearchElement: true      
      AgencyId,
      _Agency.Name        as AgencyName,

      @Consumption.valueHelpDefinition: [{

               entity: {
                   name: '/DMO/I_Customer',
                   element: 'CustomerID'
               }}]
               
               
      @ObjectModel.text.element: ['CustomerName']
      
      @Search.defaultSearchElement: true

      CustomerId,
      _Customer.FirstName as CustomerName,

      BeginDate, 
      EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      TotalPrice,

      @Consumption.valueHelpDefinition: [{

             entity: {
                 name: 'I_Currency',
                 element: 'Currency'
             }}]
      @Search.defaultSearchElement: true
      CurrencyCode,
      Description,
      Status,
      LastChangedAt,
      _Agency,
      _Booking : redirected to composition child ZC_SM_Book_v1,
      _Currency,
      _Customer
}
