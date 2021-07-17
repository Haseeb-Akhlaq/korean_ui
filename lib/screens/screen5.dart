import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:korean_ui/screens/sceen7.dart';
import 'package:korean_ui/styles/Colors.dart';

class Screen5 extends StatelessWidget {
  const Screen5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
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
          '기출문제',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Card(
                elevation: 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(''),
                        Text(
                          '    2020',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                )),
            SizedBox(height: 10),
            Card(
                elevation: 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(''),
                        Text(
                          '     5급공채',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                )),
            SizedBox(height: 10),
            Card(
                elevation: 0.5,
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(''),
                        Text(
                          '      언어논리',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                )),
            SizedBox(height: 25),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  AppColors.mainPurple,
                )),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Screen7()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    '조회하기',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
