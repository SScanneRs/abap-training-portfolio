REPORT Z_SALES_REPORT.

TABLES: SFLIGHT.

START-OF-SELECTION.
  SELECT * FROM SFLIGHT INTO TABLE @DATA(it_flights).

  cl_demo_output=>display( it_flights ).
