import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:korean_ui/screens/sceen7.dart';
import 'package:korean_ui/screens/screen10.dart';
import 'package:korean_ui/screens/screen11.dart';
import 'package:korean_ui/screens/screen2.dart';
import 'package:korean_ui/screens/screen3.dart';
import 'package:korean_ui/screens/screen4.dart';
import 'package:korean_ui/screens/screen5.dart';
import 'package:korean_ui/styles/Colors.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Screen2()));
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Screen3()));
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Screen4()));
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
                onpressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Screen10()));
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
                  image: 'assets/images/5.png',
                  text: '기출문제',
                  width: 120.0,
                  height: 90.0,
                  onpressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Screen5()));
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
                onpressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Screen7()));
                },
              )),
            ],
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  PageController _pageController = PageController();

  void changeIndex({index}) {
    setState(() {
      selectedIndex = index;
      _pageController.animateToPage(selectedIndex,
          duration: Duration(microseconds: 600), curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text(
          selectedIndex == 0 ? 'PITAMIN' : '프로필',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              // physics: NeverScrollableScrollPhysics(),
              controller: _pageController,
              onPageChanged: (i) {
                setState(() {
                  selectedIndex = i;
                });
              },
              children: [
                Screen1(),
                Screen11(),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.025),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    changeIndex(index: 0);
                  },
                  icon: Icon(
                    Icons.home_filled,
                    color: selectedIndex == 0
                        ? AppColors.mainPurple
                        : Colors.black,
                    size: 26,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    changeIndex(index: 1);
                  },
                  icon: Icon(
                    Icons.more_horiz,
                    color: selectedIndex == 1
                        ? AppColors.mainPurple
                        : Colors.black,
                    size: 26,
                  ),
                ),
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
