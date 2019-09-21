import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "FLAMES",
    home: Scaffold(
      appBar: AppBar(title: Text("FLAMES"),backgroundColor: Colors.pinkAccent),
      body:home()
    )
  )
);

TextEditingController mynameCntrl=TextEditingController();
TextEditingController curshCntrl=TextEditingController();

class home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.only(top:20.0),
        color: Colors.white,
        child:SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    myheart(),
                    Text('Have a nice day!',
                      style: TextStyle(
                          fontSize: 18.0
                      ),)
                  ],
                ),
                yourName(),
                curshName(),
                LetsGo(),
              ],
            )
        )
    );
  }//widget method

}//class home

//heart image
class myheart extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage heart=AssetImage('assets/img/icon.png');
    Image myheart=Image(image:heart);
    return Container(
      width: 30.0,
      height: 30.0,
      padding: EdgeInsets.only(right: 5.0),
      child: myheart,
    );
  }

}//myheart

//input box your name
class yourName extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _yourName();
  }
}//yourName

class _yourName extends State<yourName>{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Text('Your name',style: TextStyle(
                  fontSize: 18.0
              ),),
            ),
          ),
          TextField(
            controller: mynameCntrl,
            style: TextStyle(
                fontSize: 18.0,
                height: 0.5
            ),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )
            ),
          ),
        ],
      ),
    );
  }//widget
}//your name field define

//input box cursh name
class curshName extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _curshName();
  }
}//yourName

class _curshName extends State<curshName>{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Text('Cursh name',style: TextStyle(
                  fontSize: 18.0
              ),),
            ),
          ),
          TextField(
            controller: curshCntrl,
            style: TextStyle(
                fontSize: 18.0,
                height: 0.5
            ),
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )
            ),
          ),
        ],
      ),
    );
  }

}//your name field define

//letsgo button
class LetsGo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:10.0),
      child: RaisedButton(
        color: Colors.pinkAccent,
        child: Text('Let\'s go',
          style: TextStyle(
              color: Colors.white
          ),
        ),
        elevation: 7.0,
        onPressed: (){
          hai(context);
        },
      ),
    );
  }//widget

  hai(BuildContext context){
    return showDialog(
        context: context,
        builder: (BuildContext context){
          return AlertDialog(
            title: Center(
              child: Text('Have a nice day!'),
            ),
            content: Container(
            width: 200.0,
          height: 60.0,
          child:getData(),
            )
          );
        }
    );
  }//end hai

  getData(){
    var re=(mynameCntrl.text+curshCntrl.text).toLowerCase();
    var res= re.replaceAll(RegExp(r"[^\w]"),'');
    var counter=((res.split('')).toSet().toList()).length;
    if([5,14,16,18,21,23].contains(counter)){
      return Column(
        children: <Widget>[
          Container(
            width: 30.0,
            height: 30.0,
            padding: EdgeInsets.only(right: 5.0),
            child: Icon(
                Icons.accessibility_new,
                color:Colors.blue
            ),
          ),
          Text('Friends')
        ],
      );
    }
    else if([3,10,19].contains(counter)){
      return Column(
        children: <Widget>[
          Container(
            width: 30.0,
            height: 30.0,
            padding: EdgeInsets.only(right: 5.0),
            child: Icon(
                Icons.favorite,
                color:Colors.redAccent
            ),
          ),
          Text('Lovers')
        ],
      );
    }
    else if([6,11,15,26].contains(counter)){
      return Column(
        children: <Widget>[
          Container(
            width: 30.0,
            height: 30.0,
            padding: EdgeInsets.only(right: 5.0),
            child: Icon(
              Icons.mood,
              color:Colors.pinkAccent
            ),
          ),
          Text('Marriage')
        ],
      );
    }
    else if([8,12,13,17].contains(counter)){
      return Column(
        children: <Widget>[
          Container(
            width: 30.0,
            height: 30.0,
            padding: EdgeInsets.only(right: 5.0),
            child: Icon(
                Icons.child_friendly,
                color:Colors.green
            ),
          ),
          Text('Affection')
        ],
      );
    }
    else if([2,4,7,9,20,22,24,25].contains(counter)){
      return Column(
        children: <Widget>[
          Container(
            width: 30.0,
            height: 30.0,
            padding: EdgeInsets.only(right: 5.0),
            child: Icon(
                Icons.mood_bad,
                color:Colors.red
            ),
          ),
          Text('Enemy')
        ],
      );
    }
    else if([1].contains(counter)){
      return Column(
          children: <Widget>[
            Container(
              width: 30.0,
              height: 30.0,
              padding: EdgeInsets.only(right: 5.0),
              child: Icon(
                  Icons.local_florist,
                  color:Colors.amberAccent
              ),
            ),
            Text('Siblings')
          ],
        );
    }
    else{
      return 'Unknown';
    }
  }//getData

}//lets go class end
