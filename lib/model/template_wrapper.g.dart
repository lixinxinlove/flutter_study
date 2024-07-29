// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TemplateWrapper _$TemplateWrapperFromJson(Map<String, dynamic> json) =>
    TemplateWrapper(
      templateType: json['templateType'] as int?,
      typeName: json['typeName'] as String?,
      templateList: (json['templateList'] as List<dynamic>?)
          ?.map((e) => TemplateList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TemplateWrapperToJson(TemplateWrapper instance) =>
    <String, dynamic>{
      'templateType': instance.templateType,
      'typeName': instance.typeName,
      'templateList': instance.templateList,
    };

TemplateList _$TemplateListFromJson(Map<String, dynamic> json) => TemplateList(
      templateId: json['templateId'] as int?,
      imageUrl: json['imageUrl'] as String?,
      prompt: json['prompt'] as String?,
      vip: json['vip'] as int?,
    );

Map<String, dynamic> _$TemplateListToJson(TemplateList instance) =>
    <String, dynamic>{
      'templateId': instance.templateId,
      'imageUrl': instance.imageUrl,
      'prompt': instance.prompt,
      'vip': instance.vip,
    };
