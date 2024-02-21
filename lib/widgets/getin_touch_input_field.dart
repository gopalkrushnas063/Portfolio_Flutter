import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quickalert/quickalert.dart';

class GetInTouch extends StatelessWidget {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            controller: nameController,
            cursorColor: Colors.black,
            autofocus: true,
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              labelText: "Enter Your Name",
              labelStyle: TextStyle(fontSize: 15.0, color: Colors.black),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              errorStyle: TextStyle(
                color: Colors.redAccent,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: emailController,
            cursorColor: Colors.black,
            style: const TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              labelText: "Enter Your Email",
              labelStyle: TextStyle(fontSize: 15.0, color: Colors.black),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
              errorStyle: TextStyle(
                color: Colors.redAccent,
                fontSize: 15,
              ),
            ),
          ),
          const SizedBox(height: 8),
          TextFormField(
            controller: feedbackController,
            cursorColor: Colors.black,
            autofocus: true,
            style: TextStyle(color: Colors.black),
            decoration: const InputDecoration(
              labelText: "Enter Your Feedback",
              labelStyle: TextStyle(fontSize: 15.0, color: Colors.black),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
                width: 1.0,
              )),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.black,
                width: 1.0,
              )),
              errorStyle: TextStyle(
                color: Colors.redAccent,
                fontSize: 15,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please enter your feedback";
              }
              return null;
            },
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  child: const Text(
                    'Cancel',
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(0, 45),
                    primary: Colors.red,
                    onPrimary: const Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    Get.back();
                  },
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  child: const Text(
                    'Submit',
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(0, 45),
                    primary: Colors.green,
                    onPrimary: const Color(0xFFFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () {
                    _sendFeedback(context);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _sendFeedback(BuildContext context) async {
    try {
     

      QuickAlert.show(
        context: context,
        type: QuickAlertType.success,
        text: "Success Alert",
      );

    } catch (error) {
      print(error);
    }
  }
}