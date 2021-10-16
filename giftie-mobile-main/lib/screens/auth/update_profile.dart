import 'package:flutter/material.dart';
import 'package:giftie_mobile/resources/app_color.dart';
import 'package:giftie_mobile/resources/png_files.dart';
import 'package:giftie_mobile/resources/string_resources.dart';
import 'package:giftie_mobile/screens/home/home_page.dart';
import 'package:giftie_mobile/widgets/auth_background_page.dart';
import 'package:giftie_mobile/widgets/input_text.dart';


class ProfileUpdate extends StatefulWidget {
  ProfileUpdate({Key? key}) : super(key: key);

  @override
  _ProfileUpdateState createState() => _ProfileUpdateState();
}

class _ProfileUpdateState extends State<ProfileUpdate> {
   final controllerFirstName = TextEditingController();
   final controllerLastName = TextEditingController();
   final controllerUserName = TextEditingController();
   final hintText = "Input name here";
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
                "Update Profile",
                style: TextStyle(
                    color: AppColor.off_white,
                    fontSize: 35,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 30),
              Text(
                StringsResources.update_password,
                style: TextStyle(
                    color: AppColor.off_white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.3,
                  ),
              ),
              SizedBox(height: 40),
              Text(
                "First Name",
                style: TextStyle(
                    color: AppColor.off_white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 5),
              InputTextField(controller: controllerFirstName, hintText: hintText,),
              SizedBox(height: 20),
              Text(
                "Last Name",
                style: TextStyle(
                    color: AppColor.off_white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
               SizedBox(height: 5),
              InputTextField(controller: controllerLastName, hintText: hintText,),
              SizedBox(height: 20),
              Text(
                "Userame",
                style: TextStyle(
                    color: AppColor.off_white,
                    fontSize: 15,
                    fontWeight: FontWeight.w400),
              ),
               SizedBox(height: 5),
              InputTextField(controller: controllerUserName, hintText: hintText,),
              SizedBox(height: 100),
               Container(
                height: MediaQuery.of(context).size.height * 0.078,
                width: MediaQuery.of(context).size.height * 0.6,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(15)),
                child: RawMaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  onPressed: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
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