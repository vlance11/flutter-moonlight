import 'package:flutter/material.dart';
import 'package:moonlight/constants/app.dart';
import 'constants/routes.dart';
import 'constants/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: lightTheme,
      themeMode: ThemeMode.system,
      initialRoute: rootRoute,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
