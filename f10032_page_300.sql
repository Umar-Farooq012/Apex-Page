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
--   Date and Time:   12:05 Friday February 2, 2024
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
,p_last_upd_yyyymmddhh24miss=>'20240202120524'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(235747714270173030)
,p_plug_name=>'Waiver Off Details'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158485371535283090)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    DPB.ID BOOKING_ID,',
'    DPD.PLOT_NO,',
'    DPD.ID PLOT_ID,',
'    NVL(UN_WAIVER,0) WAIVER_OFF,',
'    LPC_WAIVER_CREATED_BY WAIVER_CREATED_BY,',
'    LPC_WAIVER_CREATED_ON WAIVER_CREATED_ON,',
'    ''LPC WAIVER'' "STATUS",',
'    ''VIEW ATTACHMENTS'' VIEW_ATTACHMENTS,',
'    ''APPROVED'' APPROVED,',
'    ''REJECT'' REJECT',
'FROM DGMS_PLOTS_BOOKING DPB',
'JOIN DGMS_PLOT_DETAILS DPD ON DPD.ID = DPB.PLOT_ID AND DPD.ORG_ID = :P_ORG_ID  ',
'WHERE DPB.BOOKING_STATUS = ''BOOKED'' AND DPB.ORG_ID = :P_ORG_ID AND DPB.UN_WAIVER IS NOT NULL AND DPB.UN_WAIVER != 0',
' ',
'',
'UNION ALL',
'SELECT',
'    DTP.BOOKING_ID,',
'    DPD.PLOT_NO,',
'     DPD.ID PLOT_ID,',
'    DTP.UN_TRANSFER_FEE_WAIVE_OFF WAIVER_OFF,',
'    WAIVER_OFF_CREATED_BY WAIVER_CREATED_BY,',
'    WAIVER_OFF_CREATED_ON WAIVER_CREATED_ON,',
'    ''TRANSFER FEE WAIVER'' "STATUS",',
'    ''VIEW ATTACHMENTS'' VIEW_ATTACHMENTS,',
'    ''APPROVED'' APPROVED,',
'  ''REJECT'' REJECT',
'   ',
'',
'FROM DGMS_TRANSFERRED_PLOT DTP',
'JOIN DGMS_PLOT_DETAILS DPD ON DPD.ID = DTP.PLOT_ID AND DPD.ORG_ID = :P_ORG_ID',
'WHERE DTP.STATUS != ''REJECTED'' AND DTP.ORG_ID = :P_ORG_ID AND DTP.UN_TRANSFER_FEE_WAIVE_OFF IS NOT NULL AND DTP.UN_TRANSFER_FEE_WAIVE_OFF != 0',
'',
'',
'',
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
 p_id=>wwv_flow_api.id(235747886681173031)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'UMAR'
