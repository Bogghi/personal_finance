import 'package:flutter/material.dart';

//pages
import 'package:personal_finance/utils/navigation_controller.dart';

class App extends StatelessWidget {
  final ThemeData theme;

  const App({
    super.key,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      initialRoute: '/',
      routes: {
        '/': (context) => NavigationController(),
      },
    );
  }
}