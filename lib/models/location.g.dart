// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocationAdapter extends TypeAdapter<Location> {
  @override
  final int typeId = 4;

  @override
  Location read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Location(
      area: fields[0] as Area?,
      district: fields[1] as District?,
      location: fields[2] as LocationDetail?,
      place: fields[3] as Place?,
      placeEvent: fields[4] as int,
      result: fields[5] as int,
      type: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Location obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.area)
      ..writeByte(1)
      ..write(obj.district)
      ..writeByte(2)
      ..write(obj.location)
      ..writeByte(3)
      ..write(obj.place)
      ..writeByte(4)
      ..write(obj.placeEvent)
      ..writeByte(5)
      ..write(obj.result)
      ..writeByte(6)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
