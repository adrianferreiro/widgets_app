import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
    // initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, sate) => const HomeScreen(),
      ),
      GoRoute(
        path: '/buttons',
        builder: (context, sate) => const ButtonsScreen(),
      ),
      GoRoute(
        path: '/cards',
        builder: (context, sate) => const CardsScreen(),
      ),
    ]);
