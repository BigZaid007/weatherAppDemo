import 'package:flutter/material.dart';
void main()
{
  runApp(WeatherApp());
}

class WeatherApp extends StatefulWidget {
  @override
  _WeatherAppState createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  
  String cityName;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(

        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          title: Text(
            'Weather App Demo'
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
            child: Center(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: Image.asset('images/back.jpg')
                      )
                    ),
                  ),
                  SizedBox(height: 100,),
                  Text('Welcome !',style: TextStyle(
                    fontSize: 30,color: Colors.teal,fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 50,),
                  Text('Search The Weather Around the World',style: TextStyle(
                    fontSize: 20,color: Colors.white
                  ),),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: TextField(
                      onChanged: (value){
                        cityName=value;
                      },

                      decoration: InputDecoration(
                        suffixIcon: Icon(Icons.search),


                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        hintText: 'Search',



                      ),
                    ),
                  ),

                  FlatButton(
                    onPressed: (){
                      print(cityName);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.teal
                      ),
                      width: double.infinity,
                      height: 70.0,
                      child: Center(
                        child: Text('Get Weather',style: TextStyle(
                          fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white
                        ),),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
