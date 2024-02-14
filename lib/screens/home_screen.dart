import 'package:flutter/material.dart';
import 'package:language/screens/language_page.dart';
import 'package:language/services/language_service.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Language'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LanguagePage(),
                    ));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Consumer<LanguageProvider>(
          builder: (context, languageProvider, child) {
            String welcomeText =
                languageProvider.getTranslatedValue('welcome_message');
            return Text(welcomeText);
          },
        ),
      ),
    );
  }
}