,p_internal_uid=>235747886681173031
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235747924975173032)
,p_db_column_name=>'BOOKING_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Booking Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235748046814173033)
,p_db_column_name=>'PLOT_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Plot No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235748144423173034)
,p_db_column_name=>'WAIVER_OFF'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Waiver Off'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235748414663173037)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Status'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235749110507173044)
,p_db_column_name=>'VIEW_ATTACHMENTS'
,p_display_order=>70
,p_column_identifier=>'H'
,p_column_label=>'View Attachments'
,p_column_link=>'javascript:$s(''P300_VOUCHER_ID'',''#BOOKING_ID#'');'
,p_column_linktext=>'#VIEW_ATTACHMENTS#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(236136681099639212)
,p_db_column_name=>'WAIVER_CREATED_BY'
,p_display_order=>80
,p_column_identifier=>'K'
,p_column_label=>'Waiver Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(236136769565639213)
,p_db_column_name=>'WAIVER_CREATED_ON'
,p_display_order=>90
,p_column_identifier=>'L'
,p_column_label=>'Waiver Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(236137147204639217)
,p_db_column_name=>'APPROVED'
,p_display_order=>120
,p_column_identifier=>'O'
,p_column_label=>'Approved'
,p_column_link=>'javascript:$s(''P300_APPROVED'',''#PLOT_ID#'');javascript:$s(''P300_TYPE'',''#STATUS#'');'
,p_column_linktext=>'APPROVED'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(236136932745639215)
,p_db_column_name=>'REJECT'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>'Reject'
,p_column_link=>'javascript:$s(''P300_REJECT'',''#PLOT_ID#'');javascript:$s(''P300_TYPE'',''#STATUS#'');'
,p_column_linktext=>'REJECT'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(236138360090639229)
,p_db_column_name=>'PLOT_ID'
,p_display_order=>140
,p_column_identifier=>'P'
,p_column_label=>'Plot Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(236099837112421144)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2360999'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PLOT_ID:BOOKING_ID:PLOT_NO:WAIVER_OFF:STATUS:WAIVER_CREATED_ON:WAIVER_CREATED_BY:VIEW_ATTACHMENTS:APPROVED:REJECT:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(235749366500173046)
,p_plug_name=>'Attachments Details'
,p_region_name=>'DOCS'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158490988835283096)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ID,',
'    VOUCHER_ID,',
'    DOCUMENT_TYPE,',
'    REMARKS,',
'    sys.dbms_lob.getlength(DOCUMENT) DOCUMENT,',
'    CREATED_BY,',
'    CREATED_ON',
'FROM DGMS_BOOKING_DOCUMENTS',
'WHERE ORG_ID = :P_ORG_ID AND BOOKING_ID = :P300_VOUCHER_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P300_VOUCHER_ID'
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
 p_id=>wwv_flow_api.id(235749438936173047)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'UMAR'
,p_internal_uid=>235749438936173047
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235749545089173048)
,p_db_column_name=>'ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235749625123173049)
,p_db_column_name=>'VOUCHER_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Voucher Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235749736292173050)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(236135567650639201)
,p_db_column_name=>'REMARKS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(236135673075639202)
,p_db_column_name=>'DOCUMENT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Document'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'DOWNLOAD:DGMS_BOOKING_DOCUMENTS:DOCUMENT:ID::DOC_MIME_TYPE:DOC_FILE_NAME:::inline:Open/Download:'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(236135776344639203)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(236135840830639204)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(236145484747667784)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2361455'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID:VOUCHER_ID:DOCUMENT_TYPE:REMARKS:DOCUMENT:CREATED_BY:CREATED_ON'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(236139262410639238)
,p_plug_name=>'WAIVER OFF'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useRegionTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158474134065283074)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(158541112395283177)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(158417037603282996)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(397931813990449242)
,p_plug_name=>'Waiver Off Detail'
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
'    CASE WHEN POLICY_STATUS = ''PENDING'' THEN ''APPROVED'' ELSE NULL END AS APPROVAL,',
'    CASE WHEN POLICY_STATUS = ''PENDING'' THEN ''REJECT'' ELSE NULL END AS REJECT,',
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
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_document_header=>'APEX'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Waiver Off Detail'
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
 p_id=>wwv_flow_api.id(226320779224745749)
,p_db_column_name=>'TYPE'
,p_display_order=>110
,p_column_identifier=>'S'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235747458699173027)
,p_db_column_name=>'APPROVAL'
,p_display_order=>120
,p_column_identifier=>'T'
,p_column_label=>'Approval'
,p_column_link=>'javascript:$s(''P300_APPROVE'',''#BOOKING_ID#'');'
,p_column_linktext=>'APPROVAL'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235747575459173028)
,p_db_column_name=>'REJECT'
,p_display_order=>130
,p_column_identifier=>'U'
,p_column_label=>'Reject'
,p_column_link=>'javascript:$s(''P300_REJECT'',''#BOOKING_ID#'');'
,p_column_linktext=>'REJECT'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(398054655498953055)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'467720'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PLOT_NO:BOOKING_ID:WAIVER_OFF:TYPE:STATUS:APPROVAL:REJECT:'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(235749292162173045)
,p_name=>'P300_VOUCHER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(235747714270173030)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(236137090022639216)
,p_name=>'P300_APPROVED'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(235747714270173030)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(236137244058639218)
,p_name=>'P300_REJECT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(235747714270173030)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(236137399797639219)
,p_name=>'P300_WAIVER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(235747714270173030)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(236138080346639226)
,p_name=>'P300_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(235747714270173030)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(236135967070639205)
,p_name=>'New'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P300_VOUCHER_ID'
,p_condition_element=>'P300_VOUCHER_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(236136004566639206)
,p_event_id=>wwv_flow_api.id(236135967070639205)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(235749366500173046)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(236136130081639207)
,p_event_id=>wwv_flow_api.id(236135967070639205)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(235749366500173046)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(236138122916639227)
,p_name=>'APPROVED'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P300_APPROVED'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(236138243175639228)
,p_event_id=>wwv_flow_api.id(236138122916639227)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P300_TYPE = ''LPC WAIVER'' THEN',
'    UPDATE DGMS_PLOTS_BOOKING SET LPC_WAIVER = NVL(LPC_WAIVER,0) ,  LPC_WAIVER_APPROVED_BY  = :APP_USER, LPC_WAIVER_APPROVED_ON = SYSDATE , UN_WAIVER = 0',
'    WHERE PLOT_ID = :P300_APPROVED AND BOOKING_STATUS = ''BOOKED'' ;',
'    ',
'  ',
'    ELSE',
'',
'    UPDATE DGMS_TRANSFERRED_PLOT SET TRANSFER_FEE_WAIVE_OFF = NVL(TRANSFER_FEE_WAIVE_OFF,0) , TRANSFER_FEE_WAIVER_BY = :APP_USER, TRANSFER_FEE_WAIVER_ON = SYSDATE, UN_TRANSFER_FEE_WAIVE_OFF = 0',
'    WHERE PLOT_ID = :P300_APPROVED AND STATUS IN (''CREATED'',''ACCOUNTS APPROVED'',''TAXATION APPROVED'') ;',
'   ',
'    COMMIT;',
'    END IF;',
''))
,p_attribute_02=>'P300_TYPE,P300_APPROVED'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(236138498735639230)
,p_event_id=>wwv_flow_api.id(236138122916639227)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Did you approve this code?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(236138555959639231)
,p_event_id=>wwv_flow_api.id(236138122916639227)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(236138899395639234)
,p_name=>'REJECT'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P300_REJECT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(236138987424639235)
,p_event_id=>wwv_flow_api.id(236138899395639234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P300_TYPE = ''LPC WAIVER'' THEN',
'    UPDATE DGMS_PLOTS_BOOKING SET REJECTED_WAIVER= NVL(REJECTED_WAIVER,0) ,  UN_WAIVER = 0',
'    WHERE PLOT_ID = :P300_REJECT AND BOOKING_STATUS = ''BOOKED'' ;',
'    ',
'  ',
'    ELSE',
'',
'    UPDATE DGMS_TRANSFERRED_PLOT SET REJECTED_TRANSFERRED_WAIVER =  NVL(REJECTED_TRANSFERRED_WAIVER,0) , UN_TRANSFER_FEE_WAIVE_OFF = 0',
'    WHERE PLOT_ID = :P300_REJECT AND STATUS IN (''CREATED'',''ACCOUNTS APPROVED'',''TAXATION APPROVED'') ;',
'   ',
'    COMMIT;',
'    END IF;'))
,p_attribute_02=>'P300_TYPE,P300_REJECT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(236139014071639236)
,p_event_id=>wwv_flow_api.id(236138899395639234)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Did you reject this code?'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(236139104482639237)
,p_event_id=>wwv_flow_api.id(236138899395639234)
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
