import 'package:flutter/material.dart';
import 'package:forex/pages/splash_page.dart';
import 'package:forex/services/rc_service/remote_config_service.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: RCService.mode ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
    );
  }
}
