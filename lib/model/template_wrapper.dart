import 'package:json_annotation/json_annotation.dart';

part 'template_wrapper.g.dart';

@JsonSerializable()
class TemplateWrapper {
  final int? templateType;
  final String? typeName;
  final List<TemplateList>? templateList;

  const TemplateWrapper({
    this.templateType,
    this.typeName,
    this.templateList,
  });

  factory TemplateWrapper.fromJson(Map<String, dynamic> json) =>
      _$TemplateWrapperFromJson(json);

  Map<String, dynamic> toJson() => _$TemplateWrapperToJson(this);
}

@JsonSerializable()
class TemplateList {
  final int? templateId;
  final String? imageUrl;
  final String? prompt;
  final int? vip;

  const TemplateList({
    this.templateId,
    this.imageUrl,
    this.prompt,
    this.vip,
  });

  factory TemplateList.fromJson(Map<String, dynamic> json) =>
      _$TemplateListFromJson(json);

  Map<String, dynamic> toJson() => _$TemplateListToJson(this);
}
