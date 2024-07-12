import 'package:adv_flutter_ch1/Screens/1.5/quoteProvider/quoteProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../quoteModel/quoteModel.dart';

QuoteModel? quoteModel;

class quote extends StatelessWidget {
  const quote({super.key});

  @override
  Widget build(BuildContext context) {
    quotesProvider QuoteProviderTrue =
        Provider.of<quotesProvider>(context, listen: true);
    quotesProvider QuoteProviderFalse =
        Provider.of<quotesProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Quotes',style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: QuoteProviderTrue.quotesList.length,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            title: Text('${QuoteProviderTrue.quotesList[index]['quote']}'),
            subtitle: Text('${QuoteProviderTrue.quotesList[index]['author']}'),
            trailing: IconButton(onPressed: (){
              QuoteProviderFalse.removeData(index);
            },icon: Icon(Icons.delete),),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text('Enter Your Quotes'),
                content: Column(
                  children: [
                  TextFormField(
                    controller: QuoteProviderTrue.controllerQuote,
                    decoration: InputDecoration(labelText: 'Enter Your Quote',
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.blue,width: 2),),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.blue,width: 3),),
                    ),
                  ),
                  TextFormField(
                    controller: QuoteProviderTrue.controllerAuthor,
                    decoration: InputDecoration(labelText: 'Enter Your Name',
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.blue,width: 2),),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.blue,width: 3),),
                    ),
                  ),
                ],),
                actions: [
                  TextButton(
                    onPressed: () {
                      QuoteProviderFalse.addData();
                      QuoteProviderTrue.controllerAuthor.clear();
                      QuoteProviderTrue.controllerQuote.clear();
                      Navigator.of(context).pop();
                    },
                    child: Text('OK',style: TextStyle(color: Colors.blue),),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

