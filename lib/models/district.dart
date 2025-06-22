import 'package:hive/hive.dart';

part 'district.g.dart';

@HiveType(typeId: 11)
class District {
  @HiveField(0)
  final String lv0Code;
  @HiveField(1)
  final String lv1Code;
  @HiveField(2)
  final String lv1Name;
  @HiveField(3)
  final String lv2Code;
  @HiveField(4)
  final String lv2Name;
  @HiveField(5)
  final String lv3Code;
  @HiveField(6)
  final String lv3Name;

  District({
    required this.lv0Code,
    required this.lv1Code,
    required this.lv1Name,
    required this.lv2Code,
    required this.lv2Name,
    required this.lv3Code,
    required this.lv3Name,
  });

  factory District.fromJson(Map<String, dynamic> json) {
    return District(
      lv0Code: json['lv0_code'],
      lv1Code: json['lv1_code'],
      lv1Name: json['lv1_name'],
      lv2Code: json['lv2_code'],
      lv2Name: json['lv2_name'],
      lv3Code: json['lv3_code'],
      lv3Name: json['lv3_name'],
    );
  }

  Map<String, dynamic> toJson() => {
    'lv0_code': lv0Code,
    'lv1_code': lv1Code,
    'lv1_name': lv1Name,
    'lv2_code': lv2Code,
    'lv2_name': lv2Name,
    'lv3_code': lv3Code,
    'lv3_name': lv3Name,
  };
}
