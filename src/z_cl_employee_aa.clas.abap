CLASS z_cl_employee_aa DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  METHODS:
    get_employee RETURNING VALUE(rt_employee) TYPE Z_T_EMPLOYEE_AA.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS z_cl_employee_aa IMPLEMENTATION.
  METHOD get_employee.
    rt_employee = VALUE #( ( firstname = 'John' lastname = 'Doe' age = 30 salary = 1000 employee_position = 'Developer' ) ).
    data(ls_employee) = VALUE zsemployee_coa_aa( firstname  = 'Almira' lastname  = 'Ahmetovic' age = 33 salary = 1000  employee_position = 'HR'  ).
    append ls_employee to rt_employee.
    append value #(  firstname = 'Isad' lastname = 'ol' age = 42 salary = 1000 employee_position = 'Something'  ) to rt_employee.
  ENDMETHOD.

ENDCLASS.
