import 'package:flutter/material.dart';
import 'package:giftie_mobile/resources/app_color.dart';
import 'package:giftie_mobile/resources/png_files.dart';
import 'package:giftie_mobile/resources/string_resources.dart';
import 'package:giftie_mobile/widgets/auth_background_page.dart';
import 'package:giftie_mobile/widgets/pin_holder.dart';

class VerifyEmail extends StatefulWidget {
  VerifyEmail({Key? key}) : super(key: key);

  @override
  _VerifyEmailState createState() => _VerifyEmailState();
}

class _VerifyEmailState extends State<VerifyEmail> {
  @override
  Widget build(BuildContext context) {
    return AuthBackgroundPage(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
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
              SizedBox(height: 20),
              Text(
                "Verify Email",
                style: TextStyle(
                    color: AppColor.off_white,
                    fontSize: 35,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 30),
              RichText(
                text: TextSpan(
                  text: StringsResources.verify_email_msg,
                  style: TextStyle(
                    color: AppColor.off_white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.3,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' samxxxxx@email.com',
                      style: TextStyle(
                          color: AppColor.off_white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.3),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PinHolder(),
                  PinHolder(),
                  PinHolder(),
                  PinHolder()
                ],
              ),
              SizedBox(height: 60),
               Container(
                height: MediaQuery.of(context).size.height * 0.078,
                width: MediaQuery.of(context).size.height * 0.6,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: RawMaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>VerifyEmail()));
                  },
                  fillColor: AppColor.buttonColor,
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
                    "Resend Code",
                    style: TextStyle(
                      color: AppColor.resendCodeText, 
                      fontSize: 14
                      ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
