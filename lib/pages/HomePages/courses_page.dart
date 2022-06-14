import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:mci/fetch/fetch_album.dart';
import 'package:mci/styles/colors.dart';
import 'package:mci/styles/texts.dart';
import 'dart:async';

class CoursesPage extends StatefulWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  late Future<List> futureAlbum;
  @override
  void initState() {
    super.initState();
    futureAlbum = fetchElead();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        backgroundColor: AppColors.primaryColor,
        elevation: 4,
        toolbarHeight: 90,
        automaticallyImplyLeading: true,
        title: Row(
          children: [
            Container(
                padding: const EdgeInsets.all(8),
                child: Image.asset('assets/images/Ellipse.png')),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Text(
                    "Welcome back",
                    style: AppStyles.h3,
                  ),
                ),
                Text(
                  'Lê Hùng',
                  style: AppStyles.h3.copyWith(
                      color: AppColors.textDarkColor,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
          ],
        ),
        actions: [
          InkWell(
            onTap: () {
              Get.toNamed('/courses');
            },
            child: Container(
              margin: const EdgeInsets.only(top: 30, right: 10),
              child: const FaIcon(
                FontAwesomeIcons.bell,
                size: 20,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30, right: 20),
            child: const FaIcon(
              FontAwesomeIcons.magnifyingGlass,
              size: 20,
            ),
          ),
        ],
      ),
      body: FutureBuilder<List>(
        future: futureAlbum,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text(snapshot.data![i].dateJoined ?? "Không có tên"),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
