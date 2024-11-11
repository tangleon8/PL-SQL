--  Defect_fixes table
CREATE TABLE defect_fixes (
    df_id INT PRIMARY KEY,
    description VARCHAR2(80) NOT NULL,
    resolved NUMBER(1) NOT NULL,
    found TIMESTAMP NOT NULL,
    predicted_hours_resolved INT,
    actual_hours_resolved INT
);

-- Sample data into the defect_fixes table
INSERT INTO defect_fixes (df_id, description, resolved, found, predicted_hours_resolved, actual_hours_resolved) VALUES
(1, 'Null pointer error', 1, SYSTIMESTAMP - INTERVAL '1' DAY, 2, 3),
(2, 'Memory leak issue', 0, SYSTIMESTAMP - INTERVAL '2' DAY, 4, NULL),
(3, 'Buffer overflow error', 1, SYSTIMESTAMP - INTERVAL '3' DAY, 3, 5),
(4, 'SQL injection flaw', 1, SYSTIMESTAMP - INTERVAL '4' DAY, 1, 2),
(5, 'Cross-site scripting', 0, SYSTIMESTAMP - INTERVAL '5' DAY, 2, NULL),
(6, 'API endpoint not secured', 1, SYSTIMESTAMP - INTERVAL '6' DAY, 2, 4),
(7, 'Authentication bypass', 1, SYSTIMESTAMP - INTERVAL '7' DAY, 5, 5),
(8, 'Improper input validation', 1, SYSTIMESTAMP - INTERVAL '8' DAY, 3, 6);
