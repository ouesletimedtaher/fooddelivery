import '/components/order_added_to_cart_widget.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/navbar/custom_navbar/custom_navbar_widget.dart';
import 'package:flutter/material.dart';
import 'product_page_model.dart';
export 'product_page_model.dart';

class ProductPageWidget extends StatefulWidget {
  const ProductPageWidget({super.key});

  @override
  State<ProductPageWidget> createState() => _ProductPageWidgetState();
}

class _ProductPageWidgetState extends State<ProductPageWidget> {
  late ProductPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SizedBox(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: 300.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(24.0),
                        child: Image.asset(
                          'assets/images/beef-egg-bacon-burger-served-600nw-1926381014.webp',
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(32.0),
                          topRight: Radius.circular(32.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 24.0, 24.0, 24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Burger Bistro',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Sen',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                    Text(
                                      'Le Réservoir',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Sen',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 15.0),
                                  child: Container(
                                    width: 60.0,
                                    height: 60.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF1150FC),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(
                                            Icons.favorite_border,
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            size: 30.0,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Color(0xFF1150FC),
                                      size: 20.0,
                                    ),
                                    Text(
                                      '4.8',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Sen',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Text(
                                      '(2.5k reviews)',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Sen',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ].divide(const SizedBox(width: 8.0)),
                                ),
                                Text(
                                  '20.00 DT',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineSmall
                                      .override(
                                        fontFamily: 'Sen',
                                        color: const Color(0xFF1150FC),
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 1.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFE0E0E0),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Description',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Sen',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                Text(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare leo non mollis id cursus. Eu euismod faucibus in leo malesuada',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Sen',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 1.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFE0E0E0),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Number Of Portions',
                                      style: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Sen',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          50.0, 0.0, 0.0, 0.0),
                                      child: Container(
                                        width: 100.0,
                                        height: 40.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: const Color(0xFF1150FC),
                                          ),
                                        ),
                                        child: FlutterFlowCountController(
                                          decrementIconBuilder: (enabled) =>
                                              Icon(
                                            Icons.remove_rounded,
                                            color: enabled
                                                ? const Color(0xFF1150FC)
                                                : FlutterFlowTheme.of(context)
                                                    .alternate,
                                            size: 20.0,
                                          ),
                                          incrementIconBuilder: (enabled) =>
                                              Icon(
                                            Icons.add_rounded,
                                            color: enabled
                                                ? const Color(0xFF1150FC)
                                                : FlutterFlowTheme.of(context)
                                                    .alternate,
                                            size: 20.0,
                                          ),
                                          countBuilder: (count) => Text(
                                            count.toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .titleLarge
                                                .override(
                                                  fontFamily: 'Sen',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          count: _model
                                              .countControllerValue1 ??= 0,
                                          updateCount: (count) => safeSetState(
                                              () =>
                                                  _model.countControllerValue1 =
                                                      count),
                                          stepSize: 1,
                                          contentPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 0.0, 15.0, 0.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: MediaQuery.sizeOf(context).width * 1.0,
                                  height: 1.0,
                                  decoration: const BoxDecoration(
                                    color: Color(0xFFE0E0E0),
                                  ),
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Customize ',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Sen',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                FlutterFlowChoiceChips(
                                  options: const [
                                    ChipData('Regular'),
                                    ChipData('Extra Cheese'),
                                    ChipData('No Cheese')
                                  ],
                                  onChanged: (val) => safeSetState(() => _model
                                      .choiceChipsValue1 = val?.firstOrNull),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor: const Color(0xFF1150FC),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Sen',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          letterSpacing: 0.0,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    iconSize: 18.0,
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor: const Color(0xFFF5F5F5),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Sen',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    iconSize: 18.0,
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  chipSpacing: 8.0,
                                  rowSpacing: 8.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                  controller:
                                      _model.choiceChipsValueController1 ??=
                                          FormFieldController<List<String>>(
                                    [],
                                  ),
                                  wrapped: true,
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                FlutterFlowChoiceChips(
                                  options: const [
                                    ChipData('Harissa'),
                                    ChipData('Mayonaise'),
                                    ChipData('ketchup'),
                                    ChipData('S, Bbq ')
                                  ],
                                  onChanged: (val) => safeSetState(() => _model
                                      .choiceChipsValue2 = val?.firstOrNull),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor: const Color(0xFF1150FC),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Sen',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          letterSpacing: 0.0,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    iconSize: 18.0,
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor: const Color(0xFFF5F5F5),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Sen',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    iconSize: 18.0,
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  chipSpacing: 8.0,
                                  rowSpacing: 8.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                  controller:
                                      _model.choiceChipsValueController2 ??=
                                          FormFieldController<List<String>>(
                                    [],
                                  ),
                                  wrapped: true,
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 1.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFE0E0E0),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  child: Text(
                                    'Extras',
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Sen',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Extra Bacon',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Sen',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 15.0, 0.0),
                                          child: Text(
                                            '+1.50 DT',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Sen',
                                                  color: const Color(0xFF1150FC),
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                    Container(
                                      width: 100.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: const Color(0xFF1150FC),
                                        ),
                                      ),
                                      child: FlutterFlowCountController(
                                        decrementIconBuilder: (enabled) => Icon(
                                          Icons.remove_rounded,
                                          color: enabled
                                              ? const Color(0xFF1150FC)
                                              : FlutterFlowTheme.of(context)
                                                  .alternate,
                                          size: 20.0,
                                        ),
                                        incrementIconBuilder: (enabled) => Icon(
                                          Icons.add_rounded,
                                          color: enabled
                                              ? const Color(0xFF1150FC)
                                              : FlutterFlowTheme.of(context)
                                                  .alternate,
                                          size: 20.0,
                                        ),
                                        countBuilder: (count) => Text(
                                          count.toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Sen',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        count: _model.countControllerValue2 ??=
                                            0,
                                        updateCount: (count) => safeSetState(
                                            () => _model.countControllerValue2 =
                                                count),
                                        stepSize: 1,
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                15.0, 0.0, 15.0, 0.0),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Fried Egg',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Sen',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          '+1.00 DT',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Sen',
                                                color: const Color(0xFF1150FC),
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ].divide(const SizedBox(width: 8.0)),
                                    ),
                                    Container(
                                      width: 100.0,
                                      height: 40.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        shape: BoxShape.rectangle,
                                        border: Border.all(
                                          color: const Color(0xFF1150FC),
                                        ),
                                      ),
                                      child: FlutterFlowCountController(
                                        decrementIconBuilder: (enabled) => Icon(
                                          Icons.remove_rounded,
                                          color: enabled
                                              ? const Color(0xFF1150FC)
                                              : FlutterFlowTheme.of(context)
                                                  .alternate,
                                          size: 20.0,
                                        ),
                                        incrementIconBuilder: (enabled) => Icon(
                                          Icons.add_rounded,
                                          color: enabled
                                              ? const Color(0xFF1150FC)
                                              : FlutterFlowTheme.of(context)
                                                  .alternate,
                                          size: 20.0,
                                        ),
                                        countBuilder: (count) => Text(
                                          count.toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Sen',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        count: _model.countControllerValue3 ??=
                                            0,
                                        updateCount: (count) => safeSetState(
                                            () => _model.countControllerValue3 =
                                                count),
                                        stepSize: 1,
                                        contentPadding:
                                            const EdgeInsetsDirectional.fromSTEB(
                                                15.0, 0.0, 15.0, 0.0),
                                      ),
                                    ),
                                  ],
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                            Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 1.0,
                              decoration: const BoxDecoration(
                                color: Color(0xFFE0E0E0),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Sides',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Sen',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                                FlutterFlowChoiceChips(
                                  options: const [
                                    ChipData('French Fries'),
                                    ChipData('Onion Rings'),
                                    ChipData('Side Salad')
                                  ],
                                  onChanged: (val) => safeSetState(() => _model
                                      .choiceChipsValue3 = val?.firstOrNull),
                                  selectedChipStyle: ChipStyle(
                                    backgroundColor: const Color(0xFF1150FC),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Sen',
                                          color:
                                              FlutterFlowTheme.of(context).info,
                                          letterSpacing: 0.0,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    iconSize: 18.0,
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  unselectedChipStyle: ChipStyle(
                                    backgroundColor: const Color(0xFFF5F5F5),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodySmall
                                        .override(
                                          fontFamily: 'Sen',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                        ),
                                    iconColor: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    iconSize: 18.0,
                                    elevation: 0.0,
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  chipSpacing: 8.0,
                                  rowSpacing: 8.0,
                                  multiselect: false,
                                  alignment: WrapAlignment.start,
                                  controller:
                                      _model.choiceChipsValueController3 ??=
                                          FormFieldController<List<String>>(
                                    [],
                                  ),
                                  wrapped: true,
                                ),
                              ].divide(const SizedBox(height: 12.0)),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 0.0),
                                  child: Stack(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(24.0),
                                        child: Image.asset(
                                          'assets/images/Rectangle_17326.png',
                                          width: 97.0,
                                          height: 170.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            35.0, 25.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          child: Image.asset(
                                            'assets/images/Rectangle_17327.png',
                                            width: 277.0,
                                            height: 122.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            100.0, 40.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Total Price',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Sen',
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 12.0, 0.0, 0.0),
                                              child: Text(
                                                '20.00 DT',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Sen',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 12.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () =>
                                                            FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child:
                                                              const OrderAddedToCartWidget(),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                },
                                                text: 'Add To Cart\n',
                                                options: FFButtonOptions(
                                                  width: 140.0,
                                                  height: 29.0,
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 16.0, 0.0),
                                                  iconAlignment:
                                                      IconAlignment.start,
                                                  iconPadding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: const Color(0xFF1150FC),
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily: 'Sen',
                                                            color: Colors.white,
                                                            letterSpacing: 0.0,
                                                          ),
                                                  elevation: 0.0,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          24.0),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            265.0, 55.0, 0.0, 0.0),
                                        child: Container(
                                          width: 65.0,
                                          height: 65.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                          ),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(24.0),
                                            child: Image.asset(
                                              'assets/images/Group_8092.png',
                                              width: 50.0,
                                              height: 50.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ].divide(const SizedBox(height: 20.0)),
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.customNavbarModel,
                      updateCallback: () => safeSetState(() {}),
                      child: const CustomNavbarWidget(
                        pageName: 'product',
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 0.0, 0.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 8.0,
                        buttonSize: 40.0,
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        icon: Icon(
                          Icons.arrow_back,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          context.safePop();
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(250.0, 0.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('Cart_Page');
                        },
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: Image.asset(
                                  'assets/images/Cart_(1).png',
                                  width: 45.0,
                                  height: 45.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 0.0, 0.0),
                              child: Container(
                                width: 25.0,
                                height: 25.0,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF1150FC),
                                  shape: BoxShape.circle,
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '2',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Sen',
                                            color: Colors.white,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
