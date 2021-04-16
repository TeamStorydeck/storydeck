import 'package:stories_repository/stories_repository.dart';

abstract class StoriesRepository {
  Future<void> addStory(Story story);
  Future<void> deleteStory(Story story);
  Future<void> updateStory(Story story);
  Stream<List<Story>> stories();
}
