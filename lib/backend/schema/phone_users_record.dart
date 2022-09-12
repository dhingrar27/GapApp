import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'phone_users_record.g.dart';

abstract class PhoneUsersRecord
    implements Built<PhoneUsersRecord, PhoneUsersRecordBuilder> {
  static Serializer<PhoneUsersRecord> get serializer =>
      _$phoneUsersRecordSerializer;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PhoneUsersRecordBuilder builder) => builder
    ..phoneNumber = ''
    ..displayName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('phoneUsers');

  static Stream<PhoneUsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PhoneUsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PhoneUsersRecord._();
  factory PhoneUsersRecord([void Function(PhoneUsersRecordBuilder) updates]) =
      _$PhoneUsersRecord;

  static PhoneUsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPhoneUsersRecordData({
  String? phoneNumber,
  String? displayName,
}) {
  final firestoreData = serializers.toFirestore(
    PhoneUsersRecord.serializer,
    PhoneUsersRecord(
      (p) => p
        ..phoneNumber = phoneNumber
        ..displayName = displayName,
    ),
  );

  return firestoreData;
}
