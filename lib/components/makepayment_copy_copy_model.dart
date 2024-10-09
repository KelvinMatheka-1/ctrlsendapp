import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'makepayment_copy_copy_widget.dart' show MakepaymentCopyCopyWidget;
import 'package:flutter/material.dart';

class MakepaymentCopyCopyModel
    extends FlutterFlowModel<MakepaymentCopyCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode1;
  TextEditingController? emailAddressTextController1;
  String? Function(BuildContext, String?)? emailAddressTextController1Validator;
  // State field(s) for Till widget.
  FocusNode? tillFocusNode;
  TextEditingController? tillTextController;
  String? Function(BuildContext, String?)? tillTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode2;
  TextEditingController? emailAddressTextController2;
  String? Function(BuildContext, String?)? emailAddressTextController2Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode3;
  TextEditingController? emailAddressTextController3;
  String? Function(BuildContext, String?)? emailAddressTextController3Validator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode4;
  TextEditingController? emailAddressTextController4;
  String? Function(BuildContext, String?)? emailAddressTextController4Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode1?.dispose();
    emailAddressTextController1?.dispose();

    tillFocusNode?.dispose();
    tillTextController?.dispose();

    emailAddressFocusNode2?.dispose();
    emailAddressTextController2?.dispose();

    emailAddressFocusNode3?.dispose();
    emailAddressTextController3?.dispose();

    emailAddressFocusNode4?.dispose();
    emailAddressTextController4?.dispose();
  }
}
