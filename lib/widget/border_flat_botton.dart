import 'package:flutter/material.dart';

// ignore: camel_case_types
class boarderFlatButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double width;
  final double height;

  const boarderFlatButton(
      {super.key,
      required this.title,
      required this.onTap,
      required this.width,
      required this.height});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      // ignore: deprecated_member_use
      child: FlatButton(
        onPressed: onTap,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
            side: const BorderSide(color: Colors.white, width: 1)),
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
