// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'district.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DistrictAdapter extends TypeAdapter<District> {
  @override
  final int typeId = 11;

  @override
  District read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return District(
      lv0Code: fields[0] as String,
      lv1Code: fields[1] as String,
      lv1Name: fields[2] as String,
      lv2Code: fields[3] as String,
      lv2Name: fields[4] as String,
      lv3Code: fields[5] as String,
      lv3Name: fields[6] as String,
    );
  }

  @override
  void write(BinaryWriter writer, District obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.lv0Code)
      ..writeByte(1)
      ..write(obj.lv1Code)
      ..writeByte(2)
      ..write(obj.lv1Name)
      ..writeByte(3)
      ..write(obj.lv2Code)
      ..writeByte(4)
      ..write(obj.lv2Name)
      ..writeByte(5)
      ..write(obj.lv3Code)
      ..writeByte(6)
      ..write(obj.lv3Name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DistrictAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
