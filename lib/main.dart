import 'package:flutter/material.dart';
import 'package:flutter_animation_2/curve_animation.dart';
import 'package:flutter_animation_2/tween_rotate.dart';
import 'tween_container.dart';
import 'animated_icon.dart';
import 'tween_multi_property.dart';
import 'tween_positioned.dart';
import 'tween_opacity.dart';
import 'tween_scale.dart';
import 'tween_shape.dart';
import 'tween_size.dart';

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
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TweenSize()),
              );
            },
            child: const Text('Animate Size'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const TweenShape()),
              );
            },
            child: const Text('Animate Shape'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TweenMultiProperty()),
              );
            },
            child: const Text('Multiple Property Animation'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CurveAnimation()),
              );
            },
            child: const Text('Curve'),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AnimatedIconWidget()),
              );
            },
            child: const Text('Animated Icon Example'),
          ),
        ],
      ),
    );
  }
}
