import 'package:flutter/material.dart';
import 'package:giftie_mobile/resources/app_color.dart';

class CardWishlist extends StatelessWidget {
  CardWishlist({required this.title, required this.assetImage, required this.text, required this.date, required this.items});
   final String title;
   final String assetImage;
   final String text;
   final String date;
   final String items;
   
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.4,
      width: MediaQuery.of(context).size.width*0.42,
      child: Card(
        color: AppColor.inputFieldBg,
        elevation: 3,
        shape: RoundedRectangleBorder(
         // side: BorderSide(color: Colors.white70, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage(assetImage),
                      fit: BoxFit.fill
                    )
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.02),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    title,
                    style: TextStyle(
                        color: AppColor.off_white,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.3,
                        fontSize: 13),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Text(
                    text,
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.3,
                        fontSize: 10),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.015),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        date,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize:12
                          ),
                      ),
                      Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                          color:AppColor.borderColor,
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Center(
                          child: Text(
                            "13 items",
                            style: TextStyle(
                              color: AppColor.off_white,
                              fontSize: 12
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.015),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Click to view",
                    style: TextStyle(
                      color:
                       Color(0xFFFBCE8D),
                       fontSize: 12
                    ),
                  ),
                )
                
              ],
            )
          ],
        ),
      ),
    );
  }
}