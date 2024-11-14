import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/custom_navbar/custom_navbar_widget.dart';
import 'more_page_widget.dart' show MorePageWidget;
import 'package:flutter/material.dart';

class MorePageModel extends FlutterFlowModel<MorePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Custom_Navbar component.
  late CustomNavbarModel customNavbarModel;

  @override
  void initState(BuildContext context) {
    customNavbarModel = createModel(context, () => CustomNavbarModel());
  }

  @override
  void dispose() {
    customNavbarModel.dispose();
  }
}
