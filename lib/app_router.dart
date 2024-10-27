import 'package:go_router/go_router.dart';

import 'features/login/login_screen.dart';

enum AppRoute { login, homeScreen }

final goRouter = GoRouter(
  initialLocation: '/',
  debugLogDiagnostics: false,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      name: AppRoute.login.name,
      builder: (context, state) {
        return const LoginScreen();
      },
    ),
  ],
);
