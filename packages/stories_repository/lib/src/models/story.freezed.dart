// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'story.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Story _$StoryFromJson(Map<String, dynamic> json) {
  return _Story.fromJson(json);
}

/// @nodoc
class _$StoryTearOff {
  const _$StoryTearOff();

  _Story call(
      {String? id,
      String title = '',
      String summary = '',
      String coverImage = '',
      Map<String, String> externalLinks = const {},
      Map<String, String> streamingLinks = const {}}) {
    return _Story(
      id: id,
      title: title,
      summary: summary,
      coverImage: coverImage,
      externalLinks: externalLinks,
      streamingLinks: streamingLinks,
    );
  }

  Story fromJson(Map<String, Object> json) {
    return Story.fromJson(json);
  }
}

/// @nodoc
const $Story = _$StoryTearOff();

/// @nodoc
mixin _$Story {
  String? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get summary => throw _privateConstructorUsedError;
  String get coverImage => throw _privateConstructorUsedError;
  Map<String, String> get externalLinks => throw _privateConstructorUsedError;
  Map<String, String> get streamingLinks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StoryCopyWith<Story> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StoryCopyWith<$Res> {
  factory $StoryCopyWith(Story value, $Res Function(Story) then) =
      _$StoryCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String title,
      String summary,
      String coverImage,
      Map<String, String> externalLinks,
      Map<String, String> streamingLinks});
}

/// @nodoc
class _$StoryCopyWithImpl<$Res> implements $StoryCopyWith<$Res> {
  _$StoryCopyWithImpl(this._value, this._then);

  final Story _value;
  // ignore: unused_field
  final $Res Function(Story) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? summary = freezed,
    Object? coverImage = freezed,
    Object? externalLinks = freezed,
    Object? streamingLinks = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: coverImage == freezed
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      externalLinks: externalLinks == freezed
          ? _value.externalLinks
          : externalLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      streamingLinks: streamingLinks == freezed
          ? _value.streamingLinks
          : streamingLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
abstract class _$StoryCopyWith<$Res> implements $StoryCopyWith<$Res> {
  factory _$StoryCopyWith(_Story value, $Res Function(_Story) then) =
      __$StoryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String title,
      String summary,
      String coverImage,
      Map<String, String> externalLinks,
      Map<String, String> streamingLinks});
}

/// @nodoc
class __$StoryCopyWithImpl<$Res> extends _$StoryCopyWithImpl<$Res>
    implements _$StoryCopyWith<$Res> {
  __$StoryCopyWithImpl(_Story _value, $Res Function(_Story) _then)
      : super(_value, (v) => _then(v as _Story));

  @override
  _Story get _value => super._value as _Story;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? summary = freezed,
    Object? coverImage = freezed,
    Object? externalLinks = freezed,
    Object? streamingLinks = freezed,
  }) {
    return _then(_Story(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String,
      coverImage: coverImage == freezed
          ? _value.coverImage
          : coverImage // ignore: cast_nullable_to_non_nullable
              as String,
      externalLinks: externalLinks == freezed
          ? _value.externalLinks
          : externalLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      streamingLinks: streamingLinks == freezed
          ? _value.streamingLinks
          : streamingLinks // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)

/// @nodoc
class _$_Story extends _Story {
  const _$_Story(
      {this.id,
      this.title = '',
      this.summary = '',
      this.coverImage = '',
      this.externalLinks = const {},
      this.streamingLinks = const {}})
      : super._();

  factory _$_Story.fromJson(Map<String, dynamic> json) =>
      _$_$_StoryFromJson(json);

  @override
  final String? id;
  @JsonKey(defaultValue: '')
  @override
  final String title;
  @JsonKey(defaultValue: '')
  @override
  final String summary;
  @JsonKey(defaultValue: '')
  @override
  final String coverImage;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, String> externalLinks;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, String> streamingLinks;

  @override
  String toString() {
    return 'Story(id: $id, title: $title, summary: $summary, coverImage: $coverImage, externalLinks: $externalLinks, streamingLinks: $streamingLinks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Story &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.summary, summary) ||
                const DeepCollectionEquality()
                    .equals(other.summary, summary)) &&
            (identical(other.coverImage, coverImage) ||
                const DeepCollectionEquality()
                    .equals(other.coverImage, coverImage)) &&
            (identical(other.externalLinks, externalLinks) ||
                const DeepCollectionEquality()
                    .equals(other.externalLinks, externalLinks)) &&
            (identical(other.streamingLinks, streamingLinks) ||
                const DeepCollectionEquality()
                    .equals(other.streamingLinks, streamingLinks)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(summary) ^
      const DeepCollectionEquality().hash(coverImage) ^
      const DeepCollectionEquality().hash(externalLinks) ^
      const DeepCollectionEquality().hash(streamingLinks);

  @JsonKey(ignore: true)
  @override
  _$StoryCopyWith<_Story> get copyWith =>
      __$StoryCopyWithImpl<_Story>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StoryToJson(this);
  }
}

abstract class _Story extends Story {
  const factory _Story(
      {String? id,
      String title,
      String summary,
      String coverImage,
      Map<String, String> externalLinks,
      Map<String, String> streamingLinks}) = _$_Story;
  const _Story._() : super._();

  factory _Story.fromJson(Map<String, dynamic> json) = _$_Story.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get summary => throw _privateConstructorUsedError;
  @override
  String get coverImage => throw _privateConstructorUsedError;
  @override
  Map<String, String> get externalLinks => throw _privateConstructorUsedError;
  @override
  Map<String, String> get streamingLinks => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StoryCopyWith<_Story> get copyWith => throw _privateConstructorUsedError;
}
