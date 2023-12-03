import '../database.dart';

class ClienteTable extends SupabaseTable<ClienteRow> {
  @override
  String get tableName => 'cliente';

  @override
  ClienteRow createRow(Map<String, dynamic> data) => ClienteRow(data);
}

class ClienteRow extends SupabaseDataRow {
  ClienteRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ClienteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeCompleto => getField<String>('nome_completo');
  set nomeCompleto(String? value) => setField<String>('nome_completo', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get fone => getField<String>('fone');
  set fone(String? value) => setField<String>('fone', value);

  String? get cpf => getField<String>('cpf');
  set cpf(String? value) => setField<String>('cpf', value);

  String? get logradouro => getField<String>('logradouro');
  set logradouro(String? value) => setField<String>('logradouro', value);

  String? get numero => getField<String>('numero');
  set numero(String? value) => setField<String>('numero', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);
}
