import 'package:flutter/material.dart';
import 'package:untitled3/Services/globalVarible.dart';
import 'componets/buttonWidget.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  Color colorData=Colors.white;
  bool raisedButton=false;
  List<Map<String,dynamic>> data1=[
    {'Name':'Form A','Color':Colors.amber},
    {'Name':'Form B','Color':Colors.blue},
    {'Name':'Form C','Color':Colors.red},
  ];
  List<Map<String,dynamic>> data2=[
    {'Name':'Form D','Color':Colors.green},
    {'Name':'Form E','Color':Colors.yellow},
    {'Name':'Form F','Color':Colors.black12},
  ];
  List<Map<String,dynamic>> data3=[
    {'Name':'Home','Color':Colors.white},
    {'Name':'Form','Color':Colors.yellow},
    {'Name':'Career','Color':Colors.black12},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,width: 3)
                    ),
                    child:  Column(
                      children: data1.map((e){
                        return
                           ButtonWidget(name: e['Name'],paddingMs:8.0,onTap:(){
                             setState(() {
                               GlobalVal.pressed=false;
                               GlobalVal.buttonName=e['Name'];
                               GlobalVal.name=e['Name'];
                               colorData=e['Color'];
                             });
                           });
                      }).toList(),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                            border: Border(top: BorderSide(color: Colors.black,width: 3),bottom: BorderSide(color: Colors.black,width: 3))
                        ),
                        child:  Padding(
                          padding:  EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: data3.map((e){
                              return
                                ButtonWidget(name: e['Name'],paddingMs:8.0,onTap:(){
                                  setState(() {
                                    GlobalVal.pressed=false;
                                    GlobalVal.buttonName=e['Name'];
                                    GlobalVal.name=e['Name'];
                                    colorData=e['Color'];
                                  });
                                });
                            }).toList(),
                          ),
                        ),
                      ),
                      GlobalVal.name=="Home"?Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                              border: const Border(bottom: BorderSide(color: Colors.black,width: 3))
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
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
                                      setState(() {
                                        GlobalVal.personalDetails=false;
                                        GlobalVal.name='Successfully Submitted';
                                      });
                                    },colorData: Colors.grey),
                                  ],
                                )
                              ],
                            ),
                          )
                        ),
                      ):
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: colorData,
                            border: const Border(bottom: BorderSide(color: Colors.black,width: 3))
                          ),
                          child:  Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(GlobalVal.name),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black,width: 3)
                    ),
                    child: Column(
                      children: data2.map((e){
                        return
                          ButtonWidget(name: e['Name'],paddingMs:8.0,onTap:(){
                            setState(() {
                              GlobalVal.pressed=false;
                              GlobalVal.buttonName=e['Name'];
                              GlobalVal.name=e['Name'];
                              colorData=e['Color'];
                            });
                          });
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container())
        ],
      ) ,
    );
  }
}
