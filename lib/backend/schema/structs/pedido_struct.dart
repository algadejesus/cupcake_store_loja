// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidoStruct extends FFFirebaseStruct {
  PedidoStruct({
    String? nomePedido,
    double? preco,
    int? qtde,
    String? img,
    String? id,
    String? descricao,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nomePedido = nomePedido,
        _preco = preco,
        _qtde = qtde,
        _img = img,
        _id = id,
        _descricao = descricao,
        super(firestoreUtilData);

  // "nome_pedido" field.
  String? _nomePedido;
  String get nomePedido => _nomePedido ?? '';
  set nomePedido(String? val) => _nomePedido = val;
  bool hasNomePedido() => _nomePedido != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  set preco(double? val) => _preco = val;
  void incrementPreco(double amount) => _preco = preco + amount;
  bool hasPreco() => _preco != null;

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

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  set descricao(String? val) => _descricao = val;
  bool hasDescricao() => _descricao != null;

  static PedidoStruct fromMap(Map<String, dynamic> data) => PedidoStruct(
        nomePedido: data['nome_pedido'] as String?,
        preco: castToType<double>(data['preco']),
        qtde: castToType<int>(data['qtde']),
        img: data['img'] as String?,
        id: data['id'] as String?,
        descricao: data['descricao'] as String?,
      );

  static PedidoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PedidoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nome_pedido': _nomePedido,
        'preco': _preco,
        'qtde': _qtde,
        'img': _img,
        'id': _id,
        'descricao': _descricao,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nome_pedido': serializeParam(
          _nomePedido,
          ParamType.String,
        ),
        'preco': serializeParam(
          _preco,
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
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'descricao': serializeParam(
          _descricao,
          ParamType.String,
        ),
      }.withoutNulls;

  static PedidoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PedidoStruct(
        nomePedido: deserializeParam(
          data['nome_pedido'],
          ParamType.String,
          false,
        ),
        preco: deserializeParam(
          data['preco'],
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
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        descricao: deserializeParam(
          data['descricao'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PedidoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PedidoStruct &&
        nomePedido == other.nomePedido &&
        preco == other.preco &&
        qtde == other.qtde &&
        img == other.img &&
        id == other.id &&
        descricao == other.descricao;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nomePedido, preco, qtde, img, id, descricao]);
}

PedidoStruct createPedidoStruct({
  String? nomePedido,
  double? preco,
  int? qtde,
  String? img,
  String? id,
  String? descricao,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PedidoStruct(
      nomePedido: nomePedido,
      preco: preco,
      qtde: qtde,
      img: img,
      id: id,
      descricao: descricao,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PedidoStruct? updatePedidoStruct(
  PedidoStruct? pedido, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pedido
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPedidoStructData(
  Map<String, dynamic> firestoreData,
  PedidoStruct? pedido,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pedido == null) {
    return;
  }
  if (pedido.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pedido.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pedidoData = getPedidoFirestoreData(pedido, forFieldValue);
  final nestedData = pedidoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pedido.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPedidoFirestoreData(
  PedidoStruct? pedido, [
  bool forFieldValue = false,
]) {
  if (pedido == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pedido.toMap());

  // Add any Firestore field values
  pedido.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPedidoListFirestoreData(
  List<PedidoStruct>? pedidos,
) =>
    pedidos?.map((e) => getPedidoFirestoreData(e, true)).toList() ?? [];
