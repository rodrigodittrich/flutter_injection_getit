import 'package:flutter_injection_getit/names_repository.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() async {
    GetIt getIt = GetIt.instance;

    getIt.registerLazySingleton<NamesRepository>(
      () => LocalNamesRepository(filter: (_) => true),
      instanceName: "names"
    );

    getIt.registerLazySingleton<NamesRepository>(
      () => LocalNamesRepository(filter: (fisrtName) => fisrtName == 'Rodrigo'),
      instanceName: "fisrtName"
    );

    getIt.registerLazySingleton<NamesRepository>(
      () => LocalNamesRepository(filter: (middleName) => middleName == 'Jonas'),
      instanceName: "middleName"
    );

    getIt.registerLazySingleton<NamesRepository>(
      () => LocalNamesRepository(filter: (lastName) => lastName == 'Dittrich'),
      instanceName: "lastName"
    );
  }

}