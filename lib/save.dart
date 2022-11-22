library save;

export 'src/constants.dart';
export 'src/save_none.dart'
    if (dart.library.io) 'src/save_io.dart'
    if (dart.library.html) 'src/save_html.dart';
