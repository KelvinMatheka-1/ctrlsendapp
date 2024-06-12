import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'giveaccess_model.dart';
export 'giveaccess_model.dart';

class GiveaccessWidget extends StatefulWidget {
  const GiveaccessWidget({super.key});

  @override
  State<GiveaccessWidget> createState() => _GiveaccessWidgetState();
}

class _GiveaccessWidgetState extends State<GiveaccessWidget> {
  late GiveaccessModel _model;

  bool walletidFocusListenerRegistered = false;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GiveaccessModel());

    _model.recipientemailTextController ??= TextEditingController();
    _model.recipientemailFocusNode ??= FocusNode();

    _model.walletidTextController ??= TextEditingController();
    _model.walletidFocusNode ??= FocusNode();

    _model.amountTextController ??= TextEditingController();
    _model.amountFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, -1.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(12.0),
              child: FutureBuilder<List<WalletsRow>>(
                future: WalletsTable().querySingleRow(
                  queryFn: (q) => q.eq(
                    'owner_email',
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
                  List<WalletsRow> containerWalletsRowList = snapshot.data!;
                  final containerWalletsRow = containerWalletsRowList.isNotEmpty
                      ? containerWalletsRowList.first
                      : null;
                  return Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      maxWidth: 570.0,
                    ),
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
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
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        width: 2.0,
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsets.all(24.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFLocalizations.of(context).getText(
                                '8r7zw35a' /* Grant Access */,
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .displaySmall
                                  .override(
                                    fontFamily: 'Roboto',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 24.0),
                              child: Text(
                                FFLocalizations.of(context).getText(
                                  'j080bqz1' /* Enter beneficiary details */,
                                ),
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 16.0),
                              child: Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller:
                                      _model.recipientemailTextController,
                                  focusNode: _model.recipientemailFocusNode,
                                  autofocus: true,
                                  autofillHints: [AutofillHints.email],
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      '33l22xxg' /* Email */,
                                    ),
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF97D200),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    contentPadding: EdgeInsets.all(24.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: _model
                                      .recipientemailTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 16.0),
                              child: Container(
                                width: double.infinity,
                                child: Builder(builder: (_) {
                                  if (!walletidFocusListenerRegistered) {
                                    walletidFocusListenerRegistered = true;
                                    _model.walletidFocusNode!.addListener(
                                      () async {
                                        setState(() {
                                          _model.walletidTextController?.text =
                                              containerWalletsRow!.id;
                                          _model.walletidTextController
                                                  ?.selection =
                                              TextSelection.collapsed(
                                                  offset: _model
                                                      .walletidTextController!
                                                      .text
                                                      .length);
                                        });
                                      },
                                    );
                                  }
                                  return TextFormField(
                                    controller: _model.walletidTextController,
                                    focusNode: _model.walletidFocusNode,
                                    autofocus: true,
                                    autofillHints: [AutofillHints.email],
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'mry50pgw' /* Wallet Id */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0xFF97D200),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      contentPadding: EdgeInsets.all(24.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                    validator: _model
                                        .walletidTextControllerValidator
                                        .asValidator(context),
                                  );
                                }),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 16.0),
                              child: Container(
                                width: double.infinity,
                                child: TextFormField(
                                  controller: _model.amountTextController,
                                  focusNode: _model.amountFocusNode,
                                  autofocus: true,
                                  autofillHints: [AutofillHints.email],
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText:
                                        FFLocalizations.of(context).getText(
                                      'zvj3j5e6' /* Amount */,
                                    ),
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Color(0xFF97D200),
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 2.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    contentPadding: EdgeInsets.all(24.0),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                  keyboardType: TextInputType.emailAddress,
                                  validator: _model
                                      .amountTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: StreamBuilder<List<UserListRecord>>(
                                  stream: queryUserListRecord(
                                    queryBuilder: (userListRecord) =>
                                        userListRecord.where(
                                      'email',
                                      isEqualTo: _model
                                          .recipientemailTextController.text,
                                    ),
                                    singleRecord: true,
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
                                    List<UserListRecord>
                                        buttonUserListRecordList =
                                        snapshot.data!;
                                    // Return an empty Container when the item does not exist.
                                    if (snapshot.data!.isEmpty) {
                                      return Container();
                                    }
                                    final buttonUserListRecord =
                                        buttonUserListRecordList.isNotEmpty
                                            ? buttonUserListRecordList.first
                                            : null;
                                    return FFButtonWidget(
                                      onPressed: () async {
                                        await AllowancesTable().insert({
                                          'created_at': supaSerialize<DateTime>(
                                              getCurrentTimestamp),
                                          'owner_wallet_id': _model
                                              .walletidTextController.text,
                                          'amount_limit': double.tryParse(
                                              _model.amountTextController.text),
                                          'owner_email': currentUserEmail,
                                          'granted_email': _model
                                              .recipientemailTextController
                                              .text,
                                        });
                                        triggerPushNotification(
                                          notificationTitle: 'Received Access',
                                          notificationText:
                                              '${currentUserEmail} has given you ksh${_model.amountTextController.text} access to their wallet.',
                                          userRefs: [
                                            buttonUserListRecord!.reference
                                          ],
                                          initialPageName: 'selectwallet',
                                          parameterData: {},
                                        );
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Given access'),
                                              content: Text(
                                                  'Confirmed, given access of ksh${_model.amountTextController.text} to ${_model.recipientemailTextController.text}'),
                                              actions: [
                                                TextButton(
                                                  onPressed: () =>
                                                      Navigator.pop(
                                                          alertDialogContext),
                                                  child: Text('Ok'),
                                                ),
                                              ],
                                            );
                                          },
                                        );

                                        context.pushNamed('MY_CardCopy');
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'r7d0js1s' /* Grant access */,
                                      ),
                                      options: FFButtonOptions(
                                        width: 230.0,
                                        height: 52.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFF9FDA00),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily: 'Lexend',
                                              color: Colors.white,
                                              letterSpacing: 0.0,
                                            ),
                                        elevation: 3.0,
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(40.0),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
