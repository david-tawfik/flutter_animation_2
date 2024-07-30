import 'package:flutter/material.dart';

class TweenOpacity extends StatefulWidget {
const TweenOpacity({super.key});

  @override
  State<TweenOpacity> createState() => _TweenOpacityState();
}

class _TweenOpacityState extends State<TweenOpacity> {
  double _opacity = 1.0;

  void _toggleOpacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.0 : 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tween Opacity')),
      body: Center(
        child: Column(
          children: [
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 1.0, end: _opacity),
              duration: const Duration(seconds: 1),
              builder: (context, value, child) {
                return Opacity(
                  opacity: value,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.black,
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: _toggleOpacity,
              child: const Text('Toggle Opacity'),
            ),
          ],
        ),
      ),
    );
  }
}