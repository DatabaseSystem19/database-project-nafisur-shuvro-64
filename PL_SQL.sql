--declare & print value

set serveroutput on
declare 
donor_name Donor.donor_name%type;
begin
select donor_name into donor_name from Donor where donor_id=7;
dbms_output.put_line(' Donor_name: '||donor_name);
end;
/

--insert & set default value

set serveroutput on
declare 
donor_id Donor.donor_id%type:=11;
donor_name Donor.donor_name%type:='Nafis';
donor_blood Donor.donor_blood%type:='AB+';
contact_no number:=01312345678;
donor_address Donor.donor_address%TYPE:='Khulna';
begin
insert into Donor values(donor_id,donor_name,donor_blood,contact_no,donor_address);
end;
/

--array

set serveroutput on
DECLARE 
   counter NUMBER := 1;
   donor_name Donor.donor_name%TYPE;
   TYPE NAMEARRAY IS VARRAY(10) OF Donor.donor_name%TYPE;
   A_NAME NAMEARRAY:=NAMEARRAY('Donor 1', 'Donor 2', 'Donor 3', 'Donor 4', 'Donor 5','Donor 6', 'Donor 7', 'Donor 8', 'Donor 9', 'Donor 10'); 
BEGIN
   counter := 1;
   FOR x IN 1..10  
   LOOP
      SELECT donor_name INTO donor_name FROM Donor WHERE donor_id=x;
      A_NAME(counter) := donor_name;
      counter := counter + 1;
   END LOOP;
   counter := 1;
   WHILE counter <= A_NAME.COUNT 
   LOOP 
      DBMS_OUTPUT.PUT_LINE(A_NAME(counter)); 
      counter := counter + 1;
   END LOOP;
END;
/


--if-else statement


set serveroutput on
DECLARE 
   counter NUMBER := 1;
   donor_name Donor.donor_name%TYPE;
   TYPE NAMEARRAY IS VARRAY(10) OF Donor.donor_name%TYPE;
   A_NAME NAMEARRAY:=NAMEARRAY('Donor 1', 'Donor 2', 'Donor 3', 'Donor 4', 'Donor 5','Donor 6', 'Donor 7', 'Donor 8', 'Donor 9', 'Donor 10'); 
BEGIN
   counter := 1;
   FOR x IN 1..10  
   LOOP
      SELECT donor_name INTO donor_name FROM Donor WHERE donor_id=x;
      if donor_name='Rahim' 
        then
        dbms_output.put_line(donor_name||' is '||'having donor_id 1');
      elsif donor_name='Kahim'  
        then
        dbms_output.put_line(donor_name||' is  '||'having donor_id 2');
      else 
        dbms_output.put_line(donor_name||' is  '||'having donor_id greater than 2');
        end if;
   END LOOP;
END;
/


--procedure

CREATE OR REPLACE PROCEDURE proc2(
  var1 IN NUMBER,
  var2 OUT VARCHAR2
)
AS
  t_show CHAR(37);
BEGIN
  t_show := 'Name of the donor with donor id ';
  SELECT donor_name INTO var2 FROM Donor WHERE donor_id = var1; 
  DBMS_OUTPUT.PUT_LINE(t_show || var1 || ' is ' || var2);
END;
/

set serveroutput on
declare 
donor_id Donor.donor_id%type:=6;
user_name Donor.donor_name%type;
extra number;
begin
proc2(donor_id,user_name);
end;
/
drop procedure proc2;

--function


set serveroutput on
create or replace function fun(var1 in varchar) return varchar AS
value Donor.donor_name%type;
begin
  select donor_name into value from Donor where donor_id=var1; 
   return value;
end;
/

set serveroutput on
declare 
value varchar(20);
begin
value:=fun(5);
end;
/
drop function fun;


------------------------------------------------------xxxxxxxxx------------------------------------------------------------


SET SERVEROUTPUT ON;
BEGIN

dbms_output.put_line('---------------------------------------------------------------------');
dbms_output.put_line('---------------------------------------------------------------------');
dbms_output.put_line('---------------------------------------------------------------------');
dbms_output.put_line('---------------------------------------------------------------------');
dbms_output.put_line('---------------------------------------------------------------------');
dbms_output.put_line('---------------------------------------------------------------------');
dbms_output.put_line('---------------------------------------------------------------------');
dbms_output.put_line('---------------------------------------------------------------------');
dbms_output.put_line('NAME OF THE PROJECT : Blood Donation Management System Database');
dbms_output.put_line('FOR THE COURSE : CSE-3110-DATABASE SYSTEMS LABORATORY');
dbms_output.put_line('DEVELOPED BY : Syed Nafisur Rahman Shuvro');
dbms_output.put_line('Roll:1907064');
dbms_output.put_line('YEAR : 3rd');
dbms_output.put_line('SEMESTER : 1st');
dbms_output.put_line('Khulna University of Engineering and Technology(KUET)');
END;
/


------------------------------------------------------xxxxxxxxx------------------------------------------------------------