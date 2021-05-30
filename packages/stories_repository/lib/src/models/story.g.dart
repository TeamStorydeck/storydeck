// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Story _$_$_StoryFromJson(Map<String, dynamic> json) {
  return _$_Story(
    id: json['id'] as String?,
    title: json['title'] as String? ?? '',
    summary: json['summary'] as String? ?? '',
    coverImage: json['cover_image'] as String? ?? '',
    externalLinks: (json['external_links'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, e as String),
        ) ??
        {},
    streamingLinks: (json['streaming_links'] as Map<String, dynamic>?)?.map(
          (k, e) => MapEntry(k, e as String),
        ) ??
        {},
  );
}

Map<String, dynamic> _$_$_StoryToJson(_$_Story instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'summary': instance.summary,
      'cover_image': instance.coverImage,
      'external_links': instance.externalLinks,
      'streaming_links': instance.streamingLinks,
    };
