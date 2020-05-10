

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'saveButton.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
          primaryTextTheme: TextTheme(
              title: TextStyle(
                  color: Colors.black

              )
          )
      ),
      home: MyHomePage(title: 'Privacy'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {


 TabController controller;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller=new TabController(length: 1, vsync: this,initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
   SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.green));

    return Scaffold(


       appBar: AppBar(
           iconTheme: IconThemeData(
               color: Colors.black
           ),

                         title: Text(widget.title,style: TextStyle(fontSize: 25.0,fontFamily: 'Montserrat')),
           backgroundColor: Colors.white,
                       automaticallyImplyLeading: true,

           leading: IconButton(icon:Icon(Icons.arrow_back_ios),

                      onPressed:() =>  HomePage(),
           )
                  ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[

          HomePage(),


        ],
      ),
        // in the middle of the parent.



    );
  }
}
class HomePage extends StatefulWidget{
  _HomePageState createState() => _HomePageState();

}
class _HomePageState extends  State<HomePage>{
  List status=["Activity Status","Privacy","Location","Permission Tag","Date of year","Save to archive","  "];
  List about=["","Only people you approve can see your photos and videos.","","",
    "Do you want this year to public or not?","Automatically save photos and video to archive","  "];
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      floatingActionButton: saveButton(
        onPressed: (){},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: ListView.builder(itemCount: 6,
        shrinkWrap: true,
        itemBuilder:(BuildContext context,int index) =>Container(
          width:MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal:10.0,vertical:5.0 ),



            child: Container(
              width:MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),

               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      SizedBox(width: 5.0),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: <Widget>[


                            Text(status[index],style: TextStyle(color:Colors.black,fontSize: 18.0,
                              fontWeight:FontWeight.bold,fontFamily: 'Montserrat')),


                           Text(about[index],style: TextStyle(color:Colors.grey,fontFamily:'Montserrat')),



                        ],
                      )

                    ],


                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal:10.0,vertical:5.0 ),
                        child:ClipRect(



                          child: Switch(



                         activeThumbImage: ExactAssetImage('images/button.png'),
                          inactiveThumbImage: ExactAssetImage('images/button.png'),
                         activeColor: Colors.yellowAccent,
                          value: isChecked,
                          onChanged: (bool value) {
                            if(isChecked== false) {
                              setState(() {
                                isChecked = true;
                              });
                            }else{
                              setState(() {
                                isChecked= false;
                              });
                            }
                          },
                        ),
                      ),




                  ),




                ],


              ),






            ),





        ),





      ),

    ) ;
  }
}

