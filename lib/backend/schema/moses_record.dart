import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'moses_record.g.dart';

abstract class MosesRecord implements Built<MosesRecord, MosesRecordBuilder> {
  static Serializer<MosesRecord> get serializer => _$mosesRecordSerializer;

  String? get mos;

  String? get title;

  String? get branch;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(MosesRecordBuilder builder) => builder
    ..mos = ''
    ..title = ''
    ..branch = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('moses');

  static Stream<MosesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<MosesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  MosesRecord._();
  factory MosesRecord([void Function(MosesRecordBuilder) updates]) =
      _$MosesRecord;

  static MosesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createMosesRecordData({
  String? mos,
  String? title,
  String? branch,
}) {
  final firestoreData = serializers.toFirestore(
    MosesRecord.serializer,
    MosesRecord(
      (m) => m
        ..mos = mos
        ..title = title
        ..branch = branch,
    ),
  );

  return firestoreData;
}
