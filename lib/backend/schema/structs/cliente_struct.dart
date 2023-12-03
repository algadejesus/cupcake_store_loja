// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClienteStruct extends FFFirebaseStruct {
  ClienteStruct({
    String? nomeCompleto,
    String? email,
    String? fone,
    String? cpf,
    String? cep,
    String? logradouro,
    String? numero,
    String? bairro,
    String? estado,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nomeCompleto = nomeCompleto,
        _email = email,
        _fone = fone,
        _cpf = cpf,
        _cep = cep,
        _logradouro = logradouro,
        _numero = numero,
        _bairro = bairro,
        _estado = estado,
        super(firestoreUtilData);

  // "nomeCompleto" field.
  String? _nomeCompleto;
  String get nomeCompleto => _nomeCompleto ?? '';
  set nomeCompleto(String? val) => _nomeCompleto = val;
  bool hasNomeCompleto() => _nomeCompleto != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;
  bool hasEmail() => _email != null;

  // "fone" field.
  String? _fone;
  String get fone => _fone ?? '';
  set fone(String? val) => _fone = val;
  bool hasFone() => _fone != null;

  // "cpf" field.
  String? _cpf;
  String get cpf => _cpf ?? '';
  set cpf(String? val) => _cpf = val;
  bool hasCpf() => _cpf != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;
  bool hasCep() => _cep != null;

  // "logradouro" field.
  String? _logradouro;
  String get logradouro => _logradouro ?? '';
  set logradouro(String? val) => _logradouro = val;
  bool hasLogradouro() => _logradouro != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  set numero(String? val) => _numero = val;
  bool hasNumero() => _numero != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  set bairro(String? val) => _bairro = val;
  bool hasBairro() => _bairro != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;
  bool hasEstado() => _estado != null;

  static ClienteStruct fromMap(Map<String, dynamic> data) => ClienteStruct(
        nomeCompleto: data['nomeCompleto'] as String?,
        email: data['email'] as String?,
        fone: data['fone'] as String?,
        cpf: data['cpf'] as String?,
        cep: data['cep'] as String?,
        logradouro: data['logradouro'] as String?,
        numero: data['numero'] as String?,
        bairro: data['bairro'] as String?,
        estado: data['estado'] as String?,
      );

  static ClienteStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? ClienteStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'nomeCompleto': _nomeCompleto,
        'email': _email,
        'fone': _fone,
        'cpf': _cpf,
        'cep': _cep,
        'logradouro': _logradouro,
        'numero': _numero,
        'bairro': _bairro,
        'estado': _estado,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nomeCompleto': serializeParam(
          _nomeCompleto,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'fone': serializeParam(
          _fone,
          ParamType.String,
        ),
        'cpf': serializeParam(
          _cpf,
          ParamType.String,
        ),
        'cep': serializeParam(
          _cep,
          ParamType.String,
        ),
        'logradouro': serializeParam(
          _logradouro,
          ParamType.String,
        ),
        'numero': serializeParam(
          _numero,
          ParamType.String,
        ),
        'bairro': serializeParam(
          _bairro,
          ParamType.String,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
      }.withoutNulls;

  static ClienteStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClienteStruct(
        nomeCompleto: deserializeParam(
          data['nomeCompleto'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        fone: deserializeParam(
          data['fone'],
          ParamType.String,
          false,
        ),
        cpf: deserializeParam(
          data['cpf'],
          ParamType.String,
          false,
        ),
        cep: deserializeParam(
          data['cep'],
          ParamType.String,
          false,
        ),
        logradouro: deserializeParam(
          data['logradouro'],
          ParamType.String,
          false,
        ),
        numero: deserializeParam(
          data['numero'],
          ParamType.String,
          false,
        ),
        bairro: deserializeParam(
          data['bairro'],
          ParamType.String,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ClienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClienteStruct &&
        nomeCompleto == other.nomeCompleto &&
        email == other.email &&
        fone == other.fone &&
        cpf == other.cpf &&
        cep == other.cep &&
        logradouro == other.logradouro &&
        numero == other.numero &&
        bairro == other.bairro &&
        estado == other.estado;
  }

  @override
  int get hashCode => const ListEquality().hash([
        nomeCompleto,
        email,
        fone,
        cpf,
        cep,
        logradouro,
        numero,
        bairro,
        estado
      ]);
}

ClienteStruct createClienteStruct({
  String? nomeCompleto,
  String? email,
  String? fone,
  String? cpf,
  String? cep,
  String? logradouro,
  String? numero,
  String? bairro,
  String? estado,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ClienteStruct(
      nomeCompleto: nomeCompleto,
      email: email,
      fone: fone,
      cpf: cpf,
      cep: cep,
      logradouro: logradouro,
      numero: numero,
      bairro: bairro,
      estado: estado,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ClienteStruct? updateClienteStruct(
  ClienteStruct? cliente, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cliente
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addClienteStructData(
  Map<String, dynamic> firestoreData,
  ClienteStruct? cliente,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cliente == null) {
    return;
  }
  if (cliente.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cliente.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final clienteData = getClienteFirestoreData(cliente, forFieldValue);
  final nestedData = clienteData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cliente.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getClienteFirestoreData(
  ClienteStruct? cliente, [
  bool forFieldValue = false,
]) {
  if (cliente == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cliente.toMap());

  // Add any Firestore field values
  cliente.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getClienteListFirestoreData(
  List<ClienteStruct>? clientes,
) =>
    clientes?.map((e) => getClienteFirestoreData(e, true)).toList() ?? [];
