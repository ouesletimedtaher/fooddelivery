import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'custom_navbar_model.dart';
export 'custom_navbar_model.dart';

class CustomNavbarWidget extends StatefulWidget {
  const CustomNavbarWidget({
    super.key,
    required this.pageName,
  });

  final String? pageName;

  @override
  State<CustomNavbarWidget> createState() => _CustomNavbarWidgetState();
}

class _CustomNavbarWidgetState extends State<CustomNavbarWidget> {
  late CustomNavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CustomNavbarModel());

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
      height: 120.0,
      decoration: const BoxDecoration(),
      alignment: const AlignmentDirectional(0.0, 1.0),
      child: Stack(
        children: [
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Container(
              width: double.infinity,
              height: 80.0,
              decoration: const BoxDecoration(),
              child: Stack(
                alignment: const AlignmentDirectional(0.0, 0.0),
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      'assets/images/Union_4.png',
                      width: double.infinity,
                      height: 80.0,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlutterFlowIconButton(
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              icon: Icon(
                                Icons.grid_view_rounded,
                                color: valueOrDefault<Color>(
                                  widget.pageName == 'menu'
                                      ? const Color(0xFF1150FC)
                                      : const Color(0xFFB6B7B7),
                                  const Color(0xFFB6B7B7),
                                ),
                                size: 24.0,
                              ),
                              onPressed: () async {
                                context.goNamed(
                                  'Menu_Page',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
                                );
                              },
                            ),
                            Text(
                              'Menu',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Sen',
                                    color: valueOrDefault<Color>(
                                      widget.pageName == 'menu'
                                          ? const Color(0xFF1150FC)
                                          : const Color(0xFFB6B7B7),
                                      const Color(0xFFB6B7B7),
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              icon: Icon(
                                Icons.shopping_bag_rounded,
                                color: valueOrDefault<Color>(
                                  widget.pageName == 'offers'
                                      ? const Color(0xFF1150FC)
                                      : const Color(0xFFB6B7B7),
                                  const Color(0xFFB6B7B7),
                                ),
                                size: 24.0,
                              ),
                              onPressed: () async {
                                context.pushNamed('Offers_Page');
                              },
                            ),
                            Text(
                              'Offers',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Sen',
                                    color: valueOrDefault<Color>(
                                      widget.pageName == 'offers'
                                          ? const Color(0xFF1150FC)
                                          : const Color(0xFFB6B7B7),
                                      const Color(0xFFB6B7B7),
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              100.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 8.0,
                                  buttonSize: 40.0,
                                  icon: Icon(
                                    Icons.person_3_rounded,
                                    color: valueOrDefault<Color>(
                                      widget.pageName == 'profile'
                                          ? const Color(0xFF1150FC)
                                          : const Color(0xFFB6B7B7),
                                      const Color(0xFFB6B7B7),
                                    ),
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    context.pushNamed('Profile_page');
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Profile',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Sen',
                                        color: valueOrDefault<Color>(
                                          widget.pageName == 'profile'
                                              ? const Color(0xFF1150FC)
                                              : const Color(0xFFB6B7B7),
                                          const Color(0xFFB6B7B7),
                                        ),
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 8.0,
                              buttonSize: 40.0,
                              icon: Icon(
                                Icons.density_small_rounded,
                                color: valueOrDefault<Color>(
                                  widget.pageName == 'more'
                                      ? const Color(0xFF1150FC)
                                      : const Color(0xFFB6B7B7),
                                  const Color(0xFFB6B7B7),
                                ),
                                size: 24.0,
                              ),
                              onPressed: () async {
                                context.pushNamed('More_page');
                              },
                            ),
                            Text(
                              'More',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Sen',
                                    color: valueOrDefault<Color>(
                                      widget.pageName == 'more'
                                          ? const Color(0xFF1150FC)
                                          : const Color(0xFFB6B7B7),
                                      const Color(0xFFB6B7B7),
                                    ),
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, -0.8),
            child: FlutterFlowIconButton(
              borderRadius: 50.0,
              buttonSize: 75.0,
              fillColor: valueOrDefault<Color>(
                widget.pageName == 'home'
                    ? const Color(0xFF1150FC)
                    : FlutterFlowTheme.of(context).secondaryBackground,
                FlutterFlowTheme.of(context).secondaryBackground,
              ),
              icon: Icon(
                Icons.house_rounded,
                color: valueOrDefault<Color>(
                  widget.pageName == 'home' ? Colors.white : const Color(0xFFB6B7B7),
                  const Color(0xFFB6B7B7),
                ),
                size: 35.0,
              ),
              onPressed: () async {
                context.goNamed(
                  'Home_Page',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
