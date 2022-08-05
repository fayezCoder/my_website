import 'package:flutter/material.dart';
import 'package:my_website/widget/border_flat_botton.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  Widget _appBarButton(String title, VoidCallback onTap) {
    // ignore: deprecated_member_use
    return FlatButton(
      onPressed: onTap,
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("fayez coder",
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
            const Spacer(
              flex: 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _appBarButton("about", () {}),
                _appBarButton("contact", () {}),
                _appBarButton("my page", () {}),
                boarderFlatButton(
                    title: "Get started", onTap: () {}, width: 150, height: 50)
              ],
            )
          ],
        ),
      ),
    );
  }
}
