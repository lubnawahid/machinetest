import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Viewproducts extends StatefulWidget {


  final String username;
 final String password;
  const Viewproducts( this.username, this.password) ;

  @override
  State<Viewproducts> createState() => _ViewproductsState();
}

class _ViewproductsState extends State<Viewproducts> {
  List medicine_photo=[];
  List medicine_name=[];
  List medicine_qnty=[];
  List medicine_description=[];
  List medicine_dosage=[];
  List medicine_usage =[];
  List medicine_price =[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
        title: Text("Product List"),
    centerTitle: true,
    ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: medicine_photo.length,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 5),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height*.113,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset(medicine_photo[index],width: 50,height: 50,),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text('Name : ',style: TextStyle(fontSize: 16),),
                            Text(medicine_name[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          ],
                        ),



                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text('Quantity : ',style: TextStyle(fontSize: 16),),
                            Text(medicine_qnty[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text('Description: ',style: TextStyle(fontSize: 16),),
                            Text(medicine_description[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text('Dosage: ',style: TextStyle(fontSize: 16),),
                            Text(medicine_dosage[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text('Usage: ',style: TextStyle(fontSize: 16),),
                            Text(medicine_usage[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          ],
                        ),
                        SizedBox(height: 5,),

                        Row(
                          children: [
                            Text('Price : \$ ',style: TextStyle(fontSize: 16),),
                            Text(medicine_price[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ElevatedButton(
                            onPressed: (){
                             // object.add_to_cart(images[index], name[index], price[index], unit[index]);
                            },
                            child: Text('Add to Cart',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueGrey.shade900,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                              fixedSize: Size(105, 27),
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
