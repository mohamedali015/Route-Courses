import 'package:courses/Ui/Home/content_list.dart';
import 'package:courses/Ui/Home/course_data.dart';
import 'package:courses/Ui/Home/custom_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = "Home Screen";
  HomeScreen({super.key});

  List<CourseData> button = [
    CourseData(
        id: 1,
        name: "Android Course",
        imagePath: "assets/images/Android.jpeg",
        courseContent: ContentList.content[0]),
    CourseData(
        id: 2,
        name: "IOS Course",
        imagePath: "assets/images/IOS.jpeg",
        courseContent: ContentList.content[1]),
    CourseData(
        id: 3,
        name: "Full Stack",
        imagePath: "assets/images/fullStack.jpeg",
        courseContent: ContentList.content[2]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Route App One"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (context, index) =>
              CustomWidget(buttonData: button[index]),
          itemCount: button.length,
        ),
      ),
    );
  }
}
