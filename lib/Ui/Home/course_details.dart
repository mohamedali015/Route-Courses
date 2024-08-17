import 'package:courses/Ui/Home/course_data.dart';
import 'package:flutter/material.dart';

class CourseDetails extends StatelessWidget {
  CourseData courseData;
  CourseDetails({super.key, required this.courseData});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          "assets/images/Bg.jpg",
        ),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(courseData.name),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Hero(tag: courseData.id, child: Image.asset(courseData.imagePath)),
            const SizedBox(
              height: 16,
            ),
            Text(
              courseData.courseContent,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
