import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/initializer/app_di.dart' as di;
import 'presentation_layer/ui/my_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  di.init();

  runApp(const MyApp());
}
