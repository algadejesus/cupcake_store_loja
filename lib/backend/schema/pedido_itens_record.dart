import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidoItensRecord extends FirestoreRecord {
  PedidoItensRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "idPedod" field.
  String? _idPedod;
  String get idPedod => _idPedod ?? '';
  bool hasIdPedod() => _idPedod != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "qtde" field.
  int? _qtde;
  int get qtde => _qtde ?? 0;
  bool hasQtde() => _qtde != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  void _initializeFields() {
    _idPedod = snapshotData['idPedod'] as String?;
    _nome = snapshotData['nome'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _qtde = castToType<int>(snapshotData['qtde']);
    _subtotal = castToType<double>(snapshotData['subtotal']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedidoItens');

  static Stream<PedidoItensRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PedidoItensRecord.fromSnapshot(s));

  static Future<PedidoItensRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PedidoItensRecord.fromSnapshot(s));

  static PedidoItensRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PedidoItensRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PedidoItensRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PedidoItensRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PedidoItensRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PedidoItensRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPedidoItensRecordData({
  String? idPedod,
  String? nome,
  double? preco,
  int? qtde,
  double? subtotal,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'idPedod': idPedod,
      'nome': nome,
      'preco': preco,
      'qtde': qtde,
      'subtotal': subtotal,
    }.withoutNulls,
  );

  return firestoreData;
}

class PedidoItensRecordDocumentEquality implements Equality<PedidoItensRecord> {
  const PedidoItensRecordDocumentEquality();

  @override
  bool equals(PedidoItensRecord? e1, PedidoItensRecord? e2) {
    return e1?.idPedod == e2?.idPedod &&
        e1?.nome == e2?.nome &&
        e1?.preco == e2?.preco &&
        e1?.qtde == e2?.qtde &&
        e1?.subtotal == e2?.subtotal;
  }

  @override
  int hash(PedidoItensRecord? e) => const ListEquality()
      .hash([e?.idPedod, e?.nome, e?.preco, e?.qtde, e?.subtotal]);

  @override
  bool isValidKey(Object? o) => o is PedidoItensRecord;
}
