import '/flutter_flow/flutter_flow_util.dart';
import 'sign_up_widget.dart' show SignUpWidget;
import 'package:flutter/material.dart';

class SignUpModel extends FlutterFlowModel<SignUpWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Fullname widget.
  FocusNode? fullnameFocusNode;
  TextEditingController? fullnameTextController;
  String? Function(BuildContext, String?)? fullnameTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for Mobilenumber widget.
  FocusNode? mobilenumberFocusNode;
  TextEditingController? mobilenumberTextController;
  String? Function(BuildContext, String?)? mobilenumberTextControllerValidator;
  // State field(s) for adress widget.
  FocusNode? adressFocusNode;
  TextEditingController? adressTextController;
  String? Function(BuildContext, String?)? adressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for Passwordretyped widget.
  FocusNode? passwordretypedFocusNode;
  TextEditingController? passwordretypedTextController;
  late bool passwordretypedVisibility;
  String? Function(BuildContext, String?)?
      passwordretypedTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordretypedVisibility = false;
  }

  @override
  void dispose() {
    fullnameFocusNode?.dispose();
    fullnameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    mobilenumberFocusNode?.dispose();
    mobilenumberTextController?.dispose();

    adressFocusNode?.dispose();
    adressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    passwordretypedFocusNode?.dispose();
    passwordretypedTextController?.dispose();
  }
}
