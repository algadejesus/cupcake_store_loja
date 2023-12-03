import '../database.dart';

class ProdutoTable extends SupabaseTable<ProdutoRow> {
  @override
  String get tableName => 'produto';

  @override
  ProdutoRow createRow(Map<String, dynamic> data) => ProdutoRow(data);
}

class ProdutoRow extends SupabaseDataRow {
  ProdutoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ProdutoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nomeProduto => getField<String>('nome_produto');
  set nomeProduto(String? value) => setField<String>('nome_produto', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  double? get valorPromo => getField<double>('valor_promo');
  set valorPromo(double? value) => setField<double>('valor_promo', value);

  bool? get ePromo => getField<bool>('e_promo');
  set ePromo(bool? value) => setField<bool>('e_promo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  bool? get status => getField<bool>('status');
  set status(bool? value) => setField<bool>('status', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);
}
