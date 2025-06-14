import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPhotoScreen extends ConsumerStatefulWidget {
  const AddPhotoScreen({super.key});

  @override
  ConsumerState createState() => _AddPhotoScreenState();
}

class _AddPhotoScreenState extends ConsumerState<AddPhotoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Создайте фото!')));
  }
}
