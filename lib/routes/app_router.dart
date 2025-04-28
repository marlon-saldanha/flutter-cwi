import 'package:filme_flix/components/bottom_navigation_bar.dart';
import 'package:filme_flix/pages/favorite_screen.dart';
import 'package:filme_flix/pages/home_screen.dart';
import 'package:filme_flix/pages/landing_screen.dart';
import 'package:filme_flix/pages/movie_detail.dart';
import 'package:filme_flix/pages/search_screen.dart';
import 'package:filme_flix/pages/settings_screen.dart';
import 'package:filme_flix/pages/sign_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _sectionNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      name: 'landing',
      path: '/',
      builder: (context, state) => LandingScreen(),
    ),
    GoRoute(
      name: 'signin',
      path: '/sign-in',
      builder: (context, state) => SignInScreen(),
    ),
    GoRoute(
      name: 'detail',
      path: '/detail',
      builder: (context, state) => MovieDetailScreen(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) => ScaffoldWithNavbar(navigationShell),
      branches: [
        StatefulShellBranch(
          navigatorKey: _sectionNavigatorKey,
          routes: <RouteBase>[
            GoRoute(
              name: 'home',
              path: '/home',
              builder: (context, state) => HomeScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: 'search',
              path: '/search',
              builder: (context, state) => SearchScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: 'favorite',
              path: '/favorite',
              builder: (context, state) => FavoriteScreen(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: <RouteBase>[
            GoRoute(
              name: 'settings',
              path: '/settings',
              builder: (context, state) => SettingsScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
