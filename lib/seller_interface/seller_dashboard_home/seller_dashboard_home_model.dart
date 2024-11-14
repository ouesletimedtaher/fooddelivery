import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/navbar/seller_navbar/seller_navbar_widget.dart';
import 'seller_dashboard_home_widget.dart' show SellerDashboardHomeWidget;
import 'package:flutter/material.dart';

class SellerDashboardHomeModel
    extends FlutterFlowModel<SellerDashboardHomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // Model for Seller_Navbar component.
  late SellerNavbarModel sellerNavbarModel;

  @override
  void initState(BuildContext context) {
    sellerNavbarModel = createModel(context, () => SellerNavbarModel());
  }

  @override
  void dispose() {
    sellerNavbarModel.dispose();
  }
}
