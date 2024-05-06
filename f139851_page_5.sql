prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.10.31'
,p_release=>'23.2.4'
,p_default_workspace_id=>42931979870754661798
,p_default_application_id=>139851
,p_default_id_offset=>0
,p_default_owner=>'WKSP_UMARFAROOQ'
);
end;
/
 
prompt APPLICATION 139851 - APEX
--
-- Application Export:
--   Application:     139851
--   Name:            APEX
--   Date and Time:   07:27 Monday May 6, 2024
--   Exported By:     REABDUL232@GMAIL.COM
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 5
--   Manifest End
--   Version:         23.2.4
--   Instance ID:     63113759365424
--

begin
null;
end;
/
prompt --application/pages/delete_00005
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>5);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Collection Form'
,p_alias=>'COLLECTION-FORM'
,p_step_title=>'Collection Form'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_last_updated_by=>'REABDUL232@GMAIL.COM'
,p_last_upd_yyyymmddhh24miss=>'20231004052608'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65681657968621573753)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(41266438408099127801)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(41265723374434127751)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(41266500764490127831)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65681663339844574701)
,p_plug_name=>'Collection'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(41266426009779127797)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EMPLOYEE_ID,',
'       FIRST_NAME,',
'       LAST_NAME,',
'       HIRE_DATE,',
'       SALARY',
'  from EMP_EMP'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(65681664462791574712)
,p_plug_name=>'Collectin Report'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(41266426009779127797)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  Seq_id ,',
'  null as remove,',
'    n001 ID ,',
'    c002 NAME, ',
'    c003 Lname ,',
'    d004 DATE_year,',
'    n005 SALARY   ',
'  FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME = ''EMPLOYEE'';',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Collectin Report'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(65681664531321574713)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'REABDUL232@GMAIL.COM'
,p_internal_uid=>65681664531321574713
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65681665334751574721)
,p_db_column_name=>'ID'
,p_display_order=>80
,p_column_identifier=>'D'
,p_column_label=>'Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65681665471543574722)
,p_db_column_name=>'NAME'
,p_display_order=>90
,p_column_identifier=>'E'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65681665547094574723)
,p_db_column_name=>'LNAME'
,p_display_order=>100
,p_column_identifier=>'F'
,p_column_label=>'Lname'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65681665647759574724)
,p_db_column_name=>'DATE_YEAR'
,p_display_order=>110
,p_column_identifier=>'G'
,p_column_label=>'Date Year'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65681665089446574718)
,p_db_column_name=>'SALARY'
,p_display_order=>130
,p_column_identifier=>'A'
,p_column_label=>'Salary'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65681667189395574739)
,p_db_column_name=>'SEQ_ID'
,p_display_order=>150
,p_column_identifier=>'H'
,p_column_label=>'Seq Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(65681667296817574740)
,p_db_column_name=>'REMOVE'
,p_display_order=>160
,p_column_identifier=>'I'
,p_column_label=>'Remove'
,p_column_link=>'javascript:apex.event.trigger(document, ''REMOVE'', [{P5_SEQ_ID:''#SEQ_ID#''}]);'
,p_column_linktext=>'<i class="fa fa-trash" aria-hidden="true"></i>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(65694636103509471162)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'656946362'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'REMOVE:ID:NAME:LNAME:DATE_YEAR:SALARY'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65765672300552568401)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(65681664462791574712)
,p_button_name=>'Remove_All'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--iconLeft:t-Button--hoverIconPush'
,p_button_template_id=>wwv_flow_imp.id(41266499282962127830)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Remove All'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-eraser'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65681664144370574709)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(65681663339844574701)
,p_button_name=>'Close'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--warning:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(41266499282962127830)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Close'
,p_button_position=>'CLOSE'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-window-close'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65681664017381574708)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(65681663339844574701)
,p_button_name=>'Submit'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(41266499282962127830)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'CREATE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P5_EMPLOYEE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(65681665730411574725)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(65681664462791574712)
,p_button_name=>'INSERT_TO_TABLE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--primary:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(41266499282962127830)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Insert into Table'
,p_button_position=>'EDIT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-arrow-left'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65681663553648574703)
,p_name=>'P5_EMPLOYEE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65681663339844574701)
,p_item_source_plug_id=>wwv_flow_imp.id(65681663339844574701)
,p_prompt=>'Employee ID'
,p_source=>'EMPLOYEE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(41266496656898127829)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65681663659024574704)
,p_name=>'P5_FIRST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(65681663339844574701)
,p_item_source_plug_id=>wwv_flow_imp.id(65681663339844574701)
,p_prompt=>'First Name'
,p_source=>'FIRST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(41266496656898127829)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65681663775429574705)
,p_name=>'P5_LAST_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(65681663339844574701)
,p_item_source_plug_id=>wwv_flow_imp.id(65681663339844574701)
,p_prompt=>'Last Name'
,p_source=>'LAST_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(41266496656898127829)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65681663833539574706)
,p_name=>'P5_HIRE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(65681663339844574701)
,p_item_source_plug_id=>wwv_flow_imp.id(65681663339844574701)
,p_prompt=>'Hire Date'
,p_source=>'HIRE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(41266496656898127829)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65681663909392574707)
,p_name=>'P5_SALARY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(65681663339844574701)
,p_item_source_plug_id=>wwv_flow_imp.id(65681663339844574701)
,p_prompt=>'Salary'
,p_source=>'SALARY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(41266496656898127829)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
,p_attribute_04=>'decimal'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(65681667334088574741)
,p_name=>'P5_SEQ_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(65681664462791574712)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65681666250519574730)
,p_name=>'Collection'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65681664017381574708)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65681666340438574731)
,p_event_id=>wwv_flow_imp.id(65681666250519574730)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  if not apex_collection.collection_exists(''EMPLOYEE'') THEN',
'apex_collection.create_collection(''EMPLOYEE'');',
'END IF;',
'',
'apex_collection.add_member(',
'    p_collection_name => ''EMPLOYEE'',',
'    p_n001 => :P5_EMPLOYEE_ID,',
'    p_c002 => :P5_FIRST_NAME,',
'    p_c003 => :P5_LAST_NAME,',
'    p_d004 => :P5_HIRE_DATE,',
'    p_n005 => :P5_SALARY',
'',
');',
'end;',
'',
'',
''))
,p_attribute_02=>'P5_EMPLOYEE_ID,P5_FIRST_NAME,P5_LAST_NAME,P5_HIRE_DATE,P5_SALARY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65681668265550574750)
,p_event_id=>wwv_flow_imp.id(65681666250519574730)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P5_EMPLOYEE_ID,P5_FIRST_NAME,P5_LAST_NAME,P5_HIRE_DATE,P5_SALARY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65681666461156574732)
,p_event_id=>wwv_flow_imp.id(65681666250519574730)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65681664462791574712)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65681666886560574736)
,p_name=>'insert into table'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65681665730411574725)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65681666947123574737)
,p_event_id=>wwv_flow_imp.id(65681666886560574736)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if not apex_collection.collection_exists(''EMPLOYEE'') THEN',
'apex_collection.create_collection(''EMPLOYEE'');',
'END IF ;',
'',
'FOR X IN (select  n001 ID , c002 NAME, c003 Lname , d004 DATE_year, n005 SALARY   ',
'  FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME = ''EMPLOYEE'') LOOP',
'',
'INSERT INTO EMP_EMP (EMPLOYEE_ID , FIRST_NAME, LAST_NAME, HIRE_DATE, SALARY   )',
'VALUES(X.ID, X.NAME , X.Lname, X.DATE_YEAR, X.SALARY);',
'END LOOP;',
'',
'    -- Truncate the Collection',
'    apex_collection.TRUNCATE_collection(p_collection_name => ''EMPLOYEE'');',
'end;',
'',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65681667039820574738)
,p_event_id=>wwv_flow_imp.id(65681666886560574736)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65681664462791574712)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65681667814099574746)
,p_name=>'REMOVE'
,p_event_sequence=>40
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'REMOVE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65681667954281574747)
,p_event_id=>wwv_flow_imp.id(65681667814099574746)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item( "P5_SEQ_ID" ).setValue(this.data.P5_SEQ_ID);'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65681668075602574748)
,p_event_id=>wwv_flow_imp.id(65681667814099574746)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'if :P5_SEQ_ID IS NOT NULL THEN',
'    apex_collection.delete_member(p_collection_name => ''EMPLOYEE'' , p_seq => :P5_SEQ_ID);',
'ELSIF APEX_COLLECTION.COLLECTION_EXISTS(''EMPLOYEE'') THEN',
'',
'           apex_collection.truncate_collection(p_collection_name => ''EMPLOYEE'');',
'END IF;'))
,p_attribute_02=>'P5_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65681668144306574749)
,p_event_id=>wwv_flow_imp.id(65681667814099574746)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65681664462791574712)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(65765672874332568406)
,p_name=>'remove data'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(65765672300552568401)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65765672915621568407)
,p_event_id=>wwv_flow_imp.id(65765672874332568406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P5_SEQ_ID IS NOT NULL THEN',
'',
'         apex_collection.truncate_collection(p_collection_name => ''EMPLOYEE'');',
'END IF;'))
,p_attribute_02=>'P5_SEQ_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(65765673073225568408)
,p_event_id=>wwv_flow_imp.id(65765672874332568406)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(65681664462791574712)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(65681663428516574702)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(65681663339844574701)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Collection Form'
,p_internal_uid=>65681663428516574702
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
