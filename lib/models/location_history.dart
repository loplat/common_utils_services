import 'package:hive/hive.dart';

part 'location_history.g.dart';

@HiveType(typeId: 3)
class LocationHistory extends HiveObject {
  @HiveField(0)
  final Map<String, dynamic>? location;

  @HiveField(1)
  final Map<String, dynamic>? place;

  @HiveField(2)
  final Map<String, dynamic>? district;

  @HiveField(3)
  final DateTime timestamp;

  @HiveField(4)
  final String formattedTime;

  @HiveField(5)
  final Map<String, dynamic>? complex;

  LocationHistory({
    required this.location,
    this.place,
    this.district,
    required this.timestamp,
    required this.formattedTime,
    this.complex,
  });

  factory LocationHistory.fromJson(Map<String, dynamic> json) {
    final locationJson = json['location'] as Map<String, dynamic>?;
    final int? timeSeconds = locationJson?['time'];

    final timestamp = (timeSeconds != null)
        ? DateTime.fromMillisecondsSinceEpoch(timeSeconds)
        : DateTime.now(); // fallback

    final formattedTime =
        '${timestamp.year}/${timestamp.month}/${timestamp.day} ${timestamp.hour}:${timestamp.minute.toString().padLeft(2, '0')}';

    return LocationHistory(
      location: locationJson,
      place: json['place'] as Map<String, dynamic>?,
      district: json['district'] as Map<String, dynamic>?,
      timestamp: timestamp,
      formattedTime: formattedTime,
      complex: json['complex'] as Map<String, dynamic>?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'location': location,
      'place': place,
      'district': district,
      'timestamp': timestamp.toIso8601String(),
      'formattedTime': formattedTime,
      'complex': complex,
    };
  }

  String get simpleName {
    var name = '';
    if (complex != null && complex!['name'] != null) {
      name += complex!['name'];
    }

    if (place != null) {
      if (place!['name'] != null) {
        if (name.isNotEmpty) {
          name += ' ';
        }
        name += '${place!['name']}';
      }
      if (place!['tags'] != null) {
        name += '(${place!['tags']})';
      }
      if (place!['address'] != null) {
        name += '\n${place!['address']}';
      }
    }
    return name;
  }

  String get displayName {
    var complexId = 'complex_id: ';
    var complexName = 'complex_name: ';

    if (complex != null && complex!['id'] != null && complex!['name'] != null) {
      complexId += '${complex!['id']}, ';
      complexName += '${complex!['name']}, ';
    }

    if (place != null && place!['name'] != null) {
      return '$complexName$complexId${place!['name']}(${place!['address']}), lat: ${location!['lat']}, lng: ${location!['lng']}';
    }
    if (location != null) {
      return '$complexName $complexId lat: ${location!['lat']}, lng: ${location!['lng']}, accuracy: ${location!['accuracy']}';
    }
    if (district != null) {
      final lv2 = district!['lv2_name'];
      final lv3 = district!['lv3_name'];
      if (lv2 != null && lv3 != null) {
        return '$complexName $complexId $lv2 $lv3';
      }
    }
    return '';
  }
}
