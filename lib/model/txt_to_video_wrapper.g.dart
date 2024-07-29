// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'txt_to_video_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TxtToVideoWrapper _$TxtToVideoWrapperFromJson(Map<String, dynamic> json) =>
    TxtToVideoWrapper(
      videoSamples: (json['videoSamples'] as List<dynamic>?)
          ?.map((e) => VideoSamples.fromJson(e as Map<String, dynamic>))
          .toList(),
      voiceSamples: (json['voiceSamples'] as List<dynamic>?)
          ?.map((e) => VoiceSamples.fromJson(e as Map<String, dynamic>))
          .toList(),
      musicSamples: (json['musicSamples'] as List<dynamic>?)
          ?.map((e) => MusicSamples.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TxtToVideoWrapperToJson(TxtToVideoWrapper instance) =>
    <String, dynamic>{
      'videoSamples': instance.videoSamples,
      'voiceSamples': instance.voiceSamples,
      'musicSamples': instance.musicSamples,
    };

VideoSamples _$VideoSamplesFromJson(Map<String, dynamic> json) => VideoSamples(
      videoTemplateId: json['videoTemplateId'] as int?,
      videoImgUrl: json['videoImgUrl'] as String?,
      videoUrl: json['videoUrl'] as String?,
      templateName: json['templateName'] as String?,
      vip: json['vip'] as int?,
    );

Map<String, dynamic> _$VideoSamplesToJson(VideoSamples instance) =>
    <String, dynamic>{
      'videoTemplateId': instance.videoTemplateId,
      'videoImgUrl': instance.videoImgUrl,
      'videoUrl': instance.videoUrl,
      'templateName': instance.templateName,
      'vip': instance.vip,
    };

VoiceSamples _$VoiceSamplesFromJson(Map<String, dynamic> json) => VoiceSamples(
      voiceTemplateId: json['voiceTemplateId'] as int?,
      voiceImgUrl: json['voiceImgUrl'] as String?,
      voiceUrl: json['voiceUrl'] as String?,
      templateName: json['templateName'] as String?,
      vip: json['vip'] as int?,
    );

Map<String, dynamic> _$VoiceSamplesToJson(VoiceSamples instance) =>
    <String, dynamic>{
      'voiceTemplateId': instance.voiceTemplateId,
      'voiceImgUrl': instance.voiceImgUrl,
      'voiceUrl': instance.voiceUrl,
      'templateName': instance.templateName,
      'vip': instance.vip,
    };

MusicSamples _$MusicSamplesFromJson(Map<String, dynamic> json) => MusicSamples(
      bgMusicTemplateId: json['bgMusicTemplateId'] as int?,
      musicUrl: json['musicUrl'] as String?,
      templateName: json['templateName'] as String?,
      vip: json['vip'] as int?,
    );

Map<String, dynamic> _$MusicSamplesToJson(MusicSamples instance) =>
    <String, dynamic>{
      'bgMusicTemplateId': instance.bgMusicTemplateId,
      'musicUrl': instance.musicUrl,
      'templateName': instance.templateName,
      'vip': instance.vip,
    };
