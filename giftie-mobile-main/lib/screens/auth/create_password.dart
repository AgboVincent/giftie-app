import 'package:flutter/material.dart';
import 'package:giftie_mobile/resources/app_color.dart';
import 'package:giftie_mobile/resources/png_files.dart';
import 'package:giftie_mobile/resources/string_resources.dart';
import 'package:giftie_mobile/screens/auth/update_profile.dart';
import 'package:giftie_mobile/widgets/auth_background_page.dart';
import 'package:giftie_mobile/widgets/input_text.dart';

class CreatePassword extends StatelessWidget {
   CreatePassword({Key? key}) : super(key: key);
   final controller = TextEditingController();
   final hintText = "Password";
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
                "Create Password",
                style: TextStyle(
                    color: AppColor.off_white,
                    fontSize: 35,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 30),
              Text(
                StringsResources.password_question,
                style: TextStyle(
                    color: AppColor.off_white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.3,
                  ),
              ),
              SizedBox(height: 60),
              InputTextField(controller: controller, hintText: hintText,),
              SizedBox(height: 180),
               Container(
                height: MediaQuery.of(context).size.height * 0.078,
                width: MediaQuery.of(context).size.height * 0.6,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: RawMaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileUpdate()));
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
            ],
          ),
        ),
      ),
      );
  }
}