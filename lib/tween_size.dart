import 'package:flutter/material.dart';

class TweenSize extends StatefulWidget {
  const TweenSize({super.key});

  @override
  State<TweenSize> createState() => _TweenSizeState();
}

class _TweenSizeState extends State<TweenSize> {
  bool _isExpanded = false;

  void _toggleSize() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tween Animation Builder')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder<double>(
              tween: Tween<double>(
                begin: _isExpanded ? 0.0 : 100.0,
                end: _isExpanded ? 100.0 : 0.0,
              ),
              duration: const Duration(seconds: 1),
              builder: (context, size, child) {
                return Container(
                  width: size,
                  height: size,
                  color: Colors.blue,
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleSize,
              child: const Text('Toggle Size'),
            ),
          ],
        ),
      ),
    );
  }
}