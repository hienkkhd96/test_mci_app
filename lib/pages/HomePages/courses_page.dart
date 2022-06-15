import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:mci/fetch/get_course_list.dart';
import 'package:mci/oath2/oatth2.dart';
import 'package:mci/styles/colors.dart';
import 'package:mci/styles/images.dart';
import 'package:mci/styles/texts.dart';
import 'dart:async';

import 'package:mci/widgets/buttons/build_indicator.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  late Future<List> futureCourseList;
  @override
  void initState() {
    super.initState();
    futureCourseList = fetchCourseList();
  }

  @override
  Widget build(BuildContext context) {
    final CarouselController pageController = CarouselController();
    final currentPageNotifier = ValueNotifier<int>(0);
    final List arrSlider = [1, 2, 3, 4, 5];
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
        automaticallyImplyLeading: false,
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
              print(Oauth2ClientExample());
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
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: CarouselSlider(
              carouselController: pageController,
              options: CarouselOptions(
                height: 230.0,
                viewportFraction: 0.6,
                enableInfiniteScroll: true,
                reverse: false,
                onPageChanged: (index, reason) {
                  currentPageNotifier.value = index;
                },
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 4),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
              ),
              items: arrSlider.map((i) {
                return Builder(builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(12)),
                        child: Image.asset(
                          'assets/images/view_course1.jpg',
                          fit: BoxFit.fitWidth,
                        ),
                      ));
                });
              }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: BuildIndicator(
                count: arrSlider.length,
                currentPageNotifier: currentPageNotifier),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            color: AppColors.primaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'CÁC KHÓA HỌC',
                  style: AppStyles.h2.copyWith(fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    Text(
                      'Xem thêm',
                      style: AppStyles.h3,
                    ),
                    const Icon(FontAwesomeIcons.caretRight)
                  ],
                )
              ],
            ),
          ),
          FutureBuilder<List>(
            future:
                futureCourseList, // a previously-obtained Future<String> or null
            builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
              List<Widget> children;
              if (snapshot.hasData) {
                children = renderCourseList(snapshot);
              } else if (snapshot.hasError) {
                children = <Widget>[
                  const Icon(
                    Icons.error_outline,
                    color: Colors.red,
                    size: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text('Error: ${snapshot.error}'),
                  )
                ];
              } else {
                children = <Widget>[
                  const Center(
                    child: SizedBox(
                      width: 60,
                      height: 60,
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ];
              }
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GridView.count(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  crossAxisCount: 2,
                  primary: false,
                  shrinkWrap: true,
                  children: children,
                ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                child: Image.asset(
                  AppAssets.logoImage,
                  width: 50,
                ),
              ),
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(FontAwesomeIcons.solidAddressCard),
                    Text(
                      "ECRM",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    focusElevation: 1,
                    onPressed: () {},
                    child: const Icon(FontAwesomeIcons.plus),
                  )
                ],
              ),
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(FontAwesomeIcons.bullhorn),
                    Text(
                      "EMKT",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(FontAwesomeIcons.users),
                    Text(
                      "EHRM",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> renderCourseList(AsyncSnapshot<List<dynamic>> snapshot) {
    return <Widget>[
      for (int i = 0; i < snapshot.data!.length; i++)
        Card(
          child: Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(50)),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Image.network(
                    snapshot.data![i].image,
                    color: Colors.red,
                    colorBlendMode: BlendMode.dstATop,
                    fit: BoxFit.fitWidth,
                    filterQuality: FilterQuality.low,
                  ),
                ),
              ),
              Text(
                snapshot.data![i].title,
                textAlign: TextAlign.center,
                style: AppStyles.h4.copyWith(
                    color: AppColors.textDarkColor,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        )
    ];
  }
}
