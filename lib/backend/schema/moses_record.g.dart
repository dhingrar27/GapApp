// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moses_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MosesRecord> _$mosesRecordSerializer = new _$MosesRecordSerializer();

class _$MosesRecordSerializer implements StructuredSerializer<MosesRecord> {
  @override
  final Iterable<Type> types = const [MosesRecord, _$MosesRecord];
  @override
  final String wireName = 'MosesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MosesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.mos;
    if (value != null) {
      result
        ..add('mos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.branch;
    if (value != null) {
      result
        ..add('branch')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  MosesRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MosesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'mos':
          result.mos = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'branch':
          result.branch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$MosesRecord extends MosesRecord {
  @override
  final String? mos;
  @override
  final String? title;
  @override
  final String? branch;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MosesRecord([void Function(MosesRecordBuilder)? updates]) =>
      (new MosesRecordBuilder()..update(updates))._build();

  _$MosesRecord._({this.mos, this.title, this.branch, this.ffRef}) : super._();

  @override
  MosesRecord rebuild(void Function(MosesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MosesRecordBuilder toBuilder() => new MosesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MosesRecord &&
        mos == other.mos &&
        title == other.title &&
        branch == other.branch &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, mos.hashCode), title.hashCode), branch.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MosesRecord')
          ..add('mos', mos)
          ..add('title', title)
          ..add('branch', branch)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MosesRecordBuilder implements Builder<MosesRecord, MosesRecordBuilder> {
  _$MosesRecord? _$v;

  String? _mos;
  String? get mos => _$this._mos;
  set mos(String? mos) => _$this._mos = mos;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _branch;
  String? get branch => _$this._branch;
  set branch(String? branch) => _$this._branch = branch;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MosesRecordBuilder() {
    MosesRecord._initializeBuilder(this);
  }

  MosesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mos = $v.mos;
      _title = $v.title;
      _branch = $v.branch;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MosesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MosesRecord;
  }

  @override
  void update(void Function(MosesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MosesRecord build() => _build();

  _$MosesRecord _build() {
    final _$result = _$v ??
        new _$MosesRecord._(
            mos: mos, title: title, branch: branch, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
