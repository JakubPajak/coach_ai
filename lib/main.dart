import 'package:coach_ai/views/home_page.dart';
import 'package:coach_ai/views/landing_page.dart';
import 'package:coach_ai/views/profile_page.dart';
import 'package:coach_ai/views/workout_summary.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CoachAI',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 29, 85, 138), 
          surface: const Color.fromARGB(255, 222, 237, 255),
          primaryContainer: Colors.white70,
          secondaryContainer: const Color.fromARGB(255, 74, 158, 255),
          onPrimary: Colors.black,
          brightness: Brightness.dark),
        useMaterial3: true,
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          titleLarge: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w700,
            color: Colors.white
          ),
          titleMedium: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),
          bodyLarge: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.normal,
            color: Colors.white
          ),
          bodyMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black
          ),
          bodySmall: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.normal,
            color: Colors.black
          )
        ),
        fontFamily: 'Ubuntu',
      ),
      routes: {
        '/landing_page': (context) => const LandingPage(),
        '/home-page': (context) => const HomePage(),
        '/workout-summary': (context) => const WorkoutSummary(),
        '/profile': (context) => const ProfilePage(),
      },
      initialRoute: '/profile',
    );
  }
}