// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'receipt_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReceiptRecord> _$receiptRecordSerializer =
    new _$ReceiptRecordSerializer();

class _$ReceiptRecordSerializer implements StructuredSerializer<ReceiptRecord> {
  @override
  final Iterable<Type> types = const [ReceiptRecord, _$ReceiptRecord];
  @override
  final String wireName = 'ReceiptRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ReceiptRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.shop;
    if (value != null) {
      result
        ..add('Shop')
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
    value = object.date;
    if (value != null) {
      result
        ..add('Date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('Price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.quant;
    if (value != null) {
      result
        ..add('Quant')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  ReceiptRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReceiptRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Shop':
          result.shop = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'Quant':
          result.quant = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$ReceiptRecord extends ReceiptRecord {
  @override
  final String? shop;
  @override
  final String? time;
  @override
  final String? date;
  @override
  final String? name;
  @override
  final double? price;
  @override
  final int? quant;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ReceiptRecord([void Function(ReceiptRecordBuilder)? updates]) =>
      (new ReceiptRecordBuilder()..update(updates))._build();

  _$ReceiptRecord._(
      {this.shop,
      this.time,
      this.date,
      this.name,
      this.price,
      this.quant,
      this.ffRef})
      : super._();

  @override
  ReceiptRecord rebuild(void Function(ReceiptRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReceiptRecordBuilder toBuilder() => new ReceiptRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReceiptRecord &&
        shop == other.shop &&
        time == other.time &&
        date == other.date &&
        name == other.name &&
        price == other.price &&
        quant == other.quant &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, shop.hashCode), time.hashCode),
                        date.hashCode),
                    name.hashCode),
                price.hashCode),
            quant.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReceiptRecord')
          ..add('shop', shop)
          ..add('time', time)
          ..add('date', date)
          ..add('name', name)
          ..add('price', price)
          ..add('quant', quant)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ReceiptRecordBuilder
    implements Builder<ReceiptRecord, ReceiptRecordBuilder> {
  _$ReceiptRecord? _$v;

  String? _shop;
  String? get shop => _$this._shop;
  set shop(String? shop) => _$this._shop = shop;

  String? _time;
  String? get time => _$this._time;
  set time(String? time) => _$this._time = time;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  int? _quant;
  int? get quant => _$this._quant;
  set quant(int? quant) => _$this._quant = quant;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ReceiptRecordBuilder() {
    ReceiptRecord._initializeBuilder(this);
  }

  ReceiptRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _shop = $v.shop;
      _time = $v.time;
      _date = $v.date;
      _name = $v.name;
      _price = $v.price;
      _quant = $v.quant;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReceiptRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReceiptRecord;
  }

  @override
  void update(void Function(ReceiptRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReceiptRecord build() => _build();

  _$ReceiptRecord _build() {
    final _$result = _$v ??
        new _$ReceiptRecord._(
            shop: shop,
            time: time,
            date: date,
            name: name,
            price: price,
            quant: quant,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
