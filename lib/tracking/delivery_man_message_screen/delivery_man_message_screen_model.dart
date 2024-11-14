import '/flutter_flow/flutter_flow_util.dart';
import 'delivery_man_message_screen_widget.dart'
    show DeliveryManMessageScreenWidget;
import 'package:flutter/material.dart';

class DeliveryManMessageScreenModel
    extends FlutterFlowModel<DeliveryManMessageScreenWidget> {
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
