



//import 'package:flutter/material.dart';
//import 'package:bdcoe/app_screens/nav.dart';



//import 'dart:io';
//import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'app_screens/login.dart';





class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: LoginPage(),
    );
  }
}


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}