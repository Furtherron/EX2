import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'package:awesome_card/awesome_card.dart';
//import 'package:pretty_qr_code/pretty_qr_code.dart';
//import 'package:qr/qr.dart';

class Principal extends StatefulWidget {
  @override
  _Principal createState() => _Principal();
}

class _Principal extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
                children: [
                  Stack(
                      children: <Widget>[
                        Image.asset('assets/Parte1.png',
                          width: 450.0,
                          height: 200.0,
                          fit: BoxFit.fill,
                        ),
                        Container(
                            margin: EdgeInsets.fromLTRB(150, 80, 0, 0),
                            width: 100,
                            child: Text(
                              'Digital wallet',
                              style: TextStyle(color: Colors.black,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 35.0,
                                  fontStyle: FontStyle.italic),
                            ),
                        )
                      ]
                  ),
                  Container(
                    width: 500,
                    height: 550,
                    child: Column(
                      children: [
                        Container(
                          child: Text('Balance:',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          margin: EdgeInsets.fromLTRB(0, 35, 270, 0),
                        ),
                        Container(
                          child: Text('Rp.76.547.000.-',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.italic,
                              )
                          ),
                          margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                          height: 70,
                          width: 350,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10)),
                        ),
                        Container(
                          height: 50,
                          width: 350,
                          margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child:  RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: Colors.black,
                            child: Text('TOP UP', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold,)),
                            onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder:(context) => List_Cards(),));},
                          ),
                        ),
                        Container(
                          child: Text('QR Code:',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              )
                          ),
                          margin: EdgeInsets.fromLTRB(0, 35, 270, 30),
                        ),
                        Container(
                          child: Image.asset('assets/QR.png',
                            width: 200.0,
                            height: 200.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
            )
        ),
      ),
    );
  }
}



class List_Cards extends StatefulWidget {
  @override
  _List_Cards createState() => _List_Cards();

}

class _List_Cards extends State<List_Cards> {
  List cards = ["Master Card", "Visa", "JCB", "American Express"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Stack(
                    children: <Widget>[
                      Image.asset('assets/Parte2.png',
                        width: 450.0,
                        height: 250.0,
                        fit: BoxFit.fill,
                      ),
                      Container(
                          margin: EdgeInsets.fromLTRB(120, 90, 0, 0),
                          width: 250,
                          child: Text(
                            'Credit Card',
                            style: TextStyle(color: Colors.black,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.normal),
                          )
                      )
                    ]
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Container(
                        child: Text('Select a credit card',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            )
                        ),
                        margin: EdgeInsets.fromLTRB(0, 25, 180, 0),
                      ),
                      ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) =>
                            Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width,
                              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                              child: Card(
                                //elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Container(
                                  width: MediaQuery
                                      .of(context)
                                      .size
                                      .width,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 4.0, vertical: 4.0),
                                  child: Row(
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        //crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Container(
                                            width: 100.0,
                                            height: 55.0,
                                            child: Image(image: AssetImage(
                                                'assets/${index+1}.png')),
                                          ),
                                          Container(
                                            child: Text(cards[index],style: TextStyle(color: Colors.black,fontSize: 20,
                                                fontWeight: FontWeight.bold)),
                                          ),
                                          Container(
                                            child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.black,size: 30),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                      ),

                      Container(
                        height: 60,
                        width: 300,
                        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child:  RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.white,
                          child: Text('ADD CARD', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold,)),
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(
                              builder:(context) => Credit_Card(),

                            ));
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],

            )
        ),
      ),
    );
  }
}


class Credit_Card extends StatefulWidget{
  @override
  New_Card createState() => New_Card();


}

class New_Card extends State<Credit_Card>{
  String cardNumber = "";
  String cvv = "";
  String cardExpiry = "";
  bool showBackSide = false;
  FocusNode focusNodeCardNumber = FocusNode();
  FocusNode focusNodeCVV = FocusNode();


  @override
  void initState() {
    focusNodeCVV.addListener(() {
      if(focusNodeCVV.hasFocus){
        showBackSide = true;
      }else{
        showBackSide = false;
      }
      setState(() {
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(body:SafeArea(
      child:SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(height: 20,),
              CreditCard(
                  cardHolderName: "",
                  cardExpiry: cardExpiry,
                  cardNumber: cardNumber,
                  cvv: cvv,
                  showShadow: true,
                  bankName: "",
                  showBackSide: showBackSide,
                  frontBackground: CardBackgrounds.black, backBackground: CardBackgrounds.white),
              SizedBox(height: 20,),
              TextField(
                  focusNode: focusNodeCardNumber,
                  style: TextStyle(
                      fontSize: 20, color: Colors.black),
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  maxLength: 16,
                  onChanged: (text){
                    print(text);
                    cardNumber = text;
                    setState((){
                    });
                  },
                  decoration: InputDecoration(
                    counterText: "",

                  )
              ),
              TextField(
                  focusNode: focusNodeCVV,
                  style: TextStyle(
                      fontSize: 20, color: Colors.black),
                  keyboardType: TextInputType.number,
                  textInputAction: TextInputAction.next,
                  maxLength: 4,
                  onChanged: (text){
                    print(text);
                    cvv = text;
                    setState((){});
                  },
                  decoration: InputDecoration(
                    counterText: "",

                  )
              ),
              TextField(
                  style: TextStyle(
                      fontSize: 20, color: Colors.black),
                  keyboardType: TextInputType.number,
                  maxLength: 4,
                  onChanged: (text){
                    print(text);
                    cardExpiry = text;
                    setState((){});
                  },
                  decoration: InputDecoration(
                    counterText: "",

                  )
              ),
            ],
          ),
        ),

      ),
    ),);
  }

}
