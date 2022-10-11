import 'package:flutter/material.dart';
import 'package:flutter_widgets/views/pages.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => Mission1(),
      }
    );
  }
}