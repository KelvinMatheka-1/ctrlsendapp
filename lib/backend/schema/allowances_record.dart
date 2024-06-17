import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AllowancesRecord extends FirestoreRecord {
  AllowancesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "owner_email" field.
  String? _ownerEmail;
  String get ownerEmail => _ownerEmail ?? '';
  bool hasOwnerEmail() => _ownerEmail != null;

  // "owner_wallet_id" field.
  String? _ownerWalletId;
  String get ownerWalletId => _ownerWalletId ?? '';
  bool hasOwnerWalletId() => _ownerWalletId != null;

  // "granted_email" field.
  String? _grantedEmail;
  String get grantedEmail => _grantedEmail ?? '';
  bool hasGrantedEmail() => _grantedEmail != null;

  // "amount_used" field.
  int? _amountUsed;
  int get amountUsed => _amountUsed ?? 0;
  bool hasAmountUsed() => _amountUsed != null;

  // "amount_allowed" field.
  int? _amountAllowed;
  int get amountAllowed => _amountAllowed ?? 0;
  bool hasAmountAllowed() => _amountAllowed != null;

  void _initializeFields() {
    _ownerEmail = snapshotData['owner_email'] as String?;
    _ownerWalletId = snapshotData['owner_wallet_id'] as String?;
    _grantedEmail = snapshotData['granted_email'] as String?;
    _amountUsed = castToType<int>(snapshotData['amount_used']);
    _amountAllowed = castToType<int>(snapshotData['amount_allowed']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('allowances');

  static Stream<AllowancesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AllowancesRecord.fromSnapshot(s));

  static Future<AllowancesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AllowancesRecord.fromSnapshot(s));

  static AllowancesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AllowancesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AllowancesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AllowancesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AllowancesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AllowancesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAllowancesRecordData({
  String? ownerEmail,
  String? ownerWalletId,
  String? grantedEmail,
  int? amountUsed,
  int? amountAllowed,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'owner_email': ownerEmail,
      'owner_wallet_id': ownerWalletId,
      'granted_email': grantedEmail,
      'amount_used': amountUsed,
      'amount_allowed': amountAllowed,
    }.withoutNulls,
  );

  return firestoreData;
}

class AllowancesRecordDocumentEquality implements Equality<AllowancesRecord> {
  const AllowancesRecordDocumentEquality();

  @override
  bool equals(AllowancesRecord? e1, AllowancesRecord? e2) {
    return e1?.ownerEmail == e2?.ownerEmail &&
        e1?.ownerWalletId == e2?.ownerWalletId &&
        e1?.grantedEmail == e2?.grantedEmail &&
        e1?.amountUsed == e2?.amountUsed &&
        e1?.amountAllowed == e2?.amountAllowed;
  }

  @override
  int hash(AllowancesRecord? e) => const ListEquality().hash([
        e?.ownerEmail,
        e?.ownerWalletId,
        e?.grantedEmail,
        e?.amountUsed,
        e?.amountAllowed
      ]);

  @override
  bool isValidKey(Object? o) => o is AllowancesRecord;
}
