import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mci/models/test.dart';

Future<List> fetchElead() async {
  final response =
      await http.get(Uri.parse('https://mcivietnam.com/apis/v1/lecturer/'));
  if (response.statusCode == 200 || response.statusCode == 201) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    dynamic jsonData = jsonDecode(response.body);
    List<Lecturer> lecturers = [];
    for (var item in jsonData) {
      Lecturer lecturer = Lecturer(
        id: item['id'],
        password: item['password'],
        lastLogin: item['last_login'],
        isSuperuser: item['is_superuser'],
        username: item['username'],
        firstName: item['first_name'],
        lastName: item['last_name'],
        email: item['email'],
        isStaff: item['is_staff'],
        isActive: item['is_active'],
        dateJoined: item['date_joined'],
      );
      lecturers.add(lecturer);
    }

    return lecturers;
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
