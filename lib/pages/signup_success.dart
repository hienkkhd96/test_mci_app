import 'package:flutter/material.dart';
import 'package:mci/pages/HomePages/courses_page.dart';
import 'package:mci/styles/colors.dart';
import 'package:mci/styles/images.dart';
import 'package:mci/styles/texts.dart';

class SingupSuccess extends StatelessWidget {
  const SingupSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.mainImage),
            fit: BoxFit.cover,
            opacity: 0.2,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        margin: const EdgeInsets.only(top: 26),
        child: ListView(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          'Đăng Ký Thành Công',
                          style: AppStyles.h3.copyWith(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: AppColors.textDarkColor),
                        ),
                      ),
                      Text(
                        '“Chào mừng bạn đến với hệ thống ERP của Học viện đào tạo lập trình MCI”',
                        textAlign: TextAlign.center,
                        style: AppStyles.h4.copyWith(
                          color: AppColors.textGreyBlack,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 60),
                        child: Image.asset(
                          AppAssets.logoImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "\"Nurturing a Digital Vietnam\"",
                        style: AppStyles.h3
                            .copyWith(color: AppColors.primaryColor),
                      ),
                      SizedBox(
                        width: 270,
                        child: Text(
                            'Nuôi dưỡng sức mạnh và nền tảng cho các học viên trên con đường theo đuổi đam mê, chinh phục công nghệ',
                            textAlign: TextAlign.center,
                            style: AppStyles.h3.copyWith(
                                color: AppColors.textDarkColor,
                                fontWeight: FontWeight.w500)),
                      ),
                      Container(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: AppColors.primaryColor,
                                minimumSize: const Size.fromHeight(40),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16)),
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => const CoursesPage()),
                                  (route) => false);
                            },
                            child: Text(
                              'Bắt Đầu',
                              style: AppStyles.h3
                                  .copyWith(fontWeight: FontWeight.w600),
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
