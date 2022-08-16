
import 'dart:ui';
import 'package:flutter/material.dart';

class R1 extends StatefulWidget {
  const R1({Key? key}) : super(key: key);

  @override
  _R1State createState() => _R1State();
}

class _R1State extends State<R1> {
  String value="Binary";


  String b1="𝑩𝒊𝒏𝒂𝒓𝒚 𝑻𝒐 𝑫𝒆𝒄𝒊𝒎𝒂𝒍 𝑪𝒐𝒏𝒗𝒆𝒓𝒔𝒊𝒐𝒏:";
  String b3="𝑩𝒊𝒏𝒂𝒓𝒚 𝑻𝒐 𝑯𝒆𝒙𝒂𝑫𝒆𝒄𝒊𝒎𝒂𝒍 𝑪𝒐𝒏𝒗𝒆𝒓𝒔𝒊𝒐𝒏:";
  String d1="𝑫𝒆𝒄𝒊𝒎𝒂𝒍 𝑻𝒐 𝑩𝒊𝒏𝒂𝒓𝒚 𝑪𝒐𝒏𝒗𝒆𝒓𝒔𝒊𝒐𝒏:";
  String d3="𝑫𝒆𝒄𝒊𝒎𝒂𝒍 𝑻𝒐 𝑯𝒆𝒙𝒂𝑫𝒆𝒄𝒊𝒎𝒂𝒍 𝑪𝒐𝒏𝒗𝒆𝒓𝒔𝒊𝒐𝒏:";
  String h1="𝑯𝒆𝒙𝒂𝑫𝒆𝒄𝒊𝒎𝒂𝒍 𝑻𝒐 𝑩𝒊𝒏𝒂𝒓𝒚 𝑪𝒐𝒏𝒗𝒆𝒓𝒔𝒊𝒐𝒏:";
  String h3="𝑯𝒆𝒙𝒂𝑫𝒆𝒄𝒊𝒎𝒂𝒍 𝑻𝒐 𝑫𝒆𝒄𝒊𝒎𝒂𝒍 𝑪𝒐𝒏𝒗𝒆𝒓𝒔𝒊𝒐𝒏:";

  List unicode_map = [
 '\u2070',
 '\u00B9',
 '\u00B2',
 '\u00B3',
 '\u2074',
 '\u2075',
 '\u2076',
 '\u2077',
 '\u2078',
 '\u2079',
    '\u00B9'+'\u2070' ,
    '\u00B9'+ '\u00B9',
    '\u00B9' + '\u00B2',
    '\u00B9' + '\u00B3',
    '\u00B9' + '\u2074',
    '\u00B9' + '\u2075',
    '\u00B9' + '\u2076',
    '\u00B9' + '\u2077',
    '\u00B9' + '\u2078',
    '\u00B9' + '\u2079',

];

  late final acontroller=TextEditingController();
  final bcontroller=TextEditingController();
  final dcontroller=TextEditingController();
  final hcontroller=TextEditingController();
  final tcontroller=TextEditingController();
  String y=" ";
  RegExp _hexadecimal = RegExp(r'^[0-9a-fA-F]+$');

  bool isHexadecimal(String str) {
    return _hexadecimal.hasMatch(str);
  }

  final _formKey = GlobalKey<FormState>();


