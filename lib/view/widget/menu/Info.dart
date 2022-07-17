import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          buildContactInfo(title: 'Address', subtitle: 'zag _AboAldahab st 5'),
          buildContactInfo(title: 'Country', subtitle: 'Egy'),
          buildContactInfo(
              title: 'Email', subtitle: 'hassan.m.daboos@gmail.com'),
          buildContactInfo(title: 'Mobile', subtitle: '01018440919'),
          buildContactInfo(title: 'WebSite', subtitle: 'https//Daboos.com'),
        ],
      ),
    );
  }
}

Widget buildContactInfo({required String title, required String subtitle}) {
  return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
          Text(
            subtitle,
          ),
        ],
      ));
}
