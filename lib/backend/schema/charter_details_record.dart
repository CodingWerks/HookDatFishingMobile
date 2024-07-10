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

  // "startingPrice" field.
  double? _startingPrice;
  double get startingPrice => _startingPrice ?? 0.0;
  bool hasStartingPrice() => _startingPrice != null;

  // "charterTimes" field.
  String? _charterTimes;
  String get charterTimes => _charterTimes ?? '';
  bool hasCharterTimes() => _charterTimes != null;

  // "bookingStart" field.
  DateTime? _bookingStart;
  DateTime? get bookingStart => _bookingStart;
  bool hasBookingStart() => _bookingStart != null;

  // "bookingEnd" field.
  DateTime? _bookingEnd;
  DateTime? get bookingEnd => _bookingEnd;
  bool hasBookingEnd() => _bookingEnd != null;

  // "charterID" field.
  int? _charterID;
  int get charterID => _charterID ?? 0;
  bool hasCharterID() => _charterID != null;

  void _initializeFields() {
    _charterName = snapshotData['charterName'] as String?;
    _charterDescription = snapshotData['charterDescription'] as String?;
    _charterImage = snapshotData['charterImage'] as String?;
    _charterLocation = snapshotData['charterLocation'] as LatLng?;
    _charterAddress = snapshotData['charterAddress'] as String?;
    _userRef = snapshotData['userRef'] as DocumentReference?;
    _ratingSummary = castToType<double>(snapshotData['ratingSummary']);
    _taxRate = castToType<double>(snapshotData['taxRate']);
    _startingPrice = castToType<double>(snapshotData['startingPrice']);
    _charterTimes = snapshotData['charterTimes'] as String?;
    _bookingStart = snapshotData['bookingStart'] as DateTime?;
    _bookingEnd = snapshotData['bookingEnd'] as DateTime?;
    _charterID = castToType<int>(snapshotData['charterID']);
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
  double? startingPrice,
  String? charterTimes,
  DateTime? bookingStart,
  DateTime? bookingEnd,
  int? charterID,
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
      'startingPrice': startingPrice,
      'charterTimes': charterTimes,
      'bookingStart': bookingStart,
      'bookingEnd': bookingEnd,
      'charterID': charterID,
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
        e1?.taxRate == e2?.taxRate &&
        e1?.startingPrice == e2?.startingPrice &&
        e1?.charterTimes == e2?.charterTimes &&
        e1?.bookingStart == e2?.bookingStart &&
        e1?.bookingEnd == e2?.bookingEnd &&
        e1?.charterID == e2?.charterID;
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
        e?.taxRate,
        e?.startingPrice,
        e?.charterTimes,
        e?.bookingStart,
        e?.bookingEnd,
        e?.charterID
      ]);

  @override
  bool isValidKey(Object? o) => o is CharterDetailsRecord;
}
