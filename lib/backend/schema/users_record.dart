import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "userStreet" field.
  String? _userStreet;
  String get userStreet => _userStreet ?? '';
  bool hasUserStreet() => _userStreet != null;

  // "userCity" field.
  String? _userCity;
  String get userCity => _userCity ?? '';
  bool hasUserCity() => _userCity != null;

  // "userState" field.
  String? _userState;
  String get userState => _userState ?? '';
  bool hasUserState() => _userState != null;

  // "userZipcode" field.
  String? _userZipcode;
  String get userZipcode => _userZipcode ?? '';
  bool hasUserZipcode() => _userZipcode != null;

  // "pastCharters" field.
  int? _pastCharters;
  int get pastCharters => _pastCharters ?? 0;
  bool hasPastCharters() => _pastCharters != null;

  // "currentCharters" field.
  int? _currentCharters;
  int get currentCharters => _currentCharters ?? 0;
  bool hasCurrentCharters() => _currentCharters != null;

  // "isAngler" field.
  bool? _isAngler;
  bool get isAngler => _isAngler ?? false;
  bool hasIsAngler() => _isAngler != null;

  // "isCaptain" field.
  bool? _isCaptain;
  bool get isCaptain => _isCaptain ?? false;
  bool hasIsCaptain() => _isCaptain != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _bio = snapshotData['bio'] as String?;
    _userStreet = snapshotData['userStreet'] as String?;
    _userCity = snapshotData['userCity'] as String?;
    _userState = snapshotData['userState'] as String?;
    _userZipcode = snapshotData['userZipcode'] as String?;
    _pastCharters = castToType<int>(snapshotData['pastCharters']);
    _currentCharters = castToType<int>(snapshotData['currentCharters']);
    _isAngler = snapshotData['isAngler'] as bool?;
    _isCaptain = snapshotData['isCaptain'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? bio,
  String? userStreet,
  String? userCity,
  String? userState,
  String? userZipcode,
  int? pastCharters,
  int? currentCharters,
  bool? isAngler,
  bool? isCaptain,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'bio': bio,
      'userStreet': userStreet,
      'userCity': userCity,
      'userState': userState,
      'userZipcode': userZipcode,
      'pastCharters': pastCharters,
      'currentCharters': currentCharters,
      'isAngler': isAngler,
      'isCaptain': isCaptain,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.bio == e2?.bio &&
        e1?.userStreet == e2?.userStreet &&
        e1?.userCity == e2?.userCity &&
        e1?.userState == e2?.userState &&
        e1?.userZipcode == e2?.userZipcode &&
        e1?.pastCharters == e2?.pastCharters &&
        e1?.currentCharters == e2?.currentCharters &&
        e1?.isAngler == e2?.isAngler &&
        e1?.isCaptain == e2?.isCaptain;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.bio,
        e?.userStreet,
        e?.userCity,
        e?.userState,
        e?.userZipcode,
        e?.pastCharters,
        e?.currentCharters,
        e?.isAngler,
        e?.isCaptain
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
