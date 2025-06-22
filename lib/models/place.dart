import 'package:hive/hive.dart';

part 'place.g.dart';

@HiveType(typeId: 13)
class Place {
  @HiveField(0)
  final double accuracy;
  @HiveField(1)
  final String address;
  @HiveField(2)
  final String addressRoad;
  @HiveField(3)
  final String category;
  @HiveField(4)
  final String categoryCode;
  @HiveField(5)
  final int distance;
  @HiveField(6)
  final int durationTime;
  @HiveField(7)
  final int floor;
  @HiveField(8)
  final int fpid;
  @HiveField(9)
  final double lat;
  @HiveField(10)
  final double lng;
  @HiveField(11)
  final int loplatId;
  @HiveField(12)
  final String name;
  @HiveField(13)
  final String placename;
  @HiveField(14)
  final String post;
  @HiveField(15)
  final String tags;
  @HiveField(16)
  final double threshold;

  Place({
    required this.accuracy,
    required this.address,
    required this.addressRoad,
    required this.category,
    required this.categoryCode,
    required this.distance,
    required this.durationTime,
    required this.floor,
    required this.fpid,
    required this.lat,
    required this.lng,
    required this.loplatId,
    required this.name,
    required this.placename,
    required this.post,
    required this.tags,
    required this.threshold,
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      accuracy: json['accuracy'],
      address: json['address'],
      addressRoad: json['address_road'],
      category: json['category'],
      categoryCode: json['category_code'],
      distance: json['distance'],
      durationTime: json['duration_time'],
      floor: json['floor'],
      fpid: json['fpid'],
      lat: json['lat'],
      lng: json['lng'],
      loplatId: json['loplat_id'],
      name: json['name'],
      placename: json['placename'],
      post: json['post'],
      tags: json['tags'],
      threshold: json['threshold'],
    );
  }

  Map<String, dynamic> toJson() => {
    'accuracy': accuracy,
    'address': address,
    'address_road': addressRoad,
    'category': category,
    'category_code': categoryCode,
    'distance': distance,
    'duration_time': durationTime,
    'floor': floor,
    'fpid': fpid,
    'lat': lat,
    'lng': lng,
    'loplat_id': loplatId,
    'name': name,
    'placename': placename,
    'post': post,
    'tags': tags,
    'threshold': threshold,
  };
}
