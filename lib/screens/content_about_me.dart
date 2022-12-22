import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
    final Uri github = Uri.parse("https://github.com/fayezCoder");
    final Uri whatsapp = Uri.parse("https://wa.me/0555861780");
    final Uri tiktok = Uri.parse("https://www.tiktok.com/@fayezcoder");
    final Uri twitter = Uri.parse("https://twitter.com/faizCoder");
    //double screenWidth = MediaQuery.of(context).size.width;
    //double screenHight = MediaQuery.of(context).size.height;

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
        const Text(
          "Find me on",
          style: TextStyle(color: Colors.white),
        ),
        Row(
          children: [
            _iconContent(FontAwesomeIcons.twitter, () {
              launchUrl(twitter);
            }),
            _iconContent(FontAwesomeIcons.github, () {
              launchUrl(github);
            }),
            _iconContent(FontAwesomeIcons.tiktok, () {
              launchUrl(tiktok);
            }),
            _iconContent(FontAwesomeIcons.whatsapp, () {
              launchUrl(whatsapp);
            }),
          ],
        )
      ],
    );
  }
}
