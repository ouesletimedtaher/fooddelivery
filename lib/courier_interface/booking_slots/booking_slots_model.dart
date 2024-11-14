import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/courier_navbar/courier_navbar_widget.dart';
import 'booking_slots_widget.dart' show BookingSlotsWidget;
import 'package:flutter/material.dart';

class BookingSlotsModel extends FlutterFlowModel<BookingSlotsWidget> {
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
