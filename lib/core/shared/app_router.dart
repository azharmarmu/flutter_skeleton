import 'package:go_router/go_router.dart';

import '../../presentation_layer/ui/auth/auth_page.dart';
import '../../presentation_layer/ui/profile/profile_page.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (_, state) => const AuthPage(),
    ),
    GoRoute(
      path: '/profile',
      builder: (_, state) => const ProfilePage(),
    )
  ],
);
