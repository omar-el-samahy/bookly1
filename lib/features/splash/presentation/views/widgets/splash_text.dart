import 'package:flutter/material.dart';

class SplashText extends StatefulWidget {
  const SplashText({super.key});

  @override
  State<SplashText> createState() => _SplashTextState();
}

class _SplashTextState extends State<SplashText>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> text;
  @override
  void initState() {
    // TODO: implement initState
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    text = Tween<Offset>(begin: const Offset(0, 7), end: const Offset(0, 0))
        .animate(animationController);
    animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: text,
      child: const Center(
        child: Text(
          "Best Books Online App",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
