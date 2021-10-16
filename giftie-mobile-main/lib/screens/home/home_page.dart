import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:giftie_mobile/resources/app_color.dart';
import 'package:giftie_mobile/screens/home/home_screen.dart';
import 'package:giftie_mobile/screens/home/profile.dart';
import 'package:giftie_mobile/screens/home/send_gift.dart';
import 'package:giftie_mobile/screens/home/wallet.dart';
import 'package:giftie_mobile/screens/home/wish_list.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  late HomeScreen homeScreen;
  late WalletScreen walletScreen;
  late SendGiftScreen sendGiftScreen;
  late WishScreen whileListScreen;
  late ProfileScreen profileScreen;
  late Widget currentPage;
  late List<Widget> pages;
  @override
  void initState() {
    super.initState();
    homeScreen = HomeScreen();
    walletScreen = WalletScreen();
    sendGiftScreen = SendGiftScreen();
    whileListScreen = WishScreen();
    profileScreen = ProfileScreen();
    pages = [
      homeScreen,
      whileListScreen,
      sendGiftScreen,
      walletScreen,
      profileScreen
    ];
    currentPage = homeScreen;
  }

  void itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      currentPage = pages[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage,
      bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon(
            Icons.home,
            size: 20,
            color: AppColor.primary,
          ),
          Icon(
            Icons.list_alt,
            size: 20,
            color: AppColor.primary,
          ),
          Icon(
            Icons.bookmark_border,
            size: 20,
            color: AppColor.primary,
          ),
          Icon(
            Icons.account_balance_wallet_outlined,
            size: 20,
            color: AppColor.primary,
          ),
          Icon(
            Icons.person,
            size: 20,
            color: AppColor.primary,
          ),
        ],
        index: _selectedIndex,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 300),
        onTap: itemTapped,
        color: Colors.white70,
        buttonBackgroundColor: AppColor.off_white,
        height: 60,
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
