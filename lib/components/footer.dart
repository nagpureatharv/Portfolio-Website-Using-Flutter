import 'package:url_launcher/link.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Connect With Me",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse(
                    "https://www.linkedin.com/in/atharv-nagpure-8579111aa/"),
                builder: (context, followlink) => InkWell(
                  onTap: followlink,
                  child: Image.network(
                    "https://img.icons8.com/color/344/linkedin-circled--v1.png",
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse("https://www.instagram.com/atharv_017/"),
                builder: (context, followlink2) => InkWell(
                  onTap: followlink2,
                  child: Image.network(
                    "https://img.icons8.com/fluency/344/instagram-new.png",
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Link(
                target: LinkTarget.blank,
                uri: Uri.parse(
                    "https://twitter.com/ANagpue?t=KCZSnpi1E-5NYpPWsqgVMQ&s=08"),
                builder: (context, followlink1) => InkWell(
                  onTap: followlink1,
                  child: Image.network(
                    "https://img.icons8.com/color/344/twitter--v1.png",
                    width: 60,
                    height: 60,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            "Email: atharvnagpure2002@gmail.com",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
