import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'order_added_to_cart_model.dart';
export 'order_added_to_cart_model.dart';

class OrderAddedToCartWidget extends StatefulWidget {
  const OrderAddedToCartWidget({super.key});

  @override
  State<OrderAddedToCartWidget> createState() => _OrderAddedToCartWidgetState();
}

class _OrderAddedToCartWidgetState extends State<OrderAddedToCartWidget> {
  late OrderAddedToCartModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderAddedToCartModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0,
      decoration: BoxDecoration(
        color: const Color(0xFF1150FC),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Icon(
              Icons.check_circle,
              color: Colors.white,
              size: 24.0,
            ),
            Text(
              'Your product added to your cart',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Sen',
                    color: Colors.white,
                    letterSpacing: 0.0,
                  ),
            ),
          ].divide(const SizedBox(width: 12.0)),
        ),
      ),
    );
  }
}
