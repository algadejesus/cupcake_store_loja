import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PedidoRecord extends FirestoreRecord {
  PedidoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "idAtendente" field.
  String? _idAtendente;
  String get idAtendente => _idAtendente ?? '';
  bool hasIdAtendente() => _idAtendente != null;

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "formaPg" field.
  String? _formaPg;
  String get formaPg => _formaPg ?? '';
  bool hasFormaPg() => _formaPg != null;

  // "status" field.
  int? _status;
  int get status => _status ?? 0;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _tipo = snapshotData['tipo'] as String?;
    _idAtendente = snapshotData['idAtendente'] as String?;
    _data = snapshotData['data'] as DateTime?;
    _total = castToType<double>(snapshotData['total']);
    _formaPg = snapshotData['formaPg'] as String?;
    _status = castToType<int>(snapshotData['status']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('pedido');

  static Stream<PedidoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PedidoRecord.fromSnapshot(s));

  static Future<PedidoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PedidoRecord.fromSnapshot(s));

  static PedidoRecord fromSnapshot(DocumentSnapshot snapshot) => PedidoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PedidoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PedidoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PedidoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PedidoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPedidoRecordData({
  String? tipo,
  String? idAtendente,
  DateTime? data,
  double? total,
  String? formaPg,
  int? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tipo': tipo,
      'idAtendente': idAtendente,
      'data': data,
      'total': total,
      'formaPg': formaPg,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class PedidoRecordDocumentEquality implements Equality<PedidoRecord> {
  const PedidoRecordDocumentEquality();

  @override
  bool equals(PedidoRecord? e1, PedidoRecord? e2) {
    return e1?.tipo == e2?.tipo &&
        e1?.idAtendente == e2?.idAtendente &&
        e1?.data == e2?.data &&
        e1?.total == e2?.total &&
        e1?.formaPg == e2?.formaPg &&
        e1?.status == e2?.status;
  }

  @override
  int hash(PedidoRecord? e) => const ListEquality().hash(
      [e?.tipo, e?.idAtendente, e?.data, e?.total, e?.formaPg, e?.status]);

  @override
  bool isValidKey(Object? o) => o is PedidoRecord;
}
