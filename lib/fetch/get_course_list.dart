import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mci/models/course_list.dart';

Future<List> fetchCourseList() async {
  final response =
      await http.get(Uri.parse('https://mcivietnam.com/apis/v1/course-list/'));
  if (response.statusCode == 200 || response.statusCode == 201) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    List jsonData = jsonDecode(response.body);
    List<CourseList> courseList = [];
    for (var item in jsonData) {
      CourseList course = CourseList(
        id: item['id'],
        created: item['created'].toString(),
        price: item['price'],
        discountPrice: item['discount_price'],
        label: item['label'].toString(),
        title: item['title'].toString(),
        local: item['local'].toString(),
        sector: item['sector'].toString(),
        desc: item['desc'].toString(),
        image: item['image'].toString(),
        rating: item['rating'],
        firstRequirement: item['first_requirement'].toString(),
        targetStudent: item['target_student'].toString(),
        outputCourse: item['output_course'].toString(),
        studyReason: item['study_reason'].toString(),
        youtubeLink: item['youtube_link'].toString(),
        courseType: item['course_type'].toString(),
        slug: item['slug'].toString(),
        tags: item['tags'].toString(),
        lecturerList: item['lecturer_list'].toString(),
        classsku: item['classsku'].toString(),
      );
      courseList.add(course);
    }

    return courseList;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
