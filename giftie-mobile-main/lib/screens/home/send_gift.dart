import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giftie_mobile/resources/app_color.dart';
import 'package:giftie_mobile/resources/png_files.dart';
import 'package:giftie_mobile/resources/string_resources.dart';
import 'package:giftie_mobile/resources/svg_files.dart';
import 'package:giftie_mobile/widgets/card_gift.dart';

class SendGiftScreen extends StatefulWidget {
  SendGiftScreen({Key? key}) : super(key: key);

  @override
  _SendGiftScreenState createState() => _SendGiftScreenState();
}

class _SendGiftScreenState extends State<SendGiftScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 50,
        flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 30, right: 30),
            child: Text(
              "Send Gifts",
              style: TextStyle(
                color: AppColor.off_white,
                fontSize: 16,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.3,
              ),
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              Center(
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(PngFiles.img_gift), fit: BoxFit.fill),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                StringsResources.gift_question,
                style: TextStyle(
                    color: AppColor.off_white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 20),
              CardGift(
                title: "Send Money",
                child: SvgPicture.asset(SvgFiles.img_send_money),
                text: "Send money to their wallet",
              ),
              SizedBox(height: 20),
              CardGift(
                title: "Send Airtime",
                child: SvgPicture.asset(SvgFiles.img_send_airtime),
                text: "Recharge their phones with airtime",
              ),
              SizedBox(height: 20),
              CardGift(
                title: "Send items",
                child: SvgPicture.asset(SvgFiles.img_send_items),
                text: "Buy items and send to them",
              ),
              SizedBox(height: 20),
              CardGift(
                title: "Pay their bills",
                child: SvgPicture.asset(SvgFiles.img_pay_bills),
                text: "Help them sort out their bills",
              ),
              SizedBox(height: 50),              
            ],
          ),
        ),
      ),
    );
  }
}
