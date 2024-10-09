import '/flutter_flow/flutter_flow_util.dart';
import 'giveaccess_widget.dart' show GiveaccessWidget;
import 'package:flutter/material.dart';

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
