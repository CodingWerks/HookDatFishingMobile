import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChartersTakenRecord extends FirestoreRecord {
  ChartersTakenRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "charterDetails" field.
  DocumentReference? _charterDetails;
  DocumentReference? get charterDetails => _charterDetails;
  bool hasCharterDetails() => _charterDetails != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "charterStartDate" field.
  DateTime? _charterStartDate;
  DateTime? get charterStartDate => _charterStartDate;
  bool hasCharterStartDate() => _charterStartDate != null;

  // "charterEndDate" field.
  DateTime? _charterEndDate;
  DateTime? get charterEndDate => _charterEndDate;
  bool hasCharterEndDate() => _charterEndDate != null;

  // "charterCost" field.
  double? _charterCost;
  double get charterCost => _charterCost ?? 0.0;
  bool hasCharterCost() => _charterCost != null;

  // "numAnglers" field.
  int? _numAnglers;
  int get numAnglers => _numAnglers ?? 0;
  bool hasNumAnglers() => _numAnglers != null;

  // "paymentMethod" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "charterCreated" field.
  DateTime? _charterCreated;
  DateTime? get charterCreated => _charterCreated;
  bool hasCharterCreated() => _charterCreated != null;

  // "cancelCharter" field.
  int? _cancelCharter;
  int get cancelCharter => _cancelCharter ?? 0;
  bool hasCancelCharter() => _cancelCharter != null;

  // "cancelReason" field.
  String? _cancelReason;
  String get cancelReason => _cancelReason ?? '';
  bool hasCancelReason() => _cancelReason != null;

  // "charterUpcoming" field.
  bool? _charterUpcoming;
  bool get charterUpcoming => _charterUpcoming ?? false;
  bool hasCharterUpcoming() => _charterUpcoming != null;

  // "charterComplete" field.
  bool? _charterComplete;
  bool get charterComplete => _charterComplete ?? false;
  bool hasCharterComplete() => _charterComplete != null;

  // "charterRated" field.
  bool? _charterRated;
  bool get charterRated => _charterRated ?? false;
  bool hasCharterRated() => _charterRated != null;

  // "charterCaptain" field.
  DocumentReference? _charterCaptain;
  DocumentReference? get charterCaptain => _charterCaptain;
  bool hasCharterCaptain() => _charterCaptain != null;

  void _initializeFields() {
    _charterDetails = snapshotData['charterDetails'] as DocumentReference?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _charterStartDate = snapshotData['charterStartDate'] as DateTime?;
    _charterEndDate = snapshotData['charterEndDate'] as DateTime?;
    _charterCost = castToType<double>(snapshotData['charterCost']);
    _numAnglers = castToType<int>(snapshotData['numAnglers']);
    _paymentMethod = snapshotData['paymentMethod'] as String?;
    _charterCreated = snapshotData['charterCreated'] as DateTime?;
    _cancelCharter = castToType<int>(snapshotData['cancelCharter']);
    _cancelReason = snapshotData['cancelReason'] as String?;
    _charterUpcoming = snapshotData['charterUpcoming'] as bool?;
    _charterComplete = snapshotData['charterComplete'] as bool?;
    _charterRated = snapshotData['charterRated'] as bool?;
    _charterCaptain = snapshotData['charterCaptain'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chartersTaken');

  static Stream<ChartersTakenRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChartersTakenRecord.fromSnapshot(s));

  static Future<ChartersTakenRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChartersTakenRecord.fromSnapshot(s));

  static ChartersTakenRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChartersTakenRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChartersTakenRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChartersTakenRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChartersTakenRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChartersTakenRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChartersTakenRecordData({
  DocumentReference? charterDetails,
  DocumentReference? userRef,
  DateTime? charterStartDate,
  DateTime? charterEndDate,
  double? charterCost,
  int? numAnglers,
  String? paymentMethod,
  DateTime? charterCreated,
  int? cancelCharter,
  String? cancelReason,
  bool? charterUpcoming,
  bool? charterComplete,
  bool? charterRated,
  DocumentReference? charterCaptain,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'charterDetails': charterDetails,
      'userRef': userRef,
      'charterStartDate': charterStartDate,
      'charterEndDate': charterEndDate,
      'charterCost': charterCost,
      'numAnglers': numAnglers,
      'paymentMethod': paymentMethod,
      'charterCreated': charterCreated,
      'cancelCharter': cancelCharter,
      'cancelReason': cancelReason,
      'charterUpcoming': charterUpcoming,
      'charterComplete': charterComplete,
      'charterRated': charterRated,
      'charterCaptain': charterCaptain,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChartersTakenRecordDocumentEquality
    implements Equality<ChartersTakenRecord> {
  const ChartersTakenRecordDocumentEquality();

  @override
  bool equals(ChartersTakenRecord? e1, ChartersTakenRecord? e2) {
    return e1?.charterDetails == e2?.charterDetails &&
        e1?.userRef == e2?.userRef &&
        e1?.charterStartDate == e2?.charterStartDate &&
        e1?.charterEndDate == e2?.charterEndDate &&
        e1?.charterCost == e2?.charterCost &&
        e1?.numAnglers == e2?.numAnglers &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.charterCreated == e2?.charterCreated &&
        e1?.cancelCharter == e2?.cancelCharter &&
        e1?.cancelReason == e2?.cancelReason &&
        e1?.charterUpcoming == e2?.charterUpcoming &&
        e1?.charterComplete == e2?.charterComplete &&
        e1?.charterRated == e2?.charterRated &&
        e1?.charterCaptain == e2?.charterCaptain;
  }

  @override
  int hash(ChartersTakenRecord? e) => const ListEquality().hash([
        e?.charterDetails,
        e?.userRef,
        e?.charterStartDate,
        e?.charterEndDate,
        e?.charterCost,
        e?.numAnglers,
        e?.paymentMethod,
        e?.charterCreated,
        e?.cancelCharter,
        e?.cancelReason,
        e?.charterUpcoming,
        e?.charterComplete,
        e?.charterRated,
        e?.charterCaptain
      ]);

  @override
  bool isValidKey(Object? o) => o is ChartersTakenRecord;
}
