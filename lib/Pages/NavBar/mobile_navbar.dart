import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/widgets/getin_touch_input_field.dart';

class MobileNavbar extends StatelessWidget {
  const MobileNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const Text(
            "GopalKrishna",
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
                const SizedBox(width: 10),
                SizedBox(
                  width: 100,
                  child: MaterialButton(
                    color: Colors.red,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    onPressed: () {
                      Get.defaultDialog(
                          title: "Get In Touch",
                          content: GetInTouch(),
                          titleStyle:
                              const TextStyle(fontWeight: FontWeight.w600));
                    },
                    child: const Text(
                      "Get In Touch",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.5
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
