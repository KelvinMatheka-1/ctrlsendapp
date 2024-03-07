import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'giveaccess_widget.dart' show GiveaccessWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GiveaccessModel extends FlutterFlowModel<GiveaccessWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for recipientemail widget.
  FocusNode? recipientemailFocusNode;
  TextEditingController? recipientemailController;
  String? Function(BuildContext, String?)? recipientemailControllerValidator;
  // State field(s) for walletid widget.
  FocusNode? walletidFocusNode;
  TextEditingController? walletidController;
  String? Function(BuildContext, String?)? walletidControllerValidator;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountController;
  String? Function(BuildContext, String?)? amountControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    recipientemailFocusNode?.dispose();
    recipientemailController?.dispose();

    walletidFocusNode?.dispose();
    walletidController?.dispose();

    amountFocusNode?.dispose();
    amountController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
