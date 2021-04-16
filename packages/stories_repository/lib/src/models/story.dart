import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'story.freezed.dart';
part 'story.g.dart';

@freezed
class Story with _$Story {
  const Story._();
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Story({
    String? id,
    @Default('') String title,
    @Default('') String summary,
    @Default('') String coverImage,
    @Default({}) Map<String, String> externalLinks,
    @Default({}) Map<String, String> streamingLinks,
  }) = _Story;

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);

  factory Story.fromSnapshot(DocumentSnapshot snapshot) {
    return Story(
      id: snapshot.id,
      title: snapshot['title'],
      summary: snapshot['summary'],
      coverImage: snapshot['cover_image'],
      externalLinks: snapshot['external_links'],
      streamingLinks: snapshot['streaming_links'],
    );
  }

  Map<String, dynamic> toDocument() {
    return {
      'title': title,
      'summary': summary,
      'cover_image': coverImage,
      'external_links': externalLinks,
      'streaming_links': streamingLinks,
    };
  }
}
