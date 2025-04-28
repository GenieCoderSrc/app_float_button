import 'package:flutter/material.dart';

class AppFloatingActionBtn extends StatelessWidget {
  final String? tag;
  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  const AppFloatingActionBtn({
    super.key,
    required this.onPressed,
    this.label = '',
    this.icon = Icons.add,
    this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return label.isEmpty
        ? FloatingActionButton(
            heroTag: tag,
            onPressed: onPressed,
            child: Icon(icon),
          )
        : FloatingActionButton.extended(
            heroTag: tag,
            onPressed: onPressed,
            label: Text(label),
            icon: Icon(icon),
          );
  }
}
