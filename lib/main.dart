import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

import 'di/get_it.dart';
import 'presentation/movie_app.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  getItSetup();
  runApp(const MovieApp());
}
