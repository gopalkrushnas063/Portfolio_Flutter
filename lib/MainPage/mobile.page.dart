import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MobilePage extends StatelessWidget {
  const MobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 40),
                    const Text(
                      "Flutter Developer",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 5.0, vertical: 20.0),
                      child: SizedBox(
                        child: Text(
                          "Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications from a single codebase for any web browser,[4] Fuchsia, Android, iOS, Linux, macOS, and Windows.[5] First described in 2015,[6][7] Flutter was released in May 2017.[1]",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    MaterialButton(
                      color: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 20.0),
                        child: Text(
                          "Our Project",
                          style: TextStyle(
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ),
                    Lottie.asset(
                       "assets/images/software_dev.json",
                        height: 700,
                        width: 700),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
