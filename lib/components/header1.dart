import 'package:flutter/material.dart';
import 'package:portfolio/utils.dart';
import 'package:url_launcher/link.dart';

class Header1 extends StatelessWidget {
  const Header1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Wrap(
          children: [
            SizedBox(
              width: Utils.isMobile(context)
                  ? Utils.mdqw(context)
                  : Utils.mdqw(context) / 2,
              height: Utils.isMobile(context)
                  ? Utils.mdqh(context) / 2
                  : Utils.mdqh(context) - 70,
              child: Padding(
                padding: Utils.isMobile(context)
                    ? const EdgeInsets.all(5.0)
                    : const EdgeInsets.only(
                        top: 50, bottom: 50, right: 10, left: 100),
                child: Image.asset(
                  'assets/images/login.jpg',
                  alignment: Alignment.center,
                ),
              ),
            ),
            SizedBox(
              width: Utils.isMobile(context)
                  ? Utils.mdqw(context)
                  : Utils.mdqw(context) / 2,
              height: Utils.isMobile(context)
                  ? Utils.mdqh(context) / 2
                  : Utils.mdqh(context) - 70,
              child: Center(
                child: SizedBox(
                  height: Utils.isMobile(context)
                      ? 200 / (Utils.mdqw(context) * 0.0025)
                      : 180,
                  width: Utils.isMobile(context)
                      ? Utils.mdqw(context) * 0.85
                      : 380,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(6.0),
                        child: Text(
                          'About Me',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Hi My Name is Atharv Nagpure,Student at Sppu pursuing BE.IT Degree.',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                              "https://drive.google.com/drive/u/0/folders/1vdYPygYh8qwutJd12FENh5LsBCzhSul4"),
                          builder: (context, followlink) => FlatButton(
                            color: Colors.transparent,
                            onPressed: followlink,
                            child: const Text(
                              "Resume",
                              style: TextStyle(
                                color: Color(0xFf4756DF),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
