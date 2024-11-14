import '/flutter_flow/flutter_flow_util.dart';
import '/navbar/courier_navbar/courier_navbar_widget.dart';
import 'courier_profile_widget.dart' show CourierProfileWidget;
import 'package:flutter/material.dart';

class CourierProfileModel extends FlutterFlowModel<CourierProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Switch widget.
  bool? switchValue;
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
