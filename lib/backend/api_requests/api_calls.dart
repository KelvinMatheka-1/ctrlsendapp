import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class WithdrawRequestCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'withdraw request',
      apiUrl:
          'https://niytofxymvautkwkjsqe.supabase.co/rest/v1/withdraw_request?select=id',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5peXRvZnh5bXZhdXRrd2tqc3FlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQwMTg0ODksImV4cCI6MjAwOTU5NDQ4OX0.11HvAl6lp-_mnSwE2VN0g1LMNzPs3v7uYqG4tFy_QNQ',
        'Authorization':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5peXRvZnh5bXZhdXRrd2tqc3FlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQwMTg0ODksImV4cCI6MjAwOTU5NDQ4OX0.11HvAl6lp-_mnSwE2VN0g1LMNzPs3v7uYqG4tFy_QNQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ProcessRequestCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'process request',
      apiUrl:
          'https://niytofxymvautkwkjsqe.supabase.co/rest/v1/withdraw_request?select=id',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5peXRvZnh5bXZhdXRrd2tqc3FlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQwMTg0ODksImV4cCI6MjAwOTU5NDQ4OX0.11HvAl6lp-_mnSwE2VN0g1LMNzPs3v7uYqG4tFy_QNQ',
        'Authorization':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5peXRvZnh5bXZhdXRrd2tqc3FlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQwMTg0ODksImV4cCI6MjAwOTU5NDQ4OX0.11HvAl6lp-_mnSwE2VN0g1LMNzPs3v7uYqG4tFy_QNQ',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateRequestCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Update request',
      apiUrl:
          'https://niytofxymvautkwkjsqe.supabase.co/rest/v1/withdraw_request?select=id',
      callType: ApiCallType.PATCH,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5peXRvZnh5bXZhdXRrd2tqc3FlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQwMTg0ODksImV4cCI6MjAwOTU5NDQ4OX0.11HvAl6lp-_mnSwE2VN0g1LMNzPs3v7uYqG4tFy_QNQ',
        'Authorization':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5peXRvZnh5bXZhdXRrd2tqc3FlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQwMTg0ODksImV4cCI6MjAwOTU5NDQ4OX0.11HvAl6lp-_mnSwE2VN0g1LMNzPs3v7uYqG4tFy_QNQ',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UsersCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'users',
      apiUrl:
          'https://niytofxymvautkwkjsqe.supabase.co/rest/v1/users?select=id',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5peXRvZnh5bXZhdXRrd2tqc3FlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQwMTg0ODksImV4cCI6MjAwOTU5NDQ4OX0.11HvAl6lp-_mnSwE2VN0g1LMNzPs3v7uYqG4tFy_QNQ',
        'Authorization':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5peXRvZnh5bXZhdXRrd2tqc3FlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQwMTg0ODksImV4cCI6MjAwOTU5NDQ4OX0.11HvAl6lp-_mnSwE2VN0g1LMNzPs3v7uYqG4tFy_QNQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'transfer',
      apiUrl:
          'https://niytofxymvautkwkjsqe.supabase.co/rest/v1/transactions?select=id',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5peXRvZnh5bXZhdXRrd2tqc3FlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQwMTg0ODksImV4cCI6MjAwOTU5NDQ4OX0.11HvAl6lp-_mnSwE2VN0g1LMNzPs3v7uYqG4tFy_QNQ',
        'Authorization':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5peXRvZnh5bXZhdXRrd2tqc3FlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQwMTg0ODksImV4cCI6MjAwOTU5NDQ4OX0.11HvAl6lp-_mnSwE2VN0g1LMNzPs3v7uYqG4tFy_QNQ',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransferCopyCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'transfer Copy',
      apiUrl:
          'https://niytofxymvautkwkjsqe.supabase.co/rest/v1/transactions?select=id',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5peXRvZnh5bXZhdXRrd2tqc3FlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQwMTg0ODksImV4cCI6MjAwOTU5NDQ4OX0.11HvAl6lp-_mnSwE2VN0g1LMNzPs3v7uYqG4tFy_QNQ',
        'Authorization':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5peXRvZnh5bXZhdXRrd2tqc3FlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQwMTg0ODksImV4cCI6MjAwOTU5NDQ4OX0.11HvAl6lp-_mnSwE2VN0g1LMNzPs3v7uYqG4tFy_QNQ',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class TransactionwithdrawalCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'transactionwithdrawal',
      apiUrl:
          'https://niytofxymvautkwkjsqe.supabase.co/rest/v1/transaction_withdrawal?select=transaction_id',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5peXRvZnh5bXZhdXRrd2tqc3FlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQwMTg0ODksImV4cCI6MjAwOTU5NDQ4OX0.11HvAl6lp-_mnSwE2VN0g1LMNzPs3v7uYqG4tFy_QNQ',
        'Authorization':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5peXRvZnh5bXZhdXRrd2tqc3FlIiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTQwMTg0ODksImV4cCI6MjAwOTU5NDQ4OX0.11HvAl6lp-_mnSwE2VN0g1LMNzPs3v7uYqG4tFy_QNQ',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
