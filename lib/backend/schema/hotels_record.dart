import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'hotels_record.g.dart';

abstract class HotelsRecord
    implements Built<HotelsRecord, HotelsRecordBuilder> {
  static Serializer<HotelsRecord> get serializer => _$hotelsRecordSerializer;

  String? get name;

  String? get city;

  int? get rating;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(HotelsRecordBuilder builder) => builder
    ..name = ''
    ..city = ''
    ..rating = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('hotels');

  static Stream<HotelsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<HotelsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  HotelsRecord._();
  factory HotelsRecord([void Function(HotelsRecordBuilder) updates]) =
      _$HotelsRecord;

  static HotelsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createHotelsRecordData({
  String? name,
  String? city,
  int? rating,
}) {
  final firestoreData = serializers.toFirestore(
    HotelsRecord.serializer,
    HotelsRecord(
      (h) => h
        ..name = name
        ..city = city
        ..rating = rating,
    ),
  );

  return firestoreData;
}
