import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:multi_player/home/home_screen.dart';

class Routes {
  static const String home = '/';
}

final kRouterProvider = Provider((ref) {
  return GoRouter(
    routes: [
      GoRoute(
        path: Routes.home,
        builder: (context, state) {
          return HomeScreen();
        },
      ),
    ],
  );
});
