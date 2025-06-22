// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiRequest _$AiRequestFromJson(Map<String, dynamic> json) => AiRequest(
  model: json['model'] as String,
  messages: (json['messages'] as List<dynamic>)
      .map((e) => Message.fromJson(e as Map<String, dynamic>))
      .toList(),
  maxTokens: (json['max_tokens'] as num?)?.toInt() ?? 1000,
);

Map<String, dynamic> _$AiRequestToJson(AiRequest instance) => <String, dynamic>{
  'model': instance.model,
  'messages': instance.messages,
  'max_tokens': instance.maxTokens,
};

Message _$MessageFromJson(Map<String, dynamic> json) =>
    Message(role: json['role'] as String, content: json['content'] as String);

Map<String, dynamic> _$MessageToJson(Message instance) => <String, dynamic>{
  'role': instance.role,
  'content': instance.content,
};
