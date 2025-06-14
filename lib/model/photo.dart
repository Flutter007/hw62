import 'dart:io';

class Photo {
  final String id;
  final String title;
  final File? photo;

  Photo({required this.id, required this.title, required this.photo});
}
