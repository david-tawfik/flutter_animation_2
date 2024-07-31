import 'package:flutter/material.dart';

class TweenMultiProperty extends StatefulWidget {
  const TweenMultiProperty({super.key});

  @override
  State<TweenMultiProperty> createState() => _TweenMultiPropertyState();
}

class _TweenMultiPropertyState extends State<TweenMultiProperty> {
  bool _isExpanded = false;

  void _toggleProperties() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Multiple Property Animation')),
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
                return TweenAnimationBuilder<double>(
                  tween: Tween<double>(
                    begin: _isExpanded ? 1.0 : 0.0,
                    end: _isExpanded ? 0.0 : 1.0,
                  ),
                  duration: const Duration(seconds: 1),
                  builder: (context, opacity, child) {
                    return TweenAnimationBuilder<double>(
                      tween: Tween<double>(
                        begin: _isExpanded ? 0.0 : 200.0,
                        end: _isExpanded ? 200.0 : 0.0,
                      ),
                      duration: const Duration(seconds: 1),
                      builder: (context, position, child) {
                        return Opacity(
                          opacity: opacity,
                          child: Container(
                            width: size,
                            height: size,
                            color: Colors.blue,
                            margin: EdgeInsets.only(left: position, top: position),
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleProperties,
              child: const Text('Toggle Properties'),
            ),
          ],
        ),
      ),
    );
  }
}