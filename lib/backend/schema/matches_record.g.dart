// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matches_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MatchesRecord> _$matchesRecordSerializer =
    new _$MatchesRecordSerializer();

class _$MatchesRecordSerializer implements StructuredSerializer<MatchesRecord> {
  @override
  final Iterable<Type> types = const [MatchesRecord, _$MatchesRecord];
  @override
  final String wireName = 'MatchesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, MatchesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.matchName;
    if (value != null) {
      result
        ..add('matchName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.matchPer;
    if (value != null) {
      result
        ..add('matchPer')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.ref;
    if (value != null) {
      result
        ..add('ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  MatchesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MatchesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'matchName':
          result.matchName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'matchPer':
          result.matchPer = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$MatchesRecord extends MatchesRecord {
  @override
  final String? matchName;
  @override
  final int? matchPer;
  @override
  final DocumentReference<Object?>? ref;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$MatchesRecord([void Function(MatchesRecordBuilder)? updates]) =>
      (new MatchesRecordBuilder()..update(updates))._build();

  _$MatchesRecord._({this.matchName, this.matchPer, this.ref, this.ffRef})
      : super._();

  @override
  MatchesRecord rebuild(void Function(MatchesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MatchesRecordBuilder toBuilder() => new MatchesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MatchesRecord &&
        matchName == other.matchName &&
        matchPer == other.matchPer &&
        ref == other.ref &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, matchName.hashCode), matchPer.hashCode), ref.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MatchesRecord')
          ..add('matchName', matchName)
          ..add('matchPer', matchPer)
          ..add('ref', ref)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class MatchesRecordBuilder
    implements Builder<MatchesRecord, MatchesRecordBuilder> {
  _$MatchesRecord? _$v;

  String? _matchName;
  String? get matchName => _$this._matchName;
  set matchName(String? matchName) => _$this._matchName = matchName;

  int? _matchPer;
  int? get matchPer => _$this._matchPer;
  set matchPer(int? matchPer) => _$this._matchPer = matchPer;

  DocumentReference<Object?>? _ref;
  DocumentReference<Object?>? get ref => _$this._ref;
  set ref(DocumentReference<Object?>? ref) => _$this._ref = ref;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  MatchesRecordBuilder() {
    MatchesRecord._initializeBuilder(this);
  }

  MatchesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _matchName = $v.matchName;
      _matchPer = $v.matchPer;
      _ref = $v.ref;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MatchesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MatchesRecord;
  }

  @override
  void update(void Function(MatchesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MatchesRecord build() => _build();

  _$MatchesRecord _build() {
    final _$result = _$v ??
        new _$MatchesRecord._(
            matchName: matchName, matchPer: matchPer, ref: ref, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
