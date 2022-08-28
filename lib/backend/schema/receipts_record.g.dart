// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReceiptsRecord> _$receiptsRecordSerializer =
    new _$ReceiptsRecordSerializer();

class _$ReceiptsRecordSerializer
    implements StructuredSerializer<ReceiptsRecord> {
  @override
  final Iterable<Type> types = const [ReceiptsRecord, _$ReceiptsRecord];
  @override
  final String wireName = 'ReceiptsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ReceiptsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.date;
    if (value != null) {
      result
        ..add('Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.store;
    if (value != null) {
      result
        ..add('Store')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('Time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.total;
    if (value != null) {
      result
        ..add('Total')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  ReceiptsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReceiptsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Store':
          result.store = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$ReceiptsRecord extends ReceiptsRecord {
  @override
  final String? date;
  @override
  final String? store;
  @override
  final String? time;
  @override
  final double? total;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ReceiptsRecord([void Function(ReceiptsRecordBuilder)? updates]) =>
      (new ReceiptsRecordBuilder()..update(updates))._build();

  _$ReceiptsRecord._({this.date, this.store, this.time, this.total, this.ffRef})
      : super._();

  @override
  ReceiptsRecord rebuild(void Function(ReceiptsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReceiptsRecordBuilder toBuilder() =>
      new ReceiptsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReceiptsRecord &&
        date == other.date &&
        store == other.store &&
        time == other.time &&
        total == other.total &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, date.hashCode), store.hashCode), time.hashCode),
            total.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReceiptsRecord')
          ..add('date', date)
          ..add('store', store)
          ..add('time', time)
          ..add('total', total)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ReceiptsRecordBuilder
    implements Builder<ReceiptsRecord, ReceiptsRecordBuilder> {
  _$ReceiptsRecord? _$v;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _store;
  String? get store => _$this._store;
  set store(String? store) => _$this._store = store;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  double? _total;
  double? get total => _$this._total;
  set total(double? total) => _$this._total = total;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ReceiptsRecordBuilder() {
    ReceiptsRecord._initializeBuilder(this);
  }

  ReceiptsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _store = $v.store;
      _time = $v.time;
      _total = $v.total;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReceiptsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReceiptsRecord;
  }

  @override
  void update(void Function(ReceiptsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReceiptsRecord build() => _build();

  _$ReceiptsRecord _build() {
    final _$result = _$v ??
        new _$ReceiptsRecord._(
            date: date, store: store, time: time, total: total, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
