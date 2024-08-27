import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:rdp_todolist_mavt/screens/home_page.dart';
import 'firebase_options.dart';

void main() async {

  //initialize flutter bindings
  WidgetsFlutterBinding.ensureInitialized();


  //initialize firebase with the current platform's default options
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );


  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-Do List',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: HomePage(),
    );
  }
}
