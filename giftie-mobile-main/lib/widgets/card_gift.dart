import 'package:flutter/material.dart';
import 'package:giftie_mobile/resources/app_color.dart';

class CardGift extends StatelessWidget {
  CardGift({required this.title, required this.child, required this.text});
  final String title;
  final child;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.width * 1.55,
      child: Card(
        color: AppColor.inputFieldBg,
        elevation: 3,
        shape: RoundedRectangleBorder(
          // side: BorderSide(color: Colors.white70, width: 0),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 15,
              child: Container(
                height: 40,
                width: 40,
                child:child,
                ),
            ),
            Positioned(
              left: 80,
              top: 13,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        color: AppColor.off_white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    text,
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 10,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
            ),
            Positioned(
              top: 15,
              right: 20,
              child: Container(
                height: 35,
                width: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.inputFieldBg),
                    child: Card(
                      elevation: 1,
                      color: AppColor.inputFieldBg,
                      child: Icon(Icons.arrow_forward, 
                    color: AppColor.off_white, size: 10,),
                    )
              ),
            )
          ],
        ),
      ),
    );
  }
}
