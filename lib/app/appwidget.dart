   
import 'package:flutter/material.dart';

import 'models/editor/editor.dart';
import 'models/home/home.dart';
import 'models/splash/splash.dart';


class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (_) => const SplashPage(),
          '/auth': (_) => const EditorText(),
          '/home': (_) => const MyHomePage(),
        },
      
    );
  }
}