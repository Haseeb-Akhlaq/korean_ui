import 'package:flutter/material.dart';
import 'package:korean_ui/styles/Colors.dart';

class Screen4 extends StatelessWidget {
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
          '오답노트',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Cards(),
            SizedBox(height: 5),
            Cards(),
            SizedBox(height: 5),
            Cards(),
            SizedBox(height: 5),
            Cards(),
          ],
        ),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  const Cards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.8,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListTile(
          title: Text('2021/7급공채 / 자료해석'),
          subtitle: Text(
            '21번',
            style: TextStyle(
              color: AppColors.mainPurple,
              fontFamily: 'RMedium',
            ),
          ),
          trailing: Image.asset('assets/images/post.png'),
        ),
      ),
    );
  }
}
