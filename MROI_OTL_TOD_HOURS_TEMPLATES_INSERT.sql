/* ***************************************************************************
/*  Name       :    MROI_OTL_TOD_HOURS_TEMPLATES_INSERT
/*  Object Type:   	Template Data Insert
/*  Description:   	Template Data Load Insert.
/*  Calls      :    N/A
/*
/*  RICE Type  :    Extension
/*  RICE ID    :    EXT-0147
/*
/*  Change History:
/*  Date         MVP#    Name                    Ver    Modification
/*  -----------  ----    ----------------------  ----   -------------
/*  09/03/2026   N/A     Kishore Murari           1.00   Initial Creation for data fix
/*  09/03/2026   N/A     Kishore Murari           1.01   Updated data fix to remove duplicate names
/*  09/03/2026   N/A     Kishore Murari           1.02   Added Truncate to delete current data.
/*  09/09/2026   N/A     Kishore Murari           1.03   Fixed Effective Start Date.
/* ***************************************************************************/
set echo on feedback on

-- Consolidated insert generated from all three tabs of ALC Shift Schedules - All.xlsx
-- Rows: 277 (Shift 1, Shift 2, and Shift 3)
-- Time conversion: spreadsheet hundredths of an hour -> HH:MM text
--                  (500 -> 05:00; 550 -> 05:30; 575 -> 05:45; 2400 -> 24:00).
-- Duration conversion: spreadsheet hundredths -> fixed two-decimal text
--                      (0 -> 0.00; 50 -> 0.50; 950 -> 9.50; 1000 -> 10.00).
-- Template names are assigned uniquely within each shift using Excel-style suffixes:
-- A..Z, AA..AZ, BA..BZ, CA..CZ, and so on.
-- TEMPLATE_ID is populated from MROI_OTL_TOD_HOURS_TEMPLATES_S.NEXTVAL.

TRUNCATE TABLE XXMRO.MROI_OTL_TOD_HOURS_TEMPLATES;

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
    SELECT 'Shift 1' source_tab, 'Shift 1-A' template_name, '1' aws_code, '1' shift_code, '05:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '07:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-B' template_name, '1' aws_code, '1' shift_code, '05:30' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '07:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-C' template_name, '1' aws_code, '1' shift_code, '06:00' shift_start, '8.00' shift_duration, '10:30' lunch_start, '0.50' lunch_duration, '06:00' core_start, '8.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-D' template_name, '1' aws_code, '1' shift_code, '06:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '07:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-E' template_name, '1' aws_code, '1' shift_code, '06:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '08:30' core_start, '5.50' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-F' template_name, '1' aws_code, '1' shift_code, '06:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '09:00' core_start, '5.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-G' template_name, '1' aws_code, '1' shift_code, '06:30' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '08:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-H' template_name, '1' aws_code, '1' shift_code, '06:30' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '08:30' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-I' template_name, '1' aws_code, '1' shift_code, '06:30' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '09:00' core_start, '5.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-J' template_name, '1' aws_code, '1' shift_code, '06:30' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '09:00' core_start, '5.50' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-K' template_name, '1' aws_code, '1' shift_code, '07:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '08:00' core_start, '6.50' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-L' template_name, '1' aws_code, '1' shift_code, '07:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '07:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-M' template_name, '1' aws_code, '1' shift_code, '07:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '08:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-N' template_name, '1' aws_code, '1' shift_code, '07:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '09:00' core_start, '5.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-O' template_name, '1' aws_code, '1' shift_code, '07:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '09:00' core_start, '5.50' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-P' template_name, '1' aws_code, '1' shift_code, '07:30' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '08:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-Q' template_name, '1' aws_code, '1' shift_code, '07:30' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '09:00' core_start, '5.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-R' template_name, '1' aws_code, '1' shift_code, '08:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '08:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-S' template_name, '1' aws_code, '1' shift_code, '08:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '09:00' core_start, '5.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-T' template_name, '1' aws_code, '1' shift_code, '08:30' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '09:00' core_start, '5.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-U' template_name, '1' aws_code, '1' shift_code, '09:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '09:00' core_start, '5.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-V' template_name, '2' aws_code, '1' shift_code, '06:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '09:00' core_start, '4.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-W' template_name, '2' aws_code, '1' shift_code, '06:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.75' lunch_duration, '09:00' core_start, '4.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-X' template_name, '2' aws_code, '1' shift_code, '06:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '1.00' lunch_duration, '09:00' core_start, '4.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-Y' template_name, '2' aws_code, '1' shift_code, '07:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '09:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-Z' template_name, '2' aws_code, '1' shift_code, '07:00' shift_start, '8.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '09:00' core_start, '6.50' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AA' template_name, '2' aws_code, '1' shift_code, '07:00' shift_start, '8.00' shift_duration, '11:30' lunch_start, '1.00' lunch_duration, '07:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AB' template_name, '3' aws_code, '1' shift_code, '06:30' shift_start, '6.00' shift_duration, '09:00' lunch_start, '4.00' lunch_duration, '06:30' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AC' template_name, '3' aws_code, '1' shift_code, '06:30' shift_start, '9.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '06:30' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AD' template_name, '3' aws_code, '1' shift_code, '06:30' shift_start, '9.50' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '06:30' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AE' template_name, '3' aws_code, '1' shift_code, '07:00' shift_start, '4.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '08:00' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AF' template_name, '3' aws_code, '1' shift_code, '07:00' shift_start, '9.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '08:00' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AG' template_name, '3' aws_code, '1' shift_code, '07:15' shift_start, '8.00' shift_duration, '11:45' lunch_start, '0.75' lunch_duration, '08:00' core_start, '8.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AH' template_name, '4' aws_code, '1' shift_code, '06:30' shift_start, '6.00' shift_duration, '09:00' lunch_start, '4.00' lunch_duration, '06:30' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AI' template_name, '4' aws_code, '1' shift_code, '06:30' shift_start, '9.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '06:30' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AJ' template_name, '4' aws_code, '1' shift_code, '06:30' shift_start, '9.50' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '06:30' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AK' template_name, '4' aws_code, '1' shift_code, '07:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '08:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AL' template_name, '4' aws_code, '1' shift_code, '07:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '09:00' core_start, '6.50' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AM' template_name, '4' aws_code, '1' shift_code, '07:00' shift_start, '8.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '09:00' core_start, '2.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AN' template_name, '5' aws_code, '1' shift_code, '06:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '06:30' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AO' template_name, '5' aws_code, '1' shift_code, '06:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '08:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AP' template_name, '5' aws_code, '1' shift_code, '06:00' shift_start, '10.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '06:30' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AQ' template_name, '5' aws_code, '1' shift_code, '06:30' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '07:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AR' template_name, '5' aws_code, '1' shift_code, '07:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '07:30' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AS' template_name, '5' aws_code, '1' shift_code, '07:15' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.75' lunch_duration, '08:00' core_start, '4.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AT' template_name, '5' aws_code, '1' shift_code, '07:30' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '08:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AU' template_name, '5' aws_code, '1' shift_code, '08:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '08:30' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AV' template_name, '5' aws_code, '1' shift_code, '08:30' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '09:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AW' template_name, '6' aws_code, '1' shift_code, '05:00' shift_start, '9.00' shift_duration, '10:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AX' template_name, '6' aws_code, '1' shift_code, '05:00' shift_start, '9.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AY' template_name, '6' aws_code, '1' shift_code, '05:00' shift_start, '9.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-AZ' template_name, '6' aws_code, '1' shift_code, '05:30' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BA' template_name, '6' aws_code, '1' shift_code, '05:30' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BB' template_name, '6' aws_code, '1' shift_code, '05:30' shift_start, '9.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BC' template_name, '6' aws_code, '1' shift_code, '05:30' shift_start, '9.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BD' template_name, '6' aws_code, '1' shift_code, '06:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BE' template_name, '6' aws_code, '1' shift_code, '06:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BF' template_name, '6' aws_code, '1' shift_code, '06:00' shift_start, '9.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BG' template_name, '6' aws_code, '1' shift_code, '06:00' shift_start, '9.00' shift_duration, '11:00' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BH' template_name, '6' aws_code, '1' shift_code, '06:00' shift_start, '9.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BI' template_name, '6' aws_code, '1' shift_code, '06:15' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BJ' template_name, '6' aws_code, '1' shift_code, '06:15' shift_start, '9.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BK' template_name, '6' aws_code, '1' shift_code, '06:30' shift_start, '8.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BL' template_name, '6' aws_code, '1' shift_code, '06:30' shift_start, '9.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BM' template_name, '6' aws_code, '1' shift_code, '06:30' shift_start, '9.00' shift_duration, '11:00' lunch_start, '0.75' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BN' template_name, '6' aws_code, '1' shift_code, '06:30' shift_start, '9.00' shift_duration, '11:00' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BO' template_name, '6' aws_code, '1' shift_code, '06:30' shift_start, '9.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BP' template_name, '6' aws_code, '1' shift_code, '06:30' shift_start, '9.00' shift_duration, '12:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BQ' template_name, '6' aws_code, '1' shift_code, '06:45' shift_start, '9.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BR' template_name, '6' aws_code, '1' shift_code, '07:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BS' template_name, '6' aws_code, '1' shift_code, '07:00' shift_start, '8.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BT' template_name, '6' aws_code, '1' shift_code, '07:00' shift_start, '9.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BU' template_name, '6' aws_code, '1' shift_code, '07:00' shift_start, '9.00' shift_duration, '11:00' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BV' template_name, '6' aws_code, '1' shift_code, '07:00' shift_start, '9.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BW' template_name, '6' aws_code, '1' shift_code, '07:18' shift_start, '9.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BX' template_name, '6' aws_code, '1' shift_code, '07:30' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BY' template_name, '6' aws_code, '1' shift_code, '07:30' shift_start, '9.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-BZ' template_name, '6' aws_code, '1' shift_code, '08:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CA' template_name, '6' aws_code, '1' shift_code, '08:00' shift_start, '9.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CB' template_name, '7' aws_code, '1' shift_code, '05:00' shift_start, '10.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CC' template_name, '7' aws_code, '1' shift_code, '06:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CD' template_name, '7' aws_code, '1' shift_code, '07:00' shift_start, '4.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CE' template_name, '7' aws_code, '1' shift_code, '07:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CF' template_name, '7' aws_code, '1' shift_code, '07:00' shift_start, '8.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CG' template_name, '8' aws_code, '1' shift_code, '04:00' shift_start, '10.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CH' template_name, '8' aws_code, '1' shift_code, '04:30' shift_start, '10.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CI' template_name, '8' aws_code, '1' shift_code, '05:00' shift_start, '10.00' shift_duration, '11:00' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CJ' template_name, '8' aws_code, '1' shift_code, '05:00' shift_start, '10.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CK' template_name, '8' aws_code, '1' shift_code, '05:30' shift_start, '10.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CL' template_name, '8' aws_code, '1' shift_code, '05:30' shift_start, '10.00' shift_duration, '11:00' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CM' template_name, '8' aws_code, '1' shift_code, '05:45' shift_start, '10.00' shift_duration, '11:00' lunch_start, '0.75' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CN' template_name, '8' aws_code, '1' shift_code, '06:00' shift_start, '10.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CO' template_name, '8' aws_code, '1' shift_code, '06:00' shift_start, '10.00' shift_duration, '11:00' lunch_start, '0.75' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CP' template_name, '8' aws_code, '1' shift_code, '06:00' shift_start, '10.00' shift_duration, '11:00' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CQ' template_name, '8' aws_code, '1' shift_code, '06:00' shift_start, '10.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CR' template_name, '8' aws_code, '1' shift_code, '06:30' shift_start, '10.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CS' template_name, '8' aws_code, '1' shift_code, '06:30' shift_start, '10.00' shift_duration, '11:00' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CT' template_name, '8' aws_code, '1' shift_code, '06:30' shift_start, '10.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CU' template_name, '8' aws_code, '1' shift_code, '06:45' shift_start, '10.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CV' template_name, '8' aws_code, '1' shift_code, '07:00' shift_start, '10.00' shift_duration, '11:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CW' template_name, '8' aws_code, '1' shift_code, '07:00' shift_start, '10.00' shift_duration, '11:00' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CX' template_name, '8' aws_code, '1' shift_code, '07:00' shift_start, '10.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CY' template_name, '8' aws_code, '1' shift_code, '07:15' shift_start, '10.00' shift_duration, '11:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 1' source_tab, 'Shift 1-CZ' template_name, '8' aws_code, '1' shift_code, '07:30' shift_start, '10.00' shift_duration, '12:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-A' template_name, '1' aws_code, '2' shift_code, '12:00' shift_start, '8.00' shift_duration, '16:00' lunch_start, '0.50' lunch_duration, '13:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-B' template_name, '1' aws_code, '2' shift_code, '14:00' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '14:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-C' template_name, '1' aws_code, '2' shift_code, '14:00' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '14:30' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-D' template_name, '1' aws_code, '2' shift_code, '14:00' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '15:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-E' template_name, '1' aws_code, '2' shift_code, '14:00' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '16:00' core_start, '5.50' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-F' template_name, '1' aws_code, '2' shift_code, '14:00' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '16:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-G' template_name, '1' aws_code, '2' shift_code, '14:00' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '16:00' core_start, '5.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-H' template_name, '1' aws_code, '2' shift_code, '14:00' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '16:30' core_start, '5.50' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-I' template_name, '1' aws_code, '2' shift_code, '14:00' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '17:00' core_start, '5.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-J' template_name, '1' aws_code, '2' shift_code, '14:30' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '16:00' core_start, '6.50' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-K' template_name, '1' aws_code, '2' shift_code, '14:30' shift_start, '8.00' shift_duration, '19:00' lunch_start, '0.50' lunch_duration, '14:30' core_start, '8.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-L' template_name, '1' aws_code, '2' shift_code, '14:30' shift_start, '8.00' shift_duration, '18:30' lunch_start, '0.50' lunch_duration, '15:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-M' template_name, '1' aws_code, '2' shift_code, '15:00' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '17:00' core_start, '5.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-N' template_name, '1' aws_code, '2' shift_code, '16:00' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '17:00' core_start, '5.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-O' template_name, '1' aws_code, '2' shift_code, '16:30' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '17:30' core_start, '5.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-P' template_name, '1' aws_code, '2' shift_code, '17:00' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '17:00' core_start, '5.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-Q' template_name, '2' aws_code, '2' shift_code, '14:00' shift_start, '8.00' shift_duration, '16:00' lunch_start, '0.50' lunch_duration, '16:00' core_start, '4.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-R' template_name, '2' aws_code, '2' shift_code, '15:00' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '17:00' core_start, '4.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-S' template_name, '2' aws_code, '2' shift_code, '15:00' shift_start, '8.00' shift_duration, '19:00' lunch_start, '0.50' lunch_duration, '18:00' core_start, '4.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-T' template_name, '2' aws_code, '2' shift_code, '15:00' shift_start, '8.00' shift_duration, '19:00' lunch_start, '0.50' lunch_duration, '17:00' core_start, '4.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-U' template_name, '2' aws_code, '2' shift_code, '15:00' shift_start, '8.00' shift_duration, '19:00' lunch_start, '0.75' lunch_duration, '16:00' core_start, '7.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-V' template_name, '2' aws_code, '2' shift_code, '15:30' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '15:30' core_start, '6.50' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-W' template_name, '3' aws_code, '2' shift_code, '15:00' shift_start, '4.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '16:00' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-X' template_name, '3' aws_code, '2' shift_code, '15:00' shift_start, '9.00' shift_duration, '19:00' lunch_start, '0.50' lunch_duration, '16:00' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-Y' template_name, '3' aws_code, '2' shift_code, '15:30' shift_start, '4.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '16:00' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-Z' template_name, '3' aws_code, '2' shift_code, '15:30' shift_start, '9.00' shift_duration, '19:00' lunch_start, '0.50' lunch_duration, '16:00' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AA' template_name, '3' aws_code, '2' shift_code, '16:00' shift_start, '8.00' shift_duration, '20:30' lunch_start, '0.50' lunch_duration, '16:00' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AB' template_name, '3' aws_code, '2' shift_code, '16:00' shift_start, '8.00' shift_duration, '20:30' lunch_start, '3.00' lunch_duration, '16:00' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AC' template_name, '3' aws_code, '2' shift_code, '16:00' shift_start, '6.00' shift_duration, '20:30' lunch_start, '3.00' lunch_duration, '16:00' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AD' template_name, '3' aws_code, '2' shift_code, '16:00' shift_start, '9.00' shift_duration, '20:30' lunch_start, '0.50' lunch_duration, '16:00' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AE' template_name, '3' aws_code, '2' shift_code, '16:00' shift_start, '9.50' shift_duration, '20:30' lunch_start, '0.50' lunch_duration, '16:00' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AF' template_name, '4' aws_code, '2' shift_code, '15:00' shift_start, '8.00' shift_duration, '19:30' lunch_start, '0.50' lunch_duration, '16:00' core_start, '2.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AG' template_name, '4' aws_code, '2' shift_code, '15:30' shift_start, '8.00' shift_duration, '19:00' lunch_start, '0.50' lunch_duration, '16:30' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AH' template_name, '4' aws_code, '2' shift_code, '16:00' shift_start, '6.00' shift_duration, '20:30' lunch_start, '3.00' lunch_duration, '16:00' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AI' template_name, '4' aws_code, '2' shift_code, '16:00' shift_start, '6.00' shift_duration, '20:30' lunch_start, '4.00' lunch_duration, '16:00' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AJ' template_name, '4' aws_code, '2' shift_code, '16:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '16:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AK' template_name, '4' aws_code, '2' shift_code, '16:00' shift_start, '9.00' shift_duration, '20:30' lunch_start, '0.50' lunch_duration, '16:00' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AL' template_name, '4' aws_code, '2' shift_code, '16:00' shift_start, '9.50' shift_duration, '20:30' lunch_start, '0.50' lunch_duration, '16:00' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AM' template_name, '5' aws_code, '2' shift_code, '14:00' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '16:00' core_start, '2.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AN' template_name, '5' aws_code, '2' shift_code, '14:00' shift_start, '10.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '14:30' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AO' template_name, '5' aws_code, '2' shift_code, '14:30' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '15:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AP' template_name, '5' aws_code, '2' shift_code, '15:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '15:00' core_start, '4.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AQ' template_name, '5' aws_code, '2' shift_code, '15:00' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '15:30' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AR' template_name, '5' aws_code, '2' shift_code, '15:30' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '16:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AS' template_name, '5' aws_code, '2' shift_code, '16:00' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '16:30' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AT' template_name, '5' aws_code, '2' shift_code, '16:30' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '17:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AU' template_name, '5' aws_code, '2' shift_code, '17:00' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '17:30' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AV' template_name, '6' aws_code, '2' shift_code, '12:30' shift_start, '8.00' shift_duration, '16:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AW' template_name, '6' aws_code, '2' shift_code, '12:30' shift_start, '9.00' shift_duration, '16:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AX' template_name, '6' aws_code, '2' shift_code, '13:30' shift_start, '9.00' shift_duration, '17:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AY' template_name, '6' aws_code, '2' shift_code, '13:45' shift_start, '9.00' shift_duration, '18:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-AZ' template_name, '6' aws_code, '2' shift_code, '14:00' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BA' template_name, '6' aws_code, '2' shift_code, '14:00' shift_start, '9.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BB' template_name, '6' aws_code, '2' shift_code, '14:00' shift_start, '9.00' shift_duration, '19:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BC' template_name, '6' aws_code, '2' shift_code, '14:00' shift_start, '9.00' shift_duration, '19:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BD' template_name, '6' aws_code, '2' shift_code, '14:30' shift_start, '8.00' shift_duration, '18:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BE' template_name, '6' aws_code, '2' shift_code, '14:30' shift_start, '8.00' shift_duration, '19:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BF' template_name, '6' aws_code, '2' shift_code, '14:30' shift_start, '9.00' shift_duration, '18:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BG' template_name, '6' aws_code, '2' shift_code, '14:30' shift_start, '9.00' shift_duration, '18:30' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BH' template_name, '6' aws_code, '2' shift_code, '14:30' shift_start, '9.00' shift_duration, '19:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BI' template_name, '6' aws_code, '2' shift_code, '14:30' shift_start, '9.00' shift_duration, '19:00' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BJ' template_name, '6' aws_code, '2' shift_code, '14:45' shift_start, '9.00' shift_duration, '19:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BK' template_name, '6' aws_code, '2' shift_code, '14:45' shift_start, '9.00' shift_duration, '19:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BL' template_name, '6' aws_code, '2' shift_code, '15:00' shift_start, '8.00' shift_duration, '19:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BM' template_name, '6' aws_code, '2' shift_code, '15:00' shift_start, '8.00' shift_duration, '20:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BN' template_name, '6' aws_code, '2' shift_code, '15:00' shift_start, '9.00' shift_duration, '19:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BO' template_name, '6' aws_code, '2' shift_code, '15:00' shift_start, '9.00' shift_duration, '19:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BP' template_name, '6' aws_code, '2' shift_code, '15:00' shift_start, '9.00' shift_duration, '20:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BQ' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, '8.00' shift_duration, '19:24' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BR' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, '8.00' shift_duration, '19:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BS' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, '8.00' shift_duration, '19:42' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BT' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, '8.00' shift_duration, '19:45' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BU' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, '8.00' shift_duration, '20:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BV' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, '8.00' shift_duration, '20:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BW' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, '9.00' shift_duration, '19:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BX' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, '9.00' shift_duration, '19:24' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BY' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, '9.00' shift_duration, '19:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-BZ' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, '9.00' shift_duration, '19:42' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CA' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, '9.00' shift_duration, '19:45' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CB' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, '9.00' shift_duration, '20:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CC' template_name, '6' aws_code, '2' shift_code, '15:30' shift_start, '9.00' shift_duration, '20:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CD' template_name, '6' aws_code, '2' shift_code, '15:45' shift_start, '9.00' shift_duration, '19:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CE' template_name, '7' aws_code, '2' shift_code, '14:30' shift_start, '8.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CF' template_name, '7' aws_code, '2' shift_code, '15:00' shift_start, '4.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CG' template_name, '7' aws_code, '2' shift_code, '15:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CH' template_name, '7' aws_code, '2' shift_code, '15:00' shift_start, '8.00' shift_duration, '19:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CI' template_name, '8' aws_code, '2' shift_code, '14:00' shift_start, '10.00' shift_duration, '18:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CJ' template_name, '8' aws_code, '2' shift_code, '14:00' shift_start, '10.00' shift_duration, '19:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CK' template_name, '8' aws_code, '2' shift_code, '14:30' shift_start, '10.00' shift_duration, '18:30' lunch_start, '0.75' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CL' template_name, '8' aws_code, '2' shift_code, '14:30' shift_start, '10.00' shift_duration, '19:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CM' template_name, '8' aws_code, '2' shift_code, '14:30' shift_start, '10.00' shift_duration, '20:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CN' template_name, '8' aws_code, '2' shift_code, '14:45' shift_start, '10.00' shift_duration, '19:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CO' template_name, '8' aws_code, '2' shift_code, '14:45' shift_start, '10.00' shift_duration, '20:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CP' template_name, '8' aws_code, '2' shift_code, '15:00' shift_start, '10.00' shift_duration, '19:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CQ' template_name, '8' aws_code, '2' shift_code, '15:00' shift_start, '10.00' shift_duration, '19:30' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CR' template_name, '8' aws_code, '2' shift_code, '15:00' shift_start, '10.00' shift_duration, '20:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CS' template_name, '8' aws_code, '2' shift_code, '15:00' shift_start, '10.00' shift_duration, '20:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CT' template_name, '8' aws_code, '2' shift_code, '15:00' shift_start, '10.00' shift_duration, '23:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CU' template_name, '8' aws_code, '2' shift_code, '15:15' shift_start, '10.00' shift_duration, '20:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CV' template_name, '8' aws_code, '2' shift_code, '15:30' shift_start, '10.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CW' template_name, '8' aws_code, '2' shift_code, '15:30' shift_start, '10.00' shift_duration, '19:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CX' template_name, '8' aws_code, '2' shift_code, '15:30' shift_start, '10.00' shift_duration, '19:30' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CY' template_name, '8' aws_code, '2' shift_code, '15:30' shift_start, '10.00' shift_duration, '20:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-CZ' template_name, '8' aws_code, '2' shift_code, '16:00' shift_start, '10.00' shift_duration, '19:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-DA' template_name, '8' aws_code, '2' shift_code, '16:30' shift_start, '10.00' shift_duration, '21:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-DB' template_name, '8' aws_code, '2' shift_code, '16:30' shift_start, '10.00' shift_duration, '21:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-DC' template_name, '8' aws_code, '2' shift_code, '17:00' shift_start, '10.00' shift_duration, '22:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 2' source_tab, 'Shift 2-DD' template_name, '7' aws_code, '2' shift_code, '15:00' shift_start, '10.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-A' template_name, '1' aws_code, '3' shift_code, '22:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '23:00' core_start, '5.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-B' template_name, '1' aws_code, '3' shift_code, '22:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '23:00' core_start, '5.50' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-C' template_name, '1' aws_code, '3' shift_code, '22:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '23:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-D' template_name, '1' aws_code, '3' shift_code, '22:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '22:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-E' template_name, '1' aws_code, '3' shift_code, '22:00' shift_start, '8.00' shift_duration, '02:00' lunch_start, '0.50' lunch_duration, '22:00' core_start, '8.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-F' template_name, '1' aws_code, '3' shift_code, '24:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '02:00' core_start, '6.50' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-G' template_name, '2' aws_code, '3' shift_code, '22:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '24:00' core_start, '4.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-H' template_name, '2' aws_code, '3' shift_code, '22:00' shift_start, '8.00' shift_duration, '24:00' lunch_start, '0.50' lunch_duration, '24:00' core_start, '4.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-I' template_name, '2' aws_code, '3' shift_code, '23:30' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '23:30' core_start, '6.50' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-J' template_name, '2' aws_code, '3' shift_code, '24:00' shift_start, '8.00' shift_duration, '04:00' lunch_start, '0.75' lunch_duration, '01:00' core_start, '7.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-K' template_name, '3' aws_code, '3' shift_code, '21:30' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '21:30' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-L' template_name, '3' aws_code, '3' shift_code, '23:00' shift_start, '4.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '24:00' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-M' template_name, '3' aws_code, '3' shift_code, '23:00' shift_start, '9.00' shift_duration, '03:30' lunch_start, '0.50' lunch_duration, '24:00' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-N' template_name, '3' aws_code, '3' shift_code, '21:30' shift_start, '9.50' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '21:30' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-O' template_name, '3' aws_code, '3' shift_code, '21:30' shift_start, '6.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '21:30' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-P' template_name, '3' aws_code, '3' shift_code, '21:30' shift_start, '9.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '21:30' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-Q' template_name, '4' aws_code, '3' shift_code, '00:30' shift_start, '8.00' shift_duration, '04:30' lunch_start, '0.50' lunch_duration, '02:00' core_start, '2.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-R' template_name, '4' aws_code, '3' shift_code, '21:30' shift_start, '6.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '21:30' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-S' template_name, '4' aws_code, '3' shift_code, '21:30' shift_start, '9.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '21:30' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-T' template_name, '4' aws_code, '3' shift_code, '21:30' shift_start, '9.50' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '21:30' core_start, '1.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-U' template_name, '4' aws_code, '3' shift_code, '23:00' shift_start, '8.00' shift_duration, '02:30' lunch_start, '0.50' lunch_duration, '24:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-V' template_name, '4' aws_code, '3' shift_code, '24:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '24:00' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-W' template_name, '5' aws_code, '3' shift_code, '23:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '23:30' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-X' template_name, '5' aws_code, '3' shift_code, '23:00' shift_start, '10.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '23:30' core_start, '6.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-Y' template_name, '5' aws_code, '3' shift_code, '23:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '23:00' core_start, '4.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-Z' template_name, '5' aws_code, '3' shift_code, '24:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '01:00' core_start, '2.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AA' template_name, '6' aws_code, '3' shift_code, '02:00' shift_start, '9.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AB' template_name, '6' aws_code, '3' shift_code, '02:00' shift_start, '9.00' shift_duration, '06:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AC' template_name, '6' aws_code, '3' shift_code, '02:00' shift_start, '8.00' shift_duration, '06:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AD' template_name, '6' aws_code, '3' shift_code, '20:30' shift_start, '9.00' shift_duration, '01:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AE' template_name, '6' aws_code, '3' shift_code, '20:30' shift_start, '8.00' shift_duration, '01:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AF' template_name, '6' aws_code, '3' shift_code, '21:00' shift_start, '9.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AG' template_name, '6' aws_code, '3' shift_code, '21:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AH' template_name, '6' aws_code, '3' shift_code, '21:30' shift_start, '9.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AI' template_name, '6' aws_code, '3' shift_code, '21:30' shift_start, '9.00' shift_duration, '02:00' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AJ' template_name, '6' aws_code, '3' shift_code, '21:30' shift_start, '8.00' shift_duration, '02:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AK' template_name, '6' aws_code, '3' shift_code, '21:30' shift_start, '9.00' shift_duration, '02:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AL' template_name, '6' aws_code, '3' shift_code, '22:00' shift_start, '9.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AM' template_name, '6' aws_code, '3' shift_code, '22:00' shift_start, '9.00' shift_duration, '00:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AN' template_name, '6' aws_code, '3' shift_code, '22:00' shift_start, '9.00' shift_duration, '02:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AO' template_name, '6' aws_code, '3' shift_code, '22:00' shift_start, '8.00' shift_duration, '02:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AP' template_name, '6' aws_code, '3' shift_code, '23:00' shift_start, '9.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AQ' template_name, '6' aws_code, '3' shift_code, '23:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AR' template_name, '6' aws_code, '3' shift_code, '24:00' shift_start, '9.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AS' template_name, '6' aws_code, '3' shift_code, '24:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AT' template_name, '7' aws_code, '3' shift_code, '01:00' shift_start, '10.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AU' template_name, '7' aws_code, '3' shift_code, '23:00' shift_start, '4.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AV' template_name, '7' aws_code, '3' shift_code, '23:00' shift_start, '8.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AW' template_name, '7' aws_code, '3' shift_code, '23:00' shift_start, '8.00' shift_duration, '03:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AX' template_name, '8' aws_code, '3' shift_code, '19:15' shift_start, '10.00' shift_duration, '00:15' lunch_start, '0.75' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AY' template_name, '8' aws_code, '3' shift_code, '21:00' shift_start, '10.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-AZ' template_name, '8' aws_code, '3' shift_code, '21:30' shift_start, '10.00' shift_duration, '04:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-BA' template_name, '8' aws_code, '3' shift_code, '21:45' shift_start, '10.00' shift_duration, '04:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-BB' template_name, '8' aws_code, '3' shift_code, '22:00' shift_start, '10.00' shift_duration, '04:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-BC' template_name, '8' aws_code, '3' shift_code, '22:00' shift_start, '10.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-BD' template_name, '8' aws_code, '3' shift_code, '22:00' shift_start, '10.00' shift_duration, '03:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-BE' template_name, '8' aws_code, '3' shift_code, '22:15' shift_start, '10.00' shift_duration, '04:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-BF' template_name, '8' aws_code, '3' shift_code, '22:30' shift_start, '10.00' shift_duration, '03:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-BG' template_name, '8' aws_code, '3' shift_code, '23:00' shift_start, '10.00' shift_duration, '04:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-BH' template_name, '8' aws_code, '3' shift_code, '23:00' shift_start, '10.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-BI' template_name, '8' aws_code, '3' shift_code, '23:30' shift_start, '10.00' shift_duration, '03:30' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-BJ' template_name, '8' aws_code, '3' shift_code, '23:30' shift_start, '10.00' shift_duration, '04:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-BK' template_name, '8' aws_code, '3' shift_code, '23:30' shift_start, '10.00' shift_duration, '04:00' lunch_start, '1.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-BL' template_name, '8' aws_code, '3' shift_code, '24:00' shift_start, '10.00' shift_duration, '00:00' lunch_start, '0.00' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
    UNION ALL
    SELECT 'Shift 3' source_tab, 'Shift 3-BM' template_name, '8' aws_code, '3' shift_code, '24:00' shift_start, '10.00' shift_duration, '06:00' lunch_start, '0.50' lunch_duration, '00:00' core_start, '0.00' core_duration FROM dual
)
SELECT MROI_OTL_TOD_HOURS_TEMPLATES_S.NEXTVAL,
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
       '01-JAN-1951' AS effective_start_date,
       NULL AS effective_end_date,
       NULL AS status,
       NVL(FND_GLOBAL.USER_ID, -1) AS created_by,
       SYSDATE AS creation_date,
       NVL(FND_GLOBAL.USER_ID, -1) AS last_updated_by,
       SYSDATE AS last_update_date,
       NVL(FND_GLOBAL.LOGIN_ID, -1) AS last_update_login
  FROM source_data d;

-- Expected result: 277 rows inserted.
COMMIT;
