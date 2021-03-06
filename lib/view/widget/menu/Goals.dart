import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:webneww/constants.dart';

class Goals extends StatelessWidget {
  const Goals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(hDefaultPadding / 2),
          child: Text("Goals", style: Theme.of(context).textTheme.subtitle2),
        ),
        buildGoals(text: 'Planning stage'),
        buildGoals(text: 'Development'),
        buildGoals(text: 'Execution phase'),
        buildGoals(text: 'New way to living'),
      ],
    );
  }
}

Padding buildGoals({required String text}) {
  return Padding(
    padding: EdgeInsets.all(hDefaultPadding / 2),
    child: Row(
      children: [
        SvgPicture.asset("assets/icons/check.svg"),
        SizedBox(
          width: hDefaultPadding / 2,
        ),
        Text("$text")
      ],
    ),
  );
}
