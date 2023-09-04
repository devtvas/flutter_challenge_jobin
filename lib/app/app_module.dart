import 'package:flutter_modular/flutter_modular.dart';
import 'package:jobin/app/modules/common/common_module.dart';

import 'modules/home/home_module.dart';
import 'modules/splash/splash_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    // Bind.lazySingleton((i) => Dio(BaseOptions(
    //     baseUrl: Paths.baseUrl,
    //     connectTimeout: const Duration(seconds: 5000),
    //     receiveTimeout: const Duration(seconds: 10000),
    //     sendTimeout: const Duration(seconds: 10000)))),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute('/splash/', module: SplashModule()),
    ModuleRoute('/home/', module: HomeModule()),
    ModuleRoute('/common/', module: CommonModule()),
  ];
}
