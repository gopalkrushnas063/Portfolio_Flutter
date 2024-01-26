import 'package:flutter/material.dart';
import 'package:portfolio/NavBar/desktop_navbar.dart';
import 'package:portfolio/NavBar/mobile_navbar.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1280) {
          return const DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1280) {
          return const DesktopNavbar();
        } else {
          return const MobileNavbar();
        }
      },
    );
  }
}
