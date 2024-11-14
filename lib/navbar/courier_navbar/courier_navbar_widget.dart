import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'courier_navbar_model.dart';
export 'courier_navbar_model.dart';

class CourierNavbarWidget extends StatefulWidget {
  const CourierNavbarWidget({super.key});

  @override
  State<CourierNavbarWidget> createState() => _CourierNavbarWidgetState();
}

class _CourierNavbarWidgetState extends State<CourierNavbarWidget> {
  late CourierNavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CourierNavbarModel());

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
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
            spreadRadius: 0.0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.format_list_bulleted_rounded,
                    color: valueOrDefault<Color>(
                      _model.pageName == 'orders'
                          ? const Color(0xFF1150FC)
                          : FlutterFlowTheme.of(context).secondaryText,
                      FlutterFlowTheme.of(context).secondaryText,
                    ),
                    size: 26.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Pendingonboardingactions');
                  },
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.analytics_outlined,
                    color: valueOrDefault<Color>(
                      _model.pageName == 'reports'
                          ? const Color(0xFF1150FC)
                          : FlutterFlowTheme.of(context).secondaryText,
                      FlutterFlowTheme.of(context).secondaryText,
                    ),
                    size: 26.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Courier_Reports');
                  },
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.calendar_today_rounded,
                    color: valueOrDefault<Color>(
                      _model.pageName == 'calendar'
                          ? const Color(0xFF1150FC)
                          : FlutterFlowTheme.of(context).secondaryText,
                      FlutterFlowTheme.of(context).secondaryText,
                    ),
                    size: 26.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Calendar');
                  },
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.person_rounded,
                    color: valueOrDefault<Color>(
                      _model.pageName == 'profile'
                          ? const Color(0xFF1150FC)
                          : FlutterFlowTheme.of(context).secondaryText,
                      FlutterFlowTheme.of(context).secondaryText,
                    ),
                    size: 26.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('Courier_Profile');
                  },
                ),
              ].divide(const SizedBox(width: 60.0)),
            ),
          ],
        ),
      ),
    );
  }
}
