import 'package:flutter/material.dart';

class LanguageProvider extends ChangeNotifier {
  Locale _currentLocale = const Locale('en', 'US');
  late Map<String, Map<String, String>> _localizedStrings;

  LanguageProvider() {
    // Initialize localized strings
    _localizedStrings = {
      'en': {
        'select_language': 'Select your Language',
        'welcome_message': 'Welcome to Towner solutions',
        // Add other English translations here
      },
      'es': {
        'select_language': 'Selecciona tu Idioma',
        'welcome_message': 'Bienvenido a Towner solutions',
        // Add other Spanish translations here
      },
      'ml': {
        'select_language': 'ഭാഷ തിരഞ്ഞെടുക്കുക',
        'welcome_message': 'ടൗണർ സോലൂഷന്സിലേക്ക് സ്വാഗതം',
        // Add other Malayalam translations here
      },
    };
  }

  Locale get currentLocale => _currentLocale;

  void changeLanguage(Locale newLocale) {
    _currentLocale = newLocale;
    notifyListeners();
  }

  String getTranslatedValue(String key) {
    return _localizedStrings[_currentLocale.languageCode]![key] ?? '';
  }
}
