import 'package:flutter/material.dart';

class CurveAnimation extends StatefulWidget {
  @override
  _CurveAnimationState createState() => _CurveAnimationState();
}

class _CurveAnimationState extends State<CurveAnimation> {
  bool _isExpanded = false;
  bool _isBounceOut = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Curve Animation Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TweenAnimationBuilder<double>(
              tween: Tween<double>(
                begin: _isExpanded ? 0.0 : 100.0,
                end: _isExpanded ? 100.0 : 0.0,
              ),
              curve: _isBounceOut? Curves.bounceOut : Curves.easeIn,
              duration: const Duration(seconds: 2),
              builder: (context, value, child) {
                return Container(
                  width: value,
                  height: value,
                  color: Colors.blue,
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: Text(_isExpanded ? 'Shrink' : 'Expand'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isBounceOut = !_isBounceOut;
                });
              },
              child: const Text('Change curve'),
            ),
          ],
        ),
      ),
    );
  }
}