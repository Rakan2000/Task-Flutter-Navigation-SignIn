import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_sign/views/home_screen.dart';

void main() {
  runApp(const MyHomePage());
}

//////////////////////
final GoRouter _router = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) {
      return HomeScreen();
    },
  ),
  GoRoute(
    path: '/welocome',
    builder: (BuildContext context, GoRouterState state) {
      return HomeScreen();
    },
  ),
]);

//////////////////////////

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
