CLASS z_cl_coa_employee_processing DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_cl_coa_employee_processing IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA(lo_process_employee) = NEW lcl_process_employee( ).
    DATA(lo_employee) = NEW z_cl_employee_aa( ).
    DATA: ls_employee TYPE zsemployee_coa_aa.

    lo_employee->get_employee(
      RECEIVING
        rt_employee = DATA(lt_employee)
    ).

      lo_process_employee->get_employee_age(
        EXPORTING
         it_employee = lt_employee
*         iv_firstname = 'Almira'
        RECEIVING
          rv_age      = DATA(lv_age)
      ).

      out->write( lv_age ).
  ENDMETHOD.
ENDCLASS.
