import 'package:clone_app/1stPage.dart';
import 'package:clone_app/Available.dart';
import 'package:flutter/material.dart';
class ThridPage extends StatelessWidget {
  const ThridPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Restaurants",style: TextStyle(fontWeight: FontWeight.bold,),)),
        backgroundColor: Colors.cyan,
        
      ),
          
      body: Scrollbar(
          child: SingleChildScrollView(
        child: Positioned(
          top: 50,
          left: 0,
          
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Column(
                  children: [
                    Container(
                      
                      child: InkWell(
                        onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AvailablePage()));
                        },
                        child:
                         Stack(
                                   children: [
                                  
                      Opacity(
                        opacity: 0.7, 
                        child: Image.asset(
                          'lib/assets/king.jpeg', 
                          fit: BoxFit.cover, 
                          height: 100,
                          width: 150,
                        ),
                      ), Center(
                            child: Text('King Restaurant',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),),
                          ),
                                   ]
                        ),
                        
                      ),
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87
                      ),
                      height: 100,
                      width: 150,
                      
                    ),
                    
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Container(
                        
                        child: InkWell(
                          onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AvailablePage()));
                          },
                         child:
                           Stack(
                   children: [
                  
                        Opacity(
                          opacity: 0.7, 
                          child: Image.asset(
                            'lib/assets/ajwa.jpeg', 
                            fit: BoxFit.cover, 
                            height: 100,
                            width: 150,
                          ),
                        ),  Center(
                              child: Text('AJWA Restaurant',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),),
                            ),
                   ]
                          ),
                          
                        ),
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black87
                        ),
                        height: 100,
                        width: 150,
                        
                                           ),
                     ),
                      Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Container(
                        
                        child: InkWell(
                          onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AvailablePage()));
                          },
                           child:
                           Stack(
                   children: [
                  
                        Opacity(
                          opacity: 0.7, 
                          child: Image.asset(
                            'lib/assets/angan.jpeg', 
                            fit: BoxFit.cover, 
                            height: 100,
                            width: 150,
                          ),
                        ),  Center(
                              child: Text('ANGAN Restaurant',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),),
                            ),
                   ]
                          ),
                          
                        ),
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black87
                        ),
                        height: 100,
                        width: 150,
                        
                                           ),
                     ),
                      Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Container(
                        
                        child: InkWell(
                          onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AvailablePage()));
                          },
                           child:
                           Stack(
                   children: [
                  
                        Opacity(
                          opacity: 0.7, 
                          child: Image.asset(
                            'lib/assets/anna.jpg', 
                            fit: BoxFit.cover, 
                            height: 100,
                            width: 150,
                          ),
                        ), Center(
                              child: Text('Anna Restaurant',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),),
                            ),
                   ]
                          ),
                          
                        ),
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black87
                        ),
                        height: 100,
                        width: 150,
                        
                                           ),
                     ),
                    
                     
                    
                  ],
                ),
                 Column(
                  children: [
                    Container(
                      
                      child: InkWell(
                        onTap: (){
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AvailablePage()));
                        },
                        child:
                         Stack(
                                   children: [
                                  
                      Opacity(
                        opacity: 0.7, 
                        child: Image.asset(
                          'lib/assets/rk.jpeg', 
                          fit: BoxFit.cover, 
                          height: 100,
                          width: 150,
                        ),
                      ), Center(
                            child: Text('R.K Restaurant',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 21,
                            ),),
                          ),
                                   ]
                        ),
                        
                      ),
                      
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87
                      ),
                      height: 100,
                      width: 150,
                      
                    ),
                    
                     Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Container(
                        
                        child: InkWell(
                          onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AvailablePage()));
                          },
                         child:
                           Stack(
                   children: [
                  
                        Opacity(
                          opacity: 0.7, 
                          child: Image.asset(
                            'lib/assets/raj.jpeg', 
                            fit: BoxFit.cover, 
                            height: 100,
                            width: 150,
                          ),
                        ),  Center(
                              child: Text('Raj Restaurant',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),),
                            ),
                   ]
                          ),
                          
                        ),
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black87
                        ),
                        height: 100,
                        width: 150,
                        
                                           ),
                     ),
                      Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Container(
                        
                        child: InkWell(
                          onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AvailablePage()));
                          },
                           child:
                           Stack(
                   children: [
                  
                        Opacity(
                          opacity: 0.7, 
                          child: Image.asset(
                            'lib/assets/vishal.jpg', 
                            fit: BoxFit.cover, 
                            height: 100,
                            width: 150,
                          ),
                        ),  Center(
                              child: Text('Vishal Restaurant',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),),
                            ),
                   ]
                          ),
                          
                        ),
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black87
                        ),
                        height: 100,
                        width: 150,
                        
                                           ),
                     ),
                      Padding(
                       padding: const EdgeInsets.all(10.0),
                       child: Container(
                        
                        child: InkWell(
                          onTap: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AvailablePage()));
                          },
                           child:
                           Stack(
                   children: [
                  
                        Opacity(
                          opacity: 0.7, 
                          child: Image.asset(
                            'lib/assets/chai.jpeg', 
                            fit: BoxFit.cover, 
                            height: 100,
                            width: 150,
                          ),
                        ), Center(
                              child: Text('Chai Chaupal',style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                              ),),
                            ),
                   ]
                          ),
                          
                        ),
                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black87
                        ),
                        height: 100,
                        width: 150,
                        
                                           ),
                     ),
                    
                     
                    
                  ],
                ),
                          ],
            ),
          ),
        ),
          )
        

      ),
      
    );
  }
}