import 'package:editor_richtext_flutter/app/models/home/home.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: Center(
      
      child: Builder(builder: (context) {
        Future.delayed(const Duration(seconds: 3)).then((_) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const MyHomePage()));
        });
        return const Text(
          'Rich Text Editor',
          style: TextStyle(color: Colors.blue, fontSize: 40),
        );
      }),
    ));
  }
}
