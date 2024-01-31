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
--   Date and Time:   11:53 Wednesday January 31, 2024
--   Exported By:     UMAR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 289
--   Manifest End
--   Version:         21.1.7
--   Instance ID:     697968588975354
--

begin
null;
end;
/
prompt --application/pages/delete_00289
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>289);
end;
/
prompt --application/pages/page_00289
begin
wwv_flow_api.create_page(
 p_id=>289
,p_user_interface_id=>wwv_flow_api.id(158393926828282951)
,p_name=>'COMPANY POLICY'
,p_alias=>'COMPANY-POLICY'
,p_step_title=>'COMPANY POLICY'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'GHAFOOR'
,p_last_upd_yyyymmddhh24miss=>'20240127115419'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(222628547662285094)
,p_plug_name=>'Attachments Details'
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--scrollBody'
,p_region_attributes=>'style="background-color:#ffe4c4;";'
,p_plug_template=>wwv_flow_api.id(158483500507283087)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    ID,',
'    sys.dbms_lob.getlength("DOCUMENT") "DOCUMENT",',
'    REMARKS,',
'    DOCUMENT_TYPE,',
'    CREATED_ON,',
'    CREATED_BY',
'FROM DGMS_BOOKING_DOCUMENTS',
'WHERE DOCUMENT_TYPE =:P289_TYPE',
'AND ORG_ID =:P_ORG_ID;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P289_TYPE'
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
 p_id=>wwv_flow_api.id(222628923968285094)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'BILAL'
,p_internal_uid=>222628923968285094
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(222629054101285095)
,p_db_column_name=>'ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224509256277326508)
,p_db_column_name=>'DOCUMENT'
,p_display_order=>11
,p_column_identifier=>'S'
,p_column_label=>'Document'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DOWNLOAD:DGMS_BOOKING_DOCUMENTS:DOCUMENT:ID::DOC_MIME_TYPE:DOC_FILE_NAME:::inline:Open/Download:'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224509173288326507)
,p_db_column_name=>'DOCUMENT_TYPE'
,p_display_order=>21
,p_column_identifier=>'R'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224509078561326506)
,p_db_column_name=>'REMARKS'
,p_display_order=>31
,p_column_identifier=>'Q'
,p_column_label=>'Application/Policy Name'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(222725328489553138)
,p_db_column_name=>'CREATED_BY'
,p_display_order=>41
,p_column_identifier=>'L'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(222725255152553137)
,p_db_column_name=>'CREATED_ON'
,p_display_order=>51
,p_column_identifier=>'K'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_format_mask=>'DD-MON-YYYY'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(222650729843299959)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'2226508'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'DOCUMENT_TYPE:REMARKS:DOCUMENT:CREATED_BY:CREATED_ON:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(222721816994553103)
,p_plug_name=>'Documents Details'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useRegionTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158474134065283074)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_api.id(158541112395283177)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_api.id(158417037603282996)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(222722075838553105)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(222721816994553103)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:290:&SESSION.::&DEBUG.:290::'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(223902526430098101)
,p_name=>'P289_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(222628547662285094)
,p_item_default=>'APPLICATION TEMPLATES'
,p_prompt=>'<B>Type</B>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:APPLICATION TEMPLATES;APPLICATION TEMPLATES,POLICY;POLICY'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(223682459258308547)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P289_NEW'
,p_condition_element=>'P289_NEW'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Policy'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(223682539196308548)
,p_event_id=>wwv_flow_api.id(223682459258308547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TYPE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(223682777246308550)
,p_event_id=>wwv_flow_api.id(223682459258308547)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TYPE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(223902600153098102)
,p_name=>'REFRESH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P289_TYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(223902755388098103)
,p_event_id=>wwv_flow_api.id(223902600153098102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(222628547662285094)
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
