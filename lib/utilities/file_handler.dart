import 'dart:html';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:path_provider/path_provider.dart';

class FileHandler {
  // Makes this a singleton class, as we want only want a single
  // instance of this object for the whole application
  FileHandler._privateConstructor();
  static final FileHandler instance = FileHandler._privateConstructor();

  static File? _file;
  static final _fileName = 'user_data.txt';

  // Get the data file
  Future<File> get file async {
    if (_file != null) return _file!;

    _file = await _initFile();
    return _file!;
  }

  // Inititalize file
  Future<File> _initFile() async {
    final _directory = await getApplicationDocumentsDirectory();
    final _path = _directory.path;
    return File('$_path/$_fileName');
  }

  static Set<User> _userSet = {};

  Future<void> writeUser(User user) async {
    final File fl = await file;
    _userSet.add(user);

    // Now convert the set to a list as the jsonEncoder cannot encode
    // a set but a list.
    final _userListMap = _userSet.map((e) => e.toJson()).toList();

    await fl.writeAsString(jsonEncode(_userListMap));
  }
}
