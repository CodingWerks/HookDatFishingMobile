import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CharterBookingsRecord extends FirestoreRecord {
  CharterBookingsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "anglerRef" field.
  DocumentReference? _anglerRef;
  DocumentReference? get anglerRef => _anglerRef;
  bool hasAnglerRef() => _anglerRef != null;

  // "numberCharters" field.
  int? _numberCharters;
  int get numberCharters => _numberCharters ?? 0;
  bool hasNumberCharters() => _numberCharters != null;

  void _initializeFields() {
    _anglerRef = snapshotData['anglerRef'] as DocumentReference?;
    _numberCharters = castToType<int>(snapshotData['numberCharters']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('charterBookings');

  static Stream<CharterBookingsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CharterBookingsRecord.fromSnapshot(s));

  static Future<CharterBookingsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CharterBookingsRecord.fromSnapshot(s));

  static CharterBookingsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CharterBookingsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CharterBookingsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CharterBookingsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CharterBookingsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CharterBookingsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCharterBookingsRecordData({
  DocumentReference? anglerRef,
  int? numberCharters,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'anglerRef': anglerRef,
      'numberCharters': numberCharters,
    }.withoutNulls,
  );

  return firestoreData;
}

class CharterBookingsRecordDocumentEquality
    implements Equality<CharterBookingsRecord> {
  const CharterBookingsRecordDocumentEquality();

  @override
  bool equals(CharterBookingsRecord? e1, CharterBookingsRecord? e2) {
    return e1?.anglerRef == e2?.anglerRef &&
        e1?.numberCharters == e2?.numberCharters;
  }

  @override
  int hash(CharterBookingsRecord? e) =>
      const ListEquality().hash([e?.anglerRef, e?.numberCharters]);

  @override
  bool isValidKey(Object? o) => o is CharterBookingsRecord;
}
