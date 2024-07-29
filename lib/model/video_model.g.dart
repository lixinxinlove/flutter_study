// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoModel _$VideoModelFromJson(Map<String, dynamic> json) => VideoModel(
      workId: json['workId'] as int?,
      generatedVideos: json['generatedVideos'] as String?,
      voiceUrl: json['voiceUrl'] as String?,
      bgMusicUrl: json['bgMusicUrl'] as String?,
      duration: json['duration'] as int?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$VideoModelToJson(VideoModel instance) =>
    <String, dynamic>{
      'workId': instance.workId,
      'generatedVideos': instance.generatedVideos,
      'voiceUrl': instance.voiceUrl,
      'bgMusicUrl': instance.bgMusicUrl,
      'duration': instance.duration,
      'status': instance.status,
    };
