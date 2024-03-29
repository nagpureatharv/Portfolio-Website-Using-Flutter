import 'package:flutter/material.dart';
import 'package:portfolio/utils.dart';

class SkillCard extends StatelessWidget {
  final String url;
  const SkillCard({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          height: !Utils.isMobile(context) ? Utils.mdqw(context) / 6.8 : 77,
          width: !Utils.isMobile(context) ? Utils.mdqw(context) / 6.8 : 77,
          child: Padding(
            padding: Utils.isMobile(context)
                ? const EdgeInsets.all(8.0)
                : const EdgeInsets.all(30.0),
            child: Image.network(url),
          ),
        ),
      ),
    );
  }
}
