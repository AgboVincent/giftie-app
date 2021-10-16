import 'package:flutter/material.dart';
import 'package:giftie_mobile/resources/app_color.dart';
import 'package:giftie_mobile/resources/png_files.dart';
import 'package:giftie_mobile/widgets/card_wishlist.dart';
import 'package:giftie_mobile/wish_list/friends_wish_list.dart';
import 'package:giftie_mobile/wish_list/public_wish_list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                right: 130,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage(PngFiles.frame2))),
                ),
              ),
              Positioned(
                right: 80,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage(PngFiles.frame4))),
                ),
              ),
              Positioned(
                right: 30,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      image:
                          DecorationImage(image: AssetImage(PngFiles.frame5))),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Column(
            children: [
              SizedBox(height: 50),
              Center(
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(PngFiles.bg_wishlist),
                          fit: BoxFit.fill)),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Public Wishlists",
                    style: TextStyle(color: AppColor.off_white, fontSize: 14),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(0, 0),
                        alignment: Alignment.centerLeft),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PublicWishList()));
                    },
                    child: Text(
                      "View More",
                      style: TextStyle(color: Color(0xFFFBCE8D), fontSize: 14),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardWishlist(
                      title: "Mercedes List",
                      assetImage: PngFiles.img_benz,
                      text: "Mauris egestas amet convallis ac feugiat.",
                      date: DateTime.now().toString().substring(0, 8),
                      items: "13 items"),
                  CardWishlist(
                      title: "Nana's Birthday Lists",
                      assetImage: PngFiles.img_wmn,
                      text: "Mauris egestas amet convallis ac feugiat.",
                      date: DateTime.now().toString().substring(0, 8),
                      items: "13 items"),
                ],
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Friend's Wishlist",
                    style: TextStyle(color: AppColor.off_white, fontSize: 14),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(0, 0),
                        alignment: Alignment.centerLeft),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => FriendsWishList()));
                    },
                    child: Text(
                      "View More",
                      style: TextStyle(color: Color(0xFFFBCE8D), fontSize: 14),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardWishlist(
                      title: "Mercedes List",
                      assetImage: PngFiles.img_lvn,
                      text: "Mauris egestas amet convallis ac feugiat.",
                      date: DateTime.now().toString().substring(0, 8),
                      items: "13 items"),
                  CardWishlist(
                      title: "Fareed's Wish Lists",
                      assetImage: PngFiles.img_smile,
                      text: "Mauris egestas amet convallis ac feugiat.",
                      date: DateTime.now().toString().substring(0, 8),
                      items: "13 items"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
