import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'giveaccess_widget.dart' show GiveaccessWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GiveaccessModel extends FlutterFlowModel<GiveaccessWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for recipientemail widget.
  FocusNode? recipientemailFocusNode;
  TextEditingController? recipientemailTextController;
  String? Function(BuildContext, String?)?
      recipientemailTextControllerValidator;
  // State field(s) for walletid widget.
  FocusNode? walletidFocusNode;
  TextEditingController? walletidTextController;
  String? Function(BuildContext, String?)? walletidTextControllerValidator;
  // State field(s) for amount widget.
  FocusNode? amountFocusNode;
  TextEditingController? amountTextController;
  String? Function(BuildContext, String?)? amountTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    recipientemailFocusNode?.dispose();
    recipientemailTextController?.dispose();

    walletidFocusNode?.dispose();
    walletidTextController?.dispose();

    amountFocusNode?.dispose();
    amountTextController?.dispose();
  }
}
