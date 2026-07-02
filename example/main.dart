import 'package:app_float_button/app_float_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Float Button Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App Float Button Example')),
      body: const Center(child: Text('Press the floating button')),
      floatingActionButton: AppFloatingActionBtn(
        icon: Icons.add,
        label: 'Add',
        onPressed: () {},
      ),
    );
  }
}
