import '../database.dart';

class PedidoTable extends SupabaseTable<PedidoRow> {
  @override
  String get tableName => 'pedido';

  @override
  PedidoRow createRow(Map<String, dynamic> data) => PedidoRow(data);
}

class PedidoRow extends SupabaseDataRow {
  PedidoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PedidoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get formPagto => getField<String>('formPagto');
  set formPagto(String? value) => setField<String>('formPagto', value);

  double? get valor => getField<double>('valor');
  set valor(double? value) => setField<double>('valor', value);

  String? get pedido => getField<String>('pedido');
  set pedido(String? value) => setField<String>('pedido', value);

  int? get qtde => getField<int>('qtde');
  set qtde(int? value) => setField<int>('qtde', value);

  String? get img => getField<String>('img');
  set img(String? value) => setField<String>('img', value);

  double? get numPedido => getField<double>('numPedido');
  set numPedido(double? value) => setField<double>('numPedido', value);

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);

  int? get idCliente => getField<int>('id_cliente');
  set idCliente(int? value) => setField<int>('id_cliente', value);

  String? get nomeCliente => getField<String>('nome_cliente');
  set nomeCliente(String? value) => setField<String>('nome_cliente', value);
}
