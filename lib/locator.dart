import 'package:aethon_app_1/core/providers/config_pr.dart';
import 'package:aethon_app_1/core/services/auth_s.dart';
import 'package:aethon_app_1/core/services/config_s.dart';
import 'package:get_it/get_it.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => ConfigService());
  locator.registerLazySingleton(() => ConfigModel());
  locator.registerLazySingleton(() => AuthService());
}
