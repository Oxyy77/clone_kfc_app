import 'package:flutter/material.dart';
import './login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool _showImages = false;

  @override
  void initState() {
    super.initState();
    _startSplashSequence();
  }

  void _startSplashSequence() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _showImages = true;
    });
    await Future.delayed(const Duration(seconds: 3));
    _goLoginPage();
  }

  void _goLoginPage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.red,
        body: Container(
          alignment: Alignment.center,
          child: _showImages
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(
                      "img/splash1.png",
                      width: media.width * 0.4,
                      height: media.height * 0.4,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Image.asset(
                      "img/splash2.png",
                      width: media.width * 0.55,
                      height: media.width * 0.55,
                      fit: BoxFit.contain,
                    ),
                  ],
                )
              : Container(),
        ));
  }
}
