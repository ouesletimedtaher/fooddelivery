import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'order_placed_model.dart';
export 'order_placed_model.dart';

class OrderPlacedWidget extends StatefulWidget {
  const OrderPlacedWidget({super.key});

  @override
  State<OrderPlacedWidget> createState() => _OrderPlacedWidgetState();
}

class _OrderPlacedWidgetState extends State<OrderPlacedWidget> {
  late OrderPlacedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderPlacedModel());

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
      width: 375.0,
      height: 630.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 40.0,
                fillColor: FlutterFlowTheme.of(context).primaryBackground,
                icon: Icon(
                  Icons.close_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 20.0,
                ),
                onPressed: () async {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/Group_8168.png',
                width: 223.0,
                height: 254.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Text(
              'Thank You!',
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily: 'Sen',
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          Text(
            'for your order',
            style: FlutterFlowTheme.of(context).labelLarge.override(
                  fontFamily: 'Sen',
                  color: FlutterFlowTheme.of(context).primaryText,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
            child: Text(
              'Your Order is now being processed. \nWe will let you know once the order \n        is picked from the outlet.\n   Check the status of your Order',
              style: FlutterFlowTheme.of(context).labelMedium.override(
                    fontFamily: 'Sen',
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                context.pushNamed('TrackingOrder_01');
              },
              text: 'Track My Order',
              options: FFButtonOptions(
                width: 270.0,
                height: 50.0,
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: const Color(0xFF1150FC),
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Sen',
                      color: Colors.white,
                      letterSpacing: 0.0,
                    ),
                elevation: 0.0,
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
            child: FFButtonWidget(
              onPressed: () async {
                context.pushNamed('Home_Page');
              },
              text: 'Back To Home',
              options: FFButtonOptions(
                width: 270.0,
                height: 50.0,
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primaryBackground,
                textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Sen',
                      color: const Color(0xFF1150FC),
                      letterSpacing: 0.0,
                    ),
                elevation: 0.0,
                borderSide: const BorderSide(
                  color: Color(0xFF1150FC),
                ),
                borderRadius: BorderRadius.circular(24.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
