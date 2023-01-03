import 'package:get_it/get_it.dart';

import 'blocs/auth/auth_cubit.dart';
import 'blocs/theme_cubit.dart';

blocConfig(GetIt locator) {
  locator.registerLazySingleton<ThemeCubit>(
    () => ThemeCubit(),
  );
  locator.registerLazySingleton<AuthCubit>(
    () => AuthCubit(locator()),
  );
}
