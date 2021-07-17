import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:korean_ui/styles/Colors.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
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
          '분수비교',
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
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.4),
                          width: 1.2,
                        ),
                      ),
                      child: Text(
                        '344 x 32',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.06,
                          //fontWeight: FontWeight.w600,
                          fontFamily: 'RMedium',
                        ),
                      ),
                    ),
                    Container(
                      width: 55,
                      height: 50,
                      padding: EdgeInsets.symmetric(
                        vertical: 13,
                        horizontal: 18,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[100],
                        border: Border.all(
                          color: AppColors.mainPurple,
                          width: 1.2,
                        ),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey.withOpacity(0.4),
                          width: 1.2,
                        ),
                      ),
                      child: Text(
                        '411 x 64',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width * 0.06,
                          //fontWeight: FontWeight.w600,
                          fontFamily: 'RMedium',
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.mainPurple,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff513180),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
              ],
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
