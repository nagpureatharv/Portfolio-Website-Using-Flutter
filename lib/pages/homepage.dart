import 'package:flutter/material.dart';
import 'package:portfolio/components/footer.dart';
import 'package:portfolio/components/header1.dart';
import 'package:portfolio/components/home_page_actions.dart';
import 'package:portfolio/components/more_about_me.dart';
import 'package:portfolio/components/my_drawer.dart';
import 'package:portfolio/components/projects.dart';
import 'package:portfolio/components/top_skill.dart';
import 'package:portfolio/utils.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final ScrollController myScrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      //Add Key
      appBar: AppBar(
        title: const Text(
          'Atharv Nagpure',
          style: TextStyle(
            fontSize: 22,
            color: Color(0xFf4756DF),
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 2,
        actions: [
          Utils.isMobile(context)
              ? Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Color(0xFf4756DF),
                      size: 30,
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState!.openEndDrawer();
                    },
                  ),
                )
              : HomePageActions(
                  sc: myScrollController,
                ),
        ],
      ),
      endDrawer: Utils.isMobile(context)
          ? MyDrawer(
              sc: myScrollController,
            )
          : null,

      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              //Add Scroll Controller
              controller: myScrollController,
              child: Column(
                children: const [
                  Header1(),
                  MoreAboutMe(),
                  SizedBox(height: 80),
                  TopSkills(),
                  SizedBox(height: 100),
                  Projects(),
                  SizedBox(height: 100),
                  Footer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
