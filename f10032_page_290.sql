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
--     PAGE: 290
--   Manifest End
--   Version:         21.1.7
--   Instance ID:     697968588975354
--

begin
null;
end;
/
prompt --application/pages/delete_00290
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>290);
end;
/
prompt --application/pages/page_00290
begin
wwv_flow_api.create_page(
 p_id=>290
,p_user_interface_id=>wwv_flow_api.id(158393926828282951)
,p_name=>'POLICY DOCUMENTS'
,p_alias=>'POLICY-DOCUMENTS'
,p_step_title=>'POLICY DOCUMENTS'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'UMAR'
,p_last_upd_yyyymmddhh24miss=>'20240131115244'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(225073586630148303)
,p_plug_name=>'Policy Documents'
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
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(225073621609148304)
,p_plug_name=>'Add Documents'
,p_region_template_options=>'#DEFAULT#:t-Region--accent8:t-Region--scrollBody'
,p_region_attributes=>' style="background-color:#ffe4c4;";'
,p_plug_template=>wwv_flow_api.id(158483500507283087)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(225074354753148311)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(225073586630148303)
,p_button_name=>'ADD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'ADD'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(225074416562148312)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(225073586630148303)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_image_alt=>'Cancel'
,p_button_position=>'REGION_TEMPLATE_EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:289:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(234494263859014801)
,p_branch_name=>'goto  289'
,p_branch_action=>'f?p=&APP_ID.:289:&SESSION.::&DEBUG.:289::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(225073804653148306)
,p_name=>'P290_DOCUMENT_TYPE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(225073621609148304)
,p_prompt=>'Document Type'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:APPLICATION TEMPLATES;APPLICATION TEMPLATES,POLICY;POLICY'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(225073958620148307)
,p_name=>'P290_REMARKS'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(225073621609148304)
,p_prompt=>'<B>Remarks</b>'
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
 p_id=>wwv_flow_api.id(225074004079148308)
,p_name=>'P290_DOCUMENT'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(225073621609148304)
,p_prompt=>'<b>Document</b>'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(225074133151148309)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Documents'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_file_names apex_t_varchar2;',
'    l_file  apex_application_temp_files%rowtype;',
'BEGIN',
'    l_file_names := apex_string.split(',
'                        p_str => :P290_DOCUMENT,',
'                        p_sep => '':'');',
'    FOR i IN 1 .. l_file_names.count LOOP',
'        SELECT *',
'        INTO l_file',
'        FROM apex_application_temp_files',
'        WHERE name = l_file_names(i) AND APPLICATION_ID = :APP_ID;',
'',
'        INSERT INTO DGMS_BOOKING_DOCUMENTS',
'            (REMARKS,DOCUMENT,DOC_MIME_TYPE,DOC_FILE_NAME, DOCUMENT_TYPE)',
'        VALUES',
'            (:P290_REMARKS,l_file.BLOB_CONTENT, l_file.MIME_TYPE, l_file.FILENAME,:P290_DOCUMENT_TYPE);',
'        COMMIT;',
'    END LOOP;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Add Successfully...!'
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
