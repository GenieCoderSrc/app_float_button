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

  void _onMainButtonPressed() {
    debugPrint('Main FAB pressed');
  }

  void _onSpeedDialItem(String label) {
    debugPrint('$label pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App Float Button Example')),
      body: const Center(child: Text('Press the floating button')),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SpeedDial(
            onOpenIcon: Icons.menu,
            onCloseIcon: Icons.close,
            speedDialChildren: [
              SpeedDialChild(
                child: const Icon(Icons.mail),
                label: 'Mail',
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                onPressed: () => _onSpeedDialItem('Mail'),
              ),
              SpeedDialChild(
                child: const Icon(Icons.share),
                label: 'Share',
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                onPressed: () => _onSpeedDialItem('Share'),
              ),
            ],
          ),
          const SizedBox(height: 12),
          AppFloatingActionBtn(
            icon: Icons.add,
            label: 'Add',
            onPressed: _onMainButtonPressed,
          ),
        ],
      ),
    );
  }
}
