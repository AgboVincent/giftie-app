import 'package:flutter/material.dart';
import 'package:giftie_mobile/resources/app_color.dart';
import 'package:giftie_mobile/resources/png_files.dart';
import 'package:giftie_mobile/widgets/card_wishlist.dart';

class FriendsWishList extends StatelessWidget {
  const FriendsWishList({Key? key}) : super(key: key);

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
                          image: AssetImage(PngFiles.image_back))),
                ),
              ),
              Positioned(
                  left: 120,
                  top: 10,
                  child: Text(
                    "My Friend's Wish List",
                    style: TextStyle(
                        color: AppColor.off_white,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  )),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: Column(
            children: [
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
