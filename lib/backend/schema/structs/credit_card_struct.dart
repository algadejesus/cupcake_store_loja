// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CreditCardStruct extends FFFirebaseStruct {
  CreditCardStruct({
    String? titular,
    String? numberCard,
    String? validity,
    int? cvv,
    String? endCard,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _titular = titular,
        _numberCard = numberCard,
        _validity = validity,
        _cvv = cvv,
        _endCard = endCard,
        super(firestoreUtilData);

  // "titular" field.
  String? _titular;
  String get titular => _titular ?? '';
  set titular(String? val) => _titular = val;
  bool hasTitular() => _titular != null;

  // "numberCard" field.
  String? _numberCard;
  String get numberCard => _numberCard ?? '';
  set numberCard(String? val) => _numberCard = val;
  bool hasNumberCard() => _numberCard != null;

  // "validity" field.
  String? _validity;
  String get validity => _validity ?? '';
  set validity(String? val) => _validity = val;
  bool hasValidity() => _validity != null;

  // "cvv" field.
  int? _cvv;
  int get cvv => _cvv ?? 0;
  set cvv(int? val) => _cvv = val;
  void incrementCvv(int amount) => _cvv = cvv + amount;
  bool hasCvv() => _cvv != null;

  // "endCard" field.
  String? _endCard;
  String get endCard => _endCard ?? '';
  set endCard(String? val) => _endCard = val;
  bool hasEndCard() => _endCard != null;

  static CreditCardStruct fromMap(Map<String, dynamic> data) =>
      CreditCardStruct(
        titular: data['titular'] as String?,
        numberCard: data['numberCard'] as String?,
        validity: data['validity'] as String?,
        cvv: castToType<int>(data['cvv']),
        endCard: data['endCard'] as String?,
      );

  static CreditCardStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? CreditCardStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'titular': _titular,
        'numberCard': _numberCard,
        'validity': _validity,
        'cvv': _cvv,
        'endCard': _endCard,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'titular': serializeParam(
          _titular,
          ParamType.String,
        ),
        'numberCard': serializeParam(
          _numberCard,
          ParamType.String,
        ),
        'validity': serializeParam(
          _validity,
          ParamType.String,
        ),
        'cvv': serializeParam(
          _cvv,
          ParamType.int,
        ),
        'endCard': serializeParam(
          _endCard,
          ParamType.String,
        ),
      }.withoutNulls;

  static CreditCardStruct fromSerializableMap(Map<String, dynamic> data) =>
      CreditCardStruct(
        titular: deserializeParam(
          data['titular'],
          ParamType.String,
          false,
        ),
        numberCard: deserializeParam(
          data['numberCard'],
          ParamType.String,
          false,
        ),
        validity: deserializeParam(
          data['validity'],
          ParamType.String,
          false,
        ),
        cvv: deserializeParam(
          data['cvv'],
          ParamType.int,
          false,
        ),
        endCard: deserializeParam(
          data['endCard'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CreditCardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CreditCardStruct &&
        titular == other.titular &&
        numberCard == other.numberCard &&
        validity == other.validity &&
        cvv == other.cvv &&
        endCard == other.endCard;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([titular, numberCard, validity, cvv, endCard]);
}

CreditCardStruct createCreditCardStruct({
  String? titular,
  String? numberCard,
  String? validity,
  int? cvv,
  String? endCard,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CreditCardStruct(
      titular: titular,
      numberCard: numberCard,
      validity: validity,
      cvv: cvv,
      endCard: endCard,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CreditCardStruct? updateCreditCardStruct(
  CreditCardStruct? creditCard, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    creditCard
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCreditCardStructData(
  Map<String, dynamic> firestoreData,
  CreditCardStruct? creditCard,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (creditCard == null) {
    return;
  }
  if (creditCard.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && creditCard.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final creditCardData = getCreditCardFirestoreData(creditCard, forFieldValue);
  final nestedData = creditCardData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = creditCard.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCreditCardFirestoreData(
  CreditCardStruct? creditCard, [
  bool forFieldValue = false,
]) {
  if (creditCard == null) {
    return {};
  }
  final firestoreData = mapToFirestore(creditCard.toMap());

  // Add any Firestore field values
  creditCard.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCreditCardListFirestoreData(
  List<CreditCardStruct>? creditCards,
) =>
    creditCards?.map((e) => getCreditCardFirestoreData(e, true)).toList() ?? [];
