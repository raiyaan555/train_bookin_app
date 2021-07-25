import 'package:flutter/material.dart';
import 'package:train_bookin_app/models/train_model.dart';
import 'package:train_bookin_app/screens/ticket.dart';

class TrainDisplay extends StatefulWidget {

  TrainModel train;


  TrainDisplay(this.train);

  @override
  _TrainDisplayState createState() => _TrainDisplayState();
}

class _TrainDisplayState extends State<TrainDisplay> {
String currentTrain = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          currentTrain = widget.train.name;
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext context) {
                return Ticket(widget.train);
              }));
        });
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text( currentTrain + ' selected'),
        ));
      },
      child: Card(
        color: Colors.transparent,
        child: Container(
          height: 100,
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
            border: Border.all(
              color: Colors.amber, //                   <--- border color
              width: 3.0,
            ),

          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.train.name, style: TextStyle(
                  color: Colors.white, fontSize: 20,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(widget.train.trainNumber, style: TextStyle(
                  color: Colors.white,
                ),
                ),
              ),
            ],
          ),
           //
        ),
      ),
    );
  }
}