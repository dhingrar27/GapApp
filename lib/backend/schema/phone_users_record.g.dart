// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'phone_users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PhoneUsersRecord> _$phoneUsersRecordSerializer =
    new _$PhoneUsersRecordSerializer();

class _$PhoneUsersRecordSerializer
    implements StructuredSerializer<PhoneUsersRecord> {
  @override
  final Iterable<Type> types = const [PhoneUsersRecord, _$PhoneUsersRecord];
  @override
  final String wireName = 'PhoneUsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PhoneUsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
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
  PhoneUsersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PhoneUsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
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

class _$PhoneUsersRecord extends PhoneUsersRecord {
  @override
  final String? phoneNumber;
  @override
  final String? displayName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PhoneUsersRecord(
          [void Function(PhoneUsersRecordBuilder)? updates]) =>
      (new PhoneUsersRecordBuilder()..update(updates))._build();

  _$PhoneUsersRecord._({this.phoneNumber, this.displayName, this.ffRef})
      : super._();

  @override
  PhoneUsersRecord rebuild(void Function(PhoneUsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PhoneUsersRecordBuilder toBuilder() =>
      new PhoneUsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PhoneUsersRecord &&
        phoneNumber == other.phoneNumber &&
        displayName == other.displayName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, phoneNumber.hashCode), displayName.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PhoneUsersRecord')
          ..add('phoneNumber', phoneNumber)
          ..add('displayName', displayName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PhoneUsersRecordBuilder
    implements Builder<PhoneUsersRecord, PhoneUsersRecordBuilder> {
  _$PhoneUsersRecord? _$v;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PhoneUsersRecordBuilder() {
    PhoneUsersRecord._initializeBuilder(this);
  }

  PhoneUsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phoneNumber = $v.phoneNumber;
      _displayName = $v.displayName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PhoneUsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PhoneUsersRecord;
  }

  @override
  void update(void Function(PhoneUsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PhoneUsersRecord build() => _build();

  _$PhoneUsersRecord _build() {
    final _$result = _$v ??
        new _$PhoneUsersRecord._(
            phoneNumber: phoneNumber, displayName: displayName, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
