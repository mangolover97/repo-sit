// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'home.dart';
import 'CovidForm.dart';
import 'package:htn_app/login.dart';
import 'package:htn_app/loginscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:htn_app/loginscreen.dart';

void main() {
  runApp(new App());


 main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());

}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      home: Home(),
    );
  }
}

class CovidScreening extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'SitDown',
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: new COVIDScreening(title: 'COVID Screening Form'),
    );
  }
}
