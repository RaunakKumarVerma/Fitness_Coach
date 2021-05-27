import 'package:flutter/material.dart';
import 'package:bmi_calculater/components/reusable_card.dart';
import 'package:bmi_calculater/components/homebutton.dart';
import 'package:bmi_calculater/components/bottom_button.dart';
import 'package:bmi_calculater/src/pages/index.dart';
import 'package:bmi_calculater/constants.dart';
import 'package:bmi_calculater/screens/input_page.dart';


class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
        title: Text('Health Coach'),
      ),
      body: Column(

       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(height: 20.0),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              //color: Colors.white,
              decoration: new BoxDecoration(
            image: new DecorationImage(
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(1), BlendMode.dstATop),
              image: new AssetImage("images/logo.png"),
              fit: BoxFit.fitHeight,
            ),
          ),
            ),
          ),
       
SizedBox(height: 170.0),

         SizedBox(
           width: 50,
             child: RaisedButton(onPressed: () {
    Navigator.push(context,
    new MaterialPageRoute(builder: (context) => new InputPage()),);
    },
    color: kActiveCardColour,
    padding: EdgeInsets.all(10),
                child: Text(
                  'Check BMI',
                  style: kLabelTextStyle,
                ),
             shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),  
    ),),
             
                SizedBox(height: 30.0),
                SizedBox(
                  width:10,
           child:  RaisedButton(onPressed: () {
    Navigator.push(context,
    new MaterialPageRoute(builder: (context) => new IndexPage()),);
    },
    color: kActiveCardColour,
    
    padding: EdgeInsets.all(10.0),
                child: Text(
                  'Consult Fitness Coach ',
                  style: kLabelTextStyle,
                  
                ),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                    
                  ), 
    ),
                ),
    SizedBox(height: 70.0),
              
         
          
        ],
      ),
    );
  }
}