import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:giftie_mobile/resources/png_files.dart';
import 'package:giftie_mobile/resources/string_resources.dart';
import 'package:giftie_mobile/resources/svg_files.dart';
import 'package:giftie_mobile/screens/auth/login.dart';
import 'package:giftie_mobile/screens/auth/sign_up.dart';
import 'package:giftie_mobile/theme/app_styles.dart';
import 'package:giftie_mobile/theme/theme_bloc.dart';
import 'package:giftie_mobile/widgets/auth_background_page.dart';
import 'package:giftie_mobile/widgets/border_button.dart';
import 'package:giftie_mobile/widgets/c_button.dart';
import 'package:giftie_mobile/widgets/image_loader.dart';
import 'package:helper_widgets/empty_space.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return AuthBackgroundPage(
      child: Stack(
        children: [
          Positioned(
              top: AppStyles.topPadding(context) + 20,
              left: 24,
              right: 24,
              child: Container(
                child: Column(
                  children: [
                    ImageLoader(
                      path: SvgFiles.logo_app,
                      width: 35,
                      height: 35,
                    )
                  ],
                ),
              )),
          Positioned(
              top: 80,
              left: 80,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image:
                        DecorationImage(image: AssetImage(PngFiles.image_guy))),
              )),
          Positioned(
              top: 120,
              right: 160,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(PngFiles.rect_purple))),
              )),
          Positioned(
              top: 200,
              left: 20,
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(PngFiles.image_play))),
              )),
          Positioned(
              top: 220,
              left: 140,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(PngFiles.rect_orange))),
              )),
          Positioned(
              top: 200,
              right: 20,
              child: Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(PngFiles.image_lady))),
              )),
          Positioned(
            bottom: AppStyles.bottomPadding(context) + 50,
            left: 24,
            right: 24,
            child: BlocBuilder<ThemeBloc, ThemeState>(
              builder: (context, state) {
                return Column(
                  children: [
                    Text(
                      StringsResources.landing_header,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    EmptySpace.v2(),
                    Text(
                      StringsResources.landing_sub_header,
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    EmptySpace.v4(),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: CButton(
                            child: null,
                            color: Theme.of(context).buttonColor,
                            title: "Signup",
                            expanded: false,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()));
                            },
                          ),
                        ),
                        EmptySpace.h2(),
                        Expanded(
                          child: BorderButton(
                            title: "Log in",
                            expanded: false,
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            child: null,
                          ),
                        )
                      ],
                    ),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
