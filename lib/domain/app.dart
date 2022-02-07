import 'package:flutter/material.dart';

import 'features/kitchen/presenters/kitchen_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'D-Kitchen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white.withAlpha(240),
        dividerColor: Colors.black,
        colorScheme: const ColorScheme(
          primary: Color.fromARGB(255, 250, 74, 12),
          primaryVariant: Color.fromARGB(255, 250, 74, 12),
          secondary: Color.fromARGB(255, 244, 123, 10),
          secondaryVariant: Color.fromARGB(255, 244, 123, 10),
          surface: Color.fromARGB(255, 250, 74, 12),
          background: Color.fromARGB(255, 250, 74, 12),
          error: Color.fromARGB(255, 250, 74, 12),
          onPrimary: Color.fromARGB(255, 250, 74, 12),
          onSecondary: Color.fromARGB(255, 250, 74, 12),
          onSurface: Color.fromARGB(255, 250, 74, 12),
          onBackground: Color.fromARGB(255, 250, 74, 12),
          onError: Color.fromARGB(255, 250, 74, 12),
          brightness: Brightness.light,
        ),
      ),
      home: HomePage(),
    );
  }
}
