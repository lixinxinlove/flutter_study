// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pic_work_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PicWorkData _$PicWorkDataFromJson(Map<String, dynamic> json) => PicWorkData(
      workTypeName: json['workTypeName'] as String?,
      workList: (json['workList'] as List<dynamic>?)
          ?.map((e) => WorkList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PicWorkDataToJson(PicWorkData instance) =>
    <String, dynamic>{
      'workTypeName': instance.workTypeName,
      'workList': instance.workList,
    };

WorkList _$WorkListFromJson(Map<String, dynamic> json) => WorkList(
      id: json['id'] as int?,
      templateId: json['templateId'] as int?,
      generatedImages: json['generatedImages'] as String?,
      generatedVideos: json['generatedVideos'] as String?,
      width: json['width'] as int?,
      height: json['height'] as int?,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$WorkListToJson(WorkList instance) => <String, dynamic>{
      'id': instance.id,
      'templateId': instance.templateId,
      'generatedImages': instance.generatedImages,
      'generatedVideos': instance.generatedVideos,
      'width': instance.width,
      'height': instance.height,
      'status': instance.status,
    };
