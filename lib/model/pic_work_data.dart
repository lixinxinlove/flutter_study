import 'package:json_annotation/json_annotation.dart';

part 'pic_work_data.g.dart';

@JsonSerializable()
class PicWorkData {
  final String? workTypeName;
  final List<WorkList>? workList;

  const PicWorkData({
    this.workTypeName,
    this.workList,
  });

  factory PicWorkData.fromJson(Map<String, dynamic> json) =>
      _$PicWorkDataFromJson(json);

  Map<String, dynamic> toJson() => _$PicWorkDataToJson(this);
}

@JsonSerializable()
class WorkList {
  final int? id;
  final int? templateId;
  final String? generatedImages;
  final String? generatedVideos;
  final int? width;
  final int? height;
  final int? status;

  const WorkList({
    this.id,
    this.templateId,
    this.generatedImages,
    this.generatedVideos,
    this.width,
    this.height,
    this.status,
  });

  factory WorkList.fromJson(Map<String, dynamic> json) =>
      _$WorkListFromJson(json);

  Map<String, dynamic> toJson() => _$WorkListToJson(this);
}
