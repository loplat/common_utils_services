import 'package:hive/hive.dart';

part 'area.g.dart';

@HiveType(typeId: 10)
class Area {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final double lat;

  @HiveField(2)
  final double lng;

  @HiveField(3)
  final String name;

  @HiveField(4)
  final String tag;

  Area({
    required this.id,
    required this.lat,
    required this.lng,
    required this.name,
    required this.tag,
  });

  factory Area.fromJson(Map<String, dynamic> json) {
    return Area(
      id: json['id'],
      lat: json['lat'],
      lng: json['lng'],
      name: json['name'],
      tag: json['tag'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'lat': lat,
    'lng': lng,
    'name': name,
    'tag': tag,
  };
}