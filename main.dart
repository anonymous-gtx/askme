import 'package:firebase_core/firebase_core.dart';
import 'auth_page.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart'
    show
        BuildContext,
        Key,
        MaterialApp,
        StatelessWidget,
        Widget,
        WidgetsFlutterBinding,
        runApp;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ask Me',
      home: AuthPage(),
    );
  }
}
