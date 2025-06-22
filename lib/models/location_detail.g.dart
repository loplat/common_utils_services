// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_detail.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocationDetailAdapter extends TypeAdapter<LocationDetail> {
  @override
  final int typeId = 12;

  @override
  LocationDetail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocationDetail(
      accuracy: fields[0] as double,
      alt: fields[1] as double,
      cid: fields[2] as int,
      floor: fields[3] as int,
      lat: fields[4] as double,
      lng: fields[5] as double,
      provider: fields[6] as String,
      time: fields[7] as int,
    );
  }

  @override
  void write(BinaryWriter writer, LocationDetail obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.accuracy)
      ..writeByte(1)
      ..write(obj.alt)
      ..writeByte(2)
      ..write(obj.cid)
      ..writeByte(3)
      ..write(obj.floor)
      ..writeByte(4)
      ..write(obj.lat)
      ..writeByte(5)
      ..write(obj.lng)
      ..writeByte(6)
      ..write(obj.provider)
      ..writeByte(7)
      ..write(obj.time);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationDetailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
