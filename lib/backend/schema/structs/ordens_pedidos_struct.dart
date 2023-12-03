// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdensPedidosStruct extends FFFirebaseStruct {
  OrdensPedidosStruct({
    String? nomeCliente,
    String? pedido,
    double? valor,
    int? qtde,
    String? img,
    DateTime? data,
    double? numPedido,
    String? formPag,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nomeCliente = nomeCliente,
        _pedido = pedido,
        _valor = valor,
        _qtde = qtde,
        _img = img,
        _data = data,
        _numPedido = numPedido,
        _formPag = formPag,
        super(firestoreUtilData);

  // "nome_cliente" field.
  String? _nomeCliente;
  String get nomeCliente => _nomeCliente ?? '';
  set nomeCliente(String? val) => _nomeCliente = val;
  bool hasNomeCliente() => _nomeCliente != null;

  // "pedido" field.
  String? _pedido;
  String get pedido => _pedido ?? '';
  set pedido(String? val) => _pedido = val;
  bool hasPedido() => _pedido != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;
  void incrementValor(double amount) => _valor = valor + amount;
  bool hasValor() => _valor != null;

  // "qtde" field.
  int? _qtde;
  int get qtde => _qtde ?? 0;
  set qtde(int? val) => _qtde = val;
  void incrementQtde(int amount) => _qtde = qtde + amount;
  bool hasQtde() => _qtde != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  set img(String? val) => _img = val;
  bool hasImg() => _img != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  set data(DateTime? val) => _data = val;
  bool hasData() => _data != null;

  // "numPedido" field.
  double? _numPedido;
  double get numPedido => _numPedido ?? 0.0;
  set numPedido(double? val) => _numPedido = val;
  void incrementNumPedido(double amount) => _numPedido = numPedido + amount;
  bool hasNumPedido() => _numPedido != null;

  // "form_pag" field.
  String? _formPag;
  String get formPag => _formPag ?? '';
  set formPag(String? val) => _formPag = val;
  bool hasFormPag() => _formPag != null;

  static OrdensPedidosStruct fromMap(Map<String, dynamic> data) =>
      OrdensPedidosStruct(
        nomeCliente: data['nome_cliente'] as String?,
        pedido: data['pedido'] as String?,
        valor: castToType<double>(data['valor']),
        qtde: castToType<int>(data['qtde']),
        img: data['img'] as String?,
        data: data['data'] as DateTime?,
        numPedido: castToType<double>(data['numPedido']),
        formPag: data['form_pag'] as String?,
      );

  static OrdensPedidosStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? OrdensPedidosStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nome_cliente': _nomeCliente,
        'pedido': _pedido,
        'valor': _valor,
        'qtde': _qtde,
        'img': _img,
        'data': _data,
        'numPedido': _numPedido,
        'form_pag': _formPag,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome_cliente': serializeParam(
          _nomeCliente,
          ParamType.String,
        ),
        'pedido': serializeParam(
          _pedido,
          ParamType.String,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
        'qtde': serializeParam(
          _qtde,
          ParamType.int,
        ),
        'img': serializeParam(
          _img,
          ParamType.String,
        ),
        'data': serializeParam(
          _data,
          ParamType.DateTime,
        ),
        'numPedido': serializeParam(
          _numPedido,
          ParamType.double,
        ),
        'form_pag': serializeParam(
          _formPag,
          ParamType.String,
        ),
      }.withoutNulls;

  static OrdensPedidosStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrdensPedidosStruct(
        nomeCliente: deserializeParam(
          data['nome_cliente'],
          ParamType.String,
          false,
        ),
        pedido: deserializeParam(
          data['pedido'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
        qtde: deserializeParam(
          data['qtde'],
          ParamType.int,
          false,
        ),
        img: deserializeParam(
          data['img'],
          ParamType.String,
          false,
        ),
        data: deserializeParam(
          data['data'],
          ParamType.DateTime,
          false,
        ),
        numPedido: deserializeParam(
          data['numPedido'],
          ParamType.double,
          false,
        ),
        formPag: deserializeParam(
          data['form_pag'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OrdensPedidosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrdensPedidosStruct &&
        nomeCliente == other.nomeCliente &&
        pedido == other.pedido &&
        valor == other.valor &&
        qtde == other.qtde &&
        img == other.img &&
        data == other.data &&
        numPedido == other.numPedido &&
        formPag == other.formPag;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([nomeCliente, pedido, valor, qtde, img, data, numPedido, formPag]);
}

OrdensPedidosStruct createOrdensPedidosStruct({
  String? nomeCliente,
  String? pedido,
  double? valor,
  int? qtde,
  String? img,
  DateTime? data,
  double? numPedido,
  String? formPag,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrdensPedidosStruct(
      nomeCliente: nomeCliente,
      pedido: pedido,
      valor: valor,
      qtde: qtde,
      img: img,
      data: data,
      numPedido: numPedido,
      formPag: formPag,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrdensPedidosStruct? updateOrdensPedidosStruct(
  OrdensPedidosStruct? ordensPedidos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ordensPedidos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrdensPedidosStructData(
  Map<String, dynamic> firestoreData,
  OrdensPedidosStruct? ordensPedidos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ordensPedidos == null) {
    return;
  }
  if (ordensPedidos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ordensPedidos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ordensPedidosData =
      getOrdensPedidosFirestoreData(ordensPedidos, forFieldValue);
  final nestedData =
      ordensPedidosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ordensPedidos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrdensPedidosFirestoreData(
  OrdensPedidosStruct? ordensPedidos, [
  bool forFieldValue = false,
]) {
  if (ordensPedidos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ordensPedidos.toMap());

  // Add any Firestore field values
  ordensPedidos.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrdensPedidosListFirestoreData(
  List<OrdensPedidosStruct>? ordensPedidoss,
) =>
    ordensPedidoss
        ?.map((e) => getOrdensPedidosFirestoreData(e, true))
        .toList() ??
    [];
