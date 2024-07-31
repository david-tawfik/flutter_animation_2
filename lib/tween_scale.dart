import 'package:flutter/material.dart';

class TweenScale extends StatefulWidget {
  const TweenScale({super.key});

  @override
  State<TweenScale> createState() => _TweenScaleState();
}

class _TweenScaleState extends State<TweenScale> {
  bool _isScaledUp = false;

  void _toggleScale() {
    setState(() {
      _isScaledUp = !_isScaledUp;
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
                begin: _isScaledUp ? 1.0 : 2.0,
                end: _isScaledUp ? 2.0 : 1.0,
              ),
              duration: const Duration(seconds: 1),
              builder: (context, scale, child) {
                return Transform.scale(
                  scale: scale,
                  child: child,
                );
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleScale,
              child: const Text('Scale Up/Down'),
            ),
          ],
        ),
      ),
    );
  }
}