import 'package:flutter/material.dart';
import 'package:untitled3/globalVarible.dart';

import 'buttonWidget.dart';
class PersonalDetails extends StatefulWidget {
  const PersonalDetails({super.key});

  @override
  State<PersonalDetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Text('Personal Details'),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonWidget(name: 'FirstName', paddingMs: 0.0, onTap:(){},colorData: Colors.grey),
              ButtonWidget(name: 'FirstName', paddingMs: 0.0, onTap:(){},colorData: Colors.grey),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonWidget(name: 'FirstName', paddingMs: 0.0, onTap:(){},colorData: Colors.grey),
              ButtonWidget(name: 'FirstName', paddingMs: 0.0, onTap:(){},colorData: Colors.grey),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ButtonWidget(name: 'FirstName', paddingMs: 0.0, onTap:(){},colorData: Colors.grey),
              ButtonWidget(name: 'FirstName', paddingMs: 0.0, onTap:(){},colorData: Colors.grey),
            ],
          ),
          const SizedBox(height: 10,),
          !GlobalVal.pressed?ButtonWidget(name: 'Next', paddingMs: 0.0, onTap:(){
            setState(() {
              GlobalVal.pressed=true;
            });
          },colorData: Colors.grey): Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonWidget(name: 'Back', paddingMs: 0.0, onTap:(){
                setState(() {
                  GlobalVal.pressed=false;
                });
              },colorData: Colors.grey),
              SizedBox(width: 20,),
              ButtonWidget(name: 'Submit', paddingMs: 0.0, onTap:(){
                print('fdfgsdfgsd');
                setState(() {
                  GlobalVal.personalDetails=false;
                  GlobalVal.name='Successfully Submitted';
                });
              },colorData: Colors.grey),
            ],
          )
        ],
      ),
    );
  }
}
class SubmitDetails extends StatefulWidget {
  const SubmitDetails({super.key});

  @override
  State<SubmitDetails> createState() => _SubmitDetailsState();
}

class _SubmitDetailsState extends State<SubmitDetails> {
  bool submitData=false;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonWidget(name: 'Back', paddingMs: 0.0, onTap:(){
          setState(() {
            GlobalVal.pressed=false;
          });
        },colorData: Colors.grey),
        SizedBox(width: 20,),
        ButtonWidget(name: 'Submit', paddingMs: 0.0, onTap:(){

        },colorData: Colors.grey),
      ],
    );
  }
}

