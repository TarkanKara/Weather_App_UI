import 'package:flutter/material.dart';

class SliderDot extends StatelessWidget {
  bool isActive;
  SliderDot({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        width: isActive ? 18 : 8,
        height: 8,
        decoration: BoxDecoration(
          color: isActive ? Colors.green : Colors.white54,
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      ),
    );
  }
}
