import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/imgs/background/cycling-race-7299238_960_720.jpg",
              fit: BoxFit.cover,
            ),
          ),

          // Przyciemnienie (overlay)
          Positioned.fill(
            child: Container(
              color: Color.fromRGBO(0, 0, 0, 0.486)
            ),
          ),

          // Treść
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 160, left: 30, right: 25),
                  child: Text(
                    "Welcome to your personal AI coach",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.displayLarge?.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
                SizedBox(height: (MediaQuery.of(context).size.height/1.9)),
                Text(
                  'Loading ...',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(color: Colors.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
