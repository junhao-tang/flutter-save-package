import 'dart:io';
import 'dart:typed_data';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'constants.dart';

Future<String?> save(FileType type, String filename, Uint8List data) async {
  String path = (await getDownloadLocation(filename))!;
  File file = File(path);
  await file.writeAsBytes(data);
  return path;
}

Future<String?> getDownloadLocation(String filename) async =>
    p.join((await getApplicationDocumentsDirectory()).path, filename);
