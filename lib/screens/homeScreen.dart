import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:korean_ui/screens/screen2.dart';
import 'package:korean_ui/screens/screen3.dart';
import 'package:korean_ui/screens/screen4.dart';
import 'package:korean_ui/screens/screen5.dart';
import 'package:korean_ui/styles/Colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'PITAMIN',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: HomeCard(
                          image: 'assets/images/1.png',
                          text: '분수 비교',
                          width: 120.0,
                          height: 90.0,
                          onpressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Screen1()));
                          },
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                          child: HomeCard(
                        image: 'assets/images/2.png',
                        text: '표 계산',
                        width: 90.0,
                        height: 90.0,
                        onpressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Screen3()));
                        },
                      )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: HomeCard(
                          image: 'assets/images/3.png',
                          text: '오답노트',
                          width: 120.0,
                          height: 90.0,
                          onpressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Screen4()));
                          },
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                          child: HomeCard(
                        image: 'assets/images/4.png',
                        text: '커뮤니티',
                        width: 90.0,
                        height: 90.0,
                      )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: HomeCard(
                          image: 'assets/images/5.png',
                          text: '기출문제',
                          width: 120.0,
                          height: 90.0,
                          onpressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Screen5()));
                          },
                        ),
                      ),
                      SizedBox(width: 5),
                      Expanded(
                          child: HomeCard(
                        image: 'assets/images/6.png',
                        text: '기출문제 해설',
                        width: 90.0,
                        height: 90.0,
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.025),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.home_filled,
                  color: AppColors.mainPurple,
                  size: 26,
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HomeCard extends StatelessWidget {
  final image;
  final text;
  final onpressed;
  final width;
  final height;

  HomeCard({this.text, this.image, this.onpressed, this.height, this.width});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onpressed();
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
          child: Column(
            children: [
              Container(
                width: width,
                height: height,
                child: Image.asset(
                  image,
                  color: AppColors.mainPurple,
                ),
              ),
              Divider(
                thickness: 1.1,
                color: Colors.grey[200],
              ),
              SizedBox(height: 5),
              Text(
                text,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              )
            ],
          ),
        ),
      ),
    );
  }
}
