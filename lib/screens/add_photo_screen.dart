import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hw62/model/photo.dart';
import 'package:hw62/provider/photos_provider.dart';
import 'package:hw62/screens/start_screen.dart';
import 'package:hw62/widgets/image_picker_field.dart';

class AddPhotoScreen extends ConsumerStatefulWidget {
  const AddPhotoScreen({super.key});

  @override
  ConsumerState createState() => _AddPhotoScreenState();
}

class _AddPhotoScreenState extends ConsumerState<AddPhotoScreen> {
  File? selectedPhoto;

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  void saveNewPhoto() {
    if (selectedPhoto != null) {
      final photo = Photo(photo: selectedPhoto!);
      ref.read(photosProvider.notifier).addNewPhoto(photo);
      if (mounted) {
        _showSnackBar('Фото добавлено!');
        clearFields();
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => StartScreen()),
          (Route<dynamic> route) => false,
        );
      }
    } else {
      _showSnackBar('Добавьте фото!');
    }
  }

  void clearFields() {
    setState(() {
      selectedPhoto = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Создайте фото!')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImagePickerField(
              onPickImage: (photo) {
                setState(() {
                  selectedPhoto = photo;
                });
              },
            ),
            SizedBox(height: 20),
            if (selectedPhoto != null)
              Transform.flip(
                flipX: true,
                child: Text('Ого,да оно отзеркалено ! 😲'),
              ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: saveNewPhoto, child: Text('Сохранить')),
          ],
        ),
      ),
    );
  }
}