  Widget formfield(bool val,TextEditingController con){
      return Padding(
            padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
            child: TextFormField(
              controller: con,
              keyboardType: value=="HexaDecimal"?TextInputType.text:(
                  value=="Decimal"?TextInputType.numberWithOptions(
                  decimal: true,
                  signed: false):TextInputType.number),
              validator: (value1) {

                if (value1=="") {
                  return 'Please enter some text';
                }
                else if(value=="Binary"){

                  for(int i=0;i<value1!.length;i++) {
                    if (value1[i] != "0" && value1[i] != "1") {
                      return 'Please enter Binary Number';
                    }
                  }
                }
                else if(value=="HexaDecimal"){
                  var result=isHexadecimal(value1.toString());
                  if(!result)
                    return 'Please enter HexaDecimal Number';

                }
                else if(value=="Decimal"){

                    if(value1.toString().toUpperCase().contains(RegExp(r'[A-Z]')))
                    return 'Please enter Decimal Number';

                }
                // else if(value=="decimal"){
                //   if(value1!="0"&& value1!="1")
                //   {
                //     return 'Please enter Binary Number';
                //   }
                // }
                // else if(value=="hexadecimal"){
                //   if(value1!="0"&& value1!="1")
                //   {
                //     return 'Please enter Binary Number';
                //   }
                // }
                
              },

            decoration: InputDecoration(
            border: OutlineInputBorder(
            borderSide:  BorderSide(
            color: Colors.grey,
            ),
            ),

            focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
            color: Colors.lightBlueAccent,
            width:3,

            ),
            ),
            ) ,
            enabled: val,

            ),
      );
  }
  Widget formfield1(bool val,TextEditingController con){
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
      child: TextFormField(

        controller: con,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide:  BorderSide(
              color: Colors.grey,
            ),
          ),

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.lightBlueAccent,
              width:3,

            ),
          ),
        ) ,
        enabled: val,

      ),
    );
  }
  Widget tField(){
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
      child: TextField(
        // scrollPhysics: ClampingScrollPhysics(),
        controller: tcontroller,
          maxLines: value=="Decimal"?60:30,
          enabled: false,
          decoration: InputDecoration(
            isCollapsed: true,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              )
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color:Colors.lightBlueAccent,
                width: 3,
                style: BorderStyle.solid,
              )
            )

          ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.grey.shade200,
              width: MediaQuery.of(context).size.width,
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0,8,0,0),
                        child: Text("Select Number System",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),),
                      ),

                    ),
                    Center(
                      child: DropdownButton(
                        value: value,
                          items: [
                            DropdownMenuItem(
                                child: Text("Binary"),value: "Binary",),
                            DropdownMenuItem(
                              child: Text("Decimal"),value: "Decimal",),
                            DropdownMenuItem(
                              child: Text("HexaDecimal"),value: "HexaDecimal",),

                          ],
                          onChanged: (_value){
                          setState(() {
                            value= _value.toString();
                            acontroller.text="";
                            bcontroller.text="";
                            dcontroller.text="";
                            hcontroller.text="";
                            tcontroller.text="";
                          });
                            // print("Changed");
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8,8,8,3),
                      child: Text("\t Enter $value number",
                        style: TextStyle(
                            fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),),
                    ),
                    formfield(true,acontroller),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: (){
                                String b2="",b4="",d2="",d4="",h2="",h4="";
                                tcontroller.text="";
                                if (_formKey.currentState!.validate()) {
                                  print("hey");
                                  if(value=="Binary") {

                                          setState(() {
                                            print(int.parse("110111", radix: 2)); //55
                                            acontroller.text = acontroller.text.toUpperCase();
                                            bcontroller.text = acontroller.text; //correct
                                            dcontroller.text = int.parse(acontroller.text, radix: 2).toString(); //correct
                                            hcontroller.text = int.parse(acontroller.text, radix: 2).toRadixString(16).toUpperCase(); //correct


                                          });
                                          //Binary to Decimal Steps Start
                                                String d=b2;
                                                for(int a=0;a<acontroller.text.length;a++){

                                                  b2= "(${acontroller.text[a]} x 2${unicode_map[acontroller.text.length-a-1]})" " + "   ;
                                                  d=d+b2;
                                                }
                                                // ${pow(2,a)}
                                                b2="(${acontroller.text})₂"+" = "+d.substring(0,d.length-3) + " = " + "(${dcontroller.text})₁₀";
                                          //Binary to Decimal Steps End


                                          //Binary to HexaDecimal Steps Start
                                                String h=b4;
                                                for(int a=0;a<hcontroller.text.length;a++){
                                                    b4=hcontroller.text[a] + " ";
                                                    h=h+b4;
                                                }
                                                String i="",j="",k="";
                                                for(int a=1;a<=acontroller.text.length;a++){
                                                  i=acontroller.text[acontroller.text.length-a] ;
                                                  j=i+j;

                                                  if(a%4==0)
                                                  {
                                                    j=" "+j;
                                                  }
                                                }
                                                if(j[0]==" ")
                                                  {
                                                    j=j.substring(1,j.length);
                                                  }

                                                b4="𝗖𝗼𝗻𝘃𝗲𝗿𝘁 𝗲𝘃𝗲𝗿𝘆 𝟰 𝗯𝗶𝗻𝗮𝗿𝘆 𝗱𝗶𝗴𝗶𝘁𝘀 (𝗳𝗿𝗼𝗺 𝗯𝗶𝘁𝟬) 𝘁𝗼 𝗵𝗲𝘅 𝗱𝗶𝗴𝗶𝘁 (𝘀𝗲𝗲 𝗰𝗼𝗻𝘃𝗲𝗿𝘀𝗶𝗼𝗻 𝘁𝗮𝗯𝗹𝗲 𝗯𝗲𝗹𝗼𝘄):"+
                                                    "\n" +
                                                    "${acontroller.text}"+"\n" +
                                                    " = " + j + "\n" +
                                                    " = " + h +"\n" +
                                                    " = " + hcontroller.text;
                                                tcontroller.text=b1+"\n"+"\n"+b2+"\n"+"\n"+b3+"\n"+"\n"+b4;
                                              }
                                          //Binary to HexaDecimal Steps End


                                  else if(value=="Decimal") {
                                    setState(() {
                                      bcontroller.text =
                                          int.parse(acontroller.text)
                                              .toRadixString(2); //correct
                                      dcontroller.text =
                                          acontroller.text; //correct
                                      hcontroller.text =
                                          int.parse(acontroller.text)
                                              .toRadixString(16)
                                              .toUpperCase(); //correct


                      //Decimal to Binary Steps Start
                                      double e = double.parse(acontroller.text);

                                      String k = "        ";
                                      int m = bcontroller.text.length;
                                      while (e > 0) {
                                        if (e != 1) {
                                          d2 = d2 +
                                              "\n (${e.toStringAsFixed(0)})/2" +
                                              "  ";
                                        }
                                        e = e - 1;
                                        if (e == 0) {
                                          e = e + 1;
                                        }
                                        else {
                                          e = double.parse(
                                              (e / 2).toStringAsFixed(0));

                                          d2 = d2 + k + e.toStringAsFixed(0) +
                                               "             " +
                                              bcontroller.text[m - 1];
                                          m--;

                                          k = k + " ";
                                        }
                                        if (e == 1) {
                                          d2 = d2 + "\n (1)/2" + "  ";
                                          d2 = d2 + k + "0" + "              1";
                                          d2 =
                                              "𝗗𝗶𝘃𝗶𝗱𝗲 𝗯𝘆 𝘁𝗵𝗲 𝗯𝗮𝘀𝗲 𝟮 𝘁𝗼 𝗴𝗲𝘁 𝘁𝗵𝗲 𝗱𝗶𝗴𝗶𝘁𝘀 𝗳𝗿𝗼𝗺 𝘁𝗵𝗲 𝗿𝗲𝗺𝗮𝗶𝗻𝗱𝗲𝗿𝘀:" +
                                                  "\n" +"\n" + "Division " + "       " +
                                                  " Quotient" + "  " + "  " +
                                                  "Remainder"
                                                  + "\n" + "  by 2" + d2 +
                                                  "\n" + " = (" +
                                                  bcontroller.text + ")₂";
                                          tcontroller.text =
                                              d1 + "\n" + "\n" + d2 + "\n" +
                                                  "\n"  ;
                                          return;
                                        }
                                      }
                                      print("e.toString(????????");

                                    });
                  //Decimal to Binary Steps End


                //Decimal to HexaDecimal Steps start
                                    setState(() {
                                      double r = double.parse(acontroller.text);//For Division and Quotient
                                      String k1 = "        ";//space
                                      int m1 = hcontroller.text.length;//For Remainderr
                                      double m=r ;//For Quotient

                                      while (r > 0) {

                                          print("heylo soham");
                                          d4 = d4 +
                                              "\n (${r.toStringAsFixed(0)})/16" +
                                              "  ";
                                          print(m);
                                          print(r);

                                          m=r-(r%16);
                                          r = double.parse(
                                              (m / 16).toStringAsFixed(0));

                                          d4 = d4 + k1 + r.toStringAsFixed(0) +
                                               "              " +
                                              int.parse(hcontroller.text[m1 - 1],radix: 16).toString();
                                          m1--;

                                          k1 = k1 + "     ";

                                        if (r < 1) {

                                          // d4 = d4 + "\n (1)/2" + "  ";
                                          // d4 = d4 + k1 + "0" + "              1";
                                          d4 =
                                              "𝗗𝗶𝘃𝗶𝗱𝗲 𝗯𝘆 𝘁𝗵𝗲 𝗯𝗮𝘀𝗲 𝟭𝟲 𝘁𝗼 𝗴𝗲𝘁 𝘁𝗵𝗲 𝗱𝗶𝗴𝗶𝘁𝘀 𝗳𝗿𝗼𝗺 𝘁𝗵𝗲 𝗿𝗲𝗺𝗮𝗶𝗻𝗱𝗲𝗿𝘀:" +
                                                  "\n" + "\n" +"Division " + "       " +
                                                  "Quotient" + "  " + "  " +
                                                  "Remainder"
                                                  + "\n" + "  by 16" + d4 +
                                                  "\n" + " = (" +
                                                  hcontroller.text + ")₁₆";
                                          tcontroller.text =
                                              tcontroller.text + d3 + "\n" + "\n" + d4;
                                          int j =1;

                                          if(j==2)
                                            {
                                              print(r.toString()+"  Rajni");
                                              return;
                                            }
                                          j++;
                                        }
                                      }
                                      print("e.toString(????????");
                                    });

                                  }
                  //Decimal to HexaDecimal Steps End


                                  else {
                                    setState(() {
                                      bcontroller.text = int.parse(acontroller.text, radix: 16).toRadixString(2); //correct
                                      dcontroller.text = int.parse(acontroller.text, radix: 16).toString(); //correct
                                      hcontroller.text =
                                          acontroller.text; //correct

                                    });


                    //HexaDecimal to Binary Steps Start
                                            String h=h2;
                                            for(int a=0;a<hcontroller.text.length;a++){
                                                h2=hcontroller.text[a] + " ";
                                                h=h+h2;
                                                }


                                            String i="",j="",k="";
                                            for(int a=1;a<=bcontroller.text.length;a++){
                                                  i=bcontroller.text[bcontroller.text.length-a] ;
                                                  j=i+j;

                                                  if(a%4==0)
                                                  {
                                                  j=" "+j;
                                                  }
                                            }
                                            if(j[0]==" ")
                                            {
                                              j=j.substring(1,j.length);
                                            }



                                            h2="𝗖𝗼𝗻𝘃𝗲𝗿𝘁 𝗲𝗮𝗰𝗵 𝗵𝗲𝘅 𝗱𝗶𝗴𝗶𝘁 𝘁𝗼 𝟰 𝗯𝗶𝗻𝗮𝗿𝘆 𝗱𝗶𝗴𝗶𝘁𝘀 (𝘀𝗲𝗲 𝗰𝗼𝗻𝘃𝗲𝗿𝘀𝗶𝗼𝗻 𝘁𝗮𝗯𝗹𝗲 𝗯𝗲𝗹𝗼𝘄):"
                                            +"\n" +
                                                "${acontroller.text}"+"\n" +
                                            " = " + h + "\n" +
                                            " = " + j +"\n" +
                                            " = " + bcontroller.text;


                          //HexaDecimal to Binary Steps End
                          //HexaDecimal to Decimal Steps Start
                                          String d=h4;
                                          for(int a=0;a<acontroller.text.length;a++){
                                            // int s=acontroller.text.length-a-1;
                                            // (acontroller.text.length-a-1).toString()
                                            h4="("+ int.parse(acontroller.text[a], radix: 16).toString() + " x 16${unicode_map[acontroller.text.length-a-1]}" +") + " ;
                                            d=d+h4;

                                            // dcontroller.text = int.parse("${acontroller.text[a]}", radix: 16).toString();
                                          }
                                          // ${pow(2,a)}
                                          h4="(${acontroller.text})₁₆"+" = "+d.substring(0,d.length-3) + " = " + "(${dcontroller.text})₁₀";
                                    // HexaDecimal to Decimal Steps End

                                    tcontroller.text=h1+"\n"+"\n"+h2+"\n"+"\n"+h3+"\n"+"\n"+h4;
                                  }
                                }
                                else{
                                  print("hey00000");
                                  bcontroller.text= "" ;
                                  dcontroller.text= "" ;
                                  hcontroller.text= "" ;
                                  tcontroller.text= "" ;
                                }


                                // print( "${55.toRadixString(2)}" ); // Outputs 110111
                                // print(int.parse("110111", radix: 2)); //55
                              },
                                child: Text(" =Convert",style: TextStyle(
                                    fontSize: 22
                                ),),
                                style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(10),
                              backgroundColor: MaterialStateProperty.all(Colors.green),
                            ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            height: 50,
                            child: ElevatedButton(
                              onPressed: (){
                                acontroller.clear();
                                bcontroller.clear();
                                dcontroller.clear();
                                hcontroller.clear();
                                tcontroller.clear();
                              },
                              child: Text(" x Reset",style: TextStyle(
                                  fontSize: 22
                              ),),
                              style: ButtonStyle(
                                elevation: MaterialStateProperty.all(10),
                                backgroundColor: MaterialStateProperty.all(Colors.grey.shade700),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8,8,8,3),
                      child: Text("\t Binary number",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),),
                    ),
                    formfield1(false,bcontroller),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8,0,8,3),
                      child: Text("\t Decimal number",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),),
                    ),
                    formfield1(false,dcontroller),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8,0,8,3),
                      child: Text("\t Hexadecimal number",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),),
                    ),
                    formfield1(false,hcontroller),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8,0,8,3),
                      child: Text("\t Calculation Steps",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),),
                    ),
                    tField(),
            ],
                ),
              ),
            ),
          ),
        ),
    );
  }
}
