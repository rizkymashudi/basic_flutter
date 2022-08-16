import 'package:basic_flutter/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                "Profile picture",
                style: TextStyle(
                    color: primaryColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/primary.png",
                width: 140,
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Rizky mashudi",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "iOS Developer",
                style: TextStyle(
                  color: greyColor,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Wrap(
                spacing: 38,
                runSpacing: 40,
                children: [
                  Image.asset(
                    "assets/images/item.png",
                    width: 80,
                  ),
                  Image.asset(
                    "assets/images/item-1.png",
                    width: 80,
                  ),
                  Image.asset(
                    "assets/images/item-2.png",
                    width: 80,
                  ),
                  Image.asset(
                    "assets/images/item-3.png",
                    width: 80,
                  ),
                  Image.asset(
                    "assets/images/item-4.png",
                    width: 80,
                  ),
                  Image.asset(
                    "assets/images/item-5.png",
                    width: 80,
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              SizedBox(
                width: 224,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      primary: whiteColor),
                  child: Text(
                    "Update profile",
                    style: TextStyle(
                      fontSize: 16,
                      color: primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(16.0))),
                        builder: (context) {
                          return Container(
                            height: 300,
                            padding: const EdgeInsets.symmetric(
                              vertical: 50,
                            ),
                            child: Column(
                              children: [
                                const Text(
                                  "Upload photo",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w600),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  "You are only able to change\nthe picture profile once",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: greyColor,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                SizedBox(
                                  width: 224,
                                  height: 55,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(16),
                                      ),
                                      primary: orangeColor,
                                    ),
                                    child: Text(
                                      "Continue",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: whiteColor),
                                    ),
                                    onPressed: () {},
                                  ),
                                )
                              ],
                            ),
                          );
                        });
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
