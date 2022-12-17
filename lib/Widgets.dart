import 'package:flutter/material.dart';

class ShowCode extends StatefulWidget {
  const ShowCode({Key? key,required this.code,required this.output}) : super(key: key);
  final String code,output;

  @override
  State<ShowCode> createState() => _ShowCodeState();
}

class _ShowCodeState extends State<ShowCode> {
  var output=' ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade100,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            height:MediaQuery.of(context).size.height*0.5,
            margin: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                width: 2,
                color: Colors.orange,
              )
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(widget.code,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {

              setState(() {
                output=widget.output;
              });
            },
            style: ButtonStyle(
                overlayColor:
                MaterialStateProperty.resolveWith<Color?>(
                      (Set<MaterialState> states) {
                    if
                    (states.contains(MaterialState.pressed)) {
                      return Colors.lightGreen.shade300;
                    }
                    return null;
                  },
                ),
            ),
            child: const Text("Run",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w300),

            ),

          ),
          Container(
            width: MediaQuery.of(context).size.width*0.9,
            height:MediaQuery.of(context).size.height*0.3,
            margin: const EdgeInsets.only(left: 10,right: 10,bottom: 10,top: 50),
            decoration: BoxDecoration(
                color: Colors.white30,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  width: 2,
                  color: Colors.orange,
                )
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Text(output,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500,fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
