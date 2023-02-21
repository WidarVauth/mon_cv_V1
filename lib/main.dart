import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'FormationDiplome/Formation.dart';
import 'experience/experiencePro.dart';
import 'historique/historique.dart';
import 'homepage/home.dart';
import 'homepage/recup_data_home/provider.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      name: 'home',
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return  Home();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'Formation',
          pageBuilder: (context, state) => NoTransitionPage<void>(

            child: const Formation(),
          ),
        ),

        GoRoute(
          path: 'experience',
          pageBuilder: (context, state) => NoTransitionPage<void>(

            child: const Experience(),
          ),
        ),

        GoRoute(
          path:'historique',
          pageBuilder:(context,state) => NoTransitionPage<void>(
            child: const historique(),
          ),
        )

      ],

    ),
  ],

);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(

      providers: [
        ChangeNotifierProvider(create: (context) => RecupDataHomeProvider()),
      ],
      child: MaterialApp.router(

        debugShowCheckedModeBanner: false,
        title: 'cv',
        theme: ThemeData(
        ),
        routerConfig:  router,
      ),
    );
  }
}

