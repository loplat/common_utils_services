import 'package:json_annotation/json_annotation.dart';

part 'ai_response.g.dart';

@JsonSerializable()
class AiResponse {
  @JsonKey(name: 'id')
  final String id;

  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'role')
  final String role;

  @JsonKey(name: 'content')
  final List<Content> content;

  AiResponse({
    required this.id,
    required this.type,
    required this.role,
    required this.content,
  });

  factory AiResponse.fromJson(Map<String, dynamic> json) =>
      _$AiResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AiResponseToJson(this);
}

@JsonSerializable()
class Content {
  @JsonKey(name: 'type')
  final String type;

  @JsonKey(name: 'text')
  final String text;

  Content({required this.type, required this.text});

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
  Map<String, dynamic> toJson() => _$ContentToJson(this);
}
