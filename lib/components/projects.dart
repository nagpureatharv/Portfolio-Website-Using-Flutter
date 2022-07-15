import "package:flutter/material.dart";
import 'package:portfolio/utils.dart';
import 'package:url_launcher/link.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Projects",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Text(
                  "Revision Planner",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFFC4ACA1),
                          blurRadius: 2,
                          spreadRadius: 2,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: SizedBox(
                      height: !Utils.isMobile(context)
                          ? Utils.mdqw(context) / 6.8
                          : 77,
                      width: !Utils.isMobile(context)
                          ? Utils.mdqw(context) / 6.8
                          : 77,
                      child: Padding(
                        padding: Utils.isMobile(context)
                            ? const EdgeInsets.all(8.0)
                            : const EdgeInsets.all(30.0),
                        child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse(
                              "https://github.com/nagpureatharv/Revision-Planner"),
                          builder: (context, followlink) => InkWell(
                            onTap: followlink,
                            child: Image.network(
                              "https://cdns.iconmonstr.com/wp-content/releases/preview/2012/240/iconmonstr-github-1.png",
                              width: 60,
                              height: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              children: [
                const Text(
                  "Portfolio Website",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xFFC4ACA1),
                          blurRadius: 2,
                          spreadRadius: 2,
                        )
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: SizedBox(
                      height: !Utils.isMobile(context)
                          ? Utils.mdqw(context) / 6.8
                          : 77,
                      width: !Utils.isMobile(context)
                          ? Utils.mdqw(context) / 6.8
                          : 77,
                      child: Padding(
                        padding: Utils.isMobile(context)
                            ? const EdgeInsets.all(8.0)
                            : const EdgeInsets.all(30.0),
                        child: Link(
                          target: LinkTarget.blank,
                          uri: Uri.parse("https://github.com/nagpureatharv/Portfolio-Website-Using-Flutter"),
                          builder: (context, followlink) => InkWell(
                            onTap: followlink,
                            child: Image.network(
                              "https://cdns.iconmonstr.com/wp-content/releases/preview/2012/240/iconmonstr-github-1.png",
                              width: 60,
                              height: 60,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
