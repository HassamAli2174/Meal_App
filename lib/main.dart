import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meal_app/screens/tabs.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(204, 0, 105, 131),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: AnimatedSplashScreen(
        curve: Curves.easeInQuad,
        duration: 3000,
        splash: Icon(Icons.restaurant_menu, size: 175, color: Colors.white),
        nextScreen: const TabsScreen(),
        splashTransition: SplashTransition.scaleTransition,
        backgroundColor: theme.colorScheme.onPrimary,
      ),
    );
  }
}
