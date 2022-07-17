import 'package:flutter/material.dart';
import 'package:webneww/constants.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: hSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Spacer(
              flex: 2,
            ),
            Image(
              image: AssetImage(
                "assets/images/logo.png",
              ),
              width: 100,
            ),
            Spacer(),
            Text("Real Estate", style: Theme.of(context).textTheme.subtitle2),
            Text("Modern Home \nGreate interior design", style:TextStyle(
              fontWeight: FontWeight.w200,
              height: 1.5
            )),
            Spacer(
              flex: 2,
            ),

          ],
        ),
      ),
    );
  }
}
