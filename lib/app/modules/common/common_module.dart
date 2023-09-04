import 'package:flutter_modular/flutter_modular.dart';

import 'presentation/common_form_conclued_page.dart';
import 'presentation/common_form_page.dart';

class CommonModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => const CommonFormPage()),
    ChildRoute('/commonFormConclued',
        child: (_, args) => const CommonFormConcluedPage()),
  ];
}
