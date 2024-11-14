import '/flutter_flow/flutter_flow_util.dart';
import 'how_much_cash_widget.dart' show HowMuchCashWidget;
import 'package:flutter/material.dart';

class HowMuchCashModel extends FlutterFlowModel<HowMuchCashWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
