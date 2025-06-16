import 'package:flutter/material.dart';

class EmptyPhotosListText extends StatelessWidget {
  const EmptyPhotosListText({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.arrow_right_alt, size: 70),
          Text('Добавьте фото!', style: theme.textTheme.headlineSmall),
        ],
      ),
    );
  }
}
