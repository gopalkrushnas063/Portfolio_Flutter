import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



class DesktopNavbar extends StatelessWidget {
  const DesktopNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "GopalKrishna",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              const InkWell(
                child: Text(
                  "Home",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 30),
              const InkWell(
                child: Text(
                  "Contact",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 30),
              const InkWell(
                child: Text(
                  "About Us",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(width: 30),
              MaterialButton(
                color: Colors.red,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Join Now",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
