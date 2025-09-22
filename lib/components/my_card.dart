import 'package:flutter/material.dart';
import 'package:ostad_ui_design/models/courses.dart';
import 'package:ostad_ui_design/components/my_container.dart';

class MyCard extends StatelessWidget {
  final Course course;

  const MyCard({
    super.key,
    required this.course,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  course.imagePath,
                  fit: BoxFit.fill,
                  height: 150,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyContainer(
                      label: "ব্যাচ ${course.batchNo}",
                    ), // Use course.batchNo
                    MyContainer(
                      label: "${course.seatNo} সিট বাকি",
                      iconData: Icons.groups,
                    ),
                    MyContainer(
                      label: "${course.daysLeft} দিন বাকি",
                      iconData: Icons.access_time,
                    ),
                  ],
                ),
              ),
              Divider(thickness: 0.5, color: Colors.grey),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  course.description,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 180,
              height: 30,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(5),
                ),
                child: GestureDetector(
                  onTap: () {
                   print("dekhi kaj kore naki");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "বিস্তারিত দেখি",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(Icons.arrow_forward, size: 12, color: Colors.black),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
