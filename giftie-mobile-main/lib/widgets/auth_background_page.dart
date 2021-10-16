import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giftie_mobile/resources/svg_files.dart';

class AuthBackgroundPage extends StatelessWidget {
  final Widget child;
  AuthBackgroundPage({required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 0,
            child: SvgPicture.asset(SvgFiles.vector_union),
          ),
          Positioned.fill(child: child)
        ],
      ),
    );
  }
}
