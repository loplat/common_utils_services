// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PlaceAdapter extends TypeAdapter<Place> {
  @override
  final int typeId = 13;

  @override
  Place read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Place(
      accuracy: fields[0] as double,
      address: fields[1] as String,
      addressRoad: fields[2] as String,
      category: fields[3] as String,
      categoryCode: fields[4] as String,
      distance: fields[5] as int,
      durationTime: fields[6] as int,
      floor: fields[7] as int,
      fpid: fields[8] as int,
      lat: fields[9] as double,
      lng: fields[10] as double,
      loplatId: fields[11] as int,
      name: fields[12] as String,
      placename: fields[13] as String,
      post: fields[14] as String,
      tags: fields[15] as String,
      threshold: fields[16] as double,
    );
  }

  @override
  void write(BinaryWriter writer, Place obj) {
    writer
      ..writeByte(17)
      ..writeByte(0)
      ..write(obj.accuracy)
      ..writeByte(1)
      ..write(obj.address)
      ..writeByte(2)
      ..write(obj.addressRoad)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.categoryCode)
      ..writeByte(5)
      ..write(obj.distance)
      ..writeByte(6)
      ..write(obj.durationTime)
      ..writeByte(7)
      ..write(obj.floor)
      ..writeByte(8)
      ..write(obj.fpid)
      ..writeByte(9)
      ..write(obj.lat)
      ..writeByte(10)
      ..write(obj.lng)
      ..writeByte(11)
      ..write(obj.loplatId)
      ..writeByte(12)
      ..write(obj.name)
      ..writeByte(13)
      ..write(obj.placename)
      ..writeByte(14)
      ..write(obj.post)
      ..writeByte(15)
      ..write(obj.tags)
      ..writeByte(16)
      ..write(obj.threshold);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PlaceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
