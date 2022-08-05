import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContentAboutMe extends StatelessWidget {
  const ContentAboutMe({Key? key}) : super(key: key);

  Widget _iconContent(IconData iconData, VoidCallback onTap) {
    return IconButton(
      icon: Icon(iconData, color: Colors.white),
      onPressed: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Hello I am",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        const Text(
          "Fayez\nAlmutairi",
          style: TextStyle(
              color: Colors.white,
              fontSize: 70,
              fontWeight: FontWeight.bold,
              height: 1),
        ),
        Row(
          children: const [
            Text(
              "A young  ",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text(
              "UI  ",
              style: TextStyle(color: Colors.orange, fontSize: 20),
            ),
            Text(
              "Developer mobiles and web ",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )
          ],
        ),
        const SizedBox(height: 32),
        Text(
          "Find me on",
          style: TextStyle(color: Colors.white),
        ),
        Row(
          children: [
            _iconContent(FontAwesomeIcons.twitter,(){}),
            _iconContent(FontAwesomeIcons.github,(){}),
            _iconContent(FontAwesomeIcons.tiktok,(){}),
            _iconContent(FontAwesomeIcons.whatsapp,(){}),
            _iconContent(FontAwesomeIcons.facebook,(){}),
          ],
        )
      ],
    );
  }
}
