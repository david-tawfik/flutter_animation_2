import 'package:flutter/material.dart';

class TweenPositioned extends StatefulWidget {
  const TweenPositioned({super.key});

  @override
  State<TweenPositioned> createState() => _TweenPositionedState();
}

class _TweenPositionedState extends State<TweenPositioned> {
  bool _isTopLeft = true;

  void _togglePosition() {
    setState(() {
      _isTopLeft = !_isTopLeft;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tween Animation Builder')),
      body: Stack(
        children: [
          TweenAnimationBuilder<double>(
            tween: Tween<double>(
              begin: _isTopLeft ? 0.0 : 200.0,
              end: _isTopLeft ? 200.0 : 0.0,
            ),
            duration: const Duration(seconds: 1),
            builder: (context, value, child) {
              return Positioned(
                left: value,
                top: value,
                child: child!,
              );
            },
            child: Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _togglePosition,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }
}