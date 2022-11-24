import 'dart:convert';
import 'dart:html';
import 'dart:typed_data';

import 'constants.dart';

// https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Common_types
const Map<FileType, String> mimeMap = {
  FileType.imagePng: "image/png",
  FileType.pdf: "application/pdf",
};
const String defaultMimeType = "application/octet-stream";

Future<String?> save(FileType type, String filename, Uint8List data) async {
  final base64EncodedData = base64Encode(data);
  String mimeType = mimeMap[type] ?? defaultMimeType;
  String url = "data:$mimeType;base64,$base64EncodedData";
  AnchorElement anchorElement = AnchorElement(href: url);
  anchorElement.download = filename;
  anchorElement.click();
  return null;
}

Future<String?> getDownloadLocation(String filename) async => null;
