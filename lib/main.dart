import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp]); //Não permite orientacao paisagem
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
