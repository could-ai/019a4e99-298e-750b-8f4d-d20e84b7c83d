import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/dashboard_screen.dart';
import 'package:couldai_user_app/screens/placeholder_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mindful Companion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey.shade900,
        scaffoldBackgroundColor: Colors.grey.shade900,
        cardColor: Colors.blueGrey.shade800,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white70),
          titleLarge: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueGrey.shade900,
          elevation: 0,
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Brightness.dark,
          secondary: Colors.tealAccent,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardScreen(),
        '/emotion_detector': (context) => const PlaceholderScreen(title: 'Emotion Detector'),
        '/mind_and_soul': (context) => const PlaceholderScreen(title: 'Mind & Soul Activities'),
        '/art_therapy': (context) => const PlaceholderScreen(title: 'Art Therapy'),
        '/chatbot': (context) => const PlaceholderScreen(title: 'Chat with Abdi Y'),
        '/progress': (context) => const PlaceholderScreen(title: 'My Progress'),
        '/settings': (context) => const PlaceholderScreen(title: 'Settings'),
      },
    );
  }
}
