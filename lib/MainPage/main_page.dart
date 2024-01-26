import 'package:flutter/material.dart';
import 'package:portfolio/MainPage/desktop_page.dart';
import 'package:portfolio/MainPage/mobile.page.dart';


class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1280) {
          return const DesktopPage();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1280) {
          return const DesktopPage();
        } else {
          return const MobilePage();
        }
      },
    );
  }
}