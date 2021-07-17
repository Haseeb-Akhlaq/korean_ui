import 'package:flutter/material.dart';
import 'package:korean_ui/styles/Colors.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          '표 계산',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.mainPurple,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 27,
                  horizontal: 10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/heart.png',
                      color: Colors.white,
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      'assets/images/heart.png',
                      color: Colors.white,
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      'assets/images/heart.png',
                      color: Colors.white,
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      'assets/images/heart.png',
                      color: Colors.white.withOpacity(0.4),
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(width: 10),
                    Image.asset(
                      'assets/images/heart.png',
                      color: Colors.white.withOpacity(0.4),
                      width: 25,
                      height: 25,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/table1.jpg',
                fit: BoxFit.contain,
              ),
            ),
            Text(
              '00:10',
              style: TextStyle(
                fontSize: 45,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
