import 'package:flutter/material.dart';
import '../model/photo.dart';

class PicturesGrid extends StatefulWidget {
  final List<Photo> photos;

  const PicturesGrid({super.key, required this.photos});

  @override
  State<PicturesGrid> createState() => _PicturesGridState();
}

class _PicturesGridState extends State<PicturesGrid> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GridView.builder(
      itemCount: widget.photos.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.8,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder:
          (ctx, i) => GridTile(
            footer: Text(
              'Фото ${i + 1}',
              style: TextStyle(
                color: theme.colorScheme.surfaceBright,
                fontWeight: FontWeight.bold,
              ),
            ),
            child: InkWell(
              child: Ink.image(
                image: FileImage(widget.photos[i].photo!),
                fit: BoxFit.cover,
              ),
            ),
          ),
    );
  }
}
