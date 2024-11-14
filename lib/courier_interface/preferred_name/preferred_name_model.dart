import '/flutter_flow/flutter_flow_util.dart';
import 'preferred_name_widget.dart' show PreferredNameWidget;
import 'package:flutter/material.dart';

class PreferredNameModel extends FlutterFlowModel<PreferredNameWidget> {
  ///  State fields for stateful widgets in this page.

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
