import 'package:flutter/material.dart';
import 'package:taste2plate/screens/home.dart';
import 'package:taste2plate/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const route = 'splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2000), (() {}));
    // ignore: use_build_context_synchronously
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Image.asset("assets/images/final-splash-screen.png",
            fit: BoxFit.contain),
      ),
    );
  }
}
