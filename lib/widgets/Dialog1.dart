import 'package:flutter/material.dart';
import 'package:korean_ui/styles/Colors.dart';

class Dialog1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '문제풀기',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: 'RMedium',
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '회차별 문제풀기-21',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xff513180),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      '처음부터 풀기',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      '이어풀기',
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.mainPurple,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      '빠른채점',
                      style: TextStyle(
                        fontSize: 18,
                        color: AppColors.mainPurple,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      '취소',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
