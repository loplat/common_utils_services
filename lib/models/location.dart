import 'package:hive/hive.dart';
import 'area.dart';
import 'district.dart';
import 'location_detail.dart';
import 'place.dart';

part 'location.g.dart';

@HiveType(typeId: 4)
class Location extends HiveObject {
  @HiveField(0)
  final Area? area;

  @HiveField(1)
  final District? district;

  @HiveField(2)
  final LocationDetail? location;

  @HiveField(3)
  final Place? place;

  @HiveField(4)
  final int placeEvent;

  @HiveField(5)
  final int result;

  @HiveField(6)
  final int type;

  Location({
    this.area,
    this.district,
    this.location,
    this.place,
    required this.placeEvent,
    required this.result,
    required this.type,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      area: json['area'] != null ? Area.fromJson(json['area']) : null,
      district: json['district'] != null ? District.fromJson(json['district']) : null,
      location: json['location'] != null ? LocationDetail.fromJson(json['location']) : null,
      place: json['place'] != null ? Place.fromJson(json['place']) : null,
      placeEvent: json['placeEvent'] ?? 0,
      result: json['result'] ?? 0,
      type: json['type'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'area': area?.toJson(),
      'district': district?.toJson(),
      'location': location?.toJson(),
      'place': place?.toJson(),
      'placeEvent': placeEvent,
      'result': result,
      'type': type,
    };
  }

  String get displayName {
    if (place != null && place!.name.isNotEmpty) {
      return '${place!.name}(${place!.address}), lat: ${location?.lat}, lng: ${location?.lng}';
    }
    if (location != null) {
      return 'lat: ${location!.lat}, lng: ${location!.lng}, accuracy: ${location!.accuracy}';
    }
    if (district != null) {
      final lv2 = district!.lv2Name;
      final lv3 = district!.lv3Name;
      if (lv2.isNotEmpty && lv3.isNotEmpty) {
        return '$lv2 $lv3';
      }
    }
    return '';
  }
}
