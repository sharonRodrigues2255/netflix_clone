import 'package:flutter/material.dart';
import 'package:netflix/domain/core/di/injectable.dart';

import 'package:netflix/presentation/main_page/screen_mainpage.dart';

Future<void> main() async {
  WidgetsFlutterBinding();
  await configureInjection();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.black),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.dark,
      home: ScreenMainPage(),
    );
  }
}
