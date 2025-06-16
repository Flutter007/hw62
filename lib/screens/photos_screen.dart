import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hw62/widgets/photo_grid.dart';

import '../provider/photos_provider.dart';
import '../widgets/empty_photos_list_text.dart';

class PhotosScreen extends ConsumerWidget {
  const PhotosScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final photos = ref.watch(photosProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Лента постов')),
      body:
          photos.isNotEmpty
              ? PicturesGrid(photos: photos)
              : EmptyPhotosListText(),
    );
  }
}
