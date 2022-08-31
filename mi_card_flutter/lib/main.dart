import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'question.dart';

void main() {
  runApp(Starting());
}

class Starting extends StatefulWidget {
  @override
  _StartingState createState() => _StartingState();
}

class _StartingState extends State<Starting> {
  List<Question> questionBank = [
    Question(q: 'you can lead a cow down stairs but not up stairs ', a: false),
    Question(
        q: 'Approximately one quarter of human bones are in the feet ',
        a: true),
    Question(q: 'A slug\'s blood is green ', a: true),
    Question(q: 'QUIZ DONE ', a: true),
  ];
  List<Widget> scorekeeper = [
    SizedBox(
      width: 2,
      height: 30,
    )
  ];

  int i = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Text(
                      questionBank[i].question,
                      style: TextStyle(
                        letterSpacing: 1.7,
                        wordSpacing: 1.9,
                        fontWeight: FontWeight.w900,
                        height: 1.7,
                        color: Colors.white,
                        fontSize: 29,
                      ),
                    ),
                  ),
                ),
              ), //question
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.green,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (i < 3) {
                        if (questionBank[i].answer == true)
                          scorekeeper.add(
                            Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                          );
                        else
                          scorekeeper.add(
                            Icon(
                              Icons.close,
                              color: Colors.red,
                            ),
                          );
                        i++;
                      }
                    });
                  },
                  child: Text(
                    'True',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ), //true button
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.red,
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (i < 3) {
                        if (questionBank[i].answer == false)
                          scorekeeper.add(
                            Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                          );
                        else
                          scorekeeper.add(
                            Icon(
                              Icons.close,
                              color: Colors.red,
                            ),
                          );
                        i++;
                      }
                    });
                  },
                  child: Text(
                    'False',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              Row(
                children: scorekeeper,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: CircleAvatar(
                      backgroundColor: Colors.white38,
                      radius: 50,
                      foregroundImage: AssetImage('images/profile.jpg'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Youssef Osama M.',
                    style: TextStyle(
                      fontSize: 45,
                      fontFamily: 'DancingScript',
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    child: Text(
                      'EECE ENGINEER',
                      style: TextStyle(
                        fontSize: 19,
                        fontFamily: 'SourceSansPro',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 200,
                    child: Divider(
                      color: Colors.teal[50],
                    ),
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 50),
                    color: Colors.tealAccent,
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      title: Text(
                        '+02 010 20 50 30 21',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          color: Colors.blueGrey,
                          fontFamily: 'SourceSansPro',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 50),
                    color: Colors.tealAccent,
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      title: Text(
                        '+02 015 53 27 85 70',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          color: Colors.blueGrey,
                          fontFamily: 'SourceSansPro',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    color: Colors.tealAccent,
                    margin: EdgeInsets.symmetric(vertical: 0, horizontal: 50),
                    child: ListTile(
                        leading: Icon(
                          Icons.mail_rounded,
                          color: Colors.white,
                        ),
                        title: Text(
                          'youssefosama200@gmail.com',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 16,
                            color: Colors.blueGrey,
                            fontFamily: 'SourceSansPro',
                          ),
                        )),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
*/
