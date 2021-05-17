import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../routes.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime _lastButtonPressed;
  Timer _ticker;
  int seconds;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Days without accidents"),
          Text(constructTime(seconds)),
        ],
      ),
    );
  }
  //time format,Convert to the corresponding hh:mm:ss format according to the total seconds
  String constructTime(int seconds){
    int days = seconds ~/86400;
    int hour = seconds ~/3600;
    int minute = seconds%3600 ~/60;
    int second = seconds%60;
    return formatTime (days) + ":" + formatTime (hour) + ":" + formatTime (minute) + ":" + formatTime (second);
  }
  //number formatting,Convert 0 ~ 9 time to 00 ~ 09
  String formatTime (int timeNum){
    return timeNum < 10? "0" + timeNum.toString():timeNum.toString();
  }

  @override
  void initState(){
    super.initState();
    //Get the current time
    var now = DateTime.now();
    //Get 2 minute interval
    var twoHours = now.add(Duration(minutes:0)).difference(now);
    //for countdouwn Get the total number of seconds, 120 secons in 2 minutes
    //when counter minutes:0

    seconds = twoHours.inSeconds;
    startTimer();
  }

  void startTimer(){
    //set callback once every 1 seconds
    const period = const Duration(seconds: 1);
    _ticker = Timer.periodic(period, (timer) {
      //update interface
      setState(() {
        //seconds +1, because once every second
        seconds++;
      });
      //if (seconds == 0){
        //When is countdown seconds--, cancel time
        //cancelTimer();
      //}
    });
  }

  void cancelTimer(){
    if (_ticker!=null){
      _ticker.cancel();
      _ticker=null;
    }
  }

  @override
  void dispose() {
    super.dispose();
    cancelTimer();
  }



}