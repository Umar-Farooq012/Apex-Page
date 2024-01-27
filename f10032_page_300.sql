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
--   Date and Time:   12:48 Saturday January 27, 2024
--   Exported By:     UMAR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 300
--   Manifest End
--   Version:         21.1.7
--   Instance ID:     697968588975354
--

begin
null;
end;
/
prompt --application/pages/delete_00300
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>300);
end;
/
prompt --application/pages/page_00300
begin
wwv_flow_api.create_page(
 p_id=>300
,p_user_interface_id=>wwv_flow_api.id(158393926828282951)
,p_name=>'APPROVAL'
,p_alias=>'APPROVAL'
,p_step_title=>'APPROVAL'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var status = $v("P300_APPROVE");',
'',
'switch(status){',
'    // case "CREATED": ',
'	// $x_Show("create_btn");',
'	// $x_Show("approve_btn");',
'	// $x_Show("cancel_btn");',
'    //     break;',
'',
'    case "APPROVED": ',
'        // $x_Show("create_btn");',
'	 $x_Show("approved_btn");',
'	$x_Hide("reject");',
'        break;',
'',
'    // case "CANCELLED": ',
'    //     $x_Show("create_btn");',
'	// $x_Hide("cancel_btn");',
'	// $x_Hide("approve_btn");',
'    //     break;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'UMAR'
,p_last_upd_yyyymmddhh24miss=>'20240118235631'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(397931813990449242)
,p_plug_name=>'Waiver Off Details'
,p_region_template_options=>'#DEFAULT#:t-Region--accent15:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158483500507283087)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'   ',
'    DPB.ID BOOKING_ID,',
'    DPB.PLOT_NO,',
'   -- NVL(LPC_WAIVER,0) - NVL(LPC,0) WAIVER_OFF,',
'    LPC_WAIVER_APPROVED_BY WAIVED_BY,',
'    LPC_WAIVER_APPROVED_ON WAIVED_ON,',
'    DPB.POLICY_STATUS AS STATUS,',
'    DPB.WAIVER_AMOUNT WAIVER_OFF,',
'    CASE WHEN POLICY_STATUS = ''PENDING'' THEN ''APPROVED'' ELSE NULL END AS APPROVAL_STATUS,',
'    CASE WHEN POLICY_STATUS = ''PENDING'' THEN ''REJECT'' ELSE NULL END AS REJECT_STATUS,',
'    DPB.TYPE',
'      ',
'FROM DGMS_PLOTS_BOOKING DPB',
'LEFT JOIN DGMS_PLOT_DETAILS DPD ON DPD.ID = DPB.PLOT_ID ',
'WHERE 1=1',
'      -- DPB.BOOKING_STATUS = ''BOOKED''  ',
' AND DPB.ORG_ID = :P_ORG_ID',
' --AND DPB.LPC_WAIVER IS NOT NULL',
' ORDER BY DPB.ID DESC ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Waiver Off Details'
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
 p_id=>wwv_flow_api.id(397931929312449243)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'ZOYA'
,p_internal_uid=>397931929312449243
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(225845332985552025)
,p_db_column_name=>'PLOT_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Plot No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(225845772333552025)
,p_db_column_name=>'BOOKING_ID'
,p_display_order=>30
,p_column_identifier=>'G'
,p_column_label=>'Booking Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(225846183060552026)
,p_db_column_name=>'WAIVER_OFF'
,p_display_order=>40
,p_column_identifier=>'H'
,p_column_label=>'Waiver Off'
,p_column_type=>'NUMBER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(225846481559552026)
,p_db_column_name=>'WAIVED_BY'
,p_display_order=>50
,p_column_identifier=>'I'
,p_column_label=>'Waived By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(225846880600552026)
,p_db_column_name=>'WAIVED_ON'
,p_display_order=>60
,p_column_identifier=>'J'
,p_column_label=>'Waived On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(226315945114745701)
,p_db_column_name=>'STATUS'
,p_display_order=>70
,p_column_identifier=>'O'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(226316199753745703)
,p_db_column_name=>'APPROVAL_STATUS'
,p_display_order=>90
,p_column_identifier=>'Q'
,p_column_label=>'Approval Status'
,p_column_link=>'javascript:$s(''P300_APPROVE'',''#BOOKING_ID#'');'
,p_column_linktext=>'APPROVAL STATUS'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(226316866971745710)
,p_db_column_name=>'REJECT_STATUS'
,p_display_order=>100
,p_column_identifier=>'R'
,p_column_label=>'Reject Status'
,p_column_link=>'javascript:$s(''P300_REJECT'',''#BOOKING_ID#'');'
,p_column_linktext=>'REJECT STATUS'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(226320779224745749)
,p_db_column_name=>'TYPE'
,p_display_order=>110
,p_column_identifier=>'S'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(398054655498953055)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'467720'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PLOT_NO:BOOKING_ID:WAIVER_OFF:TYPE:STATUS:APPROVAL_STATUS:REJECT_STATUS:'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(224417497792861228)
,p_name=>'P300_APPROVE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(397931813990449242)
,p_item_default=>'approved_btn'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(226316626405745708)
,p_name=>'P300_REJECT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(397931813990449242)
,p_item_default=>'reject'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(226316279832745704)
,p_name=>'approval'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P300_APPROVE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(226316340596745705)
,p_event_id=>wwv_flow_api.id(226316279832745704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    UPDATE DGMS_PLOTS_BOOKING',
'    SET POLICY_STATUS = ''APPROVED''',
'    ',
'    WHERE ID = :P300_APPROVE;',
'    ',
'    COMMIT;'))
,p_attribute_02=>'P300_APPROVE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(226316497293745706)
,p_event_id=>wwv_flow_api.id(226316279832745704)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Are you confident in your approval process?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(226316541474745707)
,p_event_id=>wwv_flow_api.id(226316279832745704)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(226316968063745711)
,p_name=>'reject'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P300_REJECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(226317046984745712)
,p_event_id=>wwv_flow_api.id(226316968063745711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   UPDATE DGMS_PLOTS_BOOKING',
'    SET POLICY_STATUS = ''REJECT''',
'    ',
'    WHERE ID = :P300_REJECT;',
'    ',
'    COMMIT;'))
,p_attribute_02=>'P300_REJECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(226317164154745713)
,p_event_id=>wwv_flow_api.id(226316968063745711)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Are you confident in your Reject process?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(226317253455745714)
,p_event_id=>wwv_flow_api.id(226316968063745711)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
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
