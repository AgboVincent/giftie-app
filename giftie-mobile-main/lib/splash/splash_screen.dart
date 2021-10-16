import 'package:flutter/material.dart';
import 'package:giftie_mobile/resources/app_color.dart';
import 'package:giftie_mobile/resources/png_files.dart';
import 'package:giftie_mobile/splash/landing_screen.dart';
import 'package:giftie_mobile/widgets/auth_background_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
     Navigator.push(context, MaterialPageRoute(builder: (context)=> LandingScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return AuthBackgroundPage(
      child: Stack(
        children: [
          Positioned(
            top: 200,
            left: 120,
            child: Center(
              child: Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(PngFiles.img_splash), fit: BoxFit.fill),
                ),
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 150,
            child: Text(
              "Giftie",
              style: TextStyle(
                  color: AppColor.off_white,
                  fontSize: 45,
                  fontWeight: FontWeight.w700),
            ),
          ),
        ],
      ),
    );
  }
}
