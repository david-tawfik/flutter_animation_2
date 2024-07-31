import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  @override
  _AnimatedIconState createState() => _AnimatedIconState();
}

class _AnimatedIconState extends State<AnimatedIconWidget> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleIcon() {
    setState(() {
      if (_isPlaying) {
        _controller.reverse();
      } else {
        _controller.forward();
      }
      _isPlaying = !_isPlaying;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Animated Icon Demo')),
      body: Center(
        child: IconButton(
          iconSize: 100,
          icon: AnimatedIcon(
            icon: AnimatedIcons.play_pause,
            progress: _controller,
          ),
          onPressed: _toggleIcon,
        ),
      ),
    );
  }
}