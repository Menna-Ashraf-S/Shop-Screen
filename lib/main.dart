import 'package:flutter/material.dart';
import 'package:rate/rate.dart';
//import 'package:image_stack/image_stack.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Home(),
        
    
    );
  }
}


class Home  extends StatefulWidget {
 
  @override
  _HomeState  createState() => _HomeState();
  
}



class _HomeState extends State < Home > {
  
   double value  = 4.0 ;
   int quantity = 1 ;
   int price = 89 ;
   String selected_Size = 'M';
   List sizes = ['S', 'M','L','XL','2XL'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: 
      Padding(
        padding: const EdgeInsets.only(top: 30 , bottom: 10),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [

            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [

                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Icon(Icons.arrow_back_ios , size: 25, color: Colors.white,),
                ),

                SizedBox(width: 250,),

                Icon(Icons.favorite_border , size:  30 , color: Colors.white,),

                SizedBox(width: 15,),

                Icon(Icons.shopping_bag_outlined , size: 30 , color: Colors.white,),
                
            ],
            ),

            SizedBox(height: 20,),



           Row( crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[ 

             Stack(
              children: <Widget>[
                Container(
                 decoration: new BoxDecoration(color: Colors.white , borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomRight: Radius.circular(15))),
                 alignment: Alignment.center,
                 height: 400, width: 300,
                  child: Image.asset('assets/belgium-home-shirt.jpg',fit: BoxFit.fill)
                   ),
                    Positioned(
                      bottom: 7, right: 110, 
                       child: 
                          Icon(Icons.minimize_rounded,size : 30 , color: Color.fromARGB(255, 48, 44, 44),
                          ),
                    ),
                    Positioned(
                      bottom: 7, right: 135, 
                       child: 
                          Icon(Icons.minimize_rounded,size : 30 , color: Colors.grey,
                          ),
                    ),
                     Positioned(
                      bottom: -22, right: 160, 
                       child: Icon(Icons.maximize_rounded,size : 40 , color: Colors.red,),
                          ),
                          
                     ],
                     ),

                      SizedBox(width: 20,),

                      Container( width: 50, height: 400,
                        child: ListView.builder(itemCount: sizes.length,
                        itemBuilder: ((context, index) {
                      
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 25,),
                            child: GestureDetector(
                                onTap: (){
                                  setState(() {
                                    selected_Size = sizes[index] ;
                                    
                                  });
                                },
                              
                                child: Container(
                                  width: 50, height: 50,
                                  decoration: BoxDecoration(color: selected_Size == sizes[index] ?  Colors.red : Color.fromARGB(85, 158, 158, 158),
                                   borderRadius: BorderRadius.all(Radius.circular(15),
                                  ), 
                                  ),
                                  child: Center(
                                    child: Text(sizes[index] , 
                                    style: TextStyle(
                                      fontSize: 15 , fontFamily: 'Audiowide', 
                                        color: Colors.white, fontWeight: FontWeight.bold
                                    ),
                                    ),
                                  ),
                                ),
                              ),
                          );
                            
                        } 
                        )
                        ),
                      ),

                    

           ],
           ),
           

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('Belgium EURO' ,
                style: TextStyle(
                  fontSize: 28 , fontFamily: 'Audiowide', 
                  color: Colors.white, fontWeight: FontWeight.bold
              
                ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('20/21  Away by Adidas',
                style: TextStyle(
                  fontSize: 15 , fontFamily: 'Audiowide', 
                  color: Colors.grey, fontWeight: FontWeight.bold
                ),
                ),
              ),

              SizedBox(height: 20,),

              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
              
                    Rate(
                      iconSize: 25,
                      color: Colors.red,
                      allowHalf: true,
                      allowClear: true,
                      initialValue: 4,
                      readOnly: false,
                      onChange: (val) {
                        setState(() {
                          value = val ;
                        });
                        
                      }  ,
                      ),
                       SizedBox(width: 5,), 

                      Text('$value', 
                      style: TextStyle(
                        fontSize: 15 ,  fontFamily: 'Audiowide',
                  color: Colors.grey, fontWeight: FontWeight.bold
                      ),
                      ),

                      SizedBox(width: 75,),

                      Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Container( 
                          width: 120, height: 40,
                          decoration: BoxDecoration(color: Color.fromARGB(85, 158, 158, 158),
                           borderRadius: BorderRadius.all(Radius.circular(10),
                          ),
                          ),
                          child: Row(  mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (quantity<=0)
                                      {
                                        quantity = 0;
                                      }
                                        else
                                      {
                                        quantity -- ;
                                      }
                                      
                                    });
                                  },
                                  child: Container( width: 30, height: 30,
                                  decoration: BoxDecoration(color: Colors.red , 
                                  borderRadius: BorderRadius.all(Radius.circular(5),
                                  ),
                                  ),
                                    child: Icon(Icons.remove , size: 18, color: Colors.white, ),
                                    ),
                                    ),
                              
                      
                              
                                 Text('${quantity}',
                                 style: TextStyle(
                                  fontSize: 15 ,  fontFamily: 'Audiowide',
                                                color: Colors.white, fontWeight: FontWeight.bold
                                ),
                                ),
                              
                      
                               GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      quantity ++ ;
                                    });
                                  },
                                  child: Container( width: 30, height: 30,
                                  decoration: BoxDecoration(color: Colors.red ,
                                   borderRadius: BorderRadius.all(Radius.circular(5),
                                  ),
                                  ),
                                    child: Icon(Icons.add , size: 18, color: Colors.white, ),
                                    ),
                                    ),
                              
                            ],
                            ),
                        ),
                      )
                  ],
                  ),

              ),

              SizedBox( height: 20 ,),

               Row( 
                children: <Widget>[
                  Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                    
                      Padding(
                 padding: const EdgeInsets.only(left: 20),
                 child: Text('Details' ,
                 style: TextStyle(
                  fontSize: 15 , fontFamily: 'Audiowide', 
                  color: Colors.grey, fontWeight: FontWeight.bold
                 ),
                 ),
               ),

               SizedBox( height: 5 ,), 

               Padding(
                 padding: const EdgeInsets.only(left: 20),
                 child: Row(
                  children: <Widget>[
                    
                    Text('material:' ,
                   style: TextStyle(
                    fontSize: 20 , fontFamily: 'Audiowide', 
                    color: Colors.white, fontWeight: FontWeight.bold
                   ),
                   ),

                   SizedBox(width: 5,),

                   Text('Polyester' ,
                   style: TextStyle(
                    fontSize: 15 , fontFamily: 'Audiowide', 
                    color: Colors.grey, fontWeight: FontWeight.bold
                   ),
                   ),
                 
                  ],
                  ),
               ),

               SizedBox( height: 5 ,), 

               Padding(
                 padding: const EdgeInsets.only(left: 20),
                 child: Row(
                  children: <Widget>[
                    
                    Text('shipping:' ,
                   style: TextStyle(
                    fontSize: 20 , fontFamily: 'Audiowide', 
                    color: Colors.white, fontWeight: FontWeight.bold
                   ),
                   ),

                   SizedBox(width: 5,),

                   Text('In 5 to 6 Days' ,
                   style: TextStyle(
                    fontSize: 15 , fontFamily: 'Audiowide', 
                    color: Colors.grey, fontWeight: FontWeight.bold
                   ),
                   ),
                 
                  ],
                  ),
               ),

               SizedBox( height: 5 ,), 

               Padding(
                 padding: const EdgeInsets.only(left: 20),
                 child: Row(
                  children: <Widget>[
                    
                    Text('Returns:' ,
                   style: TextStyle(
                    fontSize: 20 , fontFamily: 'Audiowide', 
                    color: Colors.white, fontWeight: FontWeight.bold
                   ),
                   ),

                   SizedBox(width: 5,),

                   Text('Within 20 Days' ,
                   style: TextStyle(
                    fontSize: 15 , fontFamily: 'Audiowide', 
                    color: Colors.grey, fontWeight: FontWeight.bold
                   ),
                   ),
                 
                  ],
                  ),
               ),

                    ],
                    ),
                      SizedBox(width: 25,),
                    Container(
                    height: 120, width: 100 ,
                     
                     child: ElevatedButton(
                      onPressed: (){}, 
                     child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: <Widget>[

                         Icon(Icons.shopping_bag_outlined,size: 30, color: Colors.white,), 

                         SizedBox(height: 5,),

                       Text('\$ ${quantity * price }',style: TextStyle(
                        fontSize: 25 , fontFamily: 'Audiowide', 
                    color: Colors.white, fontWeight: FontWeight.bold
                      ),
                      ),
                      ],
                      ),
                      style: ElevatedButton.styleFrom(
                         backgroundColor: Colors.red ,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(15),
                     ),
                      ),
                      ),
                      ),
                    ),
                ],
                ),

          ],
          ),
      ) ,

    );

  }
  
  }
  

  
	