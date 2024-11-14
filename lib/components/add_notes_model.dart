import '/flutter_flow/flutter_flow_util.dart';
import 'add_notes_widget.dart' show AddNotesWidget;
import 'package:flutter/material.dart';

class AddNotesModel extends FlutterFlowModel<AddNotesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();
  }
}
