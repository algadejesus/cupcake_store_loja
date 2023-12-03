import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/pagtocard/pagtocard_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'up_date_cliente_widget.dart' show UpDateClienteWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class UpDateClienteModel extends FlutterFlowModel<UpDateClienteWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldNom widget.
  FocusNode? textFieldNomFocusNode;
  TextEditingController? textFieldNomController;
  String? Function(BuildContext, String?)? textFieldNomControllerValidator;
  String? _textFieldNomControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldFone widget.
  FocusNode? textFieldFoneFocusNode;
  TextEditingController? textFieldFoneController;
  final textFieldFoneMask = MaskTextInputFormatter(mask: '(##) # ####-####');
  String? Function(BuildContext, String?)? textFieldFoneControllerValidator;
  String? _textFieldFoneControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldCPF widget.
  FocusNode? textFieldCPFFocusNode;
  TextEditingController? textFieldCPFController;
  final textFieldCPFMask = MaskTextInputFormatter(mask: '###.###.###-##');
  String? Function(BuildContext, String?)? textFieldCPFControllerValidator;
  String? _textFieldCPFControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldCEP widget.
  FocusNode? textFieldCEPFocusNode;
  TextEditingController? textFieldCEPController;
  final textFieldCEPMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? textFieldCEPControllerValidator;
  String? _textFieldCEPControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldNumero widget.
  FocusNode? textFieldNumeroFocusNode;
  TextEditingController? textFieldNumeroController;
  String? Function(BuildContext, String?)? textFieldNumeroControllerValidator;
  String? _textFieldNumeroControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldRua widget.
  FocusNode? textFieldRuaFocusNode;
  TextEditingController? textFieldRuaController;
  String? Function(BuildContext, String?)? textFieldRuaControllerValidator;
  String? _textFieldRuaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldBairro widget.
  FocusNode? textFieldBairroFocusNode;
  TextEditingController? textFieldBairroController;
  String? Function(BuildContext, String?)? textFieldBairroControllerValidator;
  String? _textFieldBairroControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldCidade widget.
  FocusNode? textFieldCidadeFocusNode;
  TextEditingController? textFieldCidadeController;
  String? Function(BuildContext, String?)? textFieldCidadeControllerValidator;
  String? _textFieldCidadeControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldUF widget.
  FocusNode? textFieldUFFocusNode;
  TextEditingController? textFieldUFController;
  final textFieldUFMask = MaskTextInputFormatter(mask: 'AA');
  String? Function(BuildContext, String?)? textFieldUFControllerValidator;
  String? _textFieldUFControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório!';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldNomControllerValidator = _textFieldNomControllerValidator;
    textFieldFoneControllerValidator = _textFieldFoneControllerValidator;
    textFieldCPFControllerValidator = _textFieldCPFControllerValidator;
    textFieldCEPControllerValidator = _textFieldCEPControllerValidator;
    textFieldNumeroControllerValidator = _textFieldNumeroControllerValidator;
    textFieldRuaControllerValidator = _textFieldRuaControllerValidator;
    textFieldBairroControllerValidator = _textFieldBairroControllerValidator;
    textFieldCidadeControllerValidator = _textFieldCidadeControllerValidator;
    textFieldUFControllerValidator = _textFieldUFControllerValidator;
  }

  void dispose() {
    textFieldNomFocusNode?.dispose();
    textFieldNomController?.dispose();

    textFieldFoneFocusNode?.dispose();
    textFieldFoneController?.dispose();

    textFieldCPFFocusNode?.dispose();
    textFieldCPFController?.dispose();

    textFieldCEPFocusNode?.dispose();
    textFieldCEPController?.dispose();

    textFieldNumeroFocusNode?.dispose();
    textFieldNumeroController?.dispose();

    textFieldRuaFocusNode?.dispose();
    textFieldRuaController?.dispose();

    textFieldBairroFocusNode?.dispose();
    textFieldBairroController?.dispose();

    textFieldCidadeFocusNode?.dispose();
    textFieldCidadeController?.dispose();

    textFieldUFFocusNode?.dispose();
    textFieldUFController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
