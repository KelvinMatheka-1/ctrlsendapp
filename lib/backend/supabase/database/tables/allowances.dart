import '../database.dart';

class AllowancesTable extends SupabaseTable<AllowancesRow> {
  @override
  String get tableName => 'allowances';

  @override
  AllowancesRow createRow(Map<String, dynamic> data) => AllowancesRow(data);
}

class AllowancesRow extends SupabaseDataRow {
  AllowancesRow(super.data);

  @override
  SupabaseTable get table => AllowancesTable();

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  double get amountLimit => getField<double>('amount_limit')!;
  set amountLimit(double value) => setField<double>('amount_limit', value);

  String get ownerEmail => getField<String>('owner_email')!;
  set ownerEmail(String value) => setField<String>('owner_email', value);

  String get ownerWalletId => getField<String>('owner_wallet_id')!;
  set ownerWalletId(String value) => setField<String>('owner_wallet_id', value);

  String get grantedEmail => getField<String>('granted_email')!;
  set grantedEmail(String value) => setField<String>('granted_email', value);

  double? get amountUsed => getField<double>('amount_used');
  set amountUsed(double? value) => setField<double>('amount_used', value);

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);
}
