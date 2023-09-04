import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';
import 'app/core/database/hive_config.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //Não permite orientacao paisagem
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  //initialize FlutterNativeSplash
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  //initialize hive
  HiveConfig.start();
  //inicialize Modular
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
