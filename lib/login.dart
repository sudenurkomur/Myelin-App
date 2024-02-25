import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Myapp()));
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width,
                height: height * 0.45,
                //child: //Image.asset('assets/yoga.png',fit: BoxFit.fill,),
              ),
              /*Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.blue), // mavi renk eklendi
                    ),
                  ],
                ),
              ),*/
              SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    suffixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10.0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                      suffixIcon: Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0), // Düğme boyutunu ayarlamak için Padding kullanıldı
                    child: Text('LOGIN', style: TextStyle(fontSize: 18.0),), // Yazı boyutu 18 olarak ayarlandı
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // mavi renk eklendi
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: (){},
                ),
              ),
              SizedBox(height:0.0),
              Padding(
                padding: const EdgeInsets.all(00.0),
                child: ElevatedButton(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0), // Düğme boyutunu ayarlamak için Padding kullanıldı
                    child: Text(
                      'SIGN UP',
                      style: TextStyle(fontSize: 18.0, color: Colors.blue), // Yazı rengi mavi olarak ayarlandı
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white, // beyaz renk eklendi
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  onPressed: (){},
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class Second extends StatefulWidget {
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width,
                height: height * 0.45,
                child: Image.asset('assets/play.png',fit: BoxFit.fill,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Signup', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, color: Colors.blue),), // mavi renk eklendi
                  ],
                ),
              ),
              SizedBox(height: 30.0,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  suffixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 20.0,),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  suffixIcon: Icon(Icons.visibility_off),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 30.0,),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Forget password?', style: TextStyle(fontSize: 12.0),),
                    ElevatedButton(
                      child: Text('Signup'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue, // mavi renk eklendi
                        textStyle: TextStyle(fontSize: 18.0), // Adjust text size here
                        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), // Adjust button padding
                      ),
                      onPressed: (){},
                    ),
                  ],
                ),
              ),
              SizedBox(height:20.0),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Myapp()));
                },
                child: Text.rich(
                  TextSpan(
                      text: 'Already have an account',
                      children: [
                        TextSpan(
                          text: 'Signin',
                          style: TextStyle(
                              color: Colors.blue // mavi renk eklendi
                          ),
                        ),
                      ]
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}