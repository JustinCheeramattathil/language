import 'package:flutter/material.dart';
import 'package:language/screens/home_screen.dart';
import 'package:language/services/language_service.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<LanguageProvider>(
              builder: (context, languageProvider, child) {
                String selectLanguageText =
                    languageProvider.getTranslatedValue('select_language');
                return Text(
                  selectLanguageText,
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Consumer<LanguageProvider>(
              builder: (context, languageProvider, child) =>
                  DropdownButton<Locale>(
                value: languageProvider.currentLocale,
                onChanged: (Locale? newLocale) {
                  if (newLocale != null) {
                    languageProvider.changeLanguage(newLocale);
                  }
                },
                items: const [
                  DropdownMenuItem(
                    value: Locale('en', 'US'),
                    child: Text('English'),
                  ),
                  DropdownMenuItem(
                    value: Locale('es', 'ES'),
                    child: Text('Spanish'),
                  ),
                  DropdownMenuItem(
                    value: Locale('ml', 'ML'),
                    child: Text('Malayalam'),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage(),
                      ));
                },
                child: const Text('Continue'))
          ],
        ),
      ),
    );
  }
}
