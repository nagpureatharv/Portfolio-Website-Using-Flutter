import 'package:flutter/material.dart';
import 'package:portfolio/utils.dart';

class MoreAboutMe extends StatelessWidget {
  const MoreAboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: Utils.isMobile(context) ? 40 : 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.only(bottom: 15),
            child: Center(
              child: Text(
                'More About Me',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'My name is Atharv, and I pursuing BE.It Degree from  Savitribai Phule Pune University.',
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.justify,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              'I have a good understanding of C++ programming, Python, Data structures, and SQL that I have learned on Youtube. Along with these technical skills, I have good communication skills that I feel are necessary for this job role.',
              style: TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          Text(
            'I Learn Many Technology But in most of technology I liked flutter very much and I made the two project in this flutter technology. First is Revision Planeer application and other is portfolio website. I have always been a quick learner, readily grasping things, and my skills to work as a part of a team have been positive traits. ',
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'My favourite hobby is travelling because I love discovering new cities and places around the world. I often save up for months to plan a trip every year. I love friends’ trips and family outings but solo travelling brings me the real adventure and thrill to venture into new places all by myself',
            style: TextStyle(
              fontSize: 16,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
