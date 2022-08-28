import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'receipts_record.g.dart';

abstract class ReceiptsRecord
    implements Built<ReceiptsRecord, ReceiptsRecordBuilder> {
  static Serializer<ReceiptsRecord> get serializer =>
      _$receiptsRecordSerializer;

  @BuiltValueField(wireName: 'Date')
  String? get date;

  @BuiltValueField(wireName: 'Store')
  String? get store;

  @BuiltValueField(wireName: 'Time')
  String? get time;

  @BuiltValueField(wireName: 'Total')
  double? get total;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ReceiptsRecordBuilder builder) => builder
    ..date = ''
    ..store = ''
    ..time = ''
    ..total = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Receipts');

  static Stream<ReceiptsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ReceiptsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ReceiptsRecord._();
  factory ReceiptsRecord([void Function(ReceiptsRecordBuilder) updates]) =
      _$ReceiptsRecord;

  static ReceiptsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createReceiptsRecordData({
  String? date,
  String? store,
  String? time,
  double? total,
}) {
  final firestoreData = serializers.toFirestore(
    ReceiptsRecord.serializer,
    ReceiptsRecord(
      (r) => r
        ..date = date
        ..store = store
        ..time = time
        ..total = total,
    ),
  );

  return firestoreData;
}
