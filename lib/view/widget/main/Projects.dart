import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../model/Project.dart';

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            "Our Projects",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: demoProjects.length,
        
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: hDefaultPadding,
              crossAxisSpacing: hDefaultPadding,
              childAspectRatio: 0.75), 
          itemBuilder: (BuildContext context, int index) { 
            
            return Container(
              padding: EdgeInsets.all(hDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "${demoProjects[index].image}",
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: hDefaultPadding,
                  ),
                  Text(
                    "${demoProjects[index].title}",
                    maxLines: 2,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(
                    height:
                    hDefaultPadding ,
                  ),
                  Text(
                    "${demoProjects[index].description}",
                    maxLines:  2 ,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        height:1.7 ),
                  ),
                  SizedBox(
                    height:
                    hDefaultPadding,
                  ),
                  Text(
                    "More Info ..",
                    style: TextStyle(color: hPrimaryColor),
                  ),



                ],
              ),
            );
            
            
          },
        )
      ],
    );
  }
}
