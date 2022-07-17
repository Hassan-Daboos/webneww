import 'package:flutter/material.dart';

import '../../constants.dart';
import '../widget/main/MainSection.dart';
import '../widget/menu/SidMenuSection.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 1440),
            child: Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(


                        child: SidMenuSection())),
                Expanded(flex: 7, child: Container(child: MainSection())),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
