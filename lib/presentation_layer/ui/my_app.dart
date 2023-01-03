import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../blocs/theme_cubit.dart';
import '../../core/shared/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      builder: (ctx, child) {
        ScreenUtil.init(ctx);
        print('child: $child');
        return BlocProvider(
          create: (_) => ThemeCubit(),
          child: BlocBuilder<ThemeCubit, ThemeData>(
            builder: (_, theme) {
              return Theme(
                data: theme,
                child: child!,
              );
            },
          ),
        );
      },
    );
  }
}
