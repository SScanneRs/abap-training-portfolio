CLASS zcl_invoice_dpc_ext DEFINITION
  PUBLIC
  INHERITING FROM zcl_invoice_dpc
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS get_entityset REDEFINITION.
ENDCLASS.

CLASS zcl_invoice_dpc_ext IMPLEMENTATION.

  METHOD get_entityset.

    DATA: lt_invoice TYPE TABLE OF zinvoice,
          ls_invoice TYPE zinvoice.

    CLEAR et_entityset.

    ls_invoice-id     = 'INV1001'.
    ls_invoice-custid = 'C100'.
    ls_invoice-amount = '123.45'.
    APPEND ls_invoice TO lt_invoice.

    ls_invoice-id     = 'INV1002'.
    ls_invoice-custid = 'C200'.
    ls_invoice-amount = '789.10'.
    APPEND ls_invoice TO lt_invoice.

    et_entityset = lt_invoice.

  ENDMETHOD.

ENDCLASS.
