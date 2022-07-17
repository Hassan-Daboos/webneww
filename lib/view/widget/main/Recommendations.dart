
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/Recommendation.dart';
class Recommendations extends StatefulWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  State<Recommendations> createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Client Recommendations:",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: demoRecommendation.length,
            itemBuilder: (BuildContext context, int index) {
              return  Container(
                width:300  ,
                padding: EdgeInsets.all(20),
                color: hSecondaryColor,
                child:Column(
                  children: [
                    ListTile(
                      title: Text(
                        "${demoRecommendation[index].name}",
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                      subtitle: Text(
                        "${demoRecommendation[index].source}",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      leading: CircleAvatar(
                        backgroundColor: hPrimaryColor,
                        radius: 30,
                        backgroundImage: AssetImage("${demoRecommendation[index].image}"),

                      ),

                    ),
                    SizedBox(height: hDefaultPadding / 2),
                    Text(
                      "${demoRecommendation[index].text}",
                      maxLines: 4,
                      style: TextStyle(height: 1.5),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                ) ,
              );

            },

          ),
        )

      ],
    );
  }
}
