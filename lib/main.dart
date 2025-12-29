import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'home_screen.dart';
import 'search_screen.dart';
import 'reels_kamentariya.dart';
import 'profile_screen.dart';
//salom
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = true;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '𝓘𝓷𝓼𝓽𝓪𝓰𝓻𝓪𝓶',
      theme: isDarkMode 
        ? ThemeData.dark().copyWith(scaffoldBackgroundColor: Colors.black)
        : ThemeData.light().copyWith(scaffoldBackgroundColor: Colors.white),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) => HomeScreen(isDarkMode: isDarkMode),
        '/search': (context) => SearchScreen(isDarkMode: isDarkMode),
        '/reels': (context) => const ReelsKamentariya(),
        '/profile': (context) => ProfileScreen(onToggleTheme: toggleTheme),
      },
    );
  }
}