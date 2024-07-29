import 'package:json_annotation/json_annotation.dart';

part 'ai_avatar_model.g.dart';

@JsonSerializable()
class AiAvatarModel {
  final int? id;
  final String? generatedImages;
  final String? sourceImage;
  final int? status;

  const AiAvatarModel({
    this.id,
    this.generatedImages,
    this.sourceImage,
    this.status,
  });

  factory AiAvatarModel.fromJson(Map<String, dynamic> json) =>
      _$AiAvatarModelFromJson(json);

  Map<String, dynamic> toJson() => _$AiAvatarModelToJson(this);
}
