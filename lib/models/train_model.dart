import 'package:flutter/material.dart';

class TrainModel{
  String name;
  String destination;
  String location;
  String trainNumber;
  String seatNumber;
  bool isAC;
  TrainModel({required this.name, required this.destination, required this.location, required this.trainNumber, required this.seatNumber, required this.isAC});
}