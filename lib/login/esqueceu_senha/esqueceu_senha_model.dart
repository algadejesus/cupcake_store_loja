import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'esqueceu_senha_widget.dart' show EsqueceuSenhaWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EsqueceuSenhaModel extends FlutterFlowModel<EsqueceuSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for resetEmail widget.
  FocusNode? resetEmailFocusNode;
  TextEditingController? resetEmailController;
  String? Function(BuildContext, String?)? resetEmailControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    resetEmailFocusNode?.dispose();
    resetEmailController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
