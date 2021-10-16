import 'package:flutter/material.dart';
import 'package:giftie_mobile/resources/app_color.dart';
import 'package:giftie_mobile/resources/png_files.dart';
import 'package:giftie_mobile/resources/string_resources.dart';
import 'package:giftie_mobile/screens/auth/verify_email.dart';
import 'package:giftie_mobile/widgets/auth_background_page.dart';
import 'package:giftie_mobile/widgets/border_button.dart';
import 'package:giftie_mobile/widgets/input_text.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final controller = TextEditingController();
  final controllerPhone = TextEditingController();
  String hintText = "Email Address";
  late Widget signUpMethod;
  Color roundedSignUpEmail = Colors.amber;
  late Color roundedSignUpPhone;
  @override
  void initState() {
    super.initState();
    signUpMethod = InputTextField(
      controller: controller,
      hintText: hintText,
    );
    roundedSignUpPhone = Colors.transparent;
  }

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
                  "Sign Up",
                  style: TextStyle(
                      color: AppColor.off_white,
                      fontSize: 35,
                      fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(50, 0),
                        alignment: Alignment.centerLeft),
                    onPressed: () {
                      setState(() {
                        roundedSignUpEmail = Colors.amber;
                        roundedSignUpPhone = Colors.transparent;
                        signUpMethod = InputTextField(
                          controller: controller,
                          hintText: hintText,
                        );
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          "Email",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: roundedSignUpEmail,
                              shape: BoxShape.circle),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 100),
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(50, 0),
                        alignment: Alignment.centerLeft),
                    onPressed: () {
                      setState(() {
                        roundedSignUpEmail = Colors.transparent;
                        roundedSignUpPhone = Colors.amber;
                        signUpMethod = PhoneInputTextFormField(
                          controller: controllerPhone,
                        );
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          "Phone",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: roundedSignUpPhone,
                              shape: BoxShape.circle),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              signUpMethod,
              SizedBox(height: 30),
              Container(
                height: MediaQuery.of(context).size.height * 0.075,
                width: MediaQuery.of(context).size.height * 0.6,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: RawMaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyEmail()));
                  },
                  fillColor: AppColor.placeholder,
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
                    StringsResources.reg_question,
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
                      "Login",
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

class PhoneInputTextFormField extends StatelessWidget {
  PhoneInputTextFormField({this.controller});
  final controller;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 80,
          decoration: BoxDecoration(
              color: AppColor.flagBgColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.0),
              topLeft: Radius.circular(10.0),
            ),
          ),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(PngFiles.ng_flag))),
              ),
              Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
              )
            ],
          ),
        ),
        Container(
          height: 60,
          width: 290,
          child: TextFormField(
            controller: controller,
            style: TextStyle(
              color: AppColor.placeholderText,
              fontSize: 16,
              fontWeight: FontWeight.w500,
              letterSpacing: 1,
            ),
            cursorColor: Colors.black,
            decoration: InputDecoration(
              contentPadding:
                  new EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
              enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
                  borderSide:
                      BorderSide(color: AppColor.inputFieldBg, width: 0.0)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
                  borderSide:
                      BorderSide(color: AppColor.inputFieldBg, width: 0.0)),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
                  borderSide:
                      BorderSide(color: AppColor.inputFieldBg, width: 0.0)),
              focusedErrorBorder: new OutlineInputBorder(
               borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
                  borderSide:
                      BorderSide(color: AppColor.inputFieldBg, width: 0.0)),
              errorStyle: TextStyle(fontSize: 15),
              hintText: "Phone Number",
              hintStyle: TextStyle(
                  color: AppColor.placeholderText,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  letterSpacing: 0.3),
              fillColor: AppColor.inputFieldBg,
              filled: true,
            ),
          ),
        ),
      ],
    );
  }
}
