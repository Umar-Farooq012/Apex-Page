prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_210100 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.7'
,p_default_workspace_id=>17018364046666370
,p_default_application_id=>10032
,p_default_id_offset=>188773846644493155
,p_default_owner=>'DGMS'
);
end;
/
 
prompt APPLICATION 10032 - FAISAL MOVERS HOUSING
--
-- Application Export:
--   Application:     10032
--   Name:            FAISAL MOVERS HOUSING
--   Date and Time:   12:25 Saturday February 3, 2024
--   Exported By:     UMAR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 91
--   Manifest End
--   Version:         21.1.7
--   Instance ID:     697968588975354
--

begin
null;
end;
/
prompt --application/pages/delete_00091
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>91);
end;
/
prompt --application/pages/page_00091
begin
wwv_flow_api.create_page(
 p_id=>91
,p_user_interface_id=>wwv_flow_api.id(158393926828282951)
,p_name=>'FILE BOOKING DETAILS'
,p_alias=>'FILE-BOOKING-DETAILS'
,p_step_title=>'FILE BOOKING DETAILS'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P91_CLIENT'').change(function(){',
'     apex.server.process(',
'    ''GET CLIENT INFO'',                        ',
'    {x01: $v(''P91_CLIENT'')},',
'    {',
'        success: function (pData) {',
'',
'            apex.item(''P91_CLIENT_INFO'').setValue(pData.CLIENT_INFO);',
'            ',
'        },',
'       dataType: null               // Response type (here: plain text)',
'    }',
'    );',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IMG{',
'',
'    height:100px;',
'    width:100px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'UMAR'
,p_last_upd_yyyymmddhh24miss=>'20240203122220'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(160809678824341502)
,p_name=>'Transfer Forms Details'
,p_region_name=>'Forms'
,p_template=>wwv_flow_api.id(158490988835283096)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'BODY'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'       ID,',
'       DBMS_LOB.GETLENGTH(UNDERTAKING_IMAGE) UNDERTAKING_FORM,',
'       DBMS_LOB.GETLENGTH(ACKNOWLEDGE_IMAGE) ACKNOWLEDGE_FORM,',
'       DBMS_LOB.GETLENGTH(TDA_IMAGE) TDA_FORM,',
'       DBMS_LOB.GETLENGTH(TDB_FRONT_IMAGE) TDB_FRONT_FORM,',
'       DBMS_LOB.GETLENGTH(TDB_BACK_IMAGE) TDB_BACK_FORM,',
'       DBMS_LOB.GETLENGTH(AFFIDAVIT_IMAGE) AFFIDAVIT_FORM     ',
'from DGMS_TRANSFERRED_PLOT',
'WHERE ID = :P91_TRANSFER_ID'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P91_TRANSFER_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(158455959472283055)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(160809724532341503)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(160809826126341504)
,p_query_column_id=>2
,p_column_alias=>'UNDERTAKING_FORM'
,p_column_display_sequence=>20
,p_column_heading=>'Undertaking Form'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:DGMS_TRANSFERRED_PLOT:UNDERTAKING_IMAGE:ID::::::::'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(160809915730341505)
,p_query_column_id=>3
,p_column_alias=>'ACKNOWLEDGE_FORM'
,p_column_display_sequence=>30
,p_column_heading=>'Acknowledge Form'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:DGMS_TRANSFERRED_PLOT:ACKNOWLEDGE_IMAGE:ID::::::::'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(160810011332341506)
,p_query_column_id=>4
,p_column_alias=>'TDA_FORM'
,p_column_display_sequence=>40
,p_column_heading=>'Tda Form'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:DGMS_TRANSFERRED_PLOT:TDA_IMAGE:ID::::::::'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(160810194651341507)
,p_query_column_id=>5
,p_column_alias=>'TDB_FRONT_FORM'
,p_column_display_sequence=>50
,p_column_heading=>'Tdb Front Form'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:DGMS_TRANSFERRED_PLOT:TDB_FRONT_IMAGE:ID::::::::'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(160810276018341508)
,p_query_column_id=>6
,p_column_alias=>'TDB_BACK_FORM'
,p_column_display_sequence=>60
,p_column_heading=>'Tdb Back Form'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:DGMS_TRANSFERRED_PLOT:TDB_BACK_IMAGE:ID::::::::'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(160810339578341509)
,p_query_column_id=>7
,p_column_alias=>'AFFIDAVIT_FORM'
,p_column_display_sequence=>70
,p_column_heading=>'Affidavit Form'
,p_use_as_row_header=>'N'
,p_column_format=>'IMAGE:DGMS_TRANSFERRED_PLOT:AFFIDAVIT_IMAGE:ID::::::::'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(169846413799931707)
,p_plug_name=>'File Booking Details'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158485371535283090)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH ',
'RECEIPT AS(',
'    SELECT ',
'        SUM(REC.RECEIVED_AMT_BEFORE_TAX) V_REC_SUM, REC.BOOKING_ID',
'',
'FROM DGMS_INSTALLMENT_WISE_RECEIPTS REC',
'JOIN DGMS_PLOTS_BOOKING DPB ON DPB.ID = REC.BOOKING_ID and DPB.BOOKING_STATUS = ''BOOKED'' AND DPB.ORG_ID = :P_ORG_ID ',
'HAVING SUM(REC.RECEIVED_AMT_BEFORE_TAX) > 0',
'--AND DPB.BOOKING_DATE >= NVL(:P91_FROM_DATE,DPB.BOOKING_DATE) AND DPB.BOOKING_DATE <= NVL(:P91_TO_DATE,DPB.BOOKING_DATE)',
'GROUP BY REC.BOOKING_ID,DPB.BOOKING_DATE',
')',
',APPROVAL AS(',
'    SELECT ',
'        SUM(REC.BEFORE_TAX_AMT) V_REC_SUM, REC.BOOKING_ID',
'    ',
'FROM DGMS_VOUCHERS_APPROVAL REC',
'JOIN DGMS_PLOTS_BOOKING DPB ON DPB.ID = REC.BOOKING_ID and DPB.BOOKING_STATUS = ''BOOKED'' AND DPB.ORG_ID = :P_ORG_ID ',
'WHERE REC.APPROVAL_STATUS NOT IN (''ACCEPTED'',''APPROVED VOUCHERS'',''REJECTED'') AND REC.ORG_ID = :P_ORG_ID',
'HAVING SUM(REC.BEFORE_TAX_AMT) > 0 --AND REC.APPROVAL_STATUS NOT IN (''ACCEPTED'',''APPROVED VOUCHERS'',''REJECTED'')',
'GROUP BY REC.BOOKING_ID--,REC.APPROVAL_STATUS',
')',
'SELECT  ''BOOKING_LEDGER'' as BOOKING_LEDGER,',
'        DPB.ID "BOOKING_NO",',
'        NVL(INITCAP(ALL_DESC.get_DMR_name(DPB.CLIENT_IDS)),0) "CLIENT_NAME",',
'        DPB.INSTALLMENT_PLAN,',
'        DPD.CATEGORY,',
'        TO_NUMBER(DPD.MARLA) MARLA,',
'        INITCAP(DPB.CLIENT_REG_NO) "CLIENT_REG_NO",',
'        NVL(R.V_REC_SUM,0) VERIFIED_RECEIVED_AMT,',
'       -- ROUND((NVL(R.V_REC_SUM,1) * 100/NVL(DPB.BEFORE_TAX_BOOKED_PRICE,1)),2)||''%'' VERIFIED_PAID_PERCENTAGE,',
'        NVL(R1.V_REC_SUM,0) UNVERIFIED_RECEIVED_AMT,',
'       -- ROUND((NVL(R1.V_REC_SUM,1) * 100/NVL(DPB.BEFORE_TAX_BOOKED_PRICE,1)),2)||''%'' UNVERIFIED_PAID_PERCENTAGE,',
'       ROUND((NVL(R.V_REC_SUM, 1) * 100 / NULLIF(NVL(DPB.BEFORE_TAX_BOOKED_PRICE, 1),0)), 2)||''%'' VERIFIED_PAID_PERCENTAGE,',
'       ROUND((NVL(R1.V_REC_SUM, 1) * 100 / NULLIF(NVL(DPB.BEFORE_TAX_BOOKED_PRICE, 1),0)), 2)||''%'' UNVERIFIED_PAID_PERCENTAGE,',
'        DPD.PLOT_NO,',
'        INITCAP(DPD.NATURE) NATURE,',
'        DPB.BOOKED_PRICE "BOOKED PRICE WITH TAX",',
'        DPB.REBATE,',
'        DPB.DISCOUNT_AMOUNT,',
'        DPB.DOWNPAYMENT_PERCENTAGE,',
'        DPB.APPROVED_DOWNPAYMENT_PERCENTAGE,',
'        DPB.CLIENT_RECIEVABLE,',
'        DPB.BEFORE_TAX_BOOKED_PRICE "BOOKED PRICE WITHOUT TAX",',
'        DPB.BEFORE_TAX_BOOKED_PRICE - NVL(R.V_REC_SUM,0) "REMAINING PRICE WITHOUT TAX",',
'        DPB.TAX_AMOUNT "TAX AMOUNT",',
'        DPB.TOTAL_VALUE,',
'        INITCAP(DPB.BOOKED_BY) BOOKED_BY,',
'        INITCAP(DPB.PAYMENT_MODE) PAYMENT_MODE,',
'        DPB.BOOKING_DATE,',
'        DPB.CREATED_ON,',
'        INITCAP(DPB.CREATED_BY) CREATED_BY,',
'        INITCAP(DPB.SCHEDULE_PAYMENT) SCHEDULE_PAYMENT,',
'        DPB.MISCELLANEOUS_CHARGES,',
'        DPB.MARGINAL_DAYS,',
'        ''UPDATE REMARKS'' "UPDATE REMARKS",',
'        DPB.MARGINAL_REMARKS REMARKS,',
'        DPB.BOOKING_STATUS,',
'        INITCAP(DPB.FILE_TYPE) FILE_TYPE,',
'        DPD.CURRENCY_NO,',
'        --''UPDATE MARGINAL DAYS'' UPDATE_MARGINAL_DAYS,',
'        ''PRINT'' "PRINT",',
'        ''INSTALLMENT'' "INSTALLMENTS",',
'        ''QR'' QR,',
'        CASE WHEN DTP.BOOKING_ID IS NOT NULL THEN ''VIEW FORMS'' ELSE NULL END "VIEW FORMS",',
'        DTP.ID TRANSFER_ID,',
'        ''VIEW DETAILS'' "VIEW DETAILS",',
'        ''ADD CLIENT'' ADD_CLIENT,',
'        INITCAP(DDD.DEALER_NAME) DEALER_NAME,',
'        NVL(DBS.BLOCK_NAME,DBS1.BLOCK_NAME) BLOCK,',
'        ''VIEW DOCUMENTS'' VIEW_DOCUMENTS,',
'        DPMV.ID||'' - ''||DPMV.POLICY_TYPE||'' - ''||DPMV.MARLA_TYPE||'' - ''||DPMV.PER_MARLA_VALUE||'' - ''||',
'        CASE dpmv.RECOVERY_MONTHS WHEN 1 THEN ''CASH'' ELSE ''INSTALLMENT''||'' - (DP ''||DPMV.DOWNPAYMENT_PERCENTAGE||''%)'' END POLICY,',
'        MAST.ID||'' - ''||MAST.POLICY_TYPE||'' - ''||MAST.MARLA_TYPE||'' - ''||MAST.PER_MARLA_VALUE||'' - ''||',
'        CASE MAST.RECOVERY_MONTHS WHEN 1 THEN ''CASH'' ELSE ''INSTALLMENT''||'' - (DP ''||MAST.DOWNPAYMENT_PERCENTAGE||''%)'' END MASTER_POLICY,',
'        ''BALLOTING LETTER'' "BALLOTING LETTER",',
'        ''RESCHEDULE BALLOTING'' "RESCHEDULE BALLOTING",',
'        ''MEMBERSHIP LETTER'' MEMBERSHIP_LETTER,',
'      --  sys.dbms_lob.getlength(DBD.IMAGE) AS "O.F CONVERTED IMAGE",',
'        DFD.BATCH_MARKETING_NAME||'' - ''||DFD.BATCH_NO BATCH',
'        --''RECEIPT'' RECEIPTS',
'FROM DGMS_PLOTS_BOOKING DPB',
'JOIN DGMS_PLOT_DETAILS DPD ON DPD.ID = DPB.PLOT_ID AND DPD.ORG_ID = :P_ORG_ID and (DPD.PLOT_TYPE IS not NULL or DPD.PLOT_TYPE = ''FILE'')',
'JOIN DGMS_FILES_DETAILS DFD ON DFD.ID = DPD.FILE_ID AND DFD.ORG_ID = :P_ORG_ID',
'--LEFT JOIN DGMS_BOOKING_DOCUMENTS DBD ON DBD.PLOT_ID=DPB.PLOT_ID AND DBD.ORG_ID=:P_ORG_ID',
'LEFT JOIN DGMS_BLOCKS_SETUP DBS ON DBS.ID = DPD.BLOCK AND DBS.ORG_ID = :P_ORG_ID',
'LEFT JOIN DGMS_BLOCKS_SETUP DBS1 ON DBS1.ID = DFD.BLOCK AND DBS1.ORG_ID = :P_ORG_ID',
'LEFT JOIN DGMS_PER_MARLA_VALUE DPMV ON DPMV.ID = DPB.POLICY_NO',
'LEFT JOIN DGMS_PER_MARLA_VALUE MAST ON MAST.ID = DPMV.MASTER_POLICY_NO AND MAST.ORG_ID = :P_ORG_ID',
'LEFT JOIN RECEIPT R ON  DPB.ID = R.BOOKING_ID',
'LEFT JOIN APPROVAL R1 ON  DPB.ID = R1.BOOKING_ID',
'LEFT JOIN DGMS_DEALERS_DETAILS DDD ON DDD.ID = DPB.FILE_DEALER',
'LEFT JOIN DGMS_TRANSFERRED_PLOT DTP ON DTP.BOOKING_ID = DPB.ID AND DTP.ORG_ID = :P_ORG_ID AND DTP.STATUS = (''TRANSFERRED'')',
'WHERE DPB.BOOKING_STATUS = ''BOOKED'' and (DPD.PLOT_TYPE = ''FILE'')-- OR DBD.DOCUMENT_TYPE = ''O/B CONVERTED''--AND DPB.FILE_TYPE = ''BOUNDED''',
'AND DPB.ORG_ID = :P_ORG_ID --AND DPB.BOOKING_DATE >= NVL(:P91_FROM_DATE,DPB.BOOKING_DATE) AND DPB.BOOKING_DATE <= NVL(:P91_TO_DATE,DPB.BOOKING_DATE)',
'ORDER BY DPB.ID DESC',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P91_FROM_DATE,P91_TO_DATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'File Booking Details'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(169846465471931708)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'ZOYA'
,p_internal_uid=>44408831588092003
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169846579844931709)
,p_db_column_name=>'BOOKING_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Booking No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169846638337931710)
,p_db_column_name=>'CLIENT_REG_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Client Reg No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169846745152931711)
,p_db_column_name=>'PLOT_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'File No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169846954283931713)
,p_db_column_name=>'REBATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Rebate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169847112761931714)
,p_db_column_name=>'DISCOUNT_AMOUNT'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Discount Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169847208819931715)
,p_db_column_name=>'DOWNPAYMENT_PERCENTAGE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Downpayment Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169847322471931716)
,p_db_column_name=>'APPROVED_DOWNPAYMENT_PERCENTAGE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Approved Downpayment Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169847424856931717)
,p_db_column_name=>'CLIENT_RECIEVABLE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Client Recievable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169847507102931718)
,p_db_column_name=>'TOTAL_VALUE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Total Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169847562401931719)
,p_db_column_name=>'BOOKED_BY'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Booked By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169847727543931720)
,p_db_column_name=>'PAYMENT_MODE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169847812150931721)
,p_db_column_name=>'BOOKING_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Booking Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-RR'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169847850065931722)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-RR'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169847943760931723)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169848100038931724)
,p_db_column_name=>'SCHEDULE_PAYMENT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Schedule Payment'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169848188322931725)
,p_db_column_name=>'MISCELLANEOUS_CHARGES'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Miscellaneous Charges'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169848333241931726)
,p_db_column_name=>'MARGINAL_DAYS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Marginal Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(216712094704844306)
,p_db_column_name=>'MEMBERSHIP_LETTER'
,p_display_order=>190
,p_column_identifier=>'BB'
,p_column_label=>'Membership Letter'
,p_column_link=>'javascript:$s(''P91_MEMBERSHIP'',''#BOOKING_NO#'');javascript:$s(''P91_MEMBERSHIP_LETTER'',''#CLIENT_NAME#'');'
,p_column_linktext=>'#MEMBERSHIP_LETTER#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169848527649931728)
,p_db_column_name=>'PRINT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Booking Form'
,p_column_link=>'javascript:$s(''P91_ID'',''#BOOKING_NO#'');javascript:$s(''P91_NEW'',''#CLIENT_NAME#'');'
,p_column_linktext=>'BOOKING FORM'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169849421907931737)
,p_db_column_name=>'INSTALLMENTS'
,p_display_order=>210
,p_column_identifier=>'V'
,p_column_label=>'Installment Schedule'
,p_column_link=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.::P55_BOOKING_ID:#BOOKING_NO#'
,p_column_linktext=>'INSTALLMENT SCHEDULE'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(169849586965931739)
,p_db_column_name=>'FILE_TYPE'
,p_display_order=>220
,p_column_identifier=>'W'
,p_column_label=>'File Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(188808106860417524)
,p_db_column_name=>'BOOKED PRICE WITH TAX'
,p_display_order=>230
,p_column_identifier=>'X'
,p_column_label=>'Booked Price With Tax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(188808165073417525)
,p_db_column_name=>'BOOKED PRICE WITHOUT TAX'
,p_display_order=>240
,p_column_identifier=>'Y'
,p_column_label=>'Booked Price Without Tax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(188808332844417526)
,p_db_column_name=>'TAX AMOUNT'
,p_display_order=>250
,p_column_identifier=>'Z'
,p_column_label=>'Tax Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160317321750823041)
,p_db_column_name=>'CURRENCY_NO'
,p_display_order=>260
,p_column_identifier=>'AA'
,p_column_label=>'Currency No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160809555537341501)
,p_db_column_name=>'VIEW FORMS'
,p_display_order=>270
,p_column_identifier=>'AB'
,p_column_label=>'View Forms'
,p_column_link=>'javascript:$s(''P91_TRANSFER_ID'',''#TRANSFER_ID#'');openModal(''Forms'');'
,p_column_linktext=>'#VIEW FORMS#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160810469722341510)
,p_db_column_name=>'TRANSFER_ID'
,p_display_order=>280
,p_column_identifier=>'AC'
,p_column_label=>'Transfer Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160948806661605003)
,p_db_column_name=>'VERIFIED_RECEIVED_AMT'
,p_display_order=>290
,p_column_identifier=>'AF'
,p_column_label=>'Verified Received Amt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160948988756605004)
,p_db_column_name=>'VERIFIED_PAID_PERCENTAGE'
,p_display_order=>300
,p_column_identifier=>'AG'
,p_column_label=>'Verified Paid Percentage'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160949017133605005)
,p_db_column_name=>'UNVERIFIED_RECEIVED_AMT'
,p_display_order=>310
,p_column_identifier=>'AH'
,p_column_label=>'Unverified Received Amt'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(160949162780605006)
,p_db_column_name=>'UNVERIFIED_PAID_PERCENTAGE'
,p_display_order=>320
,p_column_identifier=>'AI'
,p_column_label=>'Unverified Paid Percentage'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(161239691854466517)
,p_db_column_name=>'CATEGORY'
,p_display_order=>330
,p_column_identifier=>'AJ'
,p_column_label=>'Category'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(161629908861357742)
,p_db_column_name=>'VIEW DETAILS'
,p_display_order=>340
,p_column_identifier=>'AL'
,p_column_label=>'Booking Details'
,p_column_link=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:Y,:P64_BOOKING_ID:#BOOKING_NO#'
,p_column_linktext=>'BOOKING DETAILS'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(163334168859063501)
,p_db_column_name=>'DEALER_NAME'
,p_display_order=>350
,p_column_identifier=>'AM'
,p_column_label=>'Dealer Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(166620155829702034)
,p_db_column_name=>'QR'
,p_display_order=>360
,p_column_identifier=>'AN'
,p_column_label=>'Qr'
,p_column_link=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.::P38_BOOKING:#PLOT_NO#'
,p_column_linktext=>'#QR#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(166805835201678303)
,p_db_column_name=>'REMAINING PRICE WITHOUT TAX'
,p_display_order=>370
,p_column_identifier=>'AO'
,p_column_label=>'Remaining Price Without Tax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(181274049287378102)
,p_db_column_name=>'NATURE'
,p_display_order=>380
,p_column_identifier=>'AP'
,p_column_label=>'Nature'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(183925156298900324)
,p_db_column_name=>'ADD_CLIENT'
,p_display_order=>390
,p_column_identifier=>'AQ'
,p_column_label=>'Add Client'
,p_column_link=>'javascript:$s(''P91_PLOT_NO'',''#PLOT_NO#'');javascript:$s(''P91_BK_ID'',''#BOOKING_NO#'');openModal(''client'');'
,p_column_linktext=>'#ADD_CLIENT#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
,p_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_display_condition=>'APP_USER'
,p_display_condition2=>'ZOYA KANWAL:KHURRAM.KHAN:FAROOQ:FARHAN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(187622397713260539)
,p_db_column_name=>'REMARKS'
,p_display_order=>400
,p_column_identifier=>'AS'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(188452440415464804)
,p_db_column_name=>'UPDATE REMARKS'
,p_display_order=>410
,p_column_identifier=>'AT'
,p_column_label=>'Update Remarks'
,p_column_link=>'javascript:apex.event.trigger(document, ''REMARKS'', [{P91_PB_ID:''#BOOKING_NO#'',P91_MARGINAL_REMARKS:''#REMARKS#''}]);'
,p_column_linktext=>'#UPDATE REMARKS#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(188719748034002107)
,p_db_column_name=>'BLOCK'
,p_display_order=>420
,p_column_identifier=>'AU'
,p_column_label=>'Block'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190341725649616101)
,p_db_column_name=>'VIEW_DOCUMENTS'
,p_display_order=>430
,p_column_identifier=>'AV'
,p_column_label=>'View Attachment'
,p_column_link=>'javascript:$s(''P91_PB_ID'',''#BOOKING_NO#'');openModal(''DOC'');'
,p_column_linktext=>'VIEW ATTACHMENT'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(191488248568661902)
,p_db_column_name=>'POLICY'
,p_display_order=>440
,p_column_identifier=>'AW'
,p_column_label=>'Policy'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(198761938972251801)
,p_db_column_name=>'BALLOTING LETTER'
,p_display_order=>450
,p_column_identifier=>'AX'
,p_column_label=>'Balloting Letter'
,p_column_link=>'javascript:$s(''P91_BOOKING_ID'',''#BOOKING_NO#'');javascript:$s(''P91_FILE_NO'',''#PLOT_NO#'');javascript:$s(''P91_BALLOTING_STS'',''SCHEDULE'');openModal(''bltng'');'
,p_column_linktext=>'#BALLOTING LETTER#'
,p_column_link_attr=>'javascript:$s(''P0_BOOKING_ID'',''#BOOKING_NO#'');'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190139831933056431)
,p_db_column_name=>'RESCHEDULE BALLOTING'
,p_display_order=>460
,p_column_identifier=>'AY'
,p_column_label=>'Reschedule Balloting'
,p_column_link=>'javascript:$s(''P91_BOOKING_ID'',''#BOOKING_NO#'');javascript:$s(''P91_FILE_NO'',''#PLOT_NO#'');javascript:$s(''P91_BALLOTING_STS'',''RESCHEDULE'');openModal(''bltng'');'
,p_column_linktext=>'#RESCHEDULE BALLOTING#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214468752570895720)
,p_db_column_name=>'MARLA'
,p_display_order=>470
,p_column_identifier=>'AZ'
,p_column_label=>'Marla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(215766020544031402)
,p_db_column_name=>'MASTER_POLICY'
,p_display_order=>480
,p_column_identifier=>'BA'
,p_column_label=>'Master Policy'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(221637369677920015)
,p_db_column_name=>'BOOKING_LEDGER'
,p_display_order=>500
,p_column_identifier=>'BD'
,p_column_label=>'Booking Ledger'
,p_column_link=>'javascript:$s(''P0_BOOKING_ID'',''#BOOKING_NO#'');'
,p_column_linktext=>'BOOKING LEDGER'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(228385330269018445)
,p_db_column_name=>'INSTALLMENT_PLAN'
,p_display_order=>510
,p_column_identifier=>'BE'
,p_column_label=>'Installment Plan'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(232684850875839514)
,p_db_column_name=>'BATCH'
,p_display_order=>520
,p_column_identifier=>'BF'
,p_column_label=>'Batch'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(233007790041561144)
,p_db_column_name=>'BOOKING_STATUS'
,p_display_order=>530
,p_column_identifier=>'BG'
,p_column_label=>'Booking Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(232640886459290413)
,p_db_column_name=>'CLIENT_NAME'
,p_display_order=>540
,p_column_identifier=>'BH'
,p_column_label=>'Client Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(170122876409946851)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'446853'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'QR:BOOKING_NO:BOOKING_LEDGER:PLOT_NO:BATCH:BLOCK:NATURE:CLIENT_REG_NO:MASTER_POLICY:POLICY:DEALER_NAME:TOTAL_VALUE:DISCOUNT_AMOUNT:DOWNPAYMENT_PERCENTAGE:BOOKED PRICE WITH TAX:TAX AMOUNT:BOOKED PRICE WITHOUT TAX:VERIFIED_RECEIVED_AMT:VERIFIED_PAID_PE'
||'RCENTAGE:REMAINING PRICE WITHOUT TAX:UNVERIFIED_RECEIVED_AMT:UNVERIFIED_PAID_PERCENTAGE:CLIENT_RECIEVABLE:MEMBERSHIP_LETTER:PRINT:INSTALLMENTS:VIEW DETAILS:VIEW FORMS:CURRENCY_NO:PAYMENT_MODE:SCHEDULE_PAYMENT:MISCELLANEOUS_CHARGES:MARGINAL_DAYS:BOOKI'
||'NG_DATE:CREATED_BY:CREATED_ON:REMARKS:UPDATE REMARKS:VIEW_DOCUMENTS:INSTALLMENT_PLAN:MARLA:FILE_TYPE:BOOKING_STATUS:CLIENT_NAME'
,p_sort_column_1=>'BOOKING_NO'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(232847679569791800)
,p_report_id=>wwv_flow_api.id(170122876409946851)
,p_group_by_columns=>'DEALER_NAME'
,p_function_01=>'SUM'
,p_function_column_01=>'TOTAL_VALUE'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Total Value'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(191839759232395679)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Group By Check'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'1918398'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'QR:BOOKING_NO:PLOT_NO:BLOCK:NATURE:CLIENT_REG_NO:POLICY:DEALER_NAME:TOTAL_VALUE:DISCOUNT_AMOUNT:DOWNPAYMENT_PERCENTAGE:BOOKED PRICE WITH TAX:TAX AMOUNT:BOOKED PRICE WITHOUT TAX:VERIFIED_RECEIVED_AMT:VERIFIED_PAID_PERCENTAGE:REMAINING PRICE WITHOUT TA'
||'X:UNVERIFIED_RECEIVED_AMT:UNVERIFIED_PAID_PERCENTAGE:CLIENT_RECIEVABLE:PRINT:INSTALLMENTS:VIEW DETAILS:VIEW FORMS:CURRENCY_NO:PAYMENT_MODE:SCHEDULE_PAYMENT:MISCELLANEOUS_CHARGES:MARGINAL_DAYS:BOOKING_DATE:CREATED_BY:CREATED_ON:REMARKS:UPDATE REMARKS:'
||'VIEW_DOCUMENTS'
,p_sort_column_1=>'BOOKING_NO'
,p_sort_direction_1=>'DESC'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(191840118762395680)
,p_report_id=>wwv_flow_api.id(191839759232395679)
,p_group_by_columns=>'DEALER_NAME'
,p_function_01=>'SUM'
,p_function_column_01=>'TOTAL_VALUE'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Total Value'
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'Y'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(214698119808381071)
,p_application_user=>'APXWS_ALTERNATIVE'
,p_name=>'Policy Wise Average Amount'
,p_report_seq=>10
,p_report_type=>'GROUP_BY'
,p_report_alias=>'2146982'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_view_mode=>'REPORT'
,p_report_columns=>'REMARKS:BOOKING_NO:PLOT_NO:NATURE:CLIENT_REG_NO:DEALER_NAME:TOTAL_VALUE:DISCOUNT_AMOUNT:DOWNPAYMENT_PERCENTAGE:BOOKED PRICE WITH TAX:TAX AMOUNT:BOOKED PRICE WITHOUT TAX:VERIFIED_RECEIVED_AMT:REMAINING PRICE WITHOUT TAX:UNVERIFIED_RECEIVED_AMT:UNVERIF'
||'IED_PAID_PERCENTAGE:CLIENT_RECIEVABLE:PRINT:INSTALLMENTS:VIEW DETAILS:VIEW FORMS:CURRENCY_NO:PAYMENT_MODE:SCHEDULE_PAYMENT:MISCELLANEOUS_CHARGES:MARGINAL_DAYS:BOOKING_DATE:CREATED_BY:CREATED_ON:UPDATE REMARKS:VIEW_DOCUMENTS'
,p_sort_column_1=>'BOOKING_NO'
,p_sort_direction_1=>'DESC'
,p_sum_columns_on_break=>'MARLA'
);
wwv_flow_api.create_worksheet_group_by(
 p_id=>wwv_flow_api.id(214698524382381072)
,p_report_id=>wwv_flow_api.id(214698119808381071)
,p_group_by_columns=>'POLICY:MARLA'
,p_function_01=>'COUNT'
,p_function_column_01=>'PLOT_NO'
,p_function_db_column_name_01=>'APXWS_GBFC_01'
,p_function_label_01=>'Total Files '
,p_function_format_mask_01=>'999G999G999G999G990'
,p_function_sum_01=>'Y'
,p_function_02=>'SUM'
,p_function_column_02=>'MARLA'
,p_function_db_column_name_02=>'APXWS_GBFC_02'
,p_function_label_02=>'Total Marla'
,p_function_format_mask_02=>'999G999G999G999G990D00'
,p_function_sum_02=>'Y'
,p_function_03=>'AVG'
,p_function_column_03=>'BOOKED PRICE WITHOUT TAX'
,p_function_db_column_name_03=>'APXWS_GBFC_03'
,p_function_label_03=>'Average Booked Price'
,p_function_format_mask_03=>'999G999G999G999G990'
,p_function_sum_03=>'N'
,p_function_04=>'AVG'
,p_function_column_04=>'DISCOUNT_AMOUNT'
,p_function_db_column_name_04=>'APXWS_GBFC_04'
,p_function_label_04=>'Average Discount Amount'
,p_function_format_mask_04=>'999G999G999G999G990'
,p_function_sum_04=>'N'
,p_function_05=>'AVG'
,p_function_column_05=>'TOTAL_VALUE'
,p_function_db_column_name_05=>'APXWS_GBFC_05'
,p_function_label_05=>'Average Plot Value'
,p_function_format_mask_05=>'999G999G999G999G999G999G990'
,p_function_sum_05=>'N'
,p_sort_column_01=>'MARLA'
,p_sort_direction_01=>'ASC'
);
end;
/
begin
wwv_flow_api.create_worksheet_pivot(
 p_id=>wwv_flow_api.id(214698957442381073)
,p_report_id=>wwv_flow_api.id(214698119808381071)
,p_pivot_columns=>'NATURE'
,p_row_columns=>'MARLA'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(214699364197381074)
,p_pivot_id=>wwv_flow_api.id(214698957442381073)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'BOOKED PRICE WITH TAX'
,p_db_column_name=>'PFC1'
,p_column_label=>'Booked Amount'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(214700169052381075)
,p_pivot_id=>wwv_flow_api.id(214698957442381073)
,p_display_seq=>2
,p_function_name=>'SUM'
,p_column_name=>'VERIFIED_RECEIVED_AMT'
,p_db_column_name=>'PFC2'
,p_column_label=>'Received Amount'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(214699718190381075)
,p_pivot_id=>wwv_flow_api.id(214698957442381073)
,p_display_seq=>3
,p_function_name=>'SUM'
,p_column_name=>'REMAINING PRICE WITHOUT TAX'
,p_db_column_name=>'PFC3'
,p_column_label=>'Remaining Amount'
,p_format_mask=>'999G999G999G999G990'
,p_display_sum=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(169848820984931731)
,p_plug_name=>'File Booking Details'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useRegionTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158474134065283074)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(158541112395283177)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(158417037603282996)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(183924087859900313)
,p_plug_name=>'Add Client Details'
,p_region_name=>'client'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_api.id(158490988835283096)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(187619900382260515)
,p_plug_name=>'Update Marginal Remarks'
,p_region_css_classes=>'js-dialog-size1000x600'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size480x320'
,p_region_attributes=>'style="font-weight:bold;"'
,p_plug_template=>wwv_flow_api.id(158490988835283096)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(190341977585616103)
,p_plug_name=>'Attachments Details'
,p_region_name=>'DOC'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style="background-color:#CCCFD1;"'
,p_plug_template=>wwv_flow_api.id(158490988835283096)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    DBD.ID,',
'    DPD.PLOT_NO,',
'    DBD.BOOKING_ID,',
'    DBD.DOCUMENT_TYPE,',
'    sys.dbms_lob.getlength(DBD.DOCUMENT) DOCUMENT,',
'    sys.dbms_lob.getlength(DBD.IMAGE) AS "O.F CONVERTED IMAGE",',
'    DBD.REMARKS,',
'    DBD.CREATED_BY,',
'    DBD.CREATED_ON',
'FROM DGMS_BOOKING_DOCUMENTS DBD',
'JOIN DGMS_PLOT_DETAILS DPD ON DPD.ID = DBD.PLOT_ID',
'WHERE DBD.BOOKING_ID = :P91_PB_ID',
'AND DOCUMENT_TYPE IN (''TERMS AND CONDITIONS'' , ''ALLOTMENT CERTIFICATE'', ''BOOKING FORM'', ''RECEIPT'', ''VOUCHER'',''OTHERS'');',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P91_PB_ID'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Attachments Details'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(190342097779616104)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'ZOYA'
,p_internal_uid=>190342097779616104
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190342158629616105)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190342274823616106)
,p_db_column_name=>'PLOT_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Plot No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190342360165616107)
,p_db_column_name=>'BOOKING_ID'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Booking Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190342498703616108)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190342545960616109)
,p_db_column_name=>'DOCUMENT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Document'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'DOWNLOAD:DGMS_BOOKING_DOCUMENTS:DOCUMENT:ID::DOC_MIME_TYPE:DOC_FILE_NAME:::attachment::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190342646385616110)
,p_db_column_name=>'REMARKS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190342797541616111)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(190342877808616112)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(233007634776561143)
,p_db_column_name=>'O.F CONVERTED IMAGE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'O.f Converted Image'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'DOWNLOAD:DGMS_BOOKING_DOCUMENTS:IMAGE:ID::IMAGE_MIME_TYPE:IMAGE_FILE_NAME:::attachment::'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(190352480809635133)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1903525'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BOOKING_ID:PLOT_NO:DOCUMENT_TYPE:DOCUMENT:REMARKS:CREATED_BY:CREATED_ON::O.F CONVERTED IMAGE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(198762014218251802)
,p_plug_name=>'Balloting Details'
,p_region_name=>'bltng'
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_api.id(158490988835283096)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(214468095308895713)
,p_plug_name=>'DATE SECTION'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158514529862283130)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(235897214763279503)
,p_plug_name=>'Pending Bookings'
,p_region_name=>'pen_file'
,p_region_css_classes=>'js-dialog-size1000x600'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158490988835283096)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'            DPB.ID "BOOKING_NO",',
'            INITCAP(DPB.CLIENT_REG_NO) "CLIENT_REG_NO",',
'            all_desc.get_F_MOBILE_NO(DPB.CLIENT_IDS) MOBILE_NO,',
'            DPD.PLOT_NO,',
'            DPB.PLOT_ID,',
'            INITCAP(DPD.NATURE) NATURE, ',
'            ROUND(DPD.MARLA,2) MARLA,',
'            ROUND(DPB.BOOKED_PRICE) "BOOKED PRICE  WITH TAX",',
'            DPB.REBATE,',
'            DPB.DISCOUNT_AMOUNT,',
'            DPB.DOWNPAYMENT_PERCENTAGE,',
'            DPB.APPROVED_DOWNPAYMENT_PERCENTAGE,',
'            ROUND(DPB.CLIENT_RECIEVABLE,2) "CLIENT RECEIVABLE",',
'            ROUND(DPB.BEFORE_TAX_BOOKED_PRICE,2) "BOOKED PRICE WITHOUT TAX",',
'            NVL(TAX_AMOUNT,0) TAX_AMOUNT,',
'            ROUND(DPB.TOTAL_VALUE,2) "TOTAL VALUE",',
'            INITCAP(DPB.BOOKED_BY) BOOKED_BY,',
'            INITCAP(DPB.PAYMENT_MODE) PAYMENT_MODE,',
'            DPB.BOOKING_DATE,',
'            DPB.CREATED_ON,',
'            INITCAP(DPB.CREATED_BY) CREATED_BY,',
'            DPB.AFTER_FACTOR,',
'            DPB.MISCELLANEOUS_CHARGES,',
'            DPB.MARGINAL_DAYS,',
'            DPB.BOOKING_STATUS,',
'            INITCAP(DPB.DEPARTMENTAL_APPROVED_BY) DEPARTMENTAL_APPROVED_BY,',
'            DPB.DEPARTMENTAL_APPROVED_ON,',
'            INITCAP(DPB.DEPARTMENTAL_REJECTED_BY) DEPARTMENTAL_REJECTED_BY,',
'            DPB.DEPARTMENTAL_REJECTED_ON',
'            ',
'from DGMS_PLOTS_BOOKING DPB',
'JOIN DGMS_PLOT_DETAILS DPD ON DPD.ID = DPB.PLOT_ID AND DPD.ORG_ID = :P_ORG_ID ',
'and (DPD.PLOT_TYPE IS not NULL or DPD.PLOT_TYPE = ''FILE'')',
'LEFT JOIN DGMS_DEALERS_DETAILS DDD ON DDD.ID = DPB.FILE_DEALER',
'WHERE DPB.BOOKING_STATUS IN (''BOOKING IN-PROCESS'',''DEPARTMENTAL APPROVED'',''BOOKING REJECTED'') and DPD.PLOT_TYPE = ''FILE''',
'AND DPB.ORG_ID = :P_ORG_ID ',
'order by DPB.ID DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Pending Bookings'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(235897369774279504)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'ZOYA'
,p_internal_uid=>235897369774279504
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235897485711279505)
,p_db_column_name=>'BOOKING_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Booking No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235897524359279506)
,p_db_column_name=>'CLIENT_REG_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Client Reg No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235897615425279507)
,p_db_column_name=>'MOBILE_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Mobile No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235897769049279508)
,p_db_column_name=>'PLOT_NO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Plot No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235897894199279509)
,p_db_column_name=>'PLOT_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Plot Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235897998705279510)
,p_db_column_name=>'NATURE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Nature'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235898043127279511)
,p_db_column_name=>'MARLA'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Marla'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235898165324279512)
,p_db_column_name=>'BOOKED PRICE  WITH TAX'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Booked Price  With Tax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235898293543279513)
,p_db_column_name=>'REBATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Rebate'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235898345455279514)
,p_db_column_name=>'DISCOUNT_AMOUNT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Discount Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235898454944279515)
,p_db_column_name=>'DOWNPAYMENT_PERCENTAGE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Downpayment Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235898560961279516)
,p_db_column_name=>'APPROVED_DOWNPAYMENT_PERCENTAGE'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Approved Downpayment Percentage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235898617161279517)
,p_db_column_name=>'CLIENT RECEIVABLE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Client Receivable'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235898793168279518)
,p_db_column_name=>'BOOKED PRICE WITHOUT TAX'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Booked Price Without Tax'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235898893421279519)
,p_db_column_name=>'TAX_AMOUNT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Tax Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235898973923279520)
,p_db_column_name=>'TOTAL VALUE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Total Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235899043501279521)
,p_db_column_name=>'BOOKED_BY'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Booked By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235899149900279522)
,p_db_column_name=>'PAYMENT_MODE'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Payment Mode'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235899211266279523)
,p_db_column_name=>'BOOKING_DATE'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Booking Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235899376073279524)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235899403135279525)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235899505419279526)
,p_db_column_name=>'AFTER_FACTOR'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'After Factor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235899625806279527)
,p_db_column_name=>'MISCELLANEOUS_CHARGES'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Miscellaneous Charges'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235899714705279528)
,p_db_column_name=>'MARGINAL_DAYS'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Marginal Days'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235899821775279529)
,p_db_column_name=>'BOOKING_STATUS'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Booking Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235899940049279530)
,p_db_column_name=>'DEPARTMENTAL_APPROVED_BY'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Departmental Approved By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235900052905279531)
,p_db_column_name=>'DEPARTMENTAL_APPROVED_ON'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Departmental Approved On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235900134142279532)
,p_db_column_name=>'DEPARTMENTAL_REJECTED_BY'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Departmental Rejected By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235900286436279533)
,p_db_column_name=>'DEPARTMENTAL_REJECTED_ON'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Departmental Rejected On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(235913341197301086)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2359134'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BOOKING_NO:CLIENT_REG_NO:MOBILE_NO:PLOT_NO:PLOT_ID:NATURE:MARLA:BOOKED PRICE  WITH TAX:REBATE:DISCOUNT_AMOUNT:DOWNPAYMENT_PERCENTAGE:APPROVED_DOWNPAYMENT_PERCENTAGE:CLIENT RECEIVABLE:BOOKED PRICE WITHOUT TAX:TAX_AMOUNT:TOTAL VALUE:BOOKED_BY:PAYMENT_M'
||'ODE:BOOKING_DATE:CREATED_ON:CREATED_BY:AFTER_FACTOR:MISCELLANEOUS_CHARGES:MARGINAL_DAYS:BOOKING_STATUS:DEPARTMENTAL_APPROVED_BY:DEPARTMENTAL_APPROVED_ON:DEPARTMENTAL_REJECTED_BY:DEPARTMENTAL_REJECTED_ON'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(646938053934139004)
,p_plug_name=>'Select Details'
,p_region_name=>'Details'
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:js-dialog-size720x480'
,p_region_attributes=>'style=";background-color:#96A5AF;"'
,p_plug_template=>wwv_flow_api.id(158490988835283096)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(229381426295926991)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(646938053934139004)
,p_button_name=>'ADD_DOCUMENT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(158418315155282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'BELOW_BOX'
,p_icon_css_classes=>'fa-file-text'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(198762234080251804)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(198762014218251802)
,p_button_name=>'Print'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_position=>'BELOW_BOX'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(187620836671260524)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(187619900382260515)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_api.id(158418315155282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close'
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-save'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(187620601283260522)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(187619900382260515)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--success:t-Button--iconRight:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_api.id(158418315155282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(170399151306002427)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(169848820984931731)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(183924551078900318)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(183924087859900313)
,p_button_name=>'ADD_CLIENT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Client'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(224561515394500708)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(169846413799931707)
,p_button_name=>'PENDING_APPROVALS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Pending Approvals'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(229275675088513515)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(169846413799931707)
,p_button_name=>'Receiving_Attachment'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Receiving Attachment'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:openModal(''Details'');'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(160810541532341511)
,p_name=>'P91_TRANSFER_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(169846413799931707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(169848913737931732)
,p_name=>'P91_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(169846413799931707)
,p_prompt=>'New'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183924109796900314)
,p_name=>'P91_PLOT_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(183924087859900313)
,p_prompt=>'Plot No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183924216085900315)
,p_name=>'P91_CLIENT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(183924087859900313)
,p_prompt=>'<b>Client</b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NVL(DMR.CNIC_NO,NTN_NO) ||'' - ''||DMR.F_NAME, DMR.ID AS RETURN',
'FROM DGMS_MEMBER_REGISTRATION DMR',
'LEFT JOIN DGMS_PLOTS_BOOKING DPB ON DMR.ID IN (SELECT regexp_substr(DPB.CLIENT_IDS,''[^:]+'', 1, level) FROM DUAL ',
'                    connect BY regexp_substr(DPB.CLIENT_IDS, ''[^:]+'', 1, level) is not null) AND DPB.ID = :P91_BK_ID',
'                    WHERE DPB.CLIENT_IDS IS NULL ',
'AND DMR.ORG_ID = :P_ORG_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P91_BK_ID'
,p_ajax_items_to_submit=>'P91_BK_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183924321969900316)
,p_name=>'P91_CLIENT_INFO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(183924087859900313)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(183924449844900317)
,p_name=>'P91_BK_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(183924087859900313)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(187620005036260516)
,p_name=>'P91_PB_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(187619900382260515)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(187620421487260520)
,p_name=>'P91_MARGINAL_REMARKS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(187619900382260515)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(198762153110251803)
,p_name=>'P91_BALLOTING_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(198762014218251802)
,p_prompt=>'Balloting Date'
,p_format_mask=>'DD-MON-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(198762365871251805)
,p_name=>'P91_BOOKING_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(198762014218251802)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(198762721456251809)
,p_name=>'P91_FILE_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(198762014218251802)
,p_prompt=>'File No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(201023349426168601)
,p_name=>'P91_BALLOTING_STS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(169846413799931707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214468122597895714)
,p_name=>'P91_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(214468095308895713)
,p_prompt=>'<B>From Date</B>'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(214468214895895715)
,p_name=>'P91_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(214468095308895713)
,p_prompt=>'<B>To Date</b>'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(216711591817844301)
,p_name=>'P91_MEMBERSHIP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(169846413799931707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(229381876881926994)
,p_name=>'P91_PLOT_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(646938053934139004)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<b>Plot/File</b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'      DPD.PLOT_NO  AS D , DPD.ID',
'FROM DGMS_PLOT_DETAILS DPD',
'JOIN DGMS_PLOTS_BOOKING DPB ON DPB.PLOT_ID = DPD.ID',
'AND DPB.BOOKING_STATUS IN (''BOOKED'',''BOOKING IN-PROCESS'',''DEPARTMENTAL APPROVED'') AND DPB.ORG_ID = :P_ORG_ID',
'WHERE DPD.ORG_ID = :P_ORG_ID AND NVL(DPD.PLOT_TYPE,''PLOT'') = ''FILE'';'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(229382254260926995)
,p_name=>'P91_DOCUMENT_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(646938053934139004)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>Document Type</B>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:TERMS AND CONDITIONS;TERMS AND CONDITIONS,ALLOTMENT CERTIFICATE;ALLOTMENT CERTIFICATE,BOOKING FORMS;BOOKING FORM,RECEIPTS;RECEIPT,VOUCHERS;VOUCHER,OTHERS;OTHERS'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(229382603614926995)
,p_name=>'P91_REMARKS_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(646938053934139004)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>Remarks</B>'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(229383085307926995)
,p_name=>'P91_BOOKING_ID_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(646938053934139004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(229383411613926995)
,p_name=>'P91_DOCUMENT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(646938053934139004)
,p_prompt=>'<B>Document</b>'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(229383832457926995)
,p_name=>'P91_FILE_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(646938053934139004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(229384248709926996)
,p_name=>'P91_MIME_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(646938053934139004)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(232640717164290412)
,p_name=>'P91_NEW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(169846413799931707)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(236140167035639247)
,p_name=>'P91_MEMBERSHIP_LETTER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(169846413799931707)
,p_prompt=>'Membership letter'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(187622208309260538)
,p_validation_name=>'Not Null'
,p_validation_sequence=>20
,p_validation=>'P91_MARGINAL_REMARKS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Remarks Required...!'
,p_when_button_pressed=>wwv_flow_api.id(187620601283260522)
,p_associated_item=>wwv_flow_api.id(187620421487260520)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(169848962151931733)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P91_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(169849085750931734)
,p_event_id=>wwv_flow_api.id(169848962151931733)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P91_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(222056890986888901)
,p_event_id=>wwv_flow_api.id(169848962151931733)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=HATEEM%20CITY%20LAHORE%20BOOKING%20FORM","_blank");'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P_ORG_ID'
,p_server_condition_expr2=>'4020'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(232640967285290414)
,p_event_id=>wwv_flow_api.id(169848962151931733)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=FILE%20BOOKING%20TEST","_blank");',
''))
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P91_NEW'
,p_client_condition_expression=>'0'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(236140213818639248)
,p_event_id=>wwv_flow_api.id(169848962151931733)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=Membership%20Letter%20Test","_blank");'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P91_MEMBERSHIP_LETTER'
,p_client_condition_expression=>'0'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(169849191065931735)
,p_event_id=>wwv_flow_api.id(169848962151931733)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=FILE%20BOOKING","_blank");',
'',
''))
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P_ORG_ID'
,p_server_condition_expr2=>'4020'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(160810688519341512)
,p_name=>'REFRESH'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P91_TRANSFER_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(160810737245341513)
,p_event_id=>wwv_flow_api.id(160810688519341512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(160809678824341502)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(183924615517900319)
,p_name=>'ADD CLIENT'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(183924551078900318)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(183924777087900320)
,p_event_id=>wwv_flow_api.id(183924615517900319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P91_CLIENT IS NOT NULL THEN',
'UPDATE DGMS_PLOTS_BOOKING SET ',
'        CLIENT_REG_NO = CLIENT_REG_NO||'':''||:P91_CLIENT_INFO, ',
'        CLIENT_IDS = CLIENT_IDS||'':''||:P91_CLIENT',
'WHERE ID = :P91_BK_ID;',
'COMMIT;',
'END IF;',
''))
,p_attribute_02=>'P91_BK_ID,P91_CLIENT,P91_CLIENT_INFO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(183924807638900321)
,p_event_id=>wwv_flow_api.id(183924615517900319)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(169846413799931707)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(183924949546900322)
,p_event_id=>wwv_flow_api.id(183924615517900319)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(183924087859900313)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(187620142114260517)
,p_name=>'FOR_MARGINAL_REMARKS'
,p_event_sequence=>40
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'REMARKS'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(187620245124260518)
,p_event_id=>wwv_flow_api.id(187620142114260517)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item( "P91_PB_ID" ).setValue(this.data.P91_PB_ID);',
'apex.item( "P91_MARGINAL_REMARKS" ).setValue(this.data.P91_MARGINAL_REMARKS);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(187620326543260519)
,p_event_id=>wwv_flow_api.id(187620142114260517)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(187619900382260515)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(187620977845260525)
,p_name=>'CLOSE REGION'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(187620836671260524)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(187621028421260526)
,p_event_id=>wwv_flow_api.id(187620977845260525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(187619900382260515)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(187621186096260527)
,p_event_id=>wwv_flow_api.id(187620977845260525)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(169846413799931707)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(190343429164616118)
,p_name=>'REFRESH DOCS REPORT'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P91_PB_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(190343508260616119)
,p_event_id=>wwv_flow_api.id(190343429164616118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(190341977585616103)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(198762436081251806)
,p_name=>'Print Balloting Letter'
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(198762234080251804)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(198762522598251807)
,p_event_id=>wwv_flow_api.id(198762436081251806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_02=>'P91_BALLOTING_DATE,P91_BOOKING_ID,P91_BALLOTING_STS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(198762619786251808)
,p_event_id=>wwv_flow_api.id(198762436081251806)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=BALLOTING%20LETTER","_blank");'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P91_BALLOTING_STS'
,p_client_condition_expression=>'SCHEDULE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(201023488071168602)
,p_event_id=>wwv_flow_api.id(198762436081251806)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=RESCHEDUL%20BALLOTING%20LETTER","_blank");'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P91_BALLOTING_STS'
,p_client_condition_expression=>'RESCHEDULE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(190140086100056433)
,p_name=>'New_1'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P91_RE_SCH_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(190140165740056434)
,p_event_id=>wwv_flow_api.id(190140086100056433)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P91_RE_SCH_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(190140292832056435)
,p_event_id=>wwv_flow_api.id(190140086100056433)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=RESCHEDUL%20BALLOTING%20LETTER","_blank");'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(214468324249895716)
,p_name=>'refresh booking'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P91_FROM_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214468432656895717)
,p_event_id=>wwv_flow_api.id(214468324249895716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(169846413799931707)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(214468543971895718)
,p_name=>'refresh booking report'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P91_TO_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(214468626265895719)
,p_event_id=>wwv_flow_api.id(214468543971895718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(169846413799931707)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(216711628500844302)
,p_name=>'PRINT MEMBERSHIP LETTER'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P91_MEMBERSHIP'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(216711776384844303)
,p_event_id=>wwv_flow_api.id(216711628500844302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P91_MEMBERSHIP'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(216711900122844305)
,p_event_id=>wwv_flow_api.id(216711628500844302)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=MEMBERSHIP%20LETTER","_blank");'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(235897077338279501)
,p_name=>'openModal'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(224561515394500708)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(235897100451279502)
,p_event_id=>wwv_flow_api.id(235897077338279501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'openModal(''pen_file'');'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(236139802914639244)
,p_name=>'New_2'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P91_BOOKING_NULL'
,p_condition_element=>'P91_BOOKING_NULL'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(236140075734639246)
,p_event_id=>wwv_flow_api.id(236139802914639244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'null;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(236139984892639245)
,p_event_id=>wwv_flow_api.id(236139802914639244)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>'NOTE: SURE!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(187622195182260537)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update Marginal Remarks'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE DGMS_PLOTS_BOOKING ',
'SET MARGINAL_REMARKS = :P91_MARGINAL_REMARKS, REM_UPDATED_BY = nvl(v(''APP_USER''),USER), REM_UPDATED_ON = SYSDATE ',
'WHERE ID = :P91_PB_ID; commit;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(187620601283260522)
,p_process_success_message=>'Remarks Updated Successfully...'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(229275574463513514)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Receiving_Attachment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_doc_img blob;',
'v_doc_file_nm varchar2(300);',
'v_doc_mime_typ varchar2(300);',
'B_ID NUMBER;',
'BEGIN',
'IF :P91_DOCUMENT IS NOT NULL THEN',
'    SELECT',
'        blob_content,FILENAME,MIME_TYPE',
'    INTO',
'        v_doc_img,v_doc_file_nm,v_doc_mime_typ',
'    FROM',
'        apex_application_temp_files',
'    WHERE',
'        name = :P91_DOCUMENT;',
'',
'    SELECT ID INTO B_ID ',
'    FROM DGMS_PLOTS_BOOKING WHERE PLOT_ID = :P91_PLOT_1 AND BOOKING_STATUS IN (''BOOKED'',''BOOKING IN-PROCESS'');',
'    ',
'    INSERT INTO DGMS_BOOKING_DOCUMENTS( BOOKING_ID, PLOT_ID, DOCUMENT_TYPE, REMARKS, DOCUMENT, DOC_FILE_NAME, DOC_MIME_TYPE) ',
'    VALUES(B_ID, :P91_PLOT_1,:P91_DOCUMENT_TYPE,:P91_REMARKS_1, v_doc_img, v_doc_file_nm, v_doc_mime_typ);',
'    COMMIT;',
'END IF; ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(229381426295926991)
,p_process_success_message=>'ATTACHMENTS UPLOADED....!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(183925024361900323)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET CLIENT INFO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_CLIENT_IDS NUMBER  := apex_application.g_x01;',
'V_CLIENT_INFO VARCHAR2(500) ;',
'begin',
'SELECT  CNIC_NO ||''/''||F_NAME||''/''||ID||'' - ''  INTO V_CLIENT_INFO',
'FROM DGMS_MEMBER_REGISTRATION',
'WHERE ORG_ID = :P_ORG_ID and ID = V_CLIENT_IDS;',
'',
'apex_json.open_object;',
'    apex_json.write(''success'', true);',
'    apex_json.write(''CLIENT_INFO'',V_CLIENT_INFO);',
'apex_json.close_object;',
'exception when others',
'then',
'null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
