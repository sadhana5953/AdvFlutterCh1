 import 'package:adv_flutter_ch1/Screens/1.5/view/quotePage.dart';

 class QuoteModel
 {
   String? quote;
   String? author;
   List<QuoteModel> qutemodelList=[];

   QuoteModel({this.quote,this.author});

   factory QuoteModel.fromQuote(Map m1)
   {
     return QuoteModel(author: m1['author'],quote: m1['quote']);
   }

   QuoteModel.toList(List l1)
   {
     for(int i=0;i<l1.length;i++)
     {
       qutemodelList.add(QuoteModel.fromQuote(l1[i]));
     }
   }
 }

