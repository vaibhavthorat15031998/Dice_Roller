
import 'package:flutter/material.dart';
import 'package:my_first_app/dice_roller.dart';
import 'package:my_first_app/styled_text.dart';

var endAlignment = Alignment.bottomRight;  
var startAlignemnt = Alignment.topLeft;




class GradientContainer extends StatefulWidget{
 const  GradientContainer(this. color1,this.color2,{super.key,});

  const GradientContainer.purple({super.key})
           : color1 = Colors.deepPurple,
           color2 = Colors.indigo;

final Color color1;
final Color color2;

  @override
 State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
var activeDiceImage = 'assets/images/dice_2.png';

void rollDice(){
   activeDiceImage = 'assets/images/dice_4.png';
   print('changing time');
}

    // final List<Color> colors;
  @override
  Widget build(BuildContext context) {
     startAlignemnt = Alignment.center;
    return  Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:[widget.color1,widget.color2],
              begin: startAlignemnt,
              end: endAlignment,
              ),
          ),
          child:  Center(
            child: DiceRoller(),
          ),
        );
   
   
  }
}
// class GradientContainer extends StatelessWidget{
//  const  GradientContainer({super.key, required this.colors});
     
//      final List<Color> colors;
  
//   @override
//   Widget build(BuildContext context) {
//      startAlignemnt = Alignment.center;
//     return  Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors:colors,
//               begin: startAlignemnt,
//               end: endAlignment,
//               ),
//           ),
//           child:  Center(
//             child: StyledText('Hello world!'),
//           ),
//         );
   
   
//   }

// }