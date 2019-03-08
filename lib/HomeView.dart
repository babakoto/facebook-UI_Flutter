import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    bool focus = false;
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0XFF4268b3),
        leading: new Image.asset("images/messenger.png"),
        title: new TextField(
          decoration: InputDecoration(
            hintText: "Search",
            hintStyle: TextStyle(
              color: Colors.white.withOpacity(0.3),
            ),
            prefixIcon: Icon(Icons.search, color: Colors.white.withOpacity(0.3),)
          ),
        ),
        actions: <Widget>[
          new Container(
            width: 40,
             margin: EdgeInsets.only(top: 13.0,right: 10.0,bottom: 5.0),
             decoration: BoxDecoration(
               shape: BoxShape.circle,
               image: DecorationImage(
                   image: AssetImage("images/eddy.jpg"),
                 fit: BoxFit.cover
               )
             ),
          )
        ],
      ),
      body: new SingleChildScrollView(
        child: new Container(
          child: new Column(
            children: <Widget>[
              new Card(
                child: new Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100.0,
                  child: new Row(
                    children: <Widget>[
                      profil("images/telegram.png"),
                      profil("images/fabrice.jpg"),
                      profil("images/landry.jpg"),
                      profil("images/preofil2.jpg"),
                      profil("images/tsiory.jpg"),
                      profil("images/mirantsoa.jpg")
                    ],
                  ),
                ),
              ),
              new Card(
                  child: new Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120.0,
                    child: new Column(
                      children: <Widget>[
                        new Container(
                          child: Row(
                            children: <Widget>[
                              new Container(
                                margin: EdgeInsets.only(left: 10.0,top: 10.0),
                                width: 60.0,
                                height: 50.0,
                                child: new Image.asset("images/eddy.jpg"),
                              ),
                              new Container(
                                margin: EdgeInsets.only(left: 20.0),
                                width: 300.0,
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: "What's your mind ?",
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                    ),
                                    border: UnderlineInputBorder(
                                      borderSide: BorderSide(color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(2.0)
                                    )
                                  ),

                                ),
                              )
                            ],
                          ),
                        ),
                        new Container(
                          margin: EdgeInsets.only(left: 20.0,right: 20.0,top: 20.0),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              new Container(
                                child: new Row(
                                  children: <Widget>[
                                    new Icon(Icons.videocam, color: Colors.red,),
                                    new Text("Live")
                                  ],
                                ),
                              ),
                              new Container(
                                child: new Row(
                                  children: <Widget>[
                                   new Container(
                                     width: 20.0,
                                     height: 20.0,
                                     child: new Image.asset("images/iconImage.png"),
                                   ),
                                    new Text("Photo")
                                  ],
                                ),
                              ),
                              new Container(
                                child: new Row(
                                  children: <Widget>[
                                    new Icon(Icons.location_on, color: Colors.red,),
                                    new Text("Chack In")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
              ),
              publication("images/eddy.jpg","Tokiniaina Eddy","images/flutter.png"),
              publication("images/eddy.jpg","Tokiniaina Eddy","images/flutter.png"),
              publication("images/eddy.jpg","Tokiniaina Eddy","images/flutter.png")

            ],
          ),
        )
      ),
      bottomNavigationBar: BottomAppBar(

        child: Container(
          margin: EdgeInsets.only(left: 10.0,right: 10.0),
          height: 80.0,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Icon(Icons.comment,size: 40.0,color: Colors.grey,),
              new Icon(Icons.play_circle_filled,size: 40.0,color: Colors.grey,),
              new Icon(Icons.public,size: 40.0,color: Colors.grey,),
              new Icon(Icons.store,size: 40.0,color: Colors.grey,),
              new Icon(Icons.menu,size: 40.0,color: Colors.grey,)
            ],
          ),
        ),
      ),
    );

  }

  publication(pdp,name,imagePub){
    return new Card(
        child: new Container(
          width: MediaQuery.of(context).size.width,
          height: 350.0,
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              new Container(
                child: Row(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.only(top: 10.0,bottom: 10.0),
                      width: 60.0,
                      height: 50.0,
                      child: new Image.asset(pdp),
                    ),
                    new Container(
                        child: new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Container(
                              child: new Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
                            new Container(
                              child: Text("Yesterday  10:19 AM "),
                            )
                          ],
                        )
                    )
                  ],
                ),
              ),
              new Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: new Image.asset(imagePub,fit: BoxFit.cover,),
              ),
              new Container(
                margin: EdgeInsets.only(left: 10.0,right: 10.0),
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Container(
                      child: Row(
                        children: <Widget>[
                          new IconButton(
                              icon: Icon(Icons.thumb_up),
                              onPressed: null
                          ),
                          new Text("Like", textScaleFactor: 1.2,)
                        ],
                      ),
                    ),
                    new Container(
                      child: Row(
                        children: <Widget>[
                          new IconButton(
                              icon: Icon(Icons.comment),
                              onPressed: null
                          ),
                          new Text("Comment", textScaleFactor: 1.2,)
                        ],
                      ),
                    ),
                    new Container(
                      child: Row(
                        children: <Widget>[
                          new IconButton(
                              icon: Icon(Icons.reply),
                              onPressed: null
                          ),
                          new Text("Share", textScaleFactor: 1.2,)
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
    );
  }

  profil(image){
    return new InkWell(
      onTap: (){},
      child: new Container(
        margin: EdgeInsets.only(left: 10.0),
        height: 55.0,
        width: 55.0,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.blue,width: 2.0),
            shape: BoxShape.circle,
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
            )
        ),
      ),
    );
  }
}
