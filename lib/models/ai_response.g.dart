// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiResponse _$AiResponseFromJson(Map<String, dynamic> json) => AiResponse(
  id: json['id'] as String,
  type: json['type'] as String,
  role: json['role'] as String,
  content: (json['content'] as List<dynamic>)
      .map((e) => Content.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AiResponseToJson(AiResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'role': instance.role,
      'content': instance.content,
    };

Content _$ContentFromJson(Map<String, dynamic> json) =>
    Content(type: json['type'] as String, text: json['text'] as String);

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
  'type': instance.type,
  'text': instance.text,
};
