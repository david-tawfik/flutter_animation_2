import 'package:flutter/material.dart';

class TweenShape extends StatefulWidget {
  const TweenShape({super.key});

  @override
  State<TweenShape> createState() => _TweenShapeState();
}

class _TweenShapeState extends State<TweenShape> {
  bool _isCircle = true;

  void _toggleShape() {
    setState(() {
      _isCircle = !_isCircle;
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
            TweenAnimationBuilder<BorderRadius>(
              tween: Tween<BorderRadius>(
                begin: _isCircle ? BorderRadius.circular(50.0) : BorderRadius.circular(0.0),
                end: _isCircle ? BorderRadius.circular(0.0) : BorderRadius.circular(50.0),
              ),
              duration: const Duration(seconds: 1),
              builder: (context, borderRadius, child) {
                return Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: borderRadius,
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleShape,
              child: const Text('Toggle Shape'),
            ),
          ],
        ),
      ),
    );
  }
}