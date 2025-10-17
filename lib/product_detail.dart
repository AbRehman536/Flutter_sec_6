import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset("assets/images/Frame.png",width: 375,height: 198,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Column(children: [
              Text("Wheat Grain Bag",style: GoogleFonts.inter(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff121212),
              ),),
              Text("Wheat",style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0xffADADAF),
              ),),
              Row(
                children: [
                  Text("1200 Rs",style: GoogleFonts.inter(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xffFF5934),
                  ),),
                  Text("1600 Rs",style: GoogleFonts.inter(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xff000000)
                  ),)
                ],
              )
            ],),
            Icon(Icons.favorite_border),
          ],),
          Align(
            alignment: Alignment.topLeft,
            child: Text("Packing",style: GoogleFonts.inter(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xff121212),
            ),),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  width: 50,
                  height: 50,
                  color: Color(0xffEEF0F6),
                  child: Center(child: Text("1 Kg"),)),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  width: 50,
                  height: 50,
                  color: Color(0xffEEF0F6),
                  child: Center(child: Text("4 Kg"),)),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  width: 50,
                  height: 50,
                  color: Color(0xffEEF0F6),
                  child: Center(child: Text("5 Kg"),)),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  width: 50,
                  height: 50,
                  color: Color(0xffEEF0F6),
                  child: Center(child: Text("8 Kg"),)),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  width: 50,
                  height: 50,
                  color: Color(0xffEEF0F6),
                  child: Center(child: Text("10 Kg"),)),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                  width: 50,
                  height: 50,
                  color: Color(0xffEEF0F6),
                  child: Center(child: Text("12 Kg"),)),
            ),
          ],),
          Text("Description"),
          Text("Sed pellentesque ac nisl ipsum ipsum. Nunc ac malesuada massa faucibus quis. In etiam velit amet mi lorem proin duis ullamcorper et. Enim neque at... Read More"),
          Text("Bulk Order "),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 68,
                height: 50,
                color: Color(0xffEEF0F6),
                child: Column(children: [
                  Text("1 Item"),
                  Text("1200 RS"),
                ],),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 68,
                height: 50,
                color: Color(0xffEEF0F6),
                child: Column(children: [
                  Text("10 Item"),
                  Text("1040 RS"),
                ],),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 68,
                height: 50,
                color: Color(0xffEEF0F6),
                child: Column(children: [
                  Text("20 Item"),
                  Text("950 RS"),
                ],),
              ),
            ),
          ],)
        ],),
      ),
    );
  }
}
