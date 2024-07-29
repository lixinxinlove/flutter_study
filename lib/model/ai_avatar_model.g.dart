// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_avatar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AiAvatarModel _$AiAvatarModelFromJson(Map<String, dynamic> json) =>
    AiAvatarModel(
      id: json['id'] as int?,
      generatedImages: json['generatedImages'] as String?,
      sourceImage: json['sourceImage'] as String?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$AiAvatarModelToJson(AiAvatarModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'generatedImages': instance.generatedImages,
      'sourceImage': instance.sourceImage,
      'status': instance.status,
    };
