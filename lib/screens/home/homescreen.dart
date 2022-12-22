import 'package:flutter/material.dart';
import '../content_about_me.dart';
import '../customAppBar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF0E0C38),
      appBar: PreferredSize(
        preferredSize: screenSize,
        child: const CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            ContentAboutMe(),
            CircleAvatar(
              //minRadius: 1,
              maxRadius: 100,
              backgroundImage: AssetImage("assets/fayez.jpg"),
            )
          ],
        ),
      ),
    );
  }
}
