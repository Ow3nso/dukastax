import 'package:flutter/material.dart';
import 'package:lukhu_packages_pkg/lukhu_packages_pkg.dart'
    show
        DukastaxRoutes,
        ColorSchemeHarmonization,
        DynamicColorBuilder,
        Firebase,
        GoogleFonts,
        LuhkuRoutes,
        MultiProvider,
        NavigationController,
        NavigationControllers,
        NavigationService,
        ReadContext,
        darkColorScheme,
        darkCustomColors,
        lightColorScheme,
        lightCustomColors;

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Map<String, Widget Function(BuildContext)> guardedAppRoutes = {
    ...LuhkuRoutes.guarded,
  };
  Map<String, Widget Function(BuildContext)> openAppRoutes = {
    ...LuhkuRoutes.public,
  };
  runApp(
    MultiProvider(
      providers: [
        ...NavigationControllers.providers(
          guardedAppRoutes: guardedAppRoutes,
          openAppRoutes: openAppRoutes,
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return DynamicColorBuilder(
      builder: (lightDynamic, darkDynamic) {
        ColorScheme lightScheme;
        ColorScheme darkScheme;

        if (lightDynamic != null && darkDynamic != null) {
          lightScheme = lightDynamic.harmonized();
          lightCustomColors = lightCustomColors.harmonized(lightScheme);

          // Repeat for the dark color scheme.
          darkScheme = darkDynamic.harmonized();
          darkCustomColors = darkCustomColors.harmonized(darkScheme);
        } else {
          // Otherwise, use fallback schemes.
          lightScheme = lightColorScheme;
          darkScheme = darkColorScheme;
        }

        return MaterialApp(
          title: "Dukastax",
          routes: {...context.read<NavigationController>().availableRoutes},
          navigatorKey: NavigationService.navigatorKey,
          theme: ThemeData(
            useMaterial3: true,
            colorScheme: lightScheme,
            extensions: [lightCustomColors],
            fontFamily: GoogleFonts.inter().fontFamily,
          ),
          initialRoute: DukastaxRoutes.initialRoute,
          onGenerateRoute: NavigationControllers.materialpageRoute,
        );
      },
    );
  }
}
