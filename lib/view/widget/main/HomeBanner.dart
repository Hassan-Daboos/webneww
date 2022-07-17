import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../constants.dart';

class HomeBanner extends StatefulWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  State<HomeBanner> createState() => _HomeBannerState();
}

class _HomeBannerState extends State<HomeBanner> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.7,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/background.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: hDarkColor.withOpacity(0.2),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: hDefaultPadding/2),
            child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Build a greate future\nfor all of us!",
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                ElevatedButton(onPressed: (){},
                    style: TextButton.styleFrom(
                        backgroundColor: hPrimaryColor,
                        padding: const EdgeInsets.symmetric(horizontal: 40,
                            vertical: 20)
                    ),
                    child: const Text("CONTACT US",

                      style: TextStyle(color: hDarkColor),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
