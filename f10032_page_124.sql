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
--   Date and Time:   12:45 Tuesday January 30, 2024
--   Exported By:     UMAR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 124
--   Manifest End
--   Version:         21.1.7
--   Instance ID:     697968588975354
--

begin
null;
end;
/
prompt --application/pages/delete_00124
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>124);
end;
/
prompt --application/pages/page_00124
begin
wwv_flow_api.create_page(
 p_id=>124
,p_user_interface_id=>wwv_flow_api.id(158393926828282951)
,p_name=>'DEALER  TO DEALER TRANSFER'
,p_alias=>'DEALER-TO-DEALER-TRANSFER'
,p_step_title=>'DEALER  TO DEALER TRANSFER'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P124_FROM_DEALER'').change(function(){',
'apex.region(''det'').refresh();',
'}',
');',
'',
'$(''#P124_PLAN'').change(function(){',
'    if(apex.item(''P124_PLAN'').getValue() == ''NEW''){',
'        apex.item(''P124_SCHEDULE_PAYMENT'').show();',
'            ',
'    }',
'    else{',
'       ',
'         apex.item(''P124_SCHEDULE_PAYMENT'').hide();',
'         apex.item(''P124_PAYMENT_PLAN'').hide();',
'         apex.item(''P124_POLICY_DECISION'').hide();',
'         apex.item(''P124_POLICY_NO'').hide();',
'         apex.item(''P124_PLAN_NAME'').hide();',
'         ',
'    }',
'});',
'',
'// apex.item(''P124_SCHEDULE_PAYMENT'').hide();',
'// apex.item(''P124_PAYMENT_PLAN'').hide();',
'// apex.item(''P124_POLICY_DECISION'').hide();',
'// apex.item(''P124_POLICY_NO'').hide();',
'// apex.item(''P124_PLAN_NAME'').hide();',
'',
'$(''#P124_SCHEDULE_PAYMENT'').change(function(){',
'    if(apex.item(''P124_SCHEDULE_PAYMENT'').getValue() == ''INSTALLMENT''){',
'        apex.item(''P124_PAYMENT_PLAN'').show();',
'        apex.item(''P124_POLICY_DECISION'').hide();',
'         apex.item(''P124_POLICY_NO'').hide();',
'         apex.item(''P124_PLAN_NAME'').hide();    ',
'    }',
'    else if(apex.item(''P124_SCHEDULE_PAYMENT'').getValue() == ''LUMPSUM''){',
'       ',
'         apex.item(''P124_PAYMENT_PLAN'').hide();',
'         apex.item(''P124_POLICY_DECISION'').show();',
'         apex.item(''P124_POLICY_NO'').hide();',
'         apex.item(''P124_PLAN_NAME'').hide();     ',
'        }',
'       else',
'        {',
'         apex.item(''P124_PAYMENT_PLAN'').hide();',
'         apex.item(''P124_POLICY_DECISION'').hide();',
'         apex.item(''P124_POLICY_NO'').hide();',
'         apex.item(''P124_PLAN_NAME'').hide();',
'        }',
'});',
'',
'$(''#P124_POLICY_DECISION'').change(function(){',
'    if(apex.item(''P124_POLICY_DECISION'').getValue() == ''NEW''){',
'     apex.item(''P124_POLICY_NO'').show(); ',
'    }',
'    else{',
'         apex.item(''P124_POLICY_NO'').hide(); ',
'    }',
'});',
'',
'$(''#P124_PAYMENT_PLAN'').change(function(){',
'    if(apex.item(''P124_PAYMENT_PLAN'').getValue() == ''CUSTOMIZED'' || apex.item(''P124_PAYMENT_PLAN'').getValue() == ''TABLE''){',
'        apex.item(''P124_POLICY_DECISION'').show();',
'         apex.item(''P124_PLAN_NAME'').show();',
'         apex.item(''P124_POLICY_NO'').hide(); ',
'    }',
'    else{',
'        apex.item(''P124_POLICY_NO'').hide(); ',
'         apex.item(''P124_POLICY_DECISION'').hide();',
'         apex.item(''P124_PLAN_NAME'').hide();',
'    }',
'});',
'',
'',
'$(''#P124_CNIC'').change(function(){',
'    ',
'        apex.server.process(',
'    ''CLIENTS'',                        ',
'    {',
'    x08: $v(''P124_CNIC'')},',
'    {',
'        success: function (pData) {$s(''P124_CLIENT'',pData.CLIENT_INFO);},',
'       dataType: null               // Response type (here: plain text)',
'    }',
'    );',
'     });',
'',
'',
'     //================================================================================',
'',
'// $(''#P124_TYPE'').change(function(){',
'//     if (apex.item(''P124_TYPE'').getValue() == ''BOOKED'') {',
'//         $x_Show(''book'');',
'//         $x_Hide(''det'');       ',
'//     } else {',
'//         $x_Show(''det'');',
'//         $x_Hide(''book'');',
'//     }',
'// });',
'',
'',
'',
'',
'',
'',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item(''P124_SCHEDULE_PAYMENT'').hide();',
'apex.item(''P124_PAYMENT_PLAN'').hide();',
'apex.item(''P124_POLICY_DECISION'').hide();',
'apex.item(''P124_POLICY_NO'').hide();',
'apex.item(''P124_PLAN_NAME'').hide();'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'JAHANZAIB'
,p_last_upd_yyyymmddhh24miss=>'20240130124400'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(182643237823104907)
,p_plug_name=>'Forms Details'
,p_region_name=>'det'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158483500507283087)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DDF.ID,',
'       INITCAP(DDD.DEALER_NAME) DEALER_NAME,',
'       DDF.STATUS,',
'       DDF.CREATED_ON,',
'       INITCAP(DDF.CREATED_BY) CREATED_BY,',
'       DPD.MARLA||'' Marla'' "SIZE",',
'       DPD.PLOT_NO,',
'       APEX_ITEM.CHECKBOX(1,DDF.ID) "SELECT"',
'FROM DGMS_DEALERS_FORMS DDF',
'JOIN DGMS_DEALERS_DETAILS DDD ON DDD.ID = DDF.DEALER_ID AND  :P_ORG_ID IN (SELECT regexp_substr(DDD.ORG_ID,''[^:]+'', 1, 1) FROM DUAL ',
'            connect BY regexp_substr(DDD.ORG_ID, ''[^:]+'', 1, LEVEL) is not null)',
'JOIN DGMS_PLOT_DETAILS DPD ON DPD.ID = DDF.FILE_ID AND DPD.ORG_ID = :P_ORG_ID',
'LEFT JOIN DGMS_PLOTS_BOOKING DPB ON DPB.PLOT_ID = DPD.ID AND DPB.BOOKING_STATUS = ''BOOKED'' AND DPB.ORG_ID = :P_ORG_ID',
'--LEFT JOIN DGMS_TRANSFERRED_PLOT DTP ON DTP.PLOT_ID = DPD.ID AND DTP.STATUS IN (''POST'',''DOCUMENTS VERIFIED'') AND DTP.ORG_ID = :P_ORG_ID ',
'WHERE DDF.DEALER_ID = :P124_FROM_DEALER AND DDF.ORG_ID = :P_ORG_ID AND DDF.STATUS = ''APPROVED'' AND DPB.PLOT_ID IS  NULL --AND DPB.PLOT_ID IS NOT NULL',
'',
'--AND DPD.PLOT_TYPE = ''FILE''',
'--and DDF.STATUS != ''BOOKED''',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P124_FROM_DEALER'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Forms Details'
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
 p_id=>wwv_flow_api.id(182643375158104908)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'ZOYA'
,p_internal_uid=>57205741274265203
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182644259488104917)
,p_db_column_name=>'SELECT'
,p_display_order=>10
,p_column_identifier=>'I'
,p_column_label=>'Select'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182643529554104909)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(184196663518062208)
,p_db_column_name=>'SIZE'
,p_display_order=>40
,p_column_identifier=>'K'
,p_column_label=>'Size'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182643615719104910)
,p_db_column_name=>'DEALER_NAME'
,p_display_order=>50
,p_column_identifier=>'B'
,p_column_label=>'Dealer Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182643750562104912)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182643642907104911)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>70
,p_column_identifier=>'C'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(232870851273262230)
,p_db_column_name=>'PLOT_NO'
,p_display_order=>80
,p_column_identifier=>'M'
,p_column_label=>'Plot No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235025531785240009)
,p_db_column_name=>'STATUS'
,p_display_order=>90
,p_column_identifier=>'N'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(182656509911160409)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'572189'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECT:DEALER_NAME:PLOT_NO:CREATED_ON:CREATED_BY:SIZE:STATUS:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(182644334204104918)
,p_plug_name=>'Dealer To Dealer Transfer'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useRegionTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158474134065283074)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(158541112395283177)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(158417037603282996)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(228627050412633233)
,p_plug_name=>'Transfer Form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158514529862283130)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(228629182903633254)
,p_plug_name=>'Transfer Details'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158483500507283087)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- WITH SHERY AS (',
'--     SELECT',
'--             ROW_NUMBER() OVER (PARTITION BY NVL(DIWR.INST_ID, DPWI.ID) ORDER BY DIWR.ID) "INST_REC_COUNT",',
'--             DIWR.ID "INSTALLMENT_EFFECT_ID",',
'--             CASE WHEN ROW_NUMBER() OVER (PARTITION BY DIWR.INST_ID ORDER BY DIWR.ID) = 1 THEN',
'--             DPWI.INSTALLMENT_PRICE - DIWR.RECEIVED_AMT',
'--             ELSE',
'--              DPWI.INSTALLMENT_PRICE - SUM(DIWR.RECEIVED_AMT) OVER (PARTITION BY DIWR.INST_ID ORDER BY DIWR.ID)',
'--             END "OUTSTANDING_AMOUNT",',
'--             CASE WHEN',
'--             LAG(DPWI.INSTALLMENT_DATE) OVER (PARTITION BY DPWI.ID ORDER BY DIWR.ID) = DPWI.INSTALLMENT_DATE AND',
'--             LAG(NVL(DIWRH.PAID_DATE,SYSDATE)) OVER (PARTITION BY DPWI.INSTALLMENT_DATE ORDER BY DIWR.ID)  = NVL(DIWRH.PAID_DATE,SYSDATE)',
'--             THEN',
'--             0',
'--             ELSE',
'--             ROUND(NVL(DIWRH.PAID_DATE,SYSDATE) -  DPWI.INSTALLMENT_DATE)',
'--             END "LPG_DAYS",',
'--             DPWI.ID INSTALL,',
'--             NVL(DIWRH.PAID_DATE,SYSDATE),',
'--             NVL(DIWR.RECEIPT_ID,0) "REC_ID",',
'--             nvl(DIWR.RECEIVED_AMT,0) "REC_AMT",',
'--             NVL(DPWI.INSTALLMENT_PRICE,0) "INST_AMT"',
'-- FROM  DGMS_PLOT_WISE_INSTALLMENTS DPWI ',
'-- LEFT JOIN DGMS_INSTALLMENT_WISE_RECEIPTS DIWR ON DPWI.ID = DIWR.INST_ID',
'-- LEFT JOIN dgms_installment_wise_receipts_header DIWRH on DIWRH.ID = DIWR.RECEIPT_ID',
'-- --WHERE DPWI.BOOKING_ID = :P62_BOOKING_ID',
'-- ORDER BY DPWI.BOOKING_ID, DIWR.INST_ID,NVL(INST_REC_COUNT,1)',
'-- ), ',
'--          SHERRY1 AS ( SELECT ',
'',
'--          NVL(S.INST_REC_COUNT,1) "INST_REC_COUNT",',
'--         NVL(INST1.INSTALLMENT_PRICE,0) "BOOKING",',
'--         CASE',
'--         WHEN S.INST_REC_COUNT = 1 AND S.LPG_DAYS > 0 AND DPWI.INSTALLMENT_PRICE > 0  THEN',
'--                 ROUND((NVL(DPWI.INSTALLMENT_PRICE,0) * 0.0006667) * S.LPG_DAYS)',
'--         WHEN LEAD(S.LPG_DAYS,0,0) OVER (ORDER BY S.OUTSTANDING_AMOUNT) > 0 AND  LAG(S.OUTSTANDING_AMOUNT) OVER (ORDER BY DPWI.BOOKING_ID, DPWI.ID,INST_REC_COUNT) != 0 AND DPWI.INSTALLMENT_PRICE > 0 THEN',
'--                 ROUND((LAG(S.OUTSTANDING_AMOUNT) OVER (ORDER BY DPWI.BOOKING_ID, DPWI.ID,INST_REC_COUNT)  * 0.0006667) * S.LPG_DAYS)',
'--         END "FINE_AMOUNT",',
'--          S.INST_AMT "INST_AMT",',
'--          S.REC_AMT "REC_AMT",',
'--          (CASE WHEN S.INST_REC_COUNT = 1 THEN ROUND(DPWI.INSTALLMENT_PRICE) ELSE 0 END) SUM_INST,',
'--          (CASE WHEN S.INST_REC_COUNT = 1   AND DPWI.INSTALLMENT_DATE <= SYSDATE THEN NVL(DPWI.INSTALLMENT_PRICE,0) ELSE 0 END) INST_AMT1,',
'--          (CASE WHEN S.INST_REC_COUNT = 1   AND DPWI.INSTALLMENT_DATE > SYSDATE THEN NVL(DPWI.INSTALLMENT_PRICE,0) ELSE 0 END) INST_AMT2,',
'--          S.INSTALLMENT_EFFECT_ID,',
'--          DPB.ID "BK_ID",',
'--          S.INSTALL "INST_ID",',
'--          NVL(S.REC_ID,0) "REC_ID"',
'-- FROM DGMS_PLOT_WISE_INSTALLMENTS DPWI',
'-- JOIN SHERY S ON S.INSTALL = DPWI.ID',
'-- JOIN DGMS_PLOTS_BOOKING DPB ON DPB.ID = DPWI.BOOKING_ID',
'-- JOIN DGMS_PLOT_DETAILS DPD ON DPD.ID = DPB.PLOT_ID',
'-- LEFT join DGMS_PLOT_WISE_INSTALLMENTS INST1 on INST1.BOOKING_ID = DPWI.BOOKING_ID AND INST1.INTALLMENT_TYPE = ''BOOKING''',
'-- JOIN DGMS_PLOT_DETAILS DPD ON DPD.ID = DPB.PLOT_ID',
'-- --WHERE DPWI.BOOKING_ID = :P62_BOOKING_ID',
'-- ORDER BY DPWI.BOOKING_ID, DPWI.ID,NVL(INST_REC_COUNT,1))',
'',
'-- SELECT ',
'    ',
'--     dpb.plot_id "Plot",',
'--     DTP.booking_id "Booking_Id",',
'--     SYSDATE "DATE",',
'--     DPB.CLIENT_REG_NO "client",',
'--     ''Request for Issue of NDC for  ''||POLICY_TYPE||''  Plot # FC-||-''||DPD.PLOT_NO "SUBJECT",',
'--    ''FAISAL COTTAGES PHASE-||, MULTAN'' "PROJECT",',
'--      ROUND(DPB.CLIENT_RECIEVABLE) AS "BOOKED_PRICE",',
'--      nvl(DTP.EXTRA_CHARGES,0) AS "EXTRA VALUE",',
'--      SUM(NVL(S1.FINE_AMOUNT,0)) AS FINES,',
'--      S1.BOOKING AS "TOTAL VALUE OF BOOKING",',
'--     -- SUM(NVL(S1.SUM_INST,0)) - SUM(NVL(S1.REC_AMT,0)) AS "DUE AMOUNT",',
'--     SUM(NVL(S1.INST_AMT1,0)) "DUE AMOUNT",',
'--      SUM(NVL(S1.SUM_INST,0)) INST_AMT,',
'--      SUM(S1.REC_AMT) AS "AMOUNT PAID",',
'--      (SUM(NVL(S1.SUM_INST,0)) + (SUM(NVL(S1.FINE_AMOUNT,0))) + nvl(DTP.EXTRA_CHARGES,0) + nvl(DTP.COMMUNITY_CHARGES,0) )  - (SUM(NVL(S1.REC_AMT,0))) AS "BALANCE PAYABLE",',
'--      round(DPD.MARLA,2) * 4000 AS "PROCEEDING CHARGES",',
'--      nvl(DTP.COMMUNITY_CHARGES,0) AS "COMMUNITY CHARGES",',
'--    --  SUM(NVL(S1.SUM_INST,0)) - SUM(NVL(S1.REC_AMT,0)) AS "REMAINIG AMOUNT PAYABLE",',
'--    SUM(NVL(S1.INST_AMT2,0))  "REMAINIG AMOUNT PAYABLE",',
'--      ''PRINT'' "PRINT"',
'--     FROM  DGMS_PLOT_WISE_INSTALLMENTS  DPWI',
'--     LEFT JOIN DGMS_INSTALLMENT_WISE_RECEIPTS DIWR ON DPWI.ID = DIWR.INST_ID',
'--     LEFT JOIN dgms_installment_wise_receipts_header DIWRH on DIWRH.ID = DIWR.RECEIPT_ID',
'--     JOIN DGMS_PLOTS_BOOKING DPB ON DPB.ID = DPWI.BOOKING_ID AND DPB.BOOKING_STATUS = ''TRANFERRED''',
'--     JOIN DGMS_TRANSFERRED_PLOT DTP ON DTP.PLOT_ID = DPB.PLOT_ID',
'--     JOIN SHERRY1 S1 ON S1.INST_ID = DPWI.ID AND NVL(S1.REC_ID,0) = NVL(DIWR.RECEIPT_ID,0)',
'--     JOIN DGMS_PLOT_DETAILS DPD ON DPD.ID = DPB.PLOT_ID',
'--     -- join DGMS_MEMBER_REGISTRATION DMR on DMR.id = DPB.CLIENT_REG_NO',
'--     join DGMS_BLOCKS_SETUP dbs on dbs.id = DPD.block',
'--     LEFT JOIN DGMS_PER_MARLA_VALUE DPMV ON DPMV.ID = DPB.POLICY_NO',
'--     --WHERE DPB.ID = :P62_BOOKING_ID',
'--     AND DTP.STATUS = ''TRANSFERED''',
'--     GROUP BY dpb.plot_id,DTP.booking_id,DPB.CLIENT_REG_NO,POLICY_TYPE,DPD.PLOT_NO,DPB.CLIENT_RECIEVABLE,DPD.MARLA,S1.BOOKING,DTP.COMMUNITY_CHARGES,DTP.EXTRA_CHARGES',
'--     ORDER BY dpb.plot_id,DTP.booking_id,DPB.CLIENT_REG_NO,POLICY_TYPE,DPD.PLOT_NO,DPB.CLIENT_RECIEVABLE,DPD.MARLA,S1.BOOKING',
'',
' with SHERRY AS(   SELECT',
'            ROW_NUMBER() OVER (PARTITION BY NVL( DIWR.INST_ID, DPWI.ID) ORDER BY DIWR.ID) "INST_REC_COUNT2",',
'            DPWI.ID INSTALL,',
'            DPWI.INSTALLMENT_PRICE,',
'            DIWR.RECEIVED_AMT "SUM_REC"',
'FROM  DGMS_PLOT_WISE_INSTALLMENTS DPWI',
'LEFT JOIN DGMS_INSTALLMENT_WISE_RECEIPTS DIWR ON DPWI.ID = DIWR.INST_ID',
'JOIN DGMS_PLOTS_BOOKING DPB ON DPB.ID = DPWI.BOOKING_ID AND DPB.BOOKING_STATUS = ''TRANSFERRED''',
'--WHERE DPWI.BOOKING_ID = :P124_TRANSFER_ID',
' )',
', SHERRY1 AS(   SELECT',
'',
'            S1.INSTALL INSTALL,',
'            (CASE WHEN INST_REC_COUNT2 = 1  THEN NVL(DPWI.INSTALLMENT_PRICE,0) ELSE 0 END) INST_AMT,',
'            (CASE WHEN INST_REC_COUNT2 = 1',
'            AND DPWI.INSTALLMENT_DATE <= SYSDATE THEN NVL(DPWI.INSTALLMENT_PRICE,0) ELSE 0 END) INST_AMT1,',
'            S1.SUM_REC "SUM_REC"',
'        ',
'FROM  DGMS_PLOT_WISE_INSTALLMENTS DPWI',
'JOIN SHERRY S1 ON S1.INSTALL = DPWI.ID',
'--WHERE DPWI.BOOKING_ID = :P124_TRANSFER_ID',
' )',
'',
'SELECT',
'            DPD.plot_NO "Plot",',
'            DTP.booking_id "Booking_Id",',
'            SYSDATE "DATE",',
'            DPB.CLIENT_REG_NO "Seller",',
'            DPB1.CLIENT_REG_NO "Buyer",',
'            ''Request for Issue of NDC for  ''||POLICY_TYPE||''  Plot # FC-II-''||DPD.PLOT_NO "SUBJECT",',
'            ''FAISAL COTTAGES PHASE-II, MULTAN'' "PROJECT",',
'            ROUND(DPB.CLIENT_RECIEVABLE) AS "BOOKED_PRICE",',
'            nvl(DTP.EXTRA_CHARGES,0) AS "EXTRA VALUE",',
'            round(DPD.MARLA,2) * 4000 AS "PROCEEDING CHARGES",',
'            nvl(DTP.COMMUNITY_CHARGES,0) AS "COMMUNITY CHARGES",',
'            trim(to_char((SUM(NVL(S2.INST_AMT,0))),''999G999G999G999G999G999G990'')) DUE_AMT,',
'            trim(to_char(SUM(NVL(S2.SUM_REC,0)),''999G999G999G999G999G999G990''))  PAID_AMT,',
'            trim(to_char( SUM(NVL(S2.INST_AMT1,0)) - SUM(NVL(S2.SUM_REC,0)),''999G999G999G999G999G999G990'')) OVER_DUE,',
'            trim(to_char( SUM(NVL(S2.INST_AMT,0)) - SUM(NVL(S2.SUM_REC,0)),''999G999G999G999G999G999G990'')) OUTSTANDING,',
'            ''PRINT'' "PRINT"',
'                ',
'FROM DGMS_TRANSFERRED_PLOT DTP ',
' ',
'    JOIN DGMS_PLOTS_BOOKING DPB ON DPB.PLOT_ID = DTP.PLOT_ID AND DPB.BOOKING_STATUS = ''TRANSFERRED''',
'    LEFT JOIN DGMS_PLOT_WISE_INSTALLMENTS  DPWI ON DPWI.BOOKING_ID = DPB.ID ',
'',
'  --  JOIN DGMS_TRANSFERRED_PLOT DTP ON DTP.PLOT_ID = DPB.PLOT_ID AND DTP.STATUS = ''TRANSFERRED''',
'    JOIN DGMS_PLOTS_BOOKING DPB1 ON DPB1.plot_id = dtp.plot_id AND DPB1.BOOKING_STATUS = ''BOOKED''',
'    LEFT JOIN SHERRY1 S2 ON S2.INSTALL = DPWI.ID',
'    JOIN DGMS_PLOT_DETAILS DPD ON DPD.ID = DPB.PLOT_ID',
'    LEFT join DGMS_BLOCKS_SETUP dbs on dbs.id = DPD.block',
'    LEFT JOIN DGMS_PER_MARLA_VALUE DPMV ON DPMV.ID = DPB.POLICY_NO',
'    WHERE  DTP.STATUS = ''TRANSFERRED'' AND DTP.ORG_ID = :P_ORG_ID',
'    GROUP BY dpb.plot_id,DTP.booking_id,DPB.CLIENT_REG_NO,POLICY_TYPE,DPD.PLOT_NO,DPB.CLIENT_RECIEVABLE,DPD.MARLA,DTP.COMMUNITY_CHARGES,DTP.EXTRA_CHARGES,DPB1.CLIENT_REG_NO',
'    ORDER BY dpb.plot_id,DTP.booking_id,DPB.CLIENT_REG_NO,POLICY_TYPE,DPD.PLOT_NO,DPB.CLIENT_RECIEVABLE,DPD.MARLA'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P124_EXTRA_CHARGES,P124_COMMUNITY_CHARGES'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Transfer Details'
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
 p_id=>wwv_flow_api.id(228629221716633255)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'SHEHARYAR.ALI'
,p_internal_uid=>103191587832793550
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182626544393100939)
,p_db_column_name=>'Booking_Id'
,p_display_order=>10
,p_column_identifier=>'AR'
,p_column_label=>'Booking Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182629830833100944)
,p_db_column_name=>'BOOKED_PRICE'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Booked Price'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182629391548100944)
,p_db_column_name=>'PRINT'
,p_display_order=>60
,p_column_identifier=>'R'
,p_column_label=>'Print'
,p_column_link=>'javascript:$s(''P56_TRANSFER_ID'',''#Booking_Id#'');'
,p_column_linktext=>'#PRINT#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182627004305100940)
,p_db_column_name=>'DATE'
,p_display_order=>70
,p_column_identifier=>'Y'
,p_column_label=>'Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182627371715100940)
,p_db_column_name=>'SUBJECT'
,p_display_order=>110
,p_column_identifier=>'AC'
,p_column_label=>'Subject'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182627820765100940)
,p_db_column_name=>'PROJECT'
,p_display_order=>120
,p_column_identifier=>'AD'
,p_column_label=>'Project'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182628221782100942)
,p_db_column_name=>'PROCEEDING CHARGES'
,p_display_order=>170
,p_column_identifier=>'AJ'
,p_column_label=>'Proceeding Charges'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182628563151100942)
,p_db_column_name=>'EXTRA VALUE'
,p_display_order=>190
,p_column_identifier=>'AM'
,p_column_label=>'Extra Value'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182628982911100942)
,p_db_column_name=>'COMMUNITY CHARGES'
,p_display_order=>200
,p_column_identifier=>'AN'
,p_column_label=>'Community Charges'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182630220947100944)
,p_db_column_name=>'DUE_AMT'
,p_display_order=>210
,p_column_identifier=>'AS'
,p_column_label=>'Due Amt'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182630606754100945)
,p_db_column_name=>'PAID_AMT'
,p_display_order=>220
,p_column_identifier=>'AT'
,p_column_label=>'Paid Amt'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182631021699100945)
,p_db_column_name=>'OVER_DUE'
,p_display_order=>230
,p_column_identifier=>'AU'
,p_column_label=>'Over Due'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182631370103100945)
,p_db_column_name=>'OUTSTANDING'
,p_display_order=>240
,p_column_identifier=>'AV'
,p_column_label=>'Outstanding'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182631742681100947)
,p_db_column_name=>'Plot'
,p_display_order=>250
,p_column_identifier=>'AW'
,p_column_label=>'Plot'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182632147710100947)
,p_db_column_name=>'Seller'
,p_display_order=>260
,p_column_identifier=>'AX'
,p_column_label=>'Seller'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(182632590722100947)
,p_db_column_name=>'Buyer'
,p_display_order=>270
,p_column_identifier=>'AY'
,p_column_label=>'Buyer'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(233182541928445109)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'505620'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Booking_Id:Plot:Seller:Buyer:SUBJECT:PROJECT:DATE:BOOKED_PRICE:EXTRA VALUE:COMMUNITY CHARGES:PROCEEDING CHARGES:DUE_AMT:PAID_AMT:OVER_DUE:OUTSTANDING:PRINT:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(235027245436240026)
,p_plug_name=>'Forms Details Booked'
,p_region_name=>'book'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158483500507283087)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DDF.ID,',
'       INITCAP(DDD.DEALER_NAME) DEALER_NAME,',
'       DDF.STATUS,',
'       DDF.CREATED_ON,',
'       INITCAP(DDF.CREATED_BY) CREATED_BY,',
'       DPD.MARLA||'' Marla'' "SIZE",',
'       DPD.PLOT_NO,',
'       APEX_ITEM.CHECKBOX(1,DDF.ID) "SELECT"',
'FROM DGMS_DEALERS_FORMS DDF',
'JOIN DGMS_DEALERS_DETAILS DDD ON DDD.ID = DDF.DEALER_ID AND  :P_ORG_ID IN (SELECT regexp_substr(DDD.ORG_ID,''[^:]+'', 1, 1) FROM DUAL ',
'            connect BY regexp_substr(DDD.ORG_ID, ''[^:]+'', 1, LEVEL) is not null)',
'JOIN DGMS_PLOT_DETAILS DPD ON DPD.ID = DDF.FILE_ID AND DPD.ORG_ID = :P_ORG_ID',
'JOIN DGMS_PLOTS_BOOKING DPB ON DPB.PLOT_ID = DPD.ID AND DPB.BOOKING_STATUS = ''BOOKED'' AND DPB.ORG_ID = :P_ORG_ID',
'--LEFT JOIN DGMS_TRANSFERRED_PLOT DTP ON DTP.PLOT_ID = DPD.ID AND DTP.STATUS IN (''POST'',''DOCUMENTS VERIFIED'') AND DTP.ORG_ID = :P_ORG_ID ',
'WHERE DDF.DEALER_ID = :P124_FROM_DEALER AND DDF.ORG_ID = :P_ORG_ID AND DDF.STATUS = ''APPROVED'' --AND DPB.PLOT_ID IS  NULL --AND DPB.PLOT_ID IS NOT NULL',
'',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P124_FROM_DEALER'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Forms Details Booked'
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
 p_id=>wwv_flow_api.id(235027484075240028)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'UMAR'
