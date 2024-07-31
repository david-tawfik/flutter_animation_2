import 'package:flutter/material.dart';

class TweenRotation extends StatefulWidget {
  const TweenRotation({super.key});

  @override
  State<TweenRotation> createState() => _TweenRotationState();
}

class _TweenRotationState extends State<TweenRotation> {
  bool _isRotated = false;

  void _toggleRotation() {
    setState(() {
      _isRotated = !_isRotated;
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
                begin: _isRotated ? 0.0 : 1.0,
                end: _isRotated ? 1.0 : 0.0,
              ),
              duration: const Duration(seconds: 1),
              builder: (context, rotation, child) {
                return Transform.rotate(
                  angle: rotation * 2.0 * 3.141592653589793,
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
              onPressed: _toggleRotation,
              child: const Text('Rotate'),
            ),
          ],
        ),
      ),
    );
  }
}
