import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'login_widget.dart' show LoginWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for TFLoginEmail widget.
  FocusNode? tFLoginEmailFocusNode;
  TextEditingController? tFLoginEmailController;
  String? Function(BuildContext, String?)? tFLoginEmailControllerValidator;
  // State field(s) for TFLoginSenha widget.
  FocusNode? tFLoginSenhaFocusNode;
  TextEditingController? tFLoginSenhaController;
  late bool tFLoginSenhaVisibility;
  String? Function(BuildContext, String?)? tFLoginSenhaControllerValidator;
  // Stores action output result for [Custom Action - verificarEmail] action in BTLogin widget.
  bool? testaEmail;
  // Stores action output result for [Custom Action - verificaTamanho] action in BTLogin widget.
  bool? testaSenha;
  // State field(s) for TFCadUserEmail widget.
  FocusNode? tFCadUserEmailFocusNode;
  TextEditingController? tFCadUserEmailController;
  String? Function(BuildContext, String?)? tFCadUserEmailControllerValidator;
  // State field(s) for TFCadUserSenha widget.
  FocusNode? tFCadUserSenhaFocusNode;
  TextEditingController? tFCadUserSenhaController;
  late bool tFCadUserSenhaVisibility;
  String? Function(BuildContext, String?)? tFCadUserSenhaControllerValidator;
  // State field(s) for TFCadUserConfirSenha widget.
  FocusNode? tFCadUserConfirSenhaFocusNode;
  TextEditingController? tFCadUserConfirSenhaController;
  late bool tFCadUserConfirSenhaVisibility;
  String? Function(BuildContext, String?)?
      tFCadUserConfirSenhaControllerValidator;
  // Stores action output result for [Custom Action - verificarEmail] action in BTCadUser widget.
  bool? testaEmailCriar;
  // Stores action output result for [Custom Action - verificaTamanho] action in BTCadUser widget.
  bool? testaSenhaCriar;
  // Stores action output result for [Custom Action - verificarConfSenha] action in BTCadUser widget.
  bool? testaConfSenha;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    tFLoginSenhaVisibility = false;
    tFCadUserSenhaVisibility = false;
    tFCadUserConfirSenhaVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    tFLoginEmailFocusNode?.dispose();
    tFLoginEmailController?.dispose();

    tFLoginSenhaFocusNode?.dispose();
    tFLoginSenhaController?.dispose();

    tFCadUserEmailFocusNode?.dispose();
    tFCadUserEmailController?.dispose();

    tFCadUserSenhaFocusNode?.dispose();
    tFCadUserSenhaController?.dispose();

    tFCadUserConfirSenhaFocusNode?.dispose();
    tFCadUserConfirSenhaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
