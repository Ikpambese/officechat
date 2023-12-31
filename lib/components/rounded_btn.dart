import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final VoidCallback onpress;
  final Color color;
  final String title;
  const RoundButton(
      {super.key,
      required this.color,
      required this.onpress,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: color,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onpress,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            title,
          ),
        ),
      ),
    );
  }
}
