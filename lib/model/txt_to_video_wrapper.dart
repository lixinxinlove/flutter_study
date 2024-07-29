import 'package:json_annotation/json_annotation.dart';

part 'txt_to_video_wrapper.g.dart';

@JsonSerializable()
class TxtToVideoWrapper {
  final List<VideoSamples>? videoSamples;
  final List<VoiceSamples>? voiceSamples;
  final List<MusicSamples>? musicSamples;

  const TxtToVideoWrapper({
    this.videoSamples,
    this.voiceSamples,
    this.musicSamples,
  });

  factory TxtToVideoWrapper.fromJson(Map<String, dynamic> json) =>
      _$TxtToVideoWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$TxtToVideoWrapperToJson(this);
}

@JsonSerializable()
class VideoSamples {
  final int? videoTemplateId;
  final String? videoImgUrl;
  final String? videoUrl;
  final String? templateName;
  final int? vip;

  const VideoSamples({
    this.videoTemplateId,
    this.videoImgUrl,
    this.videoUrl,
    this.templateName,
    this.vip,
  });

  factory VideoSamples.fromJson(Map<String, dynamic> json) =>
      _$VideoSamplesFromJson(json);

  Map<String, dynamic> toJson() => _$VideoSamplesToJson(this);
}

@JsonSerializable()
class VoiceSamples {
  final int? voiceTemplateId;
  final String? voiceImgUrl;
  final String? voiceUrl;
  final String? templateName;
  final int? vip;

  const VoiceSamples({
    this.voiceTemplateId,
    this.voiceImgUrl,
    this.voiceUrl,
    this.templateName,
    this.vip,
  });

  factory VoiceSamples.fromJson(Map<String, dynamic> json) =>
      _$VoiceSamplesFromJson(json);

  Map<String, dynamic> toJson() => _$VoiceSamplesToJson(this);
}

@JsonSerializable()
class MusicSamples {
  final int? bgMusicTemplateId;
  final String? musicUrl;
  final String? templateName;
  final int? vip;

  const MusicSamples({
    this.bgMusicTemplateId,
    this.musicUrl,
    this.templateName,
    this.vip,
  });

  factory MusicSamples.fromJson(Map<String, dynamic> json) =>
      _$MusicSamplesFromJson(json);

  Map<String, dynamic> toJson() => _$MusicSamplesToJson(this);
}
