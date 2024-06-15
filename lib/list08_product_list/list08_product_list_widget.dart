import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/components/makepayment_copy_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list08_product_list_model.dart';
export 'list08_product_list_model.dart';

class List08ProductListWidget extends StatefulWidget {
  const List08ProductListWidget({super.key});

  @override
  State<List08ProductListWidget> createState() =>
      _List08ProductListWidgetState();
}

class _List08ProductListWidgetState extends State<List08ProductListWidget> {
  late List08ProductListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => List08ProductListModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().selectWalletId = [];
      FFAppState().update(() {});
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            FFLocalizations.of(context).getText(
              '75yxfqts' /* Order Now */,
            ),
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  fontFamily: 'Lexend',
                  letterSpacing: 0.0,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 44.0,
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          FFLocalizations.of(context).getText(
                            'g7v5z3re' /* Our menu is below */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: FutureBuilder<List<AllowancesRow>>(
                  future: AllowancesTable().queryRows(
                    queryFn: (q) => q.eq(
                      'granted_email',
                      currentUserEmail,
                    ),
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child: SpinKitRing(
                            color: Color(0xFF88FD65),
                            size: 40.0,
                          ),
                        ),
                      );
                    }
                    List<AllowancesRow> listViewAllowancesRowList =
                        snapshot.data!;
                    return ListView.separated(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewAllowancesRowList.length,
                      separatorBuilder: (_, __) => SizedBox(height: 15.0),
                      itemBuilder: (context, listViewIndex) {
                        final listViewAllowancesRow =
                            listViewAllowancesRowList[listViewIndex];
                        return Container(
                          width: double.infinity,
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    FFAppState().addToSelectWalletId(
                                        listViewAllowancesRow.id!);
                                    FFAppState().update(() {});
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    height: 120.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 4.0,
                                          color: Color(0x33000000),
                                          offset: Offset(
                                            0.0,
                                            2.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(15.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.network(
                                              'https://picsum.photos/seed/996/600',
                                              width: 80.0,
                                              height: 80.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          listViewAllowancesRow
                                                              .ownerEmail,
                                                          'owner',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Lexend',
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'bm5n0qmj' /* Amount Allowed */,
                                                        ),
                                                        maxLines: 2,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Lexend',
                                                              letterSpacing:
                                                                  0.0,
                                                              lineHeight: 1.4,
                                                            ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          formatNumber(
                                                            listViewAllowancesRow
                                                                .amountLimit,
                                                            formatType:
                                                                FormatType
                                                                    .custom,
                                                            currency: 'ksh',
                                                            format: '',
                                                            locale: '',
                                                          ),
                                                          'amount',
                                                        ),
                                                        maxLines: 2,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Lexend',
                                                              letterSpacing:
                                                                  0.0,
                                                              lineHeight: 1.4,
                                                            ),
                                                      ),
                                                      Text(
                                                        valueOrDefault<String>(
                                                          dateTimeFormat(
                                                            'd/M h:mm a',
                                                            listViewAllowancesRow
                                                                .createdAt,
                                                            locale: FFLocalizations
                                                                    .of(context)
                                                                .languageCode,
                                                          ),
                                                          'amount',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      11.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 5.0)),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                          'n1qacs0m' /* Amount Used */,
                                                        ),
                                                        maxLines: 2,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Lexend',
                                                              letterSpacing:
                                                                  0.0,
                                                              lineHeight: 1.4,
                                                            ),
                                                      ),
                                                      Text(
                                                        formatNumber(
                                                          listViewAllowancesRow
                                                              .amountUsed!,
                                                          formatType:
                                                              FormatType.custom,
                                                          currency: 'ksh',
                                                          format: '',
                                                          locale: '',
                                                        ),
                                                        maxLines: 2,
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Lexend',
                                                              letterSpacing:
                                                                  0.0,
                                                              lineHeight: 1.4,
                                                            ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 5.0)),
                                                  ),
                                                ].divide(SizedBox(height: 5.0)),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              if (FFAppState()
                                      .selectWalletId
                                      .contains(listViewAllowancesRow.id) ==
                                  (listViewAllowancesRow.id != null))
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().removeFromSelectWalletId(
                                          listViewAllowancesRow.id!);
                                      FFAppState().update(() {});
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return GestureDetector(
                                            onTap: () => _model
                                                    .unfocusNode.canRequestFocus
                                                ? FocusScope.of(context)
                                                    .requestFocus(
                                                        _model.unfocusNode)
                                                : FocusScope.of(context)
                                                    .unfocus(),
                                            child: Padding(
                                              padding: MediaQuery.viewInsetsOf(
                                                  context),
                                              child: Container(
                                                height: 550.0,
                                                child: MakepaymentCopyWidget(),
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));
                                    },
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 0.0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Container(
                                        width: double.infinity,
                                        height: 120.0,
                                        decoration: BoxDecoration(
                                          color: Color(0x00FFFFFF),
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .alternate,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  'https://picsum.photos/seed/996/600',
                                                  width: 80.0,
                                                  height: 80.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Expanded(
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              listViewAllowancesRow
                                                                  .ownerEmail,
                                                              'owner',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'ks8nf2mu' /* Amount Allowed */,
                                                            ),
                                                            maxLines: 2,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  lineHeight:
                                                                      1.4,
                                                                ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              formatNumber(
                                                                listViewAllowancesRow
                                                                    .amountLimit,
                                                                formatType:
                                                                    FormatType
                                                                        .custom,
                                                                currency: 'ksh',
                                                                format: '',
                                                                locale: '',
                                                              ),
                                                              'amount',
                                                            ),
                                                            maxLines: 2,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  lineHeight:
                                                                      1.4,
                                                                ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              dateTimeFormat(
                                                                'd/M h:mm a',
                                                                listViewAllowancesRow
                                                                    .createdAt,
                                                                locale: FFLocalizations.of(
                                                                        context)
                                                                    .languageCode,
                                                              ),
                                                              'amount',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      11.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 5.0)),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            FFLocalizations.of(
                                                                    context)
                                                                .getText(
                                                              'cg8pzd5m' /* Amount Used */,
                                                            ),
                                                            maxLines: 2,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  lineHeight:
                                                                      1.4,
                                                                ),
                                                          ),
                                                          Text(
                                                            formatNumber(
                                                              listViewAllowancesRow
                                                                  .amountUsed!,
                                                              formatType:
                                                                  FormatType
                                                                      .custom,
                                                              currency: 'ksh',
                                                              format: '',
                                                              locale: '',
                                                            ),
                                                            maxLines: 2,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Lexend',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  lineHeight:
                                                                      1.4,
                                                                ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 5.0)),
                                                      ),
                                                    ].divide(
                                                        SizedBox(height: 5.0)),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
