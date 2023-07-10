import 'dart:async';
import 'package:flutter/material.dart';

class AnimationControllerPage extends StatefulWidget {
  const AnimationControllerPage({Key? key}) : super(key: key);

  @override
  State<AnimationControllerPage> createState() =>
      _AnimationControllerPageState();
}

class _AnimationControllerPageState extends State<AnimationControllerPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize the animation controller
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));

    // Define the animation
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller)
      ..addListener(() {
        setState(() {});
      });

    //start the animation
    _controller.forward();
  }

  @override
  void dispose() {
    //Dispose the animation controller
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Controller Page'),
      ),
      body: Center(
        child: Opacity(
          opacity: _animation.value,
          child: const Text(
            'Hello, world!',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}