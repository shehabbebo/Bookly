import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/splash/presentation/views/weight/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    slidinganimation = Tween<Offset>(begin: Offset(0, 10), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SizedBox(height: 4),
        slidingText(slidinganimation: slidinganimation),
      ],
    );
  }
}
