CLASS lcl_process_employee DEFINITION CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS: get_employee_age
      IMPORTING it_employee   TYPE z_t_employee_aa
                 iv_firstname type Z_DE_FIRSTNAME DEFAULT 'John'
      RETURNING VALUE(rv_age) TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.

ENDCLASS.

CLASS lcl_process_employee IMPLEMENTATION.

  METHOD get_employee_age.
    READ TABLE it_employee into data(ls_employee) with key firstname = iv_firstname.
    if sy-subrc = 0.
        rv_age = ls_employee-age.
    endif.
  ENDMETHOD.

ENDCLASS.
