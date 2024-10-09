import '/flutter_flow/flutter_flow_util.dart';
import 'tutorial_p_r_o_f_i_l_e_widget.dart' show TutorialPROFILEWidget;
import 'package:flutter/material.dart';

class TutorialPROFILEModel extends FlutterFlowModel<TutorialPROFILEWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
