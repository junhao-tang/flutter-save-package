# Flutter - Save

## Features

HelloWorld for creating package
Platform independent approach to save target binary
- Most platforms (dart.library.io) -> File saves
- Web (dart.library.web) -> Download thru url


## Usage

```
Future<String?> save(FileType type, String filename, Uint8List data)

@return
    Future<String?>: return file path (directory + name) if it's dart.library.io
```

### Save screenshot as image (with `screenshot` package):

```dart
final bytes = await screenshotController.capture();
if (bytes != null) {
    String? result = await save(FileType.imagePng, '$randomFilename.png', bytes);
    if (result != null) OpenFile.open(result);
}
```
