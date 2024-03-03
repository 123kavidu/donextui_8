import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final List<Map<String, dynamic>> cardData = [
    {
      'image': 'assets/event1.jpg',
      'eventname': 'Tech National Event',
      'price': '500 /-',
      'place':'market city',
      'time':"10.00 - 20.30",
      'buttonlable': "I'm Interested",
    },
    {
      'image': 'assets/event2.jpg',
      'eventname': 'Thomas Abraham',
      'price': 'carnival',
      'place':'ground',
      'time':"16.00 - 23.00",
      'buttonlable':  "I'm Interested",
    },
    {
      'image': 'assets/event3.jpg',
      'eventname': 'Music event',
      'price': '1000 /-',
      'place': 'school',
      'time':"19.00 - 23.00",
      'buttonlable': "Buy Ticket",
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
             Expanded(
              flex: 1,
               child: Container(
                margin: const EdgeInsets.only(left: 20),
                  color: Colors.white,
                  child:  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                       Button(
                        containercolor: Color.fromARGB(255, 228, 226, 226), 
                        textcolor: Colors.black,
                        text: "Forum",
                        ),
                        Button(
                        containercolor:  Color.fromARGB(255, 20, 179, 188),
                        textcolor: Colors.white,
                        text: "Events",
                        ),
                        Button(
                        containercolor: Color.fromARGB(255, 228, 226, 226), 
                        textcolor: Colors.black,
                        text: "Offers",
                        ),
                        Button(
                        containercolor: Color.fromARGB(255, 228, 226, 226), 
                        textcolor: Colors.black,
                        text: "week",
                        ),
                      ],
                    ),
               
                  ),
                ),
             ),
              Expanded(
                flex: 9,
                child: Container(
                  color:  const Color.fromARGB(255, 20, 179, 188),
                  child:  Padding(
                    padding: const EdgeInsets.only(left: 25, ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                             child: Padding(
                               padding: EdgeInsets.only(top: 20, bottom: 20),
                               child: Row(
                                  children: [
                                   Button(
                                    containercolor: Colors.white,
                                    textcolor: Colors.black,
                                    text: "All Events",
                                    ),
                                    Button(
                                    containercolor:  Color.fromARGB(255, 20, 179, 188),
                                    textcolor: Colors.white,
                                    text: "Hosting",
                                    ),
                                    Button(
                                    containercolor:  Color.fromARGB(255, 20, 179, 188),
                                    textcolor: Colors.white,
                                    text: "My Events",
                                    ),
                                    Button(
                                    containercolor:  Color.fromARGB(255, 20, 179, 188),
                                    textcolor: Colors.white,
                                    text: "week",
                                    ),
                                 ],
                                ),
                             ),
                           ),
                        const Text(
                           "Events near you",
                           style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ), 
                        ElevatedButton.icon(
                          onPressed: () {
                            
                          }, 
                          style: ButtonStyle(
                            backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 39, 191, 202), ),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),side: const BorderSide(color: Colors.white))),
                            
                          ),
                          icon: Icon(Icons.location_on,color: Colors.white,size: height*0.02), 
                          label: const Text("Change location",style: TextStyle(color: Colors.white,fontSize: 14),)
                          ),
                        SizedBox(height: height*0.02,),
                        Expanded(
                          child: ListView.builder(
                            itemCount: cardData.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Stack(
                                children:[ Padding(
                                  padding: const EdgeInsets.only(right: 25,bottom: 25),
                                  child: Container(
                                    height: height*0.42,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image.asset(
                                            cardData[index]['image'],
                                            fit: BoxFit.cover,
                                            height: height*0.25,
                                            width: double.infinity,
                                          ),
                                        ),
                                        SizedBox(
                                          height: height*0.01,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left:20),
                                          child: Text(
                                            cardData[index]['eventname'],
                                            style: const TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        SizedBox(
                                          height: height*0.01,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Text(
                                            cardData[index]['price'],
                                            style: const TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w400),
                                          ),
                                        ),
                                        SizedBox(
                                          height: height*0.01,
                                        ),
                                         Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(left: 20),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        const Icon(Icons.location_on, color: Colors.grey,),
                                                        SizedBox(
                                                          width: width*0.05,
                                                        ),
                                                        Text(cardData[index]['place'], style: const TextStyle(color: Colors.grey, fontSize:15 ),)
                                                      ],
                                                    ),
                                                    SizedBox(
                                                         height: height*0.01,
                                                    ),
                                                    Row(
                                                      children: [
                                                        const Icon(Icons.calendar_month, color: Colors.grey,),
                                                        SizedBox(
                                                          width: width*0.05,
                                                        ),
                                                        Text(cardData[index]['time'], style: const TextStyle(color: Colors.grey, fontSize:15 ),)
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              const Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 20),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: [
                                                    ElevatedButton(
                                                      style: ButtonStyle(
                                                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                                                          const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                                                        ),
                                                        backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 39, 191, 202), ),
                                                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
                                                        ),
                                                      onPressed: () {
                                                        
                                                      },
                                                      child: Text(cardData[index]['buttonlable'], style: const TextStyle(fontSize: 15, color: Colors.white),),
                                                      ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                                    
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: height*0.02,
                                  right: height*0.05,
                                  child: Container(
                                    height: height*0.04,
                                    width: height*0.04,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white
                                    ),
                                    child: PopupMenuButton<String>(
                                      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                                        const PopupMenuItem<String>(
                                          value: 'Option 1',
                                          child: Text('Share'),
                                        ),
                                        const PopupMenuItem<String>(
                                          value: 'Option 2',
                                          child: Text('Cotact'),
                                        ),
                                      ],
                                      onSelected: (String value) {
                                        print('You selected: $value');
                                      },
                                      icon: Center(child: Icon(Icons.more_vert,size: height*0.025,)),
                                    )
                                  ),
                                )
                                ]
                              );
                            },
                          ),
                          
                          ),
                      ],
                    ),
                  ),
                ),
              ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () {
            // Add your onPressed logic here
          },
          backgroundColor: const Color.fromARGB(255, 33, 243, 194),
          child: const Icon(Icons.add), 
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  final Color containercolor;
  final Color textcolor;
  final String text;
  const Button(
    {super.key, 
    required this.containercolor,
    required this.textcolor,
    required this.text
    });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
                  padding: const EdgeInsets.only(right: 25),
                      child: Container(
                        height:height*0.05,
                        width: width*0.3,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: containercolor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(child: Text(text,style: TextStyle(
                          color: textcolor,
                          fontSize: 15
                        ), 
                        )
                        ),
                      ),
                  );
               }
}