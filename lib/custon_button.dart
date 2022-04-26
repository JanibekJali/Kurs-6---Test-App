import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({this.text, this.tus, this.onPressed});
  final String text;
  final Color tus;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // primary: const Color(0xff4EA052),
          primary: tus,
        ),
        onPressed: onPressed,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 140.0, vertical: 25.0),
          child: Text(
            text,
            style: const TextStyle(fontSize: 25.0),
          ),
        ),
      ),
    );
  }
}
