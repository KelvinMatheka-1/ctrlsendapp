import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/push_notifications/push_notifications_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'makepayment_copy_model.dart';
export 'makepayment_copy_model.dart';

class MakepaymentCopyWidget extends StatefulWidget {
  const MakepaymentCopyWidget({super.key});

  @override
  State<MakepaymentCopyWidget> createState() => _MakepaymentCopyWidgetState();
}

class _MakepaymentCopyWidgetState extends State<MakepaymentCopyWidget> {
  late MakepaymentCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MakepaymentCopyModel());

    _model.emailAddressTextController1 ??= TextEditingController();
    _model.emailAddressFocusNode1 ??= FocusNode();

    _model.emailAddressTextController2 ??= TextEditingController();
    _model.emailAddressFocusNode2 ??= FocusNode();

    _model.emailAddressTextController3 ??= TextEditingController();
    _model.emailAddressFocusNode3 ??= FocusNode();

    _model.emailAddressTextController4 ??= TextEditingController();
    _model.emailAddressFocusNode4 ??= FocusNode();
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
              child: FutureBuilder<List<AllowancesRow>>(
                future: AllowancesTable().querySingleRow(
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
                  List<AllowancesRow> containerAllowancesRowList =
                      snapshot.data!;
                  final containerAllowancesRow =
                      containerAllowancesRowList.isNotEmpty
                          ? containerAllowancesRowList.first
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
                        child: FutureBuilder<List<TransactionsRow>>(
                          future: TransactionsTable().querySingleRow(
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
                            List<TransactionsRow> columnTransactionsRowList =
                                snapshot.data!;
                            final columnTransactionsRow =
                                columnTransactionsRowList.isNotEmpty
                                    ? columnTransactionsRowList.first
                                    : null;
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                if (_model.dropDownValue == 'sending')
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '7p5sndax' /* Send */,
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
                                if (_model.dropDownValue == 'paying')
                                  Text(
                                    FFLocalizations.of(context).getText(
                                      '3j41640g' /* Pay */,
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
                                      'be4a72a0' /* Enter details */,
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
                                  child: FlutterFlowDropDown<String>(
                                    controller:
                                        _model.dropDownValueController ??=
                                            FormFieldController<String>(
                                      _model.dropDownValue ??=
                                          FFLocalizations.of(context).getText(
                                        'q80hfqkf' /* paying */,
                                      ),
                                    ),
                                    options: [
                                      FFLocalizations.of(context).getText(
                                        '9odop570' /* paying */,
                                      ),
                                      FFLocalizations.of(context).getText(
                                        'admba7xq' /* sending */,
                                      )
                                    ],
                                    onChanged: (val) => setState(
                                        () => _model.dropDownValue = val),
                                    width: 348.0,
                                    height: 64.0,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .labelLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                    hintText:
                                        FFLocalizations.of(context).getText(
                                      'ms27y2y9' /* Please select... */,
                                    ),
                                    icon: Icon(
                                      Icons.keyboard_arrow_down_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2.0,
                                    borderColor:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderWidth: 2.0,
                                    borderRadius: 30.0,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 4.0, 16.0, 4.0),
                                    hidesUnderline: true,
                                    isOverButton: true,
                                    isSearchable: false,
                                    isMultiSelect: false,
                                  ),
                                ),
                                if (_model.dropDownValue == 'paying')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 16.0),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller:
                                            _model.emailAddressTextController1,
                                        focusNode:
                                            _model.emailAddressFocusNode1,
                                        autofocus: true,
                                        autofillHints: [AutofillHints.email],
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'o34k3gds' /* Paybill */,
                                          ),
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          contentPadding: EdgeInsets.all(24.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .emailAddressTextController1Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                if (_model.dropDownValue == 'paying')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 16.0),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller:
                                            _model.emailAddressTextController2,
                                        focusNode:
                                            _model.emailAddressFocusNode2,
                                        autofocus: true,
                                        autofillHints: [AutofillHints.email],
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            '7b0oj09a' /* Acc No. */,
                                          ),
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          contentPadding: EdgeInsets.all(24.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        validator: _model
                                            .emailAddressTextController2Validator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                if (_model.dropDownValue == 'sending')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 16.0),
                                    child: Container(
                                      width: double.infinity,
                                      child: TextFormField(
                                        controller:
                                            _model.emailAddressTextController3,
                                        focusNode:
                                            _model.emailAddressFocusNode3,
                                        autofocus: true,
                                        autofillHints: [AutofillHints.email],
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: FFLocalizations.of(context)
                                              .getText(
                                            'r5w4k98v' /* Email */,
                                          ),
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .labelLarge
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              width: 2.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
                                          filled: true,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          contentPadding: EdgeInsets.all(24.0),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        validator: _model
                                            .emailAddressTextController3Validator
                                            .asValidator(context),
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
                                          _model.emailAddressTextController4,
                                      focusNode: _model.emailAddressFocusNode4,
                                      autofocus: true,
                                      autofillHints: [AutofillHints.email],
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        labelText:
                                            FFLocalizations.of(context).getText(
                                          'anjla1xw' /* Amount */,
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
                                      keyboardType: TextInputType.number,
                                      validator: _model
                                          .emailAddressTextController4Validator
                                          .asValidator(context),
                                    ),
                                  ),
                                ),
                                if (_model.dropDownValue == 'paying')
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () {
                                        print('Button pressed ...');
                                      },
                                      text: FFLocalizations.of(context).getText(
                                        'igvsravn' /* Pay */,
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
                                    ),
                                  ),
                                if (_model.dropDownValue == 'sending')
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 16.0),
                                      child:
                                          StreamBuilder<List<UserListRecord>>(
                                        stream: queryUserListRecord(
                                          queryBuilder: (userListRecord) =>
                                              userListRecord.where(
                                            'email',
                                            isEqualTo: containerAllowancesRow
                                                ?.ownerEmail,
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
                                              buttonUserListRecordList
                                                      .isNotEmpty
                                                  ? buttonUserListRecordList
                                                      .first
                                                  : null;
                                          return FFButtonWidget(
                                            onPressed: () async {
                                              await TransactionsTable().insert({
                                                'sender_email':
                                                    containerAllowancesRow
                                                        ?.ownerEmail,
                                                'recipient_email': _model
                                                    .emailAddressTextController3
                                                    .text,
                                                'created_at':
                                                    supaSerialize<DateTime>(
                                                        getCurrentTimestamp),
                                                'amount': double.tryParse(_model
                                                    .emailAddressTextController4
                                                    .text),
                                                'status': 'pending',
                                                'granted_email':
                                                    currentUserEmail,
                                              });
                                              triggerPushNotification(
                                                notificationTitle: 'Usage',
                                                notificationText:
                                                    '${currentUserEmail}wants to use ksh${_model.emailAddressTextController4.text} from your wallet.',
                                                notificationSound: 'default',
                                                userRefs: [
                                                  buttonUserListRecord!
                                                      .reference
                                                ],
                                                initialPageName: 'transactions',
                                                parameterData: {},
                                              );
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: Text('Request sent'),
                                                    content: Text(
                                                        'An approval request has been sent to the wallet owner.'),
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
                                            text: FFLocalizations.of(context)
                                                .getText(
                                              't7yhj95z' /* send */,
                                            ),
                                            options: FFButtonOptions(
                                              width: 230.0,
                                              height: 52.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFF9FDA00),
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
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
                            );
                          },
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
