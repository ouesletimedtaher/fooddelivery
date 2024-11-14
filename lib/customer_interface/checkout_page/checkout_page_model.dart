import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/custom_navbar/custom_navbar_widget.dart';
import 'checkout_page_widget.dart' show CheckoutPageWidget;
import 'package:flutter/material.dart';

class CheckoutPageModel extends FlutterFlowModel<CheckoutPageWidget> {
  ///  State fields for stateful widgets in this page.

  DateTime? datePicked;
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
