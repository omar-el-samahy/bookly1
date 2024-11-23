import 'package:flutter/material.dart';

class SplashImage extends StatefulWidget {
  const SplashImage({super.key});

  @override
  State<SplashImage> createState() => _SplashImageState();
}

class _SplashImageState extends State<SplashImage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> image;
  @override
  void initState() {
    // TODO: implement initState
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    image = Tween<Offset>(begin: const Offset(0, -3), end: const Offset(0, 0))
        .animate(animationController);
    animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.5),
      child: SlideTransition(
        position: image,
        child: Container(
          alignment: Alignment.center,
          width: 75,
          height: 16,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: const DecorationImage(
                image: AssetImage("assets/bookly_logo.png"), fit: BoxFit.fill),
          ),
        ),
      ),
    );
  }
}
