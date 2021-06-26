import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color btColor;
  final Color hover;

  const CalculatorButton(this.text, this.textColor, this.btColor, this.hover);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return 
    // ElevatedButton(
      
    //   onPressed: (){},
    //   child: Text(text,
    //    style: TextStyle(fontSize: 0.04*width, color: textColor)
    //   ),
    //   style: ElevatedButton.styleFrom(shape: CircleBorder(), padding: EdgeInsets.all(20.0)), 
    // );
     Container(
      padding: EdgeInsets.all(0.01*width),
      child:
       SizedBox(
        
        width: 0.075*width,
        height: 0.07*height,
        child: FlatButton(
          hoverColor: hover,
            shape: CircleBorder(), padding: EdgeInsets.all(20.0),
            // shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(0.018*width),
            // ),
            onPressed: () {},
            child: Text(
              text,
              style: TextStyle(fontSize: 0.02*width, color: textColor),  
            ),
            color: btColor),
      ),
    );
  }
}
