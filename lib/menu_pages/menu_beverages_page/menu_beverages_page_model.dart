import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/custom_navbar/custom_navbar_widget.dart';
import 'menu_beverages_page_widget.dart' show MenuBeveragesPageWidget;
import 'package:flutter/material.dart';

class MenuBeveragesPageModel extends FlutterFlowModel<MenuBeveragesPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for Custom_Navbar component.
  late CustomNavbarModel customNavbarModel;

  @override
  void initState(BuildContext context) {
    customNavbarModel = createModel(context, () => CustomNavbarModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    customNavbarModel.dispose();
  }
}
