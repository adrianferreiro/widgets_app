import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
    // initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: HomeScreen.name,
        builder: (context, sate) => const HomeScreen(),
      ),
      GoRoute(
        path: '/buttons',
        name: ButtonsScreen.name,
        builder: (context, sate) => const ButtonsScreen(),
      ),
      GoRoute(
        path: '/cards',
        name: CardsScreen.name,
        builder: (context, sate) => const CardsScreen(),
      ),
      GoRoute(
        path: '/progress',
        name: ProgressScreen.name,
        builder: (context, sate) => const ProgressScreen(),
      ),
    ]);
