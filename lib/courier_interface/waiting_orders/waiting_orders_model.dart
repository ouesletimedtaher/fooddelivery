import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/courier_navbar/courier_navbar_widget.dart';
import 'waiting_orders_widget.dart' show WaitingOrdersWidget;
import 'package:flutter/material.dart';

class WaitingOrdersModel extends FlutterFlowModel<WaitingOrdersWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Courier_navbar component.
  late CourierNavbarModel courierNavbarModel;

  @override
  void initState(BuildContext context) {
    courierNavbarModel = createModel(context, () => CourierNavbarModel());
  }

  @override
  void dispose() {
    courierNavbarModel.dispose();
  }
}
