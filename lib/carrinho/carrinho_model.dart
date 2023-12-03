import '/auth/firebase_auth/auth_util.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/componentes/cadastro_cliente/cadastro_cliente_widget.dart';
import '/componentes/drawer/drawer_widget.dart';
import '/componentes/pagtocard/pagtocard_widget.dart';
import '/componentes/up_date_cliente/up_date_cliente_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'carrinho_widget.dart' show CarrinhoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CarrinhoModel extends FlutterFlowModel<CarrinhoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropCliente widget.
  String? dropClienteValue;
  FormFieldController<String>? dropClienteValueController;
  // State field(s) for DropFormaPagto widget.
  String? dropFormaPagtoValue;
  FormFieldController<String>? dropFormaPagtoValueController;
  // Model for drawer component.
  late DrawerModel drawerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    drawerModel = createModel(context, () => DrawerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    drawerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
