import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/seller_navbar/seller_navbar_widget.dart';
import 'seller_massages_widget.dart' show SellerMassagesWidget;
import 'package:flutter/material.dart';

class SellerMassagesModel extends FlutterFlowModel<SellerMassagesWidget> {
  ///  State fields for stateful widgets in this page.

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
