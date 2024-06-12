import '../database.dart';

class ProfilesTable extends SupabaseTable<ProfilesRow> {
  @override
  String get tableName => 'profiles';

  @override
  ProfilesRow createRow(Map<String, dynamic> data) => ProfilesRow(data);
}

class ProfilesRow extends SupabaseDataRow {
  ProfilesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProfilesTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get fcmToken => getField<String>('fcm_token');
  set fcmToken(String? value) => setField<String>('fcm_token', value);

  String? get emails => getField<String>('emails');
  set emails(String? value) => setField<String>('emails', value);

  String get ids => getField<String>('ids')!;
  set ids(String value) => setField<String>('ids', value);
}
