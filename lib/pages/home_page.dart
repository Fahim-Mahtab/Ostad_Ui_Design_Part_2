import 'package:flutter/material.dart';
import 'package:ostad_ui_design/components/my_card.dart';
import 'package:ostad_ui_design/data/course_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Ostad UI Design"),
        backgroundColor: Colors.grey[200],
      ),
      body: GridView.builder(
        shrinkWrap: true,
        itemCount: courseList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 2,
          crossAxisSpacing: 2,
          crossAxisCount: 2,
          childAspectRatio: 0.65,
        ),
        itemBuilder: (context, index) {
          final course = courseList[index];
          return MyCard(course: course);
        },
      ),
    );
  }
}