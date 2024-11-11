-- PL/SQL trigger 
CREATE OR REPLACE TRIGGER prevent_future_dates
BEFORE INSERT OR UPDATE ON defect_fixes
FOR EACH ROW
BEGIN
    IF :NEW.found > SYSTIMESTAMP THEN
        RAISE_APPLICATION_ERROR(-20000, 'The defect found date/time cannot be in the future.');
    END IF;
END;
/
