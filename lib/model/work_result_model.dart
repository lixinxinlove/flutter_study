import 'package:json_annotation/json_annotation.dart';

part 'work_result_model.g.dart';

@JsonSerializable()
class WorkResultModel {
  final int? workId;

  const WorkResultModel({
    this.workId,
  });

  factory WorkResultModel.fromJson(Map<String, dynamic> json) =>
      _$WorkResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$WorkResultModelToJson(this);
}
