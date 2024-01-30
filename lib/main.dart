import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:forex/services/rc_service/remote_config_service.dart';
import 'app.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  RCService.init();
  RCService.activate();
  runApp(const MyApp());
}
