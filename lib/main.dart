import 'package:flutter/material.dart';

void main() {
  runApp(MyStack());
}

class MyRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SizedBox(
          // 반대축에서 이동할 공간을 제공하기 위해 높이 최대한으로 설정
          height: double.infinity,
          child: Row(
            // 주축 정렬 지정
            mainAxisAlignment: MainAxisAlignment.center,
            // 교차축 정렬 지정
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(width: 30, height: 30, color: Colors.purple,),
              SizedBox(width: 12,),
              Container(width: 30, height: 30, color: Colors.orange,),
              SizedBox(width: 12,),
              Container(width: 30, height: 30, color: Colors.blue,)

            ],
          ),
        ),
      )
    );
  }


}


class MyFlexible extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: SizedBox(
            // 반대축에서 이동할 공간을 제공하기 위해 높이 최대한으로 설정
            height: double.infinity,
            child: Column(
              children: [
                Flexible(flex:3, child: Container(color: Colors.red,)),
                Flexible(flex:3 ,child: Container(color: Colors.red,))
              ],
            ),
          ),
        )
    );
  }
}

class MyStack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: SizedBox(
            // 반대축에서 이동할 공간을 제공하기 위해 높이 최대한으로 설정
            height: double.infinity,
            child: Stack(
              children: [
                Container(width: 300, height: 300, color: Colors.blue,),
                Container(width: 200, height: 200, color: Colors.green,),
                Container(width: 100, height: 100, color: Colors.red,),
            ],
          ),

          ),
        ),
      );

  }
}


class SampleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return   MaterialApp(
      home: Scaffold(
          body: SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Text('Code',style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.blue),),
                  Text('Java'),
                  TextButton(
                      onPressed: (){},
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.amber,
                          backgroundColor: Colors.black
                      ),
                      child: Text('버튼 눌러봐라', style: TextStyle(color: Colors.white))
                  ),
                  OutlinedButton(
                      onPressed: (){},
                      child: Text('버튼 눌러봐라', style: TextStyle(color: Colors.white))),

                  ElevatedButton(
                      onPressed: (){},
                      child: Text('버튼 눌러봐라', style: TextStyle(color: Colors.white))),

                  IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.home)),
                  GestureDetector(
                    onTap: () { print('탭함!'); },
                    onDoubleTap: () { print('두번 탭함!'); },
                    onLongPress: () { print('길게 누름!'); },
                    child: Container(
                      decoration: BoxDecoration(color: Colors.yellow),
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(width: 10, color: Colors.black),
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    height: 200,
                    width: 100,
                  ),
                  SizedBox(height: 200, width: 200,
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(16), // 상하좌우 16 픽셀 패딩
                        child: Container(color: Colors.purple, width: 50, height: 50,),
                      ),
                      color: Colors.green,),
                  )
                ],

              )
          )
        // Text("My Flutter Text"),
      ),
    );

  }
}