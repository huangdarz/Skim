import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'receipt_record.g.dart';

abstract class ReceiptRecord
    implements Built<ReceiptRecord, ReceiptRecordBuilder> {
  static Serializer<ReceiptRecord> get serializer => _$receiptRecordSerializer;

  @BuiltValueField(wireName: 'Shop')
  String? get shop;

  @BuiltValueField(wireName: 'Time')
  String? get time;

  @BuiltValueField(wireName: 'Date')
  String? get date;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Price')
  double? get price;

  @BuiltValueField(wireName: 'Quant')
  int? get quant;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ReceiptRecordBuilder builder) => builder
    ..shop = ''
    ..time = ''
    ..date = ''
    ..name = ''
    ..price = 0.0
    ..quant = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Receipt');

  static Stream<ReceiptRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ReceiptRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ReceiptRecord._();
  factory ReceiptRecord([void Function(ReceiptRecordBuilder) updates]) =
      _$ReceiptRecord;

  static ReceiptRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createReceiptRecordData({
  String? shop,
  String? time,
  String? date,
  String? name,
  double? price,
  int? quant,
}) {
  final firestoreData = serializers.toFirestore(
    ReceiptRecord.serializer,
    ReceiptRecord(
      (r) => r
        ..shop = shop
        ..time = time
        ..date = date
        ..name = name
        ..price = price
        ..quant = quant,
    ),
  );

  return firestoreData;
}
