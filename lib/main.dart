import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'features/login/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initialize GoRouter
    final GoRouter goRouter = GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const LoginScreen(),
        ),
        // Add more routes here
      ],
    );

    return MaterialApp.router(
      title: 'Flutter Demo',
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
      routeInformationProvider: goRouter.routeInformationProvider, // Add this for better state management.
    );
  }
}
