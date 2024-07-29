import 'package:json_annotation/json_annotation.dart';

part 'video_model.g.dart';

@JsonSerializable()
class VideoModel {
  final int? workId;
  final String? generatedVideos;
  final String? voiceUrl;
  final String? bgMusicUrl;
  final int? duration;
  final int? status;

  const VideoModel({
    this.workId,
    this.generatedVideos,
    this.voiceUrl,
    this.bgMusicUrl,
    this.duration,
    this.status,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) =>
      _$VideoModelFromJson(json);

  Map<String, dynamic> toJson() => _$VideoModelToJson(this);
}
