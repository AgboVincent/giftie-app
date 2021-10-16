import 'package:flutter/material.dart';
import 'package:giftie_mobile/resources/app_color.dart';
import 'package:giftie_mobile/resources/png_files.dart';
import 'package:giftie_mobile/resources/string_resources.dart';
import 'package:giftie_mobile/screens/auth/create_password.dart';
import 'package:giftie_mobile/widgets/auth_background_page.dart';
import 'package:giftie_mobile/widgets/border_button.dart';
import 'package:giftie_mobile/widgets/input_text.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String hintTextEmail = "Email Address";
  String hintTextPassword = "Password";
  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AuthBackgroundPage(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(0, 0),
                        alignment: Alignment.centerLeft),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(PngFiles.image_back),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 60),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(PngFiles.image_guy)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(PngFiles.image_play),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(PngFiles.image_lady),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                      color: AppColor.off_white,
                      fontSize: 35,
                      fontWeight: FontWeight.w700),
                ),
              ),                        
              SizedBox(height: 20),
              InputTextField(controller: controllerEmail,hintText: hintTextEmail),
              SizedBox(height: 30),
              InputTextField(controller: controllerPassword,hintText: hintTextPassword),
              SizedBox(height: 40),
              Container(
                height: MediaQuery.of(context).size.height * 0.075,
                width: MediaQuery.of(context).size.height * 0.6,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: RawMaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>CreatePassword()));
                  },
                  fillColor:  AppColor.buttonColor,
                  child: Text(
                    "CONTINUE",
                    style: TextStyle(
                        color: AppColor.off_white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Center(
                child: Text(
                  "Or Continue With",
                  style: TextStyle(color: AppColor.off_white, fontSize: 14),
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BorderButton(
                    expanded: false,
                    onPressed: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(PngFiles.image_google))),
                    ),
                  ),
                  BorderButton(
                    expanded: false,
                    onPressed: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(PngFiles.image_apple))),
                    ),
                  ),
                  BorderButton(
                    expanded: false,
                    onPressed: () {},
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(PngFiles.image_facebook))),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    StringsResources.login_question,
                    style: TextStyle(
                        color: AppColor.off_white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 0.3),
                  ),
                  SizedBox(width: 10),
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(50, 0),
                        alignment: Alignment.centerLeft),
                    onPressed: () {},
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          color: AppColor.orange,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                          letterSpacing: 0.3),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}