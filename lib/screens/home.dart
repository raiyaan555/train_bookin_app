import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:train_bookin_app/models/train_model.dart';
import 'package:train_bookin_app/screens/trains_display.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _currentLocation = 'Delhi';
  var _destinationLocation = 'Mumbai';
  bool isACcheck = false;
  int c = 0;

  List <TrainModel> trainModel = [
    TrainModel(name:'Shatabdi Express', location: 'Delhi', destination: 'Chennai', trainNumber: 'SBE12343', seatNumber: 'B1', isAC: false),
    TrainModel(name:'Shatabdi Express AC',location: 'Delhi', destination: 'Chennai', trainNumber: 'SBE12343', seatNumber: 'B1',isAC: true),
    TrainModel(name: 'Janta Express', location: 'Mumbai', destination: 'Delhi',  trainNumber: 'BS3455', seatNumber: 'A2', isAC: false),
    TrainModel(name: 'Janta Express AC', location: 'Mumbai', destination: 'Bangalore', trainNumber: 'BS3455', seatNumber: 'A2', isAC: true),
    TrainModel(name: 'Madras Express', location: 'Delhi', destination: 'Chennai', trainNumber: 'SBE12343', seatNumber: 'B1', isAC: true),
    TrainModel(name: 'Rajdhaani Express', location: 'Kolkata', destination: 'Bangalore', trainNumber: 'SBE12343', seatNumber: 'B1', isAC: true),
    TrainModel(name: 'Achi Express', location: 'Delhi', destination: 'Kolkata', trainNumber: 'SBE12343', seatNumber: 'B1', isAC: true),
    TrainModel(name: 'Central Express', location: 'Mumbai', destination: 'Chennai', trainNumber: 'SBE12343', seatNumber: 'B1', isAC: true),
    TrainModel(name: 'Himgiri Express', location: 'Bangalore', destination: 'Delhi', trainNumber: 'SBE12343', seatNumber: 'B1', isAC: true),
    TrainModel(name: 'Howrah Express', location: 'Kolkata', destination: 'Chennai', trainNumber: 'SBS12343', seatNumber: 'A3', isAC: true),
    TrainModel(name: 'Calcutta Express', location: 'Mumbai', destination: 'Bangalore', trainNumber: 'SBS12343', seatNumber: 'A3', isAC: true),
    TrainModel(name: 'Calcutta Express Maha ', location: 'Mumbai', destination: 'Kolkata', trainNumber: 'SBS12343', seatNumber: 'A3', isAC: true),
  ];



  bool trainsForPLaces(_currentLocation, _destinationLocation, isACcheck, String location, String destination, bool isAC){
    if((_currentLocation == location || _currentLocation == destination) && (_destinationLocation == location || _destinationLocation == destination) && isACcheck==isAC && c!=0)
      return true;
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          // height: MediaQuery.of(context).size.height,
          // width: MediaQuery.of(context).size.width,
          child: Column(
          children: <Widget> [
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: MediaQuery.of(context).size.height/3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage('https://t3.ftcdn.net/jpg/01/85/98/48/360_F_185984825_n67yTSA0am5dZQtqUAF2tZ771Pq02e3f.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[900],
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black87.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      ),

                    ],

                  ),
                  child: Column(
                    children: [Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Icon (Icons.train, color: Colors.pink,),
                        ),
                        Text('From', style: TextStyle( color: Colors.white),),
                      ],
                    ),
                      DropdownButton <String> (
                        dropdownColor: Colors.pink,
                        items:[
                          DropdownMenuItem<String>(
                            value: "Delhi",
                            child: Text("Delhi", style: TextStyle(color: Colors.white),),
                          ),

                          DropdownMenuItem<String>(
                            value: "Mumbai",
                            child: Text("Mumbai", style: TextStyle(color: Colors.white),),
                          ),

                          DropdownMenuItem<String>(
                            value: "Chennai",
                            child: Text("Chennai", style: TextStyle(color: Colors.white),),
                          ),

                          DropdownMenuItem<String>(
                            value: "Bangalore",
                            child: Text("Bangalore", style: TextStyle(color: Colors.white),),
                          ),

                          DropdownMenuItem<String>(
                            value: "Kolkata",
                            child: Text("Kolkata", style: TextStyle(color: Colors.white),),
                          ),

                        ],
                        hint: Center(child: Text("$_currentLocation",style: TextStyle(color: Colors.white,))),


                        onChanged: (_value) =>{
                          print(_value.toString()),
                          setState((){
                            _currentLocation = _value.toString();
                          }),

                        },
                      ),
                    ]
                  ),
                ),
                Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[900],
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.black87.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(0, 2),
                      ),

                    ],

                  ),
                  child: Column(
                      children: [Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon (Icons.location_on_rounded, color: Colors.pink,),
                          ),
                          Text('To', style: TextStyle( color: Colors.white),),
                        ],
                      ),
                        DropdownButton <String> (
                          dropdownColor: Colors.pink,
                            items:[
                              DropdownMenuItem<String>(
                                value: "Delhi",
                                child: Text("Delhi", style: TextStyle(color: Colors.white),),
                              ),

                              DropdownMenuItem<String>(
                                value: "Mumbai",
                                child: Text("Mumbai", style: TextStyle(color: Colors.white),),
                              ),

                              DropdownMenuItem<String>(
                                value: "Chennai",
                                child: Text("Chennai", style: TextStyle(color: Colors.white),),
                              ),

                              DropdownMenuItem<String>(
                                value: "Bangalore",
                                child: Text("Bangalore", style: TextStyle(color: Colors.white),),
                              ),

                              DropdownMenuItem<String>(
                                value: "Kolkata",
                                child: Text("Kolkata", style: TextStyle(color: Colors.white),),
                              ),

                            ],
                          hint: Center(child: Text("$_destinationLocation",style: TextStyle(color: Colors.white,))),

                          onChanged: (_value) =>{
                              print(_value.toString()),
                              setState((){
                                _destinationLocation = _value.toString();
                              }),

                          },
                        )
                      ],

                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Container(
                height: 100,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.blueGrey[900],
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow:[
                    BoxShadow(
                      color: Colors.black87.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(13.0),
                      child: Column(children: [
                        Text('AC seat', style: TextStyle(color: Colors.white, fontSize: 18) ,),
                        Transform.scale(
                          scale:1.3,
                          child: Switch(
                              value: isACcheck,
                              activeColor: Colors.pink,


                              // colorOn: Colors.pink,
                              // colorOff : Colors.blueGrey,


                              onChanged:(bool s){
                           setState(() {
                             isACcheck = s;
                             print(isACcheck);
                           });

                          }),
                        ),
                      ],),
                    ),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(15.0),
                          boxShadow:[
                            BoxShadow(
                              color: Colors.black87.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(0, 2),
                            ),

                          ],

                        ),
                        child: TextButton(onPressed: () {
                          setState(() {
                            c++;
                          });
                        }, child: Text('Show Trains', style: TextStyle(color: Colors.white),))),

                  ],
                ),
              ),
            ),
            // Container(
            //   child: ListView(
            //     children: [
            //
            //     ],
            //   ),
            // ),
            Container(
              height: MediaQuery.of(context).size.height/3,
              color: Colors.transparent,
              child:ListView.builder(
                  itemCount:trainModel.length,
                  itemBuilder: (context,index){
                    if(trainsForPLaces(_currentLocation, _destinationLocation, isACcheck, trainModel[index].location,trainModel[index].destination, trainModel[index].isAC)){
                      return TrainDisplay(trainModel[index]);
                    }return Container();
                    }
                  ),
            )
          ],
          ),
        ),
      ),
    );
  }
}
