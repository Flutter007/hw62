import 'dart:io';
import 'package:uuid/uuid.dart';

final uuid = Uuid();

class Photo {
  final String id;

  final File? photo;

  Photo({String? id, required this.photo}) : id = id ?? uuid.v4();
}
