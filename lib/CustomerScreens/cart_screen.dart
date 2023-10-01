import 'package:flutter/material.dart';
import 'package:multivendor_ecommerce/GlobalScreens/widgets/custom_steper.dart';
import 'package:multivendor_ecommerce/GlobalScreens/widgets/title.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: IconButton(onPressed: () {  }, icon: const Icon(Icons.line_weight_sharp),
                    ),),
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      decoration: const InputDecoration(

                          hintText: "Search",
                          suffixIcon: Icon(Icons.search)
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: IconButton(onPressed: () {  }, icon: const Icon(Icons.cancel_outlined),
                    ),),
                ],
              ),
              const SizedBox(height: 12,),

              const TitleText(text: "Cart Details"),
              const SizedBox(height: 12,),
              SizedBox(
                height: 300,
                child: ListView.separated(
                  itemCount: 4,
                  itemBuilder: (context,index){
                    return Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(16)
                      ),
                      height: 145,
                      child: Row(
                        children: [
                          Container(
                            height: 130,
                            width: 180,
                            child: Image.asset("assets/appLogo.png"),
                          ),
                          const SizedBox(width: 10,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Name:",style: Theme.of(context).textTheme.titleLarge,),
                                const SizedBox(height: 4,),
                                const Text("Variation:",style: TextStyle(fontSize: 18),),
                                const SizedBox(height: 4,),
                                CustomStepper(lowerLimit: 1, upperLimit: 10, stepValue: 1, value: 0, onChange: (_){}),
                                const SizedBox(height: 4,),
                                const Text("\$2000",style: TextStyle(fontSize: 18),)
                              ],
                            ),
                          )
                        ],
                      ),

                    );

                  }, separatorBuilder: (BuildContext context, int index) {
                  return  const Divider(height: 8,);
                },),
              ),
              const SizedBox(height: 14,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: const InputDecoration(hintText: "Mirpur 13, Road 09",suffixIcon: Icon(Icons.location_pin)),
                ),
              ),
              const SizedBox(height: 12,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sub-Total",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
                  Text("\$00000",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),)
                ],
              ),
              const SizedBox(height: 8,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery Charge",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                  Text("+\$0000",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                ],
              ),
              const SizedBox(height: 8,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Discount",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                  Text("-\$0000",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 18),),
                ],
              ),
              const SizedBox(height: 8,),
              Container(
                height: 6,
                width: double.infinity,
                color: Colors.black,
              ),
              SizedBox(height: 8,),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
                  Text("\$00000",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700),)
                ],
              ),
              SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 180,
                    child: ElevatedButton(onPressed: (){}, child:Text("Payment Option",style: TextStyle(fontSize: 18),) ),
                  ),
                  SizedBox(
                    width: 180,
                    child: OutlinedButton(onPressed: (){}, child:Text("Add More",style: TextStyle(fontSize: 18),) ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}