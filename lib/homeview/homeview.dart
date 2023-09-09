import 'package:car_app_saba/homeview/homecontroller/homecontroller.dart';
import 'package:car_app_saba/model_class/model_class.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
var height=Get.height;
var width=Get.width;
   return Scaffold(
        backgroundColor: Colors.white70,
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 22),
          child: SingleChildScrollView(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: height*0.06,),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  height: 180,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: ClipPath(
                    clipper: DiagonalCutClipper(context: context),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        width: MediaQuery.sizeOf(context).width,
                        decoration:const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20))),
                      ),
                    ),
                  ),
                ),
                  SizedBox(height: height*0.08,),
                   SizedBox(
                     height: height * 0.6,
                     child: GridView.builder(
                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                           crossAxisCount: 2,
                         ),
                         itemCount: HomeProductsList.length, // Number of items in your list
                         itemBuilder: (context, index) {
                           final product = HomeProductsList[index];
                   
                           return Container(
                           height: 130,
                           width:140,
                             margin: EdgeInsets.all(8.0),
                             padding: EdgeInsets.all(16.0),
                             decoration: BoxDecoration(
                               border: Border.all(color: Colors.grey),
                               borderRadius: BorderRadius.circular(8.0),
                             ),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Text(
                                   product.name,
                                   style: TextStyle(fontWeight: FontWeight.bold),
                                 ),
                                 Text('Variations: ${product.variations}'),
                                 Text('Price: \$${product.price.toStringAsFixed(2)}'),
                               ],
                             ),
                           );
                         },
                       ),
                   ),
                
                    SizedBox(height: height*0.08,),
              //  GridViewContainer(),
              ],
            ),
          ),
        ),
      );
    
  }
}
class DiagonalCutClipper extends CustomClipper<Path> {
  final BuildContext context;

  DiagonalCutClipper({super.reclip, required this.context});
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(size.width - MediaQuery.sizeOf(context).width * 0.18, 0) 
      ..lineTo(size.width - MediaQuery.sizeOf(context).width * 0.4, size.height) 
      ..lineTo(0, size.height)
      ..lineTo(0, size.height - 40)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

