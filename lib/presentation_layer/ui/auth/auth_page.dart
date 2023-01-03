import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/initializer/app_di.dart';
import '../../blocs/auth/auth_cubit.dart';
import '../home/home_page.dart';
import '../login/login_page.dart';
import '../splash/splash_page.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => locator<AuthCubit>()..checkSession(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (_, state) {
          if (state is Authenticated) return const HomePage();
          if (state is UnAuthenticated) return const LoginPage();
          return const SplashPage();
        },
      ),
    );
  }
}
