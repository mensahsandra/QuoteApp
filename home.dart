//import 'dart:ui';

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/flat_button.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {

  int index = 0;
  List quotes = [
    " The greatest glory in living lies not in never falling, but in rising every time we fall. -Nelson Mandela ",
  " The way to get started is to quit talking and begin doing. -Walt Disney ",
  " Your time is limited, so don't waste it living someone else's life. Don't be trapped by dogma – which is living with the results of other people's thinking. -Steve Jobs ",
  " If life were predictable it would cease to be life, and be without flavor. -Eleanor Roosevelt",
  " If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough. -Oprah Winfrey ",
  " If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success. -James Cameron",
  " Life is what happens when you're busy making other plans. -John Lennon",
  "Life throws curveballs. And while there might be blockers to success, it's imperative to keep pushing with the knowledge mistakes will be made and failure is inevitable.",
  "Spread love everywhere you go. Let no one ever come to you without leaving happier. -Mother Teresa",
  "When you reach the end of your rope, tie a knot in it and hang on. -Franklin D. Roosevelt",
  "Always remember that you are absolutely unique. Just like everyone else. -Margaret Mead",
  "Don't judge each day by the harvest you reap but by the seeds that you plant. -Robert Louis Stevenson",
  "The future belongs to those who believe in the beauty of their dreams. -Eleanor Roosevelt",
  "Tell me and I forget. Teach me and I remember. Involve me and I learn. -Benjamin Franklin",
  "The best and most beautiful things in the world cannot be seen or even touched — they must be felt with the heart. -Helen Keller",
  "It is during our darkest moments that we must focus to see the light. -Aristotle",
  "Whoever is happy will make others happy too. -Anne Frank",
  "Do not go where the path may lead, go instead where there is no path and leave a trail. -Ralph Waldo Emerson",
  "You will face many defeats in life, but never let yourself be defeated. -Maya Angelou",
  "The greatest glory in living lies not in never falling, but in rising every time we fall. -Nelson Mandela",
  "In the end, it's not the years in your life that count. It's the life in your years. -Abraham Lincoln",
  "Never let the fear of striking out keep you from playing the game. -Babe Ruth",
  "Life is either a daring adventure or nothing at all. -Helen Keller",
  "Many of life's failures are people who did not realize how close they were to success when they gave up. -Thomas A. Edison",
  "You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. -Dr. Seuss",
  "If life were predictable it would cease to be life and be without flavor. -Eleanor Roosevelt",
  "In the end, it's not the years in your life that count. It's the life in your years -Abraham Lincoln",
  " Life is a succession of lessons which must be lived to be understood. -Ralph Waldo Emerson ",
    " You will face many defeats in life, but never let yourself be defeated. -Maya Angelou ",
    " To Be Continued... By Mensah ",
  ];
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        color: Colors.lightGreen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Center(
              child: Container(
                 width: 350,
              height: 200,
                  margin: EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(14.5)
                  ),
                  child: Center(child: Text(quotes[index % quotes.length],
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontStyle: FontStyle.italic,
                    fontSize: 16.5,
                  ) )))
              ),
            ),

            Divider(thickness: 1.3,),
            Padding(
              padding: const EdgeInsets.only(top:18.0),
              child: FlatButton.icon(
                  onPressed: _showQuote,
                  color: Colors.pink.shade700,
                  icon: Icon(Icons.wb_sunny),

              label: Text("Inspire Me", style: TextStyle(
                fontSize: 18.8,
                  color: Colors.white
              ),)),
            ),
            Spacer()
          ],
        ),
      ),
    );
  }

  void _showQuote() {
    //increment our index/counter by 1 each time
    setState(() {
      index += 1;
    });




  }
}