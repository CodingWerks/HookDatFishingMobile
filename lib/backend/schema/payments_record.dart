import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PaymentsRecord extends FirestoreRecord {
  PaymentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "anglerRef" field.
  DocumentReference? _anglerRef;
  DocumentReference? get anglerRef => _anglerRef;
  bool hasAnglerRef() => _anglerRef != null;

  // "charterTaken" field.
  DocumentReference? _charterTaken;
  DocumentReference? get charterTaken => _charterTaken;
  bool hasCharterTaken() => _charterTaken != null;

  // "captainRef" field.
  DocumentReference? _captainRef;
  DocumentReference? get captainRef => _captainRef;
  bool hasCaptainRef() => _captainRef != null;

  // "charterAmount" field.
  double? _charterAmount;
  double get charterAmount => _charterAmount ?? 0.0;
  bool hasCharterAmount() => _charterAmount != null;

  // "fees" field.
  double? _fees;
  double get fees => _fees ?? 0.0;
  bool hasFees() => _fees != null;

  // "taxes" field.
  double? _taxes;
  double get taxes => _taxes ?? 0.0;
  bool hasTaxes() => _taxes != null;

  void _initializeFields() {
    _anglerRef = snapshotData['anglerRef'] as DocumentReference?;
    _charterTaken = snapshotData['charterTaken'] as DocumentReference?;
    _captainRef = snapshotData['captainRef'] as DocumentReference?;
    _charterAmount = castToType<double>(snapshotData['charterAmount']);
    _fees = castToType<double>(snapshotData['fees']);
    _taxes = castToType<double>(snapshotData['taxes']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('payments');

  static Stream<PaymentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PaymentsRecord.fromSnapshot(s));

  static Future<PaymentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PaymentsRecord.fromSnapshot(s));

  static PaymentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PaymentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PaymentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PaymentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PaymentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PaymentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPaymentsRecordData({
  DocumentReference? anglerRef,
  DocumentReference? charterTaken,
  DocumentReference? captainRef,
  double? charterAmount,
  double? fees,
  double? taxes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'anglerRef': anglerRef,
      'charterTaken': charterTaken,
      'captainRef': captainRef,
      'charterAmount': charterAmount,
      'fees': fees,
      'taxes': taxes,
    }.withoutNulls,
  );

  return firestoreData;
}

class PaymentsRecordDocumentEquality implements Equality<PaymentsRecord> {
  const PaymentsRecordDocumentEquality();

  @override
  bool equals(PaymentsRecord? e1, PaymentsRecord? e2) {
    return e1?.anglerRef == e2?.anglerRef &&
        e1?.charterTaken == e2?.charterTaken &&
        e1?.captainRef == e2?.captainRef &&
        e1?.charterAmount == e2?.charterAmount &&
        e1?.fees == e2?.fees &&
        e1?.taxes == e2?.taxes;
  }

  @override
  int hash(PaymentsRecord? e) => const ListEquality().hash([
        e?.anglerRef,
        e?.charterTaken,
        e?.captainRef,
        e?.charterAmount,
        e?.fees,
        e?.taxes
      ]);

  @override
  bool isValidKey(Object? o) => o is PaymentsRecord;
}
