import 'package:flutter/material.dart';
import 'package:giftie_mobile/wish_list/active_wish_list.dart';
import 'package:giftie_mobile/wish_list/previous_wish_list.dart';


class WishScreen extends StatefulWidget {
  WishScreen({Key? key}) : super(key: key);

  @override
  _WishScreenState createState() => _WishScreenState();
}

class _WishScreenState extends State<WishScreen> {
  late Widget WishListType;
  late Color roundedActiveWishList; 
  late Color roundedPreviousWishList;
  @override
  void initState() {
    super.initState();
    WishListType = ActiveWishList();
    roundedActiveWishList = Color(0xFF4AC18F);
    roundedPreviousWishList = Colors.transparent;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 50,
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 30, right: 30),
          child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size(50, 0),
                        alignment: Alignment.centerLeft),
                    onPressed: () {
                      setState(() {
                        roundedActiveWishList = Color(0xFF4AC18F);
                        roundedPreviousWishList = Colors.transparent;
                        WishListType = ActiveWishList();
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          "Active WishLists",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: roundedActiveWishList,
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
                        roundedActiveWishList = Colors.transparent;
                        roundedPreviousWishList = Color(0xFF4AC18F);
                        WishListType = PreviousWishList();
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          "Previous WishLists",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: roundedPreviousWishList,
                              shape: BoxShape.circle),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: SingleChildScrollView(child: WishListType),
      ),
    );
  }
}


