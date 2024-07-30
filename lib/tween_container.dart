import 'package:flutter/material.dart';

class TweenContainer extends StatefulWidget {
  @override
  _TweenContainerState createState() => _TweenContainerState();
}

class _TweenContainerState extends State<TweenContainer> {
  double _width = 100.0;
  double _height = 100.0;
  Color _color = Colors.blue;

  void _changeContainer() {
    setState(() {
      _color = _color == Colors.blue ? Colors.red : Colors.blue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tween Animation Builder')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TweenAnimationBuilder<Color?>(
              tween: ColorTween(begin: Colors.blue, end: _color),
              duration: Duration(seconds: 1),
              builder: (context, color, child) {
                return Container(
                  width: _width,
                  height: _height,
                  color: color,
                );
              },
            ),
            ElevatedButton(
              onPressed: _changeContainer,
              child: Text('Change Color'),
            ),
          ],
        ),
      ),
    );
  }
}