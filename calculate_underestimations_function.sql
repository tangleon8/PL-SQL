-- PL/SQL function
CREATE OR REPLACE FUNCTION calculate_underestimations RETURN NUMBER IS
    total_resolved NUMBER := 0;
    underestimated NUMBER := 0;
    underestimation_ratio NUMBER;
BEGIN
    FOR rec IN (SELECT predicted_hours_resolved, actual_hours_resolved 
                FROM defect_fixes 
                WHERE resolved = 1) LOOP
        total_resolved := total_resolved + 1;
        IF rec.predicted_hours_resolved < rec.actual_hours_resolved THEN
            underestimated := underestimated + 1;
        END IF;
    END LOOP;
    
    IF total_resolved > 0 THEN
        underestimation_ratio := underestimated / total_resolved;
    ELSE
        underestimation_ratio := 0; 
    END IF;

    RETURN underestimation_ratio;
END;
/
