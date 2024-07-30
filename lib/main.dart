import 'package:flutter/material.dart';
import 'package:flutter_animation_2/tween_rotate.dart';
import 'tween_container.dart';
import 'tween_positioned.dart';
import 'tween_opacity.dart';
import 'tween_scale.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Tween Animation Examples')),
        body: Center(
          child: TweenAnimationExample(),
        ),
      ),
    );
  }
}

class TweenAnimationExample extends StatefulWidget {
  @override
  _TweenAnimationExampleState createState() => _TweenAnimationExampleState();
}

class _TweenAnimationExampleState extends State<TweenAnimationExample> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TweenOpacity()),
              );
            },
            child: const Text('Change Opacity'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TweenContainer()),
              );
            },
            child: const Text('Change Color'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TweenPositioned()),
              );
            },
            child: const Text('Change Position'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TweenScale()),
              );
            },
            child: const Text('Change Scale'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TweenRotation()),
              );
            },
            child: const Text('Rotate'),
          ),
        ],
      ),
    );
  }
}
