import 'package:flutter/material.dart';
import 'package:train_bookin_app/models/train_model.dart';
import 'package:train_bookin_app/screens/trains_display.dart';

class Ticket extends StatefulWidget {
  TrainModel ticketDetails;
  Ticket(this.ticketDetails);

  @override
  _TicketState createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
        icon: Icon(
        Icons.arrow_back_ios_rounded,
        color: Colors.white,
    ),
    onPressed: () {
    Navigator.pop(context);
    },
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(10),
          height: 500,
          width: 500,
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), bottomRight: Radius.circular(30),topRight: Radius.circular(15), bottomLeft: Radius.circular(15),
            ),
              border: Border.all(
              color: Colors.amber, //                   <--- border color
              width: 5.0,
              ),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [

                    Text(
                      widget.ticketDetails.name,style: TextStyle(
                      color: Colors.white,fontSize: 30,
                    ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      'Train number: ',style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    ),
                    ),
                    Text(
                      widget.ticketDetails.trainNumber,style: TextStyle(
                      color: Colors.white70,fontSize: 15,
                    ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      'From: ',style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                    ),
                    Text(
                      widget.ticketDetails.location,style: TextStyle(
                      color: Colors.white,fontSize: 23,
                    ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      'To: ',style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                    ),
                    ),
                    Text(
                      widget.ticketDetails.destination,style: TextStyle(
                      color: Colors.white,fontSize: 23,
                    ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      'Seat number: ',style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    ),
                    Text(
                      widget.ticketDetails.seatNumber,style: TextStyle(
                      color: Colors.white,fontSize: 30,
                    ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      'AC: ',style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    ),
                    Text(
                      widget.ticketDetails.isAC.toString(),style: TextStyle(
                      color: Colors.white,fontSize: 30,
                    ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: () { ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text('Ticket Booked'),
                    )); },
                    child: Icon(Icons.arrow_right_alt_outlined, color: Colors.pink,),
                    backgroundColor: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


