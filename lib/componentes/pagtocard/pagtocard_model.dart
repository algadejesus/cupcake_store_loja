import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'pagtocard_widget.dart' show PagtocardWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PagtocardModel extends FlutterFlowModel<PagtocardWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldNumbCard widget.
  FocusNode? textFieldNumbCardFocusNode;
  TextEditingController? textFieldNumbCardController;
  final textFieldNumbCardMask =
      MaskTextInputFormatter(mask: '#### #### #### #### ');
  String? Function(BuildContext, String?)? textFieldNumbCardControllerValidator;
  String? _textFieldNumbCardControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldTitular widget.
  FocusNode? textFieldTitularFocusNode;
  TextEditingController? textFieldTitularController;
  String? Function(BuildContext, String?)? textFieldTitularControllerValidator;
  String? _textFieldTitularControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldExpiracao widget.
  FocusNode? textFieldExpiracaoFocusNode;
  TextEditingController? textFieldExpiracaoController;
  final textFieldExpiracaoMask = MaskTextInputFormatter(mask: '##/##');
  String? Function(BuildContext, String?)?
      textFieldExpiracaoControllerValidator;
  String? _textFieldExpiracaoControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório!';
    }

    return null;
  }

  // State field(s) for TextFieldCvv widget.
  FocusNode? textFieldCvvFocusNode;
  TextEditingController? textFieldCvvController;
  final textFieldCvvMask = MaskTextInputFormatter(mask: '###');
  String? Function(BuildContext, String?)? textFieldCvvControllerValidator;
  String? _textFieldCvvControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório!';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    textFieldNumbCardControllerValidator =
        _textFieldNumbCardControllerValidator;
    textFieldTitularControllerValidator = _textFieldTitularControllerValidator;
    textFieldExpiracaoControllerValidator =
        _textFieldExpiracaoControllerValidator;
    textFieldCvvControllerValidator = _textFieldCvvControllerValidator;
  }

  void dispose() {
    textFieldNumbCardFocusNode?.dispose();
    textFieldNumbCardController?.dispose();

    textFieldTitularFocusNode?.dispose();
    textFieldTitularController?.dispose();

    textFieldExpiracaoFocusNode?.dispose();
    textFieldExpiracaoController?.dispose();

    textFieldCvvFocusNode?.dispose();
    textFieldCvvController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
