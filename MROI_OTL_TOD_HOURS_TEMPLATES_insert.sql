-- Consolidated insert generated from all three tabs of ALC Shift Schedules - All.xlsx
-- Rows: 277 (Shift 1, Shift 2, and Shift 3)
-- Time conversion: spreadsheet hundredths of an hour -> HH:MM text
--                  (500 -> 05:00; 550 -> 05:30; 575 -> 05:45; 2400 -> 24:00).
-- Duration conversion: spreadsheet hundredths -> numeric hours (800 -> 8.0; 75 -> 0.75).
-- TEMPLATE_ID values are allocated once from the current maximum. Run this script when
-- no other session is inserting into this table, or replace the expression with your sequence.

INSERT INTO MROI_OTL_TOD_HOURS_TEMPLATES (
    template_id,
    template_name,
    aws_code,
    shift_code,
    graded_flag,
    applicable_period,
    shift_start,
    shift_duration,
    lunch_start,
    lunch_duration,
    core_start,
    core_duration,
    tod_hours,
    night_diff_hours,
    effective_start_date,
    effective_end_date,
    status,
    created_by,
    creation_date,
    last_updated_by,
    last_update_date,
    last_update_login
)
WITH source_data AS (
    SELECT 'Shift 1' source_tab, 'Shift 1-A' template_name, '1' aws_code, '1' shift_code, '05:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '07:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-B' template_name, '1' aws_code, '1' shift_code, '05:30' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '07:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-C' template_name, '1' aws_code, '1' shift_code, '06:00' shift_start, 8.0 shift_duration, '10:30' lunch_start, 0.5 lunch_duration, '06:00' core_start, 8.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-D' template_name, '1' aws_code, '1' shift_code, '06:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '07:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-E' template_name, '1' aws_code, '1' shift_code, '06:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '08:30' core_start, 5.5 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-F' template_name, '1' aws_code, '1' shift_code, '06:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '09:00' core_start, 5.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-G' template_name, '1' aws_code, '1' shift_code, '06:30' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '08:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-H' template_name, '1' aws_code, '1' shift_code, '06:30' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '08:30' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-I' template_name, '1' aws_code, '1' shift_code, '06:30' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '09:00' core_start, 5.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-J' template_name, '1' aws_code, '1' shift_code, '06:30' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '09:00' core_start, 5.5 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-K' template_name, '1' aws_code, '1' shift_code, '07:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '08:00' core_start, 6.5 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-L' template_name, '1' aws_code, '1' shift_code, '07:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '07:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-M' template_name, '1' aws_code, '1' shift_code, '07:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '08:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-N' template_name, '1' aws_code, '1' shift_code, '07:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '09:00' core_start, 5.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-O' template_name, '1' aws_code, '1' shift_code, '07:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '09:00' core_start, 5.5 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-P' template_name, '1' aws_code, '1' shift_code, '07:30' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '08:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-Q' template_name, '1' aws_code, '1' shift_code, '07:30' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '09:00' core_start, 5.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-R' template_name, '1' aws_code, '1' shift_code, '08:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '08:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-S' template_name, '1' aws_code, '1' shift_code, '08:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '09:00' core_start, 5.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-T' template_name, '1' aws_code, '1' shift_code, '08:30' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '09:00' core_start, 5.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-U' template_name, '1' aws_code, '1' shift_code, '09:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '09:00' core_start, 5.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-A' template_name, '2' aws_code, '1' shift_code, '06:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '09:00' core_start, 4.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-B' template_name, '2' aws_code, '1' shift_code, '06:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.75 lunch_duration, '09:00' core_start, 4.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-C' template_name, '2' aws_code, '1' shift_code, '06:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 1.0 lunch_duration, '09:00' core_start, 4.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-D' template_name, '2' aws_code, '1' shift_code, '07:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '09:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-E' template_name, '2' aws_code, '1' shift_code, '07:00' shift_start, 8.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '09:00' core_start, 6.5 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-F' template_name, '2' aws_code, '1' shift_code, '07:00' shift_start, 8.0 shift_duration, '11:30' lunch_start, 1.0 lunch_duration, '07:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-A' template_name, '3' aws_code, '1' shift_code, '06:30' shift_start, 6.0 shift_duration, '09:00' lunch_start, 4.0 lunch_duration, '06:30' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-B' template_name, '3' aws_code, '1' shift_code, '06:30' shift_start, 9.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '06:30' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-C' template_name, '3' aws_code, '1' shift_code, '06:30' shift_start, 9.5 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '06:30' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-D' template_name, '3' aws_code, '1' shift_code, '07:00' shift_start, 4.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '08:00' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-E' template_name, '3' aws_code, '1' shift_code, '07:00' shift_start, 9.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '08:00' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-F' template_name, '3' aws_code, '1' shift_code, '07:15' shift_start, 8.0 shift_duration, '11:45' lunch_start, 0.75 lunch_duration, '08:00' core_start, 8.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-A' template_name, '4' aws_code, '1' shift_code, '06:30' shift_start, 6.0 shift_duration, '09:00' lunch_start, 4.0 lunch_duration, '06:30' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-B' template_name, '4' aws_code, '1' shift_code, '06:30' shift_start, 9.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '06:30' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-C' template_name, '4' aws_code, '1' shift_code, '06:30' shift_start, 9.5 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '06:30' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-D' template_name, '4' aws_code, '1' shift_code, '07:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '08:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-E' template_name, '4' aws_code, '1' shift_code, '07:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '09:00' core_start, 6.5 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-F' template_name, '4' aws_code, '1' shift_code, '07:00' shift_start, 8.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '09:00' core_start, 2.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-A' template_name, '5' aws_code, '1' shift_code, '06:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '06:30' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-B' template_name, '5' aws_code, '1' shift_code, '06:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '08:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-C' template_name, '5' aws_code, '1' shift_code, '06:00' shift_start, 10.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '06:30' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-D' template_name, '5' aws_code, '1' shift_code, '06:30' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '07:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-E' template_name, '5' aws_code, '1' shift_code, '07:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '07:30' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-F' template_name, '5' aws_code, '1' shift_code, '07:15' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.75 lunch_duration, '08:00' core_start, 4.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-G' template_name, '5' aws_code, '1' shift_code, '07:30' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '08:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-H' template_name, '5' aws_code, '1' shift_code, '08:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '08:30' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-I' template_name, '5' aws_code, '1' shift_code, '08:30' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '09:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-A' template_name, '6' aws_code, '1' shift_code, '05:00' shift_start, 9.0 shift_duration, '10:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-B' template_name, '6' aws_code, '1' shift_code, '05:00' shift_start, 9.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-C' template_name, '6' aws_code, '1' shift_code, '05:00' shift_start, 9.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-D' template_name, '6' aws_code, '1' shift_code, '05:30' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-E' template_name, '6' aws_code, '1' shift_code, '05:30' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-F' template_name, '6' aws_code, '1' shift_code, '05:30' shift_start, 9.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-G' template_name, '6' aws_code, '1' shift_code, '05:30' shift_start, 9.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-H' template_name, '6' aws_code, '1' shift_code, '06:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-I' template_name, '6' aws_code, '1' shift_code, '06:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-J' template_name, '6' aws_code, '1' shift_code, '06:00' shift_start, 9.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-K' template_name, '6' aws_code, '1' shift_code, '06:00' shift_start, 9.0 shift_duration, '11:00' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-L' template_name, '6' aws_code, '1' shift_code, '06:00' shift_start, 9.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-M' template_name, '6' aws_code, '1' shift_code, '06:15' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-N' template_name, '6' aws_code, '1' shift_code, '06:15' shift_start, 9.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-O' template_name, '6' aws_code, '1' shift_code, '06:30' shift_start, 8.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-P' template_name, '6' aws_code, '1' shift_code, '06:30' shift_start, 9.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-Q' template_name, '6' aws_code, '1' shift_code, '06:30' shift_start, 9.0 shift_duration, '11:00' lunch_start, 0.75 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-R' template_name, '6' aws_code, '1' shift_code, '06:30' shift_start, 9.0 shift_duration, '11:00' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-S' template_name, '6' aws_code, '1' shift_code, '06:30' shift_start, 9.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-T' template_name, '6' aws_code, '1' shift_code, '06:30' shift_start, 9.0 shift_duration, '12:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-U' template_name, '6' aws_code, '1' shift_code, '06:45' shift_start, 9.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-V' template_name, '6' aws_code, '1' shift_code, '07:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-W' template_name, '6' aws_code, '1' shift_code, '07:00' shift_start, 8.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-X' template_name, '6' aws_code, '1' shift_code, '07:00' shift_start, 9.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-Y' template_name, '6' aws_code, '1' shift_code, '07:00' shift_start, 9.0 shift_duration, '11:00' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-Z' template_name, '6' aws_code, '1' shift_code, '07:00' shift_start, 9.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AA' template_name, '6' aws_code, '1' shift_code, '07:18' shift_start, 9.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AB' template_name, '6' aws_code, '1' shift_code, '07:30' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AC' template_name, '6' aws_code, '1' shift_code, '07:30' shift_start, 9.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AD' template_name, '6' aws_code, '1' shift_code, '08:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AE' template_name, '6' aws_code, '1' shift_code, '08:00' shift_start, 9.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-A' template_name, '7' aws_code, '1' shift_code, '05:00' shift_start, 10.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-B' template_name, '7' aws_code, '1' shift_code, '06:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-C' template_name, '7' aws_code, '1' shift_code, '07:00' shift_start, 4.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-D' template_name, '7' aws_code, '1' shift_code, '07:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-E' template_name, '7' aws_code, '1' shift_code, '07:00' shift_start, 8.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-A' template_name, '8' aws_code, '1' shift_code, '04:00' shift_start, 10.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-B' template_name, '8' aws_code, '1' shift_code, '04:30' shift_start, 10.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-C' template_name, '8' aws_code, '1' shift_code, '05:00' shift_start, 10.0 shift_duration, '11:00' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-D' template_name, '8' aws_code, '1' shift_code, '05:00' shift_start, 10.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-E' template_name, '8' aws_code, '1' shift_code, '05:30' shift_start, 10.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-F' template_name, '8' aws_code, '1' shift_code, '05:30' shift_start, 10.0 shift_duration, '11:00' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-G' template_name, '8' aws_code, '1' shift_code, '05:45' shift_start, 10.0 shift_duration, '11:00' lunch_start, 0.75 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-H' template_name, '8' aws_code, '1' shift_code, '06:00' shift_start, 10.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-I' template_name, '8' aws_code, '1' shift_code, '06:00' shift_start, 10.0 shift_duration, '11:00' lunch_start, 0.75 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-J' template_name, '8' aws_code, '1' shift_code, '06:00' shift_start, 10.0 shift_duration, '11:00' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-K' template_name, '8' aws_code, '1' shift_code, '06:00' shift_start, 10.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-L' template_name, '8' aws_code, '1' shift_code, '06:30' shift_start, 10.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-M' template_name, '8' aws_code, '1' shift_code, '06:30' shift_start, 10.0 shift_duration, '11:00' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-N' template_name, '8' aws_code, '1' shift_code, '06:30' shift_start, 10.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-O' template_name, '8' aws_code, '1' shift_code, '06:45' shift_start, 10.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-P' template_name, '8' aws_code, '1' shift_code, '07:00' shift_start, 10.0 shift_duration, '11:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-Q' template_name, '8' aws_code, '1' shift_code, '07:00' shift_start, 10.0 shift_duration, '11:00' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-R' template_name, '8' aws_code, '1' shift_code, '07:00' shift_start, 10.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-S' template_name, '8' aws_code, '1' shift_code, '07:15' shift_start, 10.0 shift_duration, '11:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-T' template_name, '8' aws_code, '1' shift_code, '07:30' shift_start, 10.0 shift_duration, '12:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-A' template_name, '1' aws_code, '2' shift_code, '12:00' shift_start, 8.0 shift_duration, '16:00' lunch_start, 0.5 lunch_duration, '13:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-B' template_name, '1' aws_code, '2' shift_code, '14:00' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '14:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-C' template_name, '1' aws_code, '2' shift_code, '14:00' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '14:30' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-D' template_name, '1' aws_code, '2' shift_code, '14:00' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '15:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-E' template_name, '1' aws_code, '2' shift_code, '14:00' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '16:00' core_start, 5.5 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-F' template_name, '1' aws_code, '2' shift_code, '14:00' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '16:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-G' template_name, '1' aws_code, '2' shift_code, '14:00' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '16:00' core_start, 5.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-H' template_name, '1' aws_code, '2' shift_code, '14:00' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '16:30' core_start, 5.5 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-I' template_name, '1' aws_code, '2' shift_code, '14:00' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '17:00' core_start, 5.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-J' template_name, '1' aws_code, '2' shift_code, '14:30' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '16:00' core_start, 6.5 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-K' template_name, '1' aws_code, '2' shift_code, '14:30' shift_start, 8.0 shift_duration, '19:00' lunch_start, 0.5 lunch_duration, '14:30' core_start, 8.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-L' template_name, '1' aws_code, '2' shift_code, '14:30' shift_start, 8.0 shift_duration, '18:30' lunch_start, 0.5 lunch_duration, '15:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-M' template_name, '1' aws_code, '2' shift_code, '15:00' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '17:00' core_start, 5.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-N' template_name, '1' aws_code, '2' shift_code, '16:00' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '17:00' core_start, 5.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-O' template_name, '1' aws_code, '2' shift_code, '16:30' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '17:30' core_start, 5.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-P' template_name, '1' aws_code, '2' shift_code, '17:00' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '17:00' core_start, 5.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-A' template_name, '2' aws_code, '2' shift_code, '14:00' shift_start, 8.0 shift_duration, '16:00' lunch_start, 0.5 lunch_duration, '16:00' core_start, 4.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-B' template_name, '2' aws_code, '2' shift_code, '15:00' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '17:00' core_start, 4.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-C' template_name, '2' aws_code, '2' shift_code, '15:00' shift_start, 8.0 shift_duration, '19:00' lunch_start, 0.5 lunch_duration, '18:00' core_start, 4.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-D' template_name, '2' aws_code, '2' shift_code, '15:00' shift_start, 8.0 shift_duration, '19:00' lunch_start, 0.5 lunch_duration, '17:00' core_start, 4.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-E' template_name, '2' aws_code, '2' shift_code, '15:00' shift_start, 8.0 shift_duration, '19:00' lunch_start, 0.75 lunch_duration, '16:00' core_start, 7.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-F' template_name, '2' aws_code, '2' shift_code, '15:30' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '15:30' core_start, 6.5 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-A' template_name, '3' aws_code, '2' shift_code, '15:00' shift_start, 4.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '16:00' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-B' template_name, '3' aws_code, '2' shift_code, '15:00' shift_start, 9.0 shift_duration, '19:00' lunch_start, 0.5 lunch_duration, '16:00' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-C' template_name, '3' aws_code, '2' shift_code, '15:30' shift_start, 4.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '16:00' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-D' template_name, '3' aws_code, '2' shift_code, '15:30' shift_start, 9.0 shift_duration, '19:00' lunch_start, 0.5 lunch_duration, '16:00' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-E' template_name, '3' aws_code, '2' shift_code, '16:00' shift_start, 8.0 shift_duration, '20:30' lunch_start, 0.5 lunch_duration, '16:00' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-F' template_name, '3' aws_code, '2' shift_code, '16:00' shift_start, 8.0 shift_duration, '20:30' lunch_start, 3.0 lunch_duration, '16:00' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-G' template_name, '3' aws_code, '2' shift_code, '16:00' shift_start, 6.0 shift_duration, '20:30' lunch_start, 3.0 lunch_duration, '16:00' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-H' template_name, '3' aws_code, '2' shift_code, '16:00' shift_start, 9.0 shift_duration, '20:30' lunch_start, 0.5 lunch_duration, '16:00' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-I' template_name, '3' aws_code, '2' shift_code, '16:00' shift_start, 9.5 shift_duration, '20:30' lunch_start, 0.5 lunch_duration, '16:00' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-A' template_name, '4' aws_code, '2' shift_code, '15:00' shift_start, 8.0 shift_duration, '19:30' lunch_start, 0.5 lunch_duration, '16:00' core_start, 2.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-B' template_name, '4' aws_code, '2' shift_code, '15:30' shift_start, 8.0 shift_duration, '19:00' lunch_start, 0.5 lunch_duration, '16:30' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-C' template_name, '4' aws_code, '2' shift_code, '16:00' shift_start, 6.0 shift_duration, '20:30' lunch_start, 3.0 lunch_duration, '16:00' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-D' template_name, '4' aws_code, '2' shift_code, '16:00' shift_start, 6.0 shift_duration, '20:30' lunch_start, 4.0 lunch_duration, '16:00' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-E' template_name, '4' aws_code, '2' shift_code, '16:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '16:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-F' template_name, '4' aws_code, '2' shift_code, '16:00' shift_start, 9.0 shift_duration, '20:30' lunch_start, 0.5 lunch_duration, '16:00' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-G' template_name, '4' aws_code, '2' shift_code, '16:00' shift_start, 9.5 shift_duration, '20:30' lunch_start, 0.5 lunch_duration, '16:00' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-A' template_name, '5' aws_code, '2' shift_code, '14:00' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '16:00' core_start, 2.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-B' template_name, '5' aws_code, '2' shift_code, '14:00' shift_start, 10.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '14:30' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-C' template_name, '5' aws_code, '2' shift_code, '14:30' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '15:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-D' template_name, '5' aws_code, '2' shift_code, '15:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '15:00' core_start, 4.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-E' template_name, '5' aws_code, '2' shift_code, '15:00' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '15:30' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-F' template_name, '5' aws_code, '2' shift_code, '15:30' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '16:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-G' template_name, '5' aws_code, '2' shift_code, '16:00' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '16:30' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-H' template_name, '5' aws_code, '2' shift_code, '16:30' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '17:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-I' template_name, '5' aws_code, '2' shift_code, '17:00' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '17:30' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-A' template_name, '6' aws_code, '2' shift_code, '12:30' shift_start, 8.0 shift_duration, '16:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-B' template_name, '6' aws_code, '2' shift_code, '12:30' shift_start, 9.0 shift_duration, '16:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-C' template_name, '6' aws_code, '2' shift_code, '13:30' shift_start, 9.0 shift_duration, '17:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-D' template_name, '6' aws_code, '2' shift_code, '13:45' shift_start, 9.0 shift_duration, '18:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-E' template_name, '6' aws_code, '2' shift_code, '14:00' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-F' template_name, '6' aws_code, '2' shift_code, '14:00' shift_start, 9.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-G' template_name, '6' aws_code, '2' shift_code, '14:00' shift_start, 9.0 shift_duration, '19:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-H' template_name, '6' aws_code, '2' shift_code, '14:00' shift_start, 9.0 shift_duration, '19:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-I' template_name, '6' aws_code, '2' shift_code, '14:30' shift_start, 8.0 shift_duration, '18:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-J' template_name, '6' aws_code, '2' shift_code, '14:30' shift_start, 8.0 shift_duration, '19:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-K' template_name, '6' aws_code, '2' shift_code, '14:30' shift_start, 9.0 shift_duration, '18:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-L' template_name, '6' aws_code, '2' shift_code, '14:30' shift_start, 9.0 shift_duration, '18:30' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-M' template_name, '6' aws_code, '2' shift_code, '14:30' shift_start, 9.0 shift_duration, '19:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-N' template_name, '6' aws_code, '2' shift_code, '14:30' shift_start, 9.0 shift_duration, '19:00' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-O' template_name, '6' aws_code, '2' shift_code, '14:45' shift_start, 9.0 shift_duration, '19:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-P' template_name, '6' aws_code, '2' shift_code, '14:45' shift_start, 9.0 shift_duration, '19:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-Q' template_name, '6' aws_code, '2' shift_code, '15:00' shift_start, 8.0 shift_duration, '19:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-R' template_name, '6' aws_code, '2' shift_code, '15:00' shift_start, 8.0 shift_duration, '20:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-S' template_name, '6' aws_code, '2' shift_code, '15:00' shift_start, 9.0 shift_duration, '19:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-T' template_name, '6' aws_code, '2' shift_code, '15:00' shift_start, 9.0 shift_duration, '19:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-U' template_name, '6' aws_code, '2' shift_code, '15:00' shift_start, 9.0 shift_duration, '20:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-V' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, 8.0 shift_duration, '19:24' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-W' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, 8.0 shift_duration, '19:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-X' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, 8.0 shift_duration, '19:42' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-Y' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, 8.0 shift_duration, '19:45' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-Z' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, 8.0 shift_duration, '20:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AA' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, 8.0 shift_duration, '20:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AB' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, 9.0 shift_duration, '19:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AC' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, 9.0 shift_duration, '19:24' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AD' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, 9.0 shift_duration, '19:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AE' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, 9.0 shift_duration, '19:42' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AF' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, 9.0 shift_duration, '19:45' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AG' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, 9.0 shift_duration, '20:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AH' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, 9.0 shift_duration, '20:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AI' template_name, '6' aws_code, '2' shift_code, '15:45' shift_start, 9.0 shift_duration, '19:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-A' template_name, '7' aws_code, '2' shift_code, '14:30' shift_start, 8.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-B' template_name, '7' aws_code, '2' shift_code, '15:00' shift_start, 4.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-C' template_name, '7' aws_code, '2' shift_code, '15:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-D' template_name, '7' aws_code, '2' shift_code, '15:00' shift_start, 8.0 shift_duration, '19:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-A' template_name, '8' aws_code, '2' shift_code, '14:00' shift_start, 10.0 shift_duration, '18:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-B' template_name, '8' aws_code, '2' shift_code, '14:00' shift_start, 10.0 shift_duration, '19:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-C' template_name, '8' aws_code, '2' shift_code, '14:30' shift_start, 10.0 shift_duration, '18:30' lunch_start, 0.75 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-D' template_name, '8' aws_code, '2' shift_code, '14:30' shift_start, 10.0 shift_duration, '19:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-E' template_name, '8' aws_code, '2' shift_code, '14:30' shift_start, 10.0 shift_duration, '20:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-F' template_name, '8' aws_code, '2' shift_code, '14:45' shift_start, 10.0 shift_duration, '19:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-G' template_name, '8' aws_code, '2' shift_code, '14:45' shift_start, 10.0 shift_duration, '20:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-H' template_name, '8' aws_code, '2' shift_code, '15:00' shift_start, 10.0 shift_duration, '19:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-I' template_name, '8' aws_code, '2' shift_code, '15:00' shift_start, 10.0 shift_duration, '19:30' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-J' template_name, '8' aws_code, '2' shift_code, '15:00' shift_start, 10.0 shift_duration, '20:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-K' template_name, '8' aws_code, '2' shift_code, '15:00' shift_start, 10.0 shift_duration, '20:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-L' template_name, '8' aws_code, '2' shift_code, '15:00' shift_start, 10.0 shift_duration, '23:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-M' template_name, '8' aws_code, '2' shift_code, '15:15' shift_start, 10.0 shift_duration, '20:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-N' template_name, '8' aws_code, '2' shift_code, '15:30' shift_start, 10.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-O' template_name, '8' aws_code, '2' shift_code, '15:30' shift_start, 10.0 shift_duration, '19:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-P' template_name, '8' aws_code, '2' shift_code, '15:30' shift_start, 10.0 shift_duration, '19:30' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-Q' template_name, '8' aws_code, '2' shift_code, '15:30' shift_start, 10.0 shift_duration, '20:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-R' template_name, '8' aws_code, '2' shift_code, '16:00' shift_start, 10.0 shift_duration, '19:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-S' template_name, '8' aws_code, '2' shift_code, '16:30' shift_start, 10.0 shift_duration, '21:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-T' template_name, '8' aws_code, '2' shift_code, '16:30' shift_start, 10.0 shift_duration, '21:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-U' template_name, '8' aws_code, '2' shift_code, '17:00' shift_start, 10.0 shift_duration, '22:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-E' template_name, '7' aws_code, '2' shift_code, '15:00' shift_start, 10.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-A' template_name, '1' aws_code, '3' shift_code, '22:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '23:00' core_start, 5.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-B' template_name, '1' aws_code, '3' shift_code, '22:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '23:00' core_start, 5.5 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-C' template_name, '1' aws_code, '3' shift_code, '22:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '23:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-D' template_name, '1' aws_code, '3' shift_code, '22:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '22:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-E' template_name, '1' aws_code, '3' shift_code, '22:00' shift_start, 8.0 shift_duration, '02:00' lunch_start, 0.5 lunch_duration, '22:00' core_start, 8.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-F' template_name, '1' aws_code, '3' shift_code, '24:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '02:00' core_start, 6.5 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-A' template_name, '2' aws_code, '3' shift_code, '22:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '24:00' core_start, 4.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-B' template_name, '2' aws_code, '3' shift_code, '22:00' shift_start, 8.0 shift_duration, '24:00' lunch_start, 0.5 lunch_duration, '24:00' core_start, 4.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-C' template_name, '2' aws_code, '3' shift_code, '23:30' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '23:30' core_start, 6.5 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-D' template_name, '2' aws_code, '3' shift_code, '24:00' shift_start, 8.0 shift_duration, '04:00' lunch_start, 0.75 lunch_duration, '01:00' core_start, 7.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-A' template_name, '3' aws_code, '3' shift_code, '21:30' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '21:30' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-B' template_name, '3' aws_code, '3' shift_code, '23:00' shift_start, 4.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '24:00' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-C' template_name, '3' aws_code, '3' shift_code, '23:00' shift_start, 9.0 shift_duration, '03:30' lunch_start, 0.5 lunch_duration, '24:00' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-D' template_name, '3' aws_code, '3' shift_code, '21:30' shift_start, 9.5 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '21:30' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-E' template_name, '3' aws_code, '3' shift_code, '21:30' shift_start, 6.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '21:30' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-F' template_name, '3' aws_code, '3' shift_code, '21:30' shift_start, 9.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '21:30' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-A' template_name, '4' aws_code, '3' shift_code, '00:30' shift_start, 8.0 shift_duration, '04:30' lunch_start, 0.5 lunch_duration, '02:00' core_start, 2.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-B' template_name, '4' aws_code, '3' shift_code, '21:30' shift_start, 6.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '21:30' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-C' template_name, '4' aws_code, '3' shift_code, '21:30' shift_start, 9.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '21:30' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-D' template_name, '4' aws_code, '3' shift_code, '21:30' shift_start, 9.5 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '21:30' core_start, 1.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-E' template_name, '4' aws_code, '3' shift_code, '23:00' shift_start, 8.0 shift_duration, '02:30' lunch_start, 0.5 lunch_duration, '24:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-F' template_name, '4' aws_code, '3' shift_code, '24:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '24:00' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-A' template_name, '5' aws_code, '3' shift_code, '23:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '23:30' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-B' template_name, '5' aws_code, '3' shift_code, '23:00' shift_start, 10.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '23:30' core_start, 6.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-C' template_name, '5' aws_code, '3' shift_code, '23:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '23:00' core_start, 4.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-D' template_name, '5' aws_code, '3' shift_code, '24:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '01:00' core_start, 2.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-A' template_name, '6' aws_code, '3' shift_code, '02:00' shift_start, 9.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-B' template_name, '6' aws_code, '3' shift_code, '02:00' shift_start, 9.0 shift_duration, '06:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-C' template_name, '6' aws_code, '3' shift_code, '02:00' shift_start, 8.0 shift_duration, '06:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-D' template_name, '6' aws_code, '3' shift_code, '20:30' shift_start, 9.0 shift_duration, '01:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-E' template_name, '6' aws_code, '3' shift_code, '20:30' shift_start, 8.0 shift_duration, '01:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-F' template_name, '6' aws_code, '3' shift_code, '21:00' shift_start, 9.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-G' template_name, '6' aws_code, '3' shift_code, '21:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-H' template_name, '6' aws_code, '3' shift_code, '21:30' shift_start, 9.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-I' template_name, '6' aws_code, '3' shift_code, '21:30' shift_start, 9.0 shift_duration, '02:00' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-J' template_name, '6' aws_code, '3' shift_code, '21:30' shift_start, 8.0 shift_duration, '02:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-K' template_name, '6' aws_code, '3' shift_code, '21:30' shift_start, 9.0 shift_duration, '02:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-L' template_name, '6' aws_code, '3' shift_code, '22:00' shift_start, 9.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-M' template_name, '6' aws_code, '3' shift_code, '22:00' shift_start, 9.0 shift_duration, '00:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-N' template_name, '6' aws_code, '3' shift_code, '22:00' shift_start, 9.0 shift_duration, '02:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-O' template_name, '6' aws_code, '3' shift_code, '22:00' shift_start, 8.0 shift_duration, '02:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-P' template_name, '6' aws_code, '3' shift_code, '23:00' shift_start, 9.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-Q' template_name, '6' aws_code, '3' shift_code, '23:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-R' template_name, '6' aws_code, '3' shift_code, '24:00' shift_start, 9.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-S' template_name, '6' aws_code, '3' shift_code, '24:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-A' template_name, '7' aws_code, '3' shift_code, '01:00' shift_start, 10.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-B' template_name, '7' aws_code, '3' shift_code, '23:00' shift_start, 4.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-C' template_name, '7' aws_code, '3' shift_code, '23:00' shift_start, 8.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-D' template_name, '7' aws_code, '3' shift_code, '23:00' shift_start, 8.0 shift_duration, '03:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-A' template_name, '8' aws_code, '3' shift_code, '19:15' shift_start, 10.0 shift_duration, '00:15' lunch_start, 0.75 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-B' template_name, '8' aws_code, '3' shift_code, '21:00' shift_start, 10.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-C' template_name, '8' aws_code, '3' shift_code, '21:30' shift_start, 10.0 shift_duration, '04:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-D' template_name, '8' aws_code, '3' shift_code, '21:45' shift_start, 10.0 shift_duration, '04:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-E' template_name, '8' aws_code, '3' shift_code, '22:00' shift_start, 10.0 shift_duration, '04:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-F' template_name, '8' aws_code, '3' shift_code, '22:00' shift_start, 10.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-G' template_name, '8' aws_code, '3' shift_code, '22:00' shift_start, 10.0 shift_duration, '03:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-H' template_name, '8' aws_code, '3' shift_code, '22:15' shift_start, 10.0 shift_duration, '04:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-I' template_name, '8' aws_code, '3' shift_code, '22:30' shift_start, 10.0 shift_duration, '03:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-J' template_name, '8' aws_code, '3' shift_code, '23:00' shift_start, 10.0 shift_duration, '04:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-K' template_name, '8' aws_code, '3' shift_code, '23:00' shift_start, 10.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-L' template_name, '8' aws_code, '3' shift_code, '23:30' shift_start, 10.0 shift_duration, '03:30' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-M' template_name, '8' aws_code, '3' shift_code, '23:30' shift_start, 10.0 shift_duration, '04:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-N' template_name, '8' aws_code, '3' shift_code, '23:30' shift_start, 10.0 shift_duration, '04:00' lunch_start, 1.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-O' template_name, '8' aws_code, '3' shift_code, '24:00' shift_start, 10.0 shift_duration, '00:00' lunch_start, 0.0 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-P' template_name, '8' aws_code, '3' shift_code, '24:00' shift_start, 10.0 shift_duration, '06:00' lunch_start, 0.5 lunch_duration, '00:00' core_start, 0.0 core_duration FROM dual
),
numbered_data AS (
    SELECT s.*,
           ROW_NUMBER() OVER (ORDER BY
               TO_NUMBER(shift_code), TO_NUMBER(aws_code), template_name
           ) AS rn
      FROM source_data s
),
id_base AS (
    SELECT NVL(MAX(template_id), 0) AS max_template_id
      FROM MROI_OTL_TOD_HOURS_TEMPLATES
)
SELECT b.max_template_id + d.rn,
       d.template_name,
       d.aws_code,
       d.shift_code,
       NULL AS graded_flag,
       NULL AS applicable_period,
       d.shift_start,
       d.shift_duration,
       d.lunch_start,
       d.lunch_duration,
       d.core_start,
       d.core_duration,
       NULL AS tod_hours,
       NULL AS night_diff_hours,
       NULL AS effective_start_date,
       NULL AS effective_end_date,
       NULL AS status,
       NVL(FND_GLOBAL.USER_ID, -1) AS created_by,
       SYSDATE AS creation_date,
       NVL(FND_GLOBAL.USER_ID, -1) AS last_updated_by,
       SYSDATE AS last_update_date,
       NVL(FND_GLOBAL.LOGIN_ID, -1) AS last_update_login
  FROM numbered_data d
 CROSS JOIN id_base b;

-- Expected result: 277 rows inserted.
COMMIT;
