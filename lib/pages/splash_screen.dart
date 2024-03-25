import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  final Widget? child;
  const SplashScreen({super.key, required this.child});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
            builder: (context) => widget.child!,
          ),
          (route) => false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Center(
          child: Image.asset(
            'assets/fbog.png',
            width: 100,
            height: 100,
          ),
        ),
        Positioned(
          bottom: 50,
          left: 160,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('from'),
              Row(
                children: [
                  Image.asset(
                    'assets/meta.png',
                    width: 25,
                    height: 25,
                  ),
                  const SizedBox(width: 2,),
                  const Text('Meta',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                ],
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
