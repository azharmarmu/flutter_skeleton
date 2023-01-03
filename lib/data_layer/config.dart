import 'package:appwrite/appwrite.dart';
import 'package:get_it/get_it.dart';

import 'appwrite_api.dart';

apiConfig(GetIt locator) {
  locator.registerLazySingleton<Client>(
    () => Client(),
  );
  locator.registerLazySingleton<AppWriteApi>(
    () => AppWriteApi(locator<Client>()),
  );
}

dsConfig(GetIt locator) {}
repoConfig(GetIt locator) {}
