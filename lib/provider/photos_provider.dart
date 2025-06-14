import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/photo.dart';

class PhotosNotifier extends Notifier<List<Photo>> {
  @override
  List<Photo> build() {
    return [];
  }

  void addNewPhoto(Photo photo) {
    state = [...state, photo];
  }
}

final photosProvider = NotifierProvider<PhotosNotifier, List<Photo>>(
  PhotosNotifier.new,
);
