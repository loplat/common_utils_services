import 'package:hive/hive.dart';

part 'location_detail.g.dart';

@HiveType(typeId: 12)
class LocationDetail {
  @HiveField(0)
  final double accuracy;
  @HiveField(1)
  final double alt;
  @HiveField(2)
  final int cid;
  @HiveField(3)
  final int floor;
  @HiveField(4)
  final double lat;
  @HiveField(5)
  final double lng;
  @HiveField(6)
  final String provider;
  @HiveField(7)
  final int time;

  LocationDetail({
    required this.accuracy,
    required this.alt,
    required this.cid,
    required this.floor,
    required this.lat,
    required this.lng,
    required this.provider,
    required this.time,
  });

  factory LocationDetail.fromJson(Map<String, dynamic> json) {
    return LocationDetail(
      accuracy: json['accuracy'],
      alt: json['alt'],
      cid: json['cid'],
      floor: json['floor'],
      lat: json['lat'],
      lng: json['lng'],
      provider: json['provider'],
      time: json['time'],
    );
  }

  Map<String, dynamic> toJson() => {
    'accuracy': accuracy,
    'alt': alt,
    'cid': cid,
    'floor': floor,
    'lat': lat,
    'lng': lng,
    'provider': provider,
    'time': time,
  };
}
