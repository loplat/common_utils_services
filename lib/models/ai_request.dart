import 'package:json_annotation/json_annotation.dart';

part 'ai_request.g.dart';

@JsonSerializable()
class AiRequest {
  @JsonKey(name: 'model')
  final String model;

  @JsonKey(name: 'messages')
  final List<Message> messages;

  @JsonKey(name: 'max_tokens')
  final int maxTokens;

  AiRequest({
    required this.model,
    required this.messages,
    this.maxTokens = 1000,
  });

  factory AiRequest.fromJson(Map<String, dynamic> json) =>
      _$AiRequestFromJson(json);
  Map<String, dynamic> toJson() => _$AiRequestToJson(this);
}

@JsonSerializable()
class Message {
  final String role;
  final String content;

  Message({required this.role, required this.content});

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