,p_internal_uid=>235027484075240028
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235027533747240029)
,p_db_column_name=>'SELECT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Select'
,p_column_type=>'STRING'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_format_mask=>'PCT_GRAPH:::'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235027652997240030)
,p_db_column_name=>'ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235027792776240031)
,p_db_column_name=>'SIZE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Size'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235027881977240032)
,p_db_column_name=>'DEALER_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Dealer Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235027930248240033)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235028046673240034)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235028127155240035)
,p_db_column_name=>'PLOT_NO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Plot No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235028200389240036)
,p_db_column_name=>'STATUS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(235553938045559303)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2355540'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SELECT:ID:SIZE:DEALER_NAME:CREATED_BY:CREATED_ON:PLOT_NO:STATUS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(182625862427100931)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(182644334204104918)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182621175438100925)
,p_name=>'P124_PLOT'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(228627050412633233)
,p_prompt=>'<b>Plot/File</b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       DDF.FILE_ID',
'',
'  from DGMS_DEALERS_FORMS DDF',
'  JOIN DGMS_DEALERS_DETAILS DDD ON DDD.ID = DDF.DEALER_ID AND DDD.ORG_ID = :P_ORG_ID',
'  JOIN DGMS_PLOT_DETAILS DPD ON DPD.FILE_ID = DDF.FILE_ID AND DPD.ORG_ID = :P_ORG_ID',
'  left JOIN DGMS_PLOTS_BOOKING DPB ON DPB.PLOT_ID = DPD.ID AND DPB.BOOKING_STATUS = ''BOOKED'' AND DPB.ORG_ID = :P_ORG_ID AND CLIENT_IDS IS NULL',
'  WHERE DDF.DEALER_ID = :P124_FROM_DEALER AND DDF.ORG_ID = :P_ORG_ID AND STATUS = ''APPROVED'''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P124_FROM_DEALER'
,p_ajax_items_to_submit=>'P124_FROM_DEALER'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
);
end;
/
begin
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182621619362100926)
,p_name=>'P124_CNIC'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(228627050412633233)
,p_prompt=>'<b>To Dealer</b>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT DEALER_NAME||''-''||CNIC_NO AS D, DDD.ID AS R',
'FROM DGMS_DEALERS_DETAILS DDD',
'LEFT JOIN DGMS_DEALERS_FORMS DDF ON DDF.DEALER_ID = DDD.ID AND DDF.ORG_ID = :P_ORG_ID',
'WHERE  :P_ORG_ID IN (SELECT regexp_substr(DDD.ORG_ID,''[^:]+'', 1, 1) FROM DUAL ',
'                    connect BY regexp_substr(DDD.ORG_ID, ''[^:]+'', 1, LEVEL) is not null) AND',
' DDD.ID <> :P124_FROM_DEALER'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P124_FROM_DEALER'
,p_ajax_items_to_submit=>'P124_FROM_DEALER'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'Y'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_11=>':'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182622006492100926)
,p_name=>'P124_PLAN'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(228627050412633233)
,p_prompt=>'Plan'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:OLD;OLD,NEW;NEW'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(158419573899282998)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--indicatorAsterisk:t-Form-fieldContainer--xlarge:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182622346824100926)
,p_name=>'P124_SCHEDULE_PAYMENT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(228627050412633233)
,p_prompt=>'<b>Schedule Payment</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Lumpsum;LUMPSUM,Installment;INSTALLMENT'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182622797025100926)
,p_name=>'P124_PAYMENT_PLAN'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(228627050412633233)
,p_prompt=>'<b>Payment Plan</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Table Plan;TABLE,Customized;CUSTOMIZED'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182623148273100928)
,p_name=>'P124_POLICY_DECISION'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(228627050412633233)
,p_prompt=>'<b>Policy Decision</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:NEW;NEW,OLD;OLD'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182623578771100928)
,p_name=>'P124_POLICY_NO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(228627050412633233)
,p_prompt=>'<B>Policy No</B>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'TRANSFER OR PLAN CHANE OR SHIFT POLICY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ID "POLICY NO",POLICY_TYPE || '' - ''|| PLOT_TYPE "POLICY TYPE" , MARLA_TYPE "MARLA TYPE" , CASE RECOVERY_MONTHS WHEN 1 THEN ''CASH'' ELSE ''INSTALLMENT'' END  AS "POLICY OF",PER_MARLA_VALUE "PER MARLA VALUE",',
'ID ||'' - ''||POLICY_TYPE||'' - ''||MARLA_TYPE ||'' - ''||CASE RECOVERY_MONTHS WHEN 1 THEN ''CASH'' ELSE ''INSTALLMENT''||'' - ''||PER_MARLA_VALUE END  AS "D",',
'ID AS R ',
'FROM DGMS_PER_MARLA_VALUE ',
'WHERE ACTIVE = ''Y'' AND',
' ORG_ID = :P_ORG_ID;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'SELECT POLICY'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182623981937100928)
,p_name=>'P124_PLAN_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(228627050412633233)
,p_prompt=>'<B>Plan Name</B>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_sql varchar2(4000);',
'begin',
'   if :P124_PAYMENT_PLAN = ''CUSTOMIZED'' then ',
'     v_sql := ''',
'select dpd.PLOT_NO ||''''-''''||dmr.CNIC_NO ||''''-''''||dmr.F_NAME ||''''-''''||custom.id as d, custom.id as r ',
'                from DGMS_PLOT_WISE_CUSTOM_INST_PLAN1 custom ',
'                join dgms_plot_details dpd on dpd.id = custom.PLOT_ID AND DPD.ORG_ID = :P_ORG_ID',
'                join DGMS_MEMBER_REGISTRATION dmr on dmr.id = custom.CLIENT_REG_NO AND DMR.ORG_ID = :P_ORG_ID',
'                join DGMS_PER_MARLA_VALUE dpmv on dpmv.id = custom.POLICY_NO AND DPMV.ORG_ID = :P_ORG_ID',
'                LEFT JOIN DGMS_PLOTS_BOOKING DPB ON DPB.CLIENT_REG_NO = dmr.id AND dpd.id = DPB.PLOT_ID AND DPB.BOOKING_STATUS = ''''BOOKED'''' AND DPB.ORG_ID = :P_ORG_ID',
'                where custom.org_id = :P_ORG_ID AND CUSTOM_PLAN_NATURE = ''''TRANSFER'''' AND custom.PLOT_ID = :P124_PLOT ',
'                AND DPB.CLIENT_REG_NO IS NULL',
'                and custom.active = ''''Y''''                ',
'                and custom.APPROVED = ''''Y'''';'';',
'    else',
'     v_sql := ''SELECT dips.plan_name as d,dips.ID as r',
'                FROM DGMS_INTALLMENT_PLANS_SETUP dips',
'                join DGMS_PER_MARLA_VALUE dpmv on dpmv.id = dips.POLICY_ID AND DPMV.ORG_ID = :P_ORG_ID',
'                WHERE dips.ORG_ID = :P_ORG_ID',
'                AND dips.ACTIVE = ''''Y''''',
'                AND dips.INSTALLMENT_TYPE= ''''B''''',
'                and (dpmv.id = NVL(:P124_POLICY_NO,dpmv.id)) AND :P124_PAYMENT_PLAN = ''''TABLE'''';'';',
'   end if; ',
'      return v_sql;',
'',
'end;',
'',
'',
'',
'',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P124_PAYMENT_PLAN,P124_POLICY_NO,P124_PLOT'
,p_ajax_items_to_submit=>'P124_PAYMENT_PLAN,P124_POLICY_NO,P124_PLOT'
,p_ajax_optimize_refresh=>'N'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182624418527100928)
,p_name=>'P124_EXTRA_CHARGES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(228627050412633233)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182624812434100930)
,p_name=>'P124_COMMUNITY_CHARGES'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(228627050412633233)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182625154305100930)
,p_name=>'P124_CLIENT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(228627050412633233)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182633270589100951)
,p_name=>'P124_TRANSFER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(228629182903633254)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(182643134035104906)
,p_name=>'P124_FROM_DEALER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(228627050412633233)
,p_prompt=>'<b>From Dealer</b>'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  v_sql VARCHAR2(5000);',
'BEGIN',
'',
'    if :P124_TYPE = ''BOOKED'' THEN',
'    v_sql := ''SELECT DISTINCT DEALER_NAME || ''''-'''' || CNIC_NO AS D, DDD.ID AS R',
'              FROM DGMS_DEALERS_DETAILS DDD',
'              JOIN DGMS_DEALERS_FORMS DDF ON DDF.DEALER_ID = DDD.ID AND DDF.ORG_ID = :P_ORG_ID',
'              AND DDF.STATUS = ''''APPROVED'''' --AND DDF.STATUS  = ''''BOOKED''''',
'              WHERE :P_ORG_ID IN (SELECT REGEXP_SUBSTR(DDD.ORG_ID, ''''[^;]+'''', 1, 1) FROM DUAL',
'                                 CONNECT BY REGEXP_SUBSTR(DDD.ORG_ID, ''''[^:]+'''', 1, LEVEL) IS NOT NULL)'';',
'                                   ',
'  ELSIF :P124_TYPE = ''OPEN'' THEN',
'    v_sql := ''SELECT DISTINCT ',
'                 DEALER_NAME || ''''-'''' || CNIC_NO AS D, DDD.ID AS R',
'              FROM DGMS_DEALERS_DETAILS DDD',
'              JOIN DGMS_DEALERS_FORMS DDF ON DDF.DEALER_ID = DDD.ID AND DDF.ORG_ID = :P_ORG_ID',
'              AND DDF.STATUS = ''''APPROVED'''' AND DDF.STATUS NOT IN (''''BOOKED'''')',
'              WHERE :P_ORG_ID IN (SELECT REGEXP_SUBSTR(DDD.ORG_ID, ''''[^:]+'''', 1, 1) FROM DUAL ',
'                                  CONNECT BY REGEXP_SUBSTR(DDD.ORG_ID, ''''[^:]+'''', 1, LEVEL) IS NOT NULL);'';',
'else',
'    v_sql := ''SELECT DISTINCT ',
'                 DEALER_NAME || ''''-'''' || CNIC_NO AS D, DDD.ID AS R',
'              FROM DGMS_DEALERS_DETAILS DDD',
'              JOIN DGMS_DEALERS_FORMS DDF ON DDF.DEALER_ID = DDD.ID AND DDF.ORG_ID = :P_ORG_ID',
'              AND DDF.STATUS = ''''APPROVED'''' AND DDF.STATUS NOT IN (''''BOOKED'''')',
'              WHERE :P_ORG_ID IN (SELECT REGEXP_SUBSTR(DDD.ORG_ID, ''''[^:]+'''', 1, 1) FROM DUAL ',
'                                  CONNECT BY REGEXP_SUBSTR(DDD.ORG_ID, ''''[^:]+'''', 1, LEVEL) IS NOT NULL);'';',
'  END IF;',
'  ',
'',
'  RETURN v_sql;',
'END;',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P124_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(184196832853062209)
,p_name=>'P124_PER_MARLA_TRANSFER_FEE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(228627050412633233)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(233541561202617127)
,p_name=>'P124_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(228627050412633233)
,p_prompt=>'<B>Type</B>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:BOOKED;BOOKED,OPEN;OPEN'
,p_field_template=>wwv_flow_api.id(158420986259282999)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(235025452610240008)
,p_name=>'P124_DOC'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(182643237823104907)
,p_use_cache_before_default=>'NO'
,p_prompt=>'<B>File</B>'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
,p_attribute_13=>'File attachment'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(235027362052240027)
,p_name=>'P124_DOC_1'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(235027245436240026)
,p_prompt=>'<B>File</B>'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
,p_attribute_13=>'File attachment'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(182634344396100972)
,p_validation_name=>'Transfered to Itself'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_COUNT NUMBER;',
'BEGIN',
' SELECT COUNT(*) INTO V_COUNT FROM DGMS_PLOTS_BOOKING ',
' WHERE CLIENT_IDS = :P124_CNIC AND PLOT_ID = :P124_PLOT AND BOOKING_STATUS = ''BOOKED'';',
' IF V_COUNT = 0 THEN',
' RETURN TRUE;',
' ELSE ',
' RETURN FALSE;',
'END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This PLOT already registered on selected CNIC ....... ',
'Please select another one .......!'))
,p_when_button_pressed=>wwv_flow_api.id(182625862427100931)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(182635948846100973)
,p_validation_name=>'Duplicate Transferred '
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_COUNT NUMBER;',
'BEGIN',
' SELECT COUNT(*) INTO V_COUNT FROM DGMS_TRANSFERRED_PLOT ',
' WHERE PLOT_ID = :P124_PLOT AND STATUS NOT IN (''TRANSFERRED'', ''REJECT'');',
' IF V_COUNT = 0 THEN',
' RETURN TRUE;',
' ELSE ',
' RETURN FALSE;',
'END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This PLOT already Pending For Transfer .......! '
,p_when_button_pressed=>wwv_flow_api.id(182625862427100931)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(182634831640100973)
,p_validation_name=>'SCHEDULE PAYMENT'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_COUNT NUMBER;',
'BEGIN',
' IF :P124_SCHEDULE_PAYMENT IS NOT NULL AND :P124_POLICY_DECISION IS NOT NULL  THEN',
' RETURN TRUE;',
' ELSE ',
' RETURN FALSE;',
'END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'PLEASE SELECT SCHEDULE PAYMENT AND POLICY DECISION!'
,p_validation_condition=>'P124_PLAN'
,p_validation_condition2=>'NEW'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(182625862427100931)
,p_associated_item=>wwv_flow_api.id(182622346824100926)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(182635223320100973)
,p_validation_name=>'PAYMENT PLAN'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_COUNT NUMBER;',
'BEGIN',
' IF   :P124_PAYMENT_PLAN IS NOT NULL AND :P124_PLAN_NAME IS NOT NULL THEN',
' RETURN TRUE;',
' ELSE ',
' RETURN FALSE;',
'END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'PLEASE SELECT PAYMENT PLAN AND PLAN NAME!'
,p_validation_condition=>'P124_SCHEDULE_PAYMENT'
,p_validation_condition2=>'INSTALLMENT'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(182625862427100931)
,p_associated_item=>wwv_flow_api.id(182622797025100926)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(182635628738100973)
,p_validation_name=>'POLICY'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_COUNT NUMBER;',
'BEGIN',
' IF  :P124_POLICY_NO IS NOT NULL THEN',
' RETURN TRUE;',
' ELSE ',
' RETURN FALSE;',
'END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'PLEASE SELECT POLICY NO!'
,p_validation_condition=>'P124_POLICY_DECISION'
,p_validation_condition2=>'NEW'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(182625862427100931)
,p_associated_item=>wwv_flow_api.id(182623578771100928)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(182637795502100975)
,p_name=>'Set Transfered Id'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P124_TRANSFER_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182638275133100976)
,p_event_id=>wwv_flow_api.id(182637795502100975)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'NULL;',
''))
,p_attribute_02=>'P124_TRANSFER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182638749679100978)
,p_event_id=>wwv_flow_api.id(182637795502100975)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'javascript:window.open("f?p=&APP_ID.:0:&SESSION.:PRINT_REPORT=NDC%20FORM","_blank");'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(182639172370100978)
,p_name=>'REJECT_TRANSFERED'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P124_REJECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182639651471100978)
,p_event_id=>wwv_flow_api.id(182639172370100978)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE DGMS_TRANSFERRED_PLOT SET STATUS = ''REJECT'' WHERE ID = :P124_REJECT ;',
'commit;'))
,p_attribute_02=>'P124_REJECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182640232325100980)
,p_event_id=>wwv_flow_api.id(182639172370100978)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'REJECTED!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182640724428100980)
,p_event_id=>wwv_flow_api.id(182639172370100978)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(228629182903633254)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(182641067375100980)
,p_name=>'APPROVE_PROCEDURE'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P124_APPROVE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182642545797100981)
,p_event_id=>wwv_flow_api.id(182641067375100980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_plot_id NUMBER;',
'BEGIN',
'    SELECT PLOT_ID INTO V_plot_id FROM DGMS_TRANSFERRED_PLOT WHERE ID = :P124_APPROVE;',
'    PLOT_TRANSFER(V_plot_id, :P124_APPROVE, V(''APP_SESSION''));',
'END;'))
,p_attribute_02=>'P124_APPROVE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182641625055100980)
,p_event_id=>wwv_flow_api.id(182641067375100980)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'SUCESSFULLY TRANFERRED!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(182642077267100981)
,p_event_id=>wwv_flow_api.id(182641067375100980)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(228629182903633254)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(235028340992240037)
,p_name=>'BOOKED (Show and hide)'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P124_TYPE'
,p_condition_element=>'P124_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'BOOKED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(233298802156365721)
,p_event_id=>wwv_flow_api.id(235028340992240037)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(235027245436240026)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(233299136608365724)
,p_event_id=>wwv_flow_api.id(235028340992240037)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(182643237823104907)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(233298925208365722)
,p_event_id=>wwv_flow_api.id(235028340992240037)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(182643237823104907)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(233299000134365723)
,p_event_id=>wwv_flow_api.id(235028340992240037)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(235027245436240026)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(233299748452365730)
,p_name=>'New'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P124_FROM_DEALER'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(233299895037365731)
,p_event_id=>wwv_flow_api.id(233299748452365730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(235027245436240026)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182636601600100975)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182637408871100975)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Transfer Form'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_Id  Number;',
'    v_count number;',
'    V_BK_COUNT NUMBER;',
'    V_CL_REG_NO VARCHAR2(500);',
'    V_CL_IDS VARCHAR2(200);',
'BEGIN',
'    If apex_application.g_f01.count <> 0 then',
'           ',
'',
'        For i in 1..apex_application.g_f01.count loop',
'           v_Id :=TO_NUMBER(nvl(apex_application.g_f01(i),0));',
'           v_count := apex_application.g_f01.count;',
'           DECLARE',
'                CURSOR C1 IS',
'                    SELECT * FROM DGMS_DEALERS_FORMS WHERE ID  = v_Id;',
'            BEGIN',
'                FOR I IN C1 LOOP',
'                SELECT COUNT(*) INTO V_BK_COUNT ',
'                FROM DGMS_PLOTS_BOOKING WHERE ORG_ID = :P_ORG_ID AND BOOKING_STATUS = ''BOOKED''',
'                AND PLOT_ID = I.FILE_ID;',
'                IF V_BK_COUNT > 0 THEN',
'                SELECT CLIENT_REG_NO,CLIENT_IDS INTO V_CL_REG_NO,V_CL_IDS ',
'                FROM DGMS_PLOTS_BOOKING WHERE ORG_ID = :P_ORG_ID AND BOOKING_STATUS = ''BOOKED''',
'                AND PLOT_ID = I.FILE_ID;',
'                END IF;',
'                                INSERT INTO DGMS_TRANSFERRED_PLOT (',
'                                    CLIENT_ID,',
'                                    CLIENT_IDS,',
'                                    DEALER_ID,',
'                                    FROM_DEALER,',
'                                    PLOT_ID,',
'                                    STATUS,',
'                                    PLAN,',
'                                    SCHEDULE_PAYMENT,',
'                                    PAYMENT_PLAN,',
'                                    POLICY_DECISION,',
'                                    POLICY_NO,',
'                                    PLAN_ID,',
'                                    EXTRA_CHARGES,',
'                                    COMMUNITY_CHARGES,',
'                                    TRANSFER_FEE',
'                                    )',
'                                VALUES (',
'                                    V_CL_REG_NO,',
'                                    V_CL_IDS,',
'                                    :P124_CNIC,',
'                                    :P124_FROM_DEALER,',
'                                     I.FILE_ID,',
'                                    ''POST'',',
'                                    :P124_PLAN,',
'                                    :P124_SCHEDULE_PAYMENT,',
'                                    :P124_PAYMENT_PLAN,',
'                                    :P124_POLICY_DECISION,',
'                                    :P124_POLICY_NO,',
'                                    :P124_PLAN_NAME,',
'                                    :P124_EXTRA_CHARGES,',
'                                    :P124_COMMUNITY_CHARGES,',
'                                    :P124_PER_MARLA_TRANSFER_FEE',
'                                );',
'                    COMMIT;',
'                END LOOP;',
'            END;',
'    END LOOP;',
'    END IF;',
'    ',
'END;',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'                          '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(182625862427100931)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182636271364100973)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P124_TRANSFER_ID,P124_PLAN,P124_SCHEDULE_PAYMENT,P124_PAYMENT_PLAN,P124_POLICY_DECISION,P124_POLICY_NO,P124_PLAN_NAME'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(182636957137100975)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLIENTS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_CLIENT_IDS VARCHAR2(500)  := apex_application.g_x08;',
'V_CLIENT_INFO VARCHAR2(500) ;',
'begin',
'SELECT  LISTAGG((CNIC_NO ||''/''||F_NAME||''/''||ID||'' - ''), '':'') WITHIN GROUP (ORDER BY 1)  INTO V_CLIENT_INFO',
'FROM DGMS_MEMBER_REGISTRATION',
'WHERE ORG_ID = :P_ORG_ID and id IN (SELECT regexp_substr(V_CLIENT_IDS,''[^:]+'', 1, level) FROM DUAL ',
'                    connect BY regexp_substr(V_CLIENT_IDS, ''[^:]+'', 1, level) is not null',
') ;',
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
,p_process_when_type=>'NEVER'
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
