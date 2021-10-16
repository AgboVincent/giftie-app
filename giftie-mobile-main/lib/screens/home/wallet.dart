import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giftie_mobile/resources/app_color.dart';
import 'package:giftie_mobile/resources/png_files.dart';
import 'package:giftie_mobile/resources/svg_files.dart';
import 'package:giftie_mobile/widgets/card_gift.dart';

class WalletScreen extends StatefulWidget {
  WalletScreen({Key? key}) : super(key: key);

  @override
  _WalletScreenState createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  double _currentPos = 0.0;
  PageController _pageController = PageController();
  final List<Widget> scrollableContainer = <Widget>[
    Container(
      height: 180,
      width: 300,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: SvgPicture.asset(SvgFiles.wallet_scroll_one),
    ),
    Container(
      height: 180,
      width: 300,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: SvgPicture.asset(SvgFiles.wallet_scroll_one),
    ),
  ];

  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        _currentPos = _pageController.page ?? 0.0;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 50,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 30.0, left: 30),
          child: Stack(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(PngFiles.image_guy))),
              ),
              Positioned(
                right: 80,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage(PngFiles.frame2))),
                ),
              ),
              Positioned(
                right: 30,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage(PngFiles.frame3))),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Container(
                height:180,// MediaQuery.of(context).size.height * 0.45,
                width: 300,//MediaQuery.of(context).size.width * 0.85,
                child: PageView.builder(
                  itemCount: scrollableContainer.length,
                  controller: _pageController,
                  itemBuilder: (BuildContext context, int index) {
                    return scrollableContainer[index];
                  },
                ),
              ),
              SizedBox(height: 10),
              Center(
                child: DotsIndicator(
                  dotsCount: scrollableContainer.length,
                  position: _currentPos,
                  onTap: (position) {
                    setState(() {
                      _currentPos = position;
                    });
                  },
                  decorator: DotsDecorator(
                    color: Colors.grey[300]!,
                    size: const Size(12.0, 3.0),
                    activeSize: const Size(17.0, 4.0),
                    activeColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: SvgPicture.asset(SvgFiles.img_top_up),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Top Up",
                        style: TextStyle(
                            color: AppColor.off_white,
                            fontSize: 10,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: SvgPicture.asset(SvgFiles.img_withdraw),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Withdraw",
                        style: TextStyle(
                            color: AppColor.off_white,
                            fontSize: 10,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: SvgPicture.asset(SvgFiles.img_transfer),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Transfer",
                        style: TextStyle(
                            color: AppColor.off_white,
                            fontSize: 10,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        child: SvgPicture.asset(SvgFiles.img_pay_bills),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Pay Bill",
                        style: TextStyle(
                            color: AppColor.off_white,
                            fontSize: 10,
                            fontWeight: FontWeight.w300),
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 50),
              Text(
                "Recent Activities",
                style: TextStyle(
                    color: AppColor.off_white,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 10),
              CardGift(
                title: "Bill Payment for John Doe",
                child: SvgPicture.asset(SvgFiles.img_pay_bills),
                text: "3500    " + "        22ndJuly",
              ),
              SizedBox(height: 10),
              CardGift(
                title: "Bill Payment for John Doe",
                child: SvgPicture.asset(SvgFiles.img_pay_bills),
                text: "3500    " + "        22ndJuly",
              ),
              SizedBox(height: 10),
              CardGift(
                title: "Bill Payment for John Doe",
                child: SvgPicture.asset(SvgFiles.img_pay_bills),
                text: "3500    " + "        22ndJuly",
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
