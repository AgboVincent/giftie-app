import 'package:flutter/material.dart';
import 'package:giftie_mobile/resources/png_files.dart';
import 'package:giftie_mobile/widgets/card_wishlist.dart';


class ActiveWishList extends StatelessWidget {
  const ActiveWishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              SizedBox(height: 30),
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
              SizedBox(height: 30),
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
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardWishlist(
                      title: "Mercedes List",
                      assetImage: PngFiles.img_benz,
                      text: "Mauris egestas amet convallis ac feugiat.",
                      date: DateTime.now().toString().substring(0, 8),
                      items: "13 items"),
                
                ],
              ),
            ],
          );
  }
}