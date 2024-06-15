import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/supabase/supabase.dart';
import '/auth/firebase_auth/auth_util.dart';

bool? checkContain(
  List<int>? idList,
  List<int>? id,
) {
  // check contain id from idList
  if (idList == null || id == null) {
    return null;
  }
  for (final i in id) {
    if (idList.contains(i)) {
      return true;
    }
  }
  return false;
}

int? generateId() {
  // generate random 4 figure numbers, dont convert to string
  final random = math.Random();
  return random.nextInt(10000);
}
