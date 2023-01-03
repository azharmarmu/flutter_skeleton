import 'package:get_it/get_it.dart';

import '../../data_layer/config.dart';
import '../../domain_layer/config.dart';
import '../../presentation_layer/config.dart';

final locator = GetIt.I;

void init() {
  apiConfig(locator);
  dsConfig(locator);
  repoConfig(locator);
  usecaseConfig(locator);
  blocConfig(locator);
}
