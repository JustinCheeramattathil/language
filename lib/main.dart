import 'package:flutter/material.dart';
import 'package:language/screens/home_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:language/screens/splash_screen.dart';
import 'package:language/services/language_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LanguageProvider(),
        )
      ],
      child: const MaterialApp(
        title: 'Language',
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: [
          Locale('en', 'US'), // English
          Locale('es', 'ES'), //spanish
          Locale('ml', 'ML'), //malayalam
        ],
        home: SplashScreen(),
      ),
    );
  }
}
