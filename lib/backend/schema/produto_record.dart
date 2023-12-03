import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutoRecord extends FirestoreRecord {
  ProdutoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "categoria" field.
  String? _categoria;
  String get categoria => _categoria ?? '';
  bool hasCategoria() => _categoria != null;

  // "qtde" field.
  int? _qtde;
  int get qtde => _qtde ?? 0;
  bool hasQtde() => _qtde != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _preco = castToType<double>(snapshotData['preco']);
    _categoria = snapshotData['categoria'] as String?;
    _qtde = castToType<int>(snapshotData['qtde']);
    _foto = snapshotData['foto'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produto');

  static Stream<ProdutoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutoRecord.fromSnapshot(s));

  static Future<ProdutoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutoRecord.fromSnapshot(s));

  static ProdutoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProdutoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutoRecordData({
  String? nome,
  double? preco,
  String? categoria,
  int? qtde,
  String? foto,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'preco': preco,
      'categoria': categoria,
      'qtde': qtde,
      'foto': foto,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutoRecordDocumentEquality implements Equality<ProdutoRecord> {
  const ProdutoRecordDocumentEquality();

  @override
  bool equals(ProdutoRecord? e1, ProdutoRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.preco == e2?.preco &&
        e1?.categoria == e2?.categoria &&
        e1?.qtde == e2?.qtde &&
        e1?.foto == e2?.foto;
  }

  @override
  int hash(ProdutoRecord? e) => const ListEquality()
      .hash([e?.nome, e?.preco, e?.categoria, e?.qtde, e?.foto]);

  @override
  bool isValidKey(Object? o) => o is ProdutoRecord;
}
