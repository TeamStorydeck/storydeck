import 'package:stories_repository/stories_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseStoriesRepository implements StoriesRepository {
  final storiesCollection = FirebaseFirestore.instance.collection('stories');

  @override
  Future<void> addStory(Story story) {
    return storiesCollection.add(story.toDocument());
  }

  @override
  Future<void> deleteStory(Story story) {
    return storiesCollection.doc(story.id).delete();
  }

  @override
  Stream<List<Story>> stories() {
    return storiesCollection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Story.fromSnapshot(doc)).toList();
    });
  }

  @override
  Future<void> updateStory(Story story) {
    return storiesCollection.doc(story.id).update(story.toDocument());
  }
}
