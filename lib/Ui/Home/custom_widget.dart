import 'package:courses/Ui/Home/course_data.dart';
import 'package:courses/Ui/Home/course_details.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  CourseData buttonData;
  CustomWidget({super.key, required this.buttonData});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CourseDetails(courseData: buttonData),
          ),
        );
      },
      child: Column(
        children: [
          Hero(
            tag: buttonData.id,
            child: Image.asset(
              buttonData.imagePath,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFF104AD2),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Center(
              child: Text(
                buttonData.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
