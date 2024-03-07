import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://idqlxgwuwjwygnazayin.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImlkcWx4Z3d1d2p3eWduYXpheWluIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDk1NzgxMDEsImV4cCI6MjAyNTE1NDEwMX0.X-tdtGHUefPc7_7ryE9an8PkGfDzi5QAmdjqDE8bPj4';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
