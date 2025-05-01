CLASS zjp_book_data_v01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
ENDCLASS.



CLASS zjp_book_data_v01 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
     DELETE FROM zjp_rap_book_v01.
    INSERT zjp_rap_book_v01 FROM (
        SELECT FROM /dmo/booking
        FIELDS
            travel_id         AS travel_id,
            booking_id        AS booking_id,
            booking_date      AS booking_date,
            customer_id       AS customer_id,
            carrier_id        AS carrier_id,
            connection_id     AS connection_id,
            flight_date       AS flight_date,
            flight_price      AS flight_price,
            currency_code     AS currency_code
         ORDER BY booking_id
         UP TO 15 ROWS ).

    COMMIT WORK.
    out->write( 'Booking data inserted'  ).
  ENDMETHOD.
ENDCLASS.
