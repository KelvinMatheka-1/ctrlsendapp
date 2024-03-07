import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://axapdjwghbbcwddyrgge.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImF4YXBkandnaGJiY3dkZHlyZ2dlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDk1NTU2NjUsImV4cCI6MjAyNTEzMTY2NX0.PqN0fog9Xz93OzUEsUMgL7mE6YZYzLJraBzb2qnmtzQ';

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
