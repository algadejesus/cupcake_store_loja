import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://cbonwrvnhbbqrnlxvahx.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNib253cnZuaGJicXJubHh2YWh4Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDA2MTYzNjYsImV4cCI6MjAxNjE5MjM2Nn0.p-2tkwdRbhyoCFmKbOsaz1He3xCKKFqY2UTvwBbZBqE';

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
