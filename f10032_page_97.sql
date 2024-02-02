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
--   Date and Time:   11:55 Friday February 2, 2024
--   Exported By:     UMAR
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 97
--   Manifest End
--   Version:         21.1.7
--   Instance ID:     697968588975354
--

begin
null;
end;
/
prompt --application/pages/delete_00097
begin
wwv_flow_api.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>97);
end;
/
prompt --application/pages/page_00097
begin
wwv_flow_api.create_page(
 p_id=>97
,p_user_interface_id=>wwv_flow_api.id(158393926828282951)
,p_name=>'WAIVER OFF'
,p_alias=>'WAIVER-OFF'
,p_step_title=>'WAIVER OFF'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'UMAR'
,p_last_upd_yyyymmddhh24miss=>'20240202112158'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(172085572887897206)
,p_plug_name=>'WAIVER OFF'
,p_region_template_options=>'#DEFAULT#:t-Region--accent14:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(158483500507283087)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(172085720779897207)
,p_plug_name=>'Waiver Off'
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
 p_id=>wwv_flow_api.id(172086773338897218)
,p_plug_name=>'Waiver Off Details'
,p_region_template_options=>'#DEFAULT#:t-Region--accent15:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(158483500507283087)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    DPB.ID BOOKING_ID,',
'    DPD.PLOT_NO,',
'    NVL(UN_WAIVER,0) WAIVER_OFF,',
'    LPC_WAIVER_CREATED_BY WAIVED_BY,',
'    LPC_WAIVER_CREATED_ON WAIVED_ON,',
'    ''LPC WAIVER'' "STATUS"',
'   ',
'   -- DPD.STATUS',
'',
'FROM DGMS_PLOTS_BOOKING DPB',
'JOIN DGMS_PLOT_DETAILS DPD ON DPD.ID = DPB.PLOT_ID AND DPD.ORG_ID = :P_ORG_ID  ',
'WHERE DPB.BOOKING_STATUS = ''BOOKED'' AND DPB.ORG_ID = :P_ORG_ID AND DPB.UN_WAIVER IS NOT NULL AND DPB.UN_WAIVER !=0',
' ',
'',
'UNION ALL',
'SELECT',
'    DTP.BOOKING_ID,',
'    DPD.PLOT_NO,',
'    DTP.UN_TRANSFER_FEE_WAIVE_OFF WAIVER_OFF,',
'    WAIVER_OFF_CREATED_BY WAIVED_BY,',
'    WAIVER_OFF_CREATED_ON WAIVED_ON,',
'    ''TRANSFER FEE WAIVER'' "STATUS"',
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
 p_id=>wwv_flow_api.id(172086888660897219)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF:RTF:EMAIL'
,p_owner=>'ZOYA'
,p_internal_uid=>46649254777057514
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(172087101870897221)
,p_db_column_name=>'PLOT_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Plot No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(215521516497736702)
,p_db_column_name=>'BOOKING_ID'
,p_display_order=>30
,p_column_identifier=>'G'
,p_column_label=>'Booking Id'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224419695661861250)
,p_db_column_name=>'STATUS'
,p_display_order=>80
,p_column_identifier=>'U'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(226318312425745725)
,p_db_column_name=>'WAIVER_OFF'
,p_display_order=>90
,p_column_identifier=>'W'
,p_column_label=>'Waiver Off'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(226320588456745747)
,p_db_column_name=>'WAIVED_BY'
,p_display_order=>110
,p_column_identifier=>'Y'
,p_column_label=>'Waived By'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(226320674902745748)
,p_db_column_name=>'WAIVED_ON'
,p_display_order=>120
,p_column_identifier=>'Z'
,p_column_label=>'Waived On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(172209614847401031)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'467720'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BOOKING_ID:PLOT_NO:WAIVER_OFF:STATUS:WAIVED_BY:WAIVED_ON'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(172085969892897210)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(172085720779897207)
,p_button_name=>'ADD'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(158418434726282996)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add'
,p_button_position=>'REGION_TEMPLATE_EDIT'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(172085753645897208)
,p_name=>'P97_PLOT_NO'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(172085572887897206)
,p_prompt=>'<B>Plot</B>'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- SELECT ',
'--         DPD.PLOT_NO, DPD.PLOT_NO AS RETURN',
'-- FROM DGMS_INVENTORY_MS_HEADER MS',
'-- JOIN DGMS_PLOT_DETAILS DPD ON MS.PLOT_ID = DPD.ID AND DPD.ORG_ID = :P_ORG_ID',
'-- JOIN DGMS_PLOTS_BOOKING DPB ON DPB.PLOT_ID = DPD.ID AND DPD.ORG_ID = :P_ORG_ID AND BOOKING_STATUS = ''BOOKED''',
'-- WHERE MS.TRASACTION_TYPE = ''SOLD'' AND MS.ORG_ID = :P_ORG_ID;',
'',
'',
'',
'',
'',
'DECLARE',
'   v_sql varchar2(4000);',
'BEGIN',
'   IF :P97_TYPE = ''LPC'' THEN ',
'      v_sql := ''SELECT ',
'                   DPD.PLOT_NO, DPD.ID AS RETURN',
'                FROM DGMS_INVENTORY_MS_HEADER MS',
'                JOIN DGMS_PLOT_DETAILS DPD ON MS.PLOT_ID = DPD.ID AND DPD.ORG_ID = :P_ORG_ID',
'                JOIN DGMS_PLOTS_BOOKING DPB ON DPB.PLOT_ID = DPD.ID AND DPD.ORG_ID = :P_ORG_ID AND BOOKING_STATUS = ''''BOOKED''''',
'                WHERE MS.TRASACTION_TYPE = ''''SOLD'''' AND MS.ORG_ID = :P_ORG_ID'';',
'   ELSE',
'      v_sql := ''SELECT DPB.PLOT_NO , DPB.PLOT_ID RETURN',
'                FROM  DGMS_PLOTS_BOOKING DPB , DGMS_TRANSFERRED_PLOT DTP',
'                WHERE DTP.PLOT_ID = DPB.PLOT_ID AND :P97_TYPE = ''''TRANSFER FEE'''''';',
'   END IF; ',
'',
'   RETURN v_sql;',
'END;',
'',
'',
'-- '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P97_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(172085881351897209)
,p_name=>'P97_WAIVER_AMOUNT'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(172085572887897206)
,p_prompt=>'<B>Waiver Amout</b>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(215521499512736701)
,p_name=>'P97_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(172085572887897206)
,p_item_default=>'LPC'
,p_prompt=>'<B>Waiver Type</B>'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:LPC;LPC,TRANSFER FEE;TRANSFER FEE'
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(226318447960745726)
,p_name=>'P97_LPC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(172085572887897206)
,p_prompt=>'<B>Lpc</B>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(226320378425745745)
,p_name=>'P97_WAIVED_BY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(172085572887897206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(226320444459745746)
,p_name=>'P97_WAIVED_ON'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(172085572887897206)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(235747029437173023)
,p_name=>'P97_DOCUMENT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(172085572887897206)
,p_prompt=>'Document'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(158420883850282999)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
,p_attribute_13=>'File Attachment'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(226318537945745727)
,p_name=>'REFRESH'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P97_PLOT_NO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(226318632317745728)
,p_event_id=>wwv_flow_api.id(226318537945745727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P97_LPC'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  LPC FROM DGMS_PLOTS_BOOKING',
'WHERE PLOT_ID = :P97_PLOT_NO AND BOOKING_STATUS = ''BOOKED''',
''))
,p_attribute_07=>'P97_PLOT_NO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(224418877161861242)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'        DECLARE',
'       v_doc_img blob;',
'       v_doc_file_nm varchar2(300);',
'       v_doc_mime_typ varchar2(300);',
'       B_ID NUMBER;',
'       BEGIN',
'',
'    IF :P97_TYPE = ''LPC'' THEN',
'    UPDATE DGMS_PLOTS_BOOKING SET UN_WAIVER =  :P97_WAIVER_AMOUNT, LPC_WAIVER_CREATED_BY  = :APP_USER, LPC_WAIVER_CREATED_ON = SYSDATE',
'    WHERE PLOT_ID = :P97_PLOT_NO AND BOOKING_STATUS = ''BOOKED'';',
'  ',
'    ELSE',
'',
'    UPDATE DGMS_TRANSFERRED_PLOT SET UN_TRANSFER_FEE_WAIVE_OFF = :P97_WAIVER_AMOUNT, WAIVER_OFF_CREATED_BY = :APP_USER, WAIVER_OFF_CREATED_ON = SYSDATE',
'    WHERE PLOT_ID = :P97_PLOT_NO AND STATUS IN (''CREATED'',''ACCOUNTS APPROVED'',''TAXATION APPROVED'');',
'    COMMIT;',
'    END IF;',
'',
'      IF :P97_DOCUMENT IS NOT NULL THEN',
'       SELECT',
'        blob_content,FILENAME,MIME_TYPE',
'       INTO',
'        v_doc_img,v_doc_file_nm,v_doc_mime_typ',
'       FROM',
'        apex_application_temp_files',
'       WHERE',
'        name = :P97_DOCUMENT;',
' ',
'    SELECT ID INTO B_ID ',
'    FROM DGMS_PLOTS_BOOKING WHERE PLOT_ID = :P97_PLOT_NO AND BOOKING_STATUS IN (''BOOKED'');',
'',
'        ',
'    INSERT INTO DGMS_BOOKING_DOCUMENTS(BOOKING_ID, PLOT_ID, DOCUMENT_TYPE, DOCUMENT, DOC_FILE_NAME, DOC_MIME_TYPE) ',
'    VALUES(B_ID , :P97_PLOT_NO, CASE WHEN :P97_TYPE = ''LPC'' THEN ''LPC WAIVER'' ELSE ''TRANSFER FEE WAIVER'' END, v_doc_img, v_doc_file_nm, v_doc_mime_typ);',
'',
'    COMMIT;',
'END IF; ',
'END;',
'',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(172085969892897210)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(172086129687897211)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT LPC'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- -- BEGIN',
'-- --IF /*:P97_WAIVER_TYPE = ''LPC'' THEN*/',
'--     UPDATE DGMS_PLOTS_BOOKING SET LPC_WAIVER = NVL(LPC_WAIVER,0) + :P97_AMOUNT, LPC_WAIVER_APPROVED_BY  = :APP_USER, LPC_WAIVER_APPROVED_ON = SYSDATE',
'--     WHERE PLOT_ID = :P97_PLOT AND BOOKING_STATUS = ''BOOKED'';',
'',
'  ',
'-- --ELSE',
'--     UPDATE DGMS_TRANSFERRED_PLOT SET TRANSFER_FEE_WAIVE_OFF = :P97_AMOUNT, TRANSFER_FEE_WAIVER_BY = :APP_USER, TRANSFER_FEE_WAIVER_ON = SYSDATE',
'--     WHERE PLOT_ID = :P97_PLOT AND STATUS IN (''CREATED'',''ACCOUNTS APPROVED'',''TAXATION APPROVED'');',
'--     COMMIT;',
'-- -- END IF;',
'-- -- END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(167307396645786815)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(235747634448173029)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'PRACTICE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    DPB.ID BOOKING_ID,',
'    DPB.PLOT_NO,',
'    NVL(LPC_WAIVER,0) - NVL(LPC,0) LPC_WAIVER,',
'     LPC_WAIVER_APPROVED_BY WAIVED_BY,',
'    LPC_WAIVER_APPROVED_ON WAIVED_ON,',
'    DPB.POLICY_STATUS AS STATUS,',
'    DPB.WAIVER_AMOUNT WAIVER_OFF,',
'    DPB.TYPE',
'   ',
'FROM DGMS_PLOTS_BOOKING DPB',
'--LEFT JOIN DGMS_PLOT_DETAILS DPD ON DPD.ID = DPB.PLOT_ID ',
'WHERE 1=1',
'',
'      -- DPB.BOOKING_STATUS = ''BOOKED''  ',
' AND DPB.ORG_ID = :P_ORG_ID',
' ORDER BY DPB.ID DESC '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(187335696543633201)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
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
