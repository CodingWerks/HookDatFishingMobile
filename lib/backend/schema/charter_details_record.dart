import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CharterDetailsRecord extends FirestoreRecord {
  CharterDetailsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "charterName" field.
  String? _charterName;
  String get charterName => _charterName ?? '';
  bool hasCharterName() => _charterName != null;

  // "charterDescription" field.
  String? _charterDescription;
  String get charterDescription => _charterDescription ?? '';
  bool hasCharterDescription() => _charterDescription != null;

  // "charterImage" field.
  String? _charterImage;
  String get charterImage => _charterImage ?? '';
  bool hasCharterImage() => _charterImage != null;

  // "charterLocation" field.
  LatLng? _charterLocation;
  LatLng? get charterLocation => _charterLocation;
  bool hasCharterLocation() => _charterLocation != null;

  // "charterAddress" field.
  String? _charterAddress;
  String get charterAddress => _charterAddress ?? '';
  bool hasCharterAddress() => _charterAddress != null;

  // "userRef" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  // "ratingSummary" field.
  double? _ratingSummary;
  double get ratingSummary => _ratingSummary ?? 0.0;
  bool hasRatingSummary() => _ratingSummary != null;

  // "taxRate" field.
  double? _taxRate;
  double get taxRate => _taxRate ?? 0.0;
  bool hasTaxRate() => _taxRate != null;

  void _initializeFields() {
    _charterName = snapshotData['charterName'] as String?;
    _charterDescription = snapshotData['charterDescription'] as String?;
    _charterImage = snapshotData['charterImage'] as String?;
    _charterLocation = snapshotData['charterLocation'] as LatLng?;
    _charterAddress = snapshotData['charterAddress'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _ratingSummary = castToType<double>(snapshotData['ratingSummary']);
    _taxRate = castToType<double>(snapshotData['taxRate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('charterDetails');

  static Stream<CharterDetailsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CharterDetailsRecord.fromSnapshot(s));

  static Future<CharterDetailsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CharterDetailsRecord.fromSnapshot(s));

  static CharterDetailsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CharterDetailsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CharterDetailsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CharterDetailsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CharterDetailsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CharterDetailsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCharterDetailsRecordData({
  String? charterName,
  String? charterDescription,
  String? charterImage,
  LatLng? charterLocation,
  String? charterAddress,
  DocumentReference? userRef,
  double? ratingSummary,
  double? taxRate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'charterName': charterName,
      'charterDescription': charterDescription,
      'charterImage': charterImage,
      'charterLocation': charterLocation,
      'charterAddress': charterAddress,
      'userRef': userRef,
      'ratingSummary': ratingSummary,
      'taxRate': taxRate,
    }.withoutNulls,
  );

  return firestoreData;
}

class CharterDetailsRecordDocumentEquality
    implements Equality<CharterDetailsRecord> {
  const CharterDetailsRecordDocumentEquality();

  @override
  bool equals(CharterDetailsRecord? e1, CharterDetailsRecord? e2) {
    return e1?.charterName == e2?.charterName &&
        e1?.charterDescription == e2?.charterDescription &&
        e1?.charterImage == e2?.charterImage &&
        e1?.charterLocation == e2?.charterLocation &&
        e1?.charterAddress == e2?.charterAddress &&
        e1?.userRef == e2?.userRef &&
        e1?.ratingSummary == e2?.ratingSummary &&
        e1?.taxRate == e2?.taxRate;
  }

  @override
  int hash(CharterDetailsRecord? e) => const ListEquality().hash([
        e?.charterName,
        e?.charterDescription,
        e?.charterImage,
        e?.charterLocation,
        e?.charterAddress,
        e?.userRef,
        e?.ratingSummary,
        e?.taxRate
      ]);

  @override
  bool isValidKey(Object? o) => o is CharterDetailsRecord;
}
