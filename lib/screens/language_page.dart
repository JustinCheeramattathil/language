import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:language/services/language_service.dart';

class LanguagePage extends StatelessWidget {
  const LanguagePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Provider.of<LanguageProvider>(context, listen: false)
                    .changeLanguage(const Locale('en', 'US'));
                Navigator.pop(context);
              },
              child: const Text(
                'English',
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Provider.of<LanguageProvider>(context, listen: false)
                    .changeLanguage(const Locale('es', 'ES'));
                Navigator.pop(context);
              },
              child: const Text(
                'Spanish',
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Provider.of<LanguageProvider>(context, listen: false)
                    .changeLanguage(const Locale('ml', 'ML'));
                Navigator.pop(context);
              },
              child: const Text(
                'Malayalam',
                style: TextStyle(
                  fontSize: 20,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
