import 'package:flutter/material.dart';

class AddPhotoContainer extends StatelessWidget {
  final void Function() onTap;
  const AddPhotoContainer({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: theme.colorScheme.primary, width: 4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Icon(Icons.add_a_photo, size: 100),
          ElevatedButton.icon(
            onPressed: onTap,
            icon: Icon(Icons.add),
            label: Text('Добавить фото'),
          ),
        ],
      ),
    );
  }
}
