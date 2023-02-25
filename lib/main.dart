import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'views/onboarding_screen.dart';
import 'views/login_screen.dart';
import 'views/login_acount.dart';
import 'views/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => const Onboardingscreen(),
        'registration_screen': (context) => const LoginAcount(),
        'login_screen': (context) => const LoginScreen(),
        'home_screen': (context) => const HomeScreen()      
      },
    );
  }
}