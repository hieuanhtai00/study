import 'package:get_it/get_it.dart';

class Injector {
  GetIt getIt = GetIt.instance;

  void configDependencies() {
    _configBloc();
    _configUseCase();
    _configRepository();
    _configFirebase();
  }

  _configBloc() {}
  _configUseCase() {}
  _configRepository() {}
  _configFirebase() {}
}
