
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:islami/MyThemeData.dart';

class Azkar extends StatefulWidget {
  static  String routeName= "Azkar" ;

  @override
  _AzkarState createState() => _AzkarState();
}

class _AzkarState extends State<Azkar> {
  List<int> numbersOfAzkar= [
    1,3,3,
    3,1,1,
    3,4,1,
    7,3,1,
    1,3,3,
    3,1,3,
    1,1,3,
    10,3,3,
    3,
    3,1,1,100,100,
    100
  ];

  List<Color> colorsOfAzkar= [
    MyThemeData.primaryColor , MyThemeData.primaryColor,
    MyThemeData.primaryColor, MyThemeData.primaryColor,
    MyThemeData.primaryColor, MyThemeData.primaryColor,
    MyThemeData.primaryColor, MyThemeData.primaryColor,
    MyThemeData.primaryColor, MyThemeData.primaryColor,
    MyThemeData.primaryColor, MyThemeData.primaryColor,
    MyThemeData.primaryColor, MyThemeData.primaryColor,
    MyThemeData.primaryColor, MyThemeData.primaryColor,
    MyThemeData.primaryColor, MyThemeData.primaryColor,
    MyThemeData.primaryColor, MyThemeData.primaryColor,
    MyThemeData.primaryColor, MyThemeData.primaryColor,
    MyThemeData.primaryColor, MyThemeData.primaryColor,
    MyThemeData.primaryColor, MyThemeData.primaryColor,
    MyThemeData.primaryColor, MyThemeData.primaryColor,
    MyThemeData.primaryColor, MyThemeData.primaryColor,
    MyThemeData.primaryColor, MyThemeData.primaryColor,
  ];

  List<String>  azkarSabah = [
    'اللّهُ لاَ إِلَـهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ. [آية الكرسى - البقرة 255]' ,
    'قُلْ هُوَ ٱللَّهُ أَحَدٌ، ٱللَّهُ ٱلصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُۥ كُفُوًا أَحَد',
    'قُلْ أَعُوذُ بِرَبِّ ٱلْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّ ٱلنَّفَّٰثَٰتِ فِى ٱلْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَد',
    'قُلْ أَعُوذُ بِرَبِّ ٱلنَّاسِ، مَلِكِ ٱلنَّاسِ، إِلَٰهِ ٱلنَّاسِ، مِن شَرِّ ٱلْوَسْوَاسِ ٱلْخَنَّاسِ، ٱلَّذِى يُوَسْوِسُ فِى صُدُورِ ٱلنَّاسِ، مِنَ ٱلْجِنَّةِ وَٱلنَّاسِ',
    'أَصْـبَحْنا وَأَصْـبَحَ المُـلْكُ لله وَالحَمدُ لله ، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُـلكُ ولهُ الحَمْـد، وهُوَ على كلّ شَيءٍ قدير ، رَبِّ أسْـأَلُـكَ خَـيرَ ما في هـذا اليوم وَخَـيرَ ما بَعْـدَه ، وَأَعـوذُ بِكَ مِنْ شَـرِّ ما في هـذا اليوم وَشَرِّ ما بَعْـدَه، رَبِّ أَعـوذُبِكَ مِنَ الْكَسَـلِ وَسـوءِ الْكِـبَر ، رَبِّ أَعـوذُ بِكَ مِنْ عَـذابٍ في النّـارِ وَعَـذابٍ في القَـبْر',
    'اللّهـمَّ أَنْتَ رَبِّـي لا إلهَ إلاّ أَنْتَ ، خَلَقْتَنـي وَأَنا عَبْـدُك ، وَأَنا عَلـى عَهْـدِكَ وَوَعْـدِكَ ما اسْتَـطَعْـت ، أَعـوذُبِكَ مِنْ شَـرِّ ما صَنَـعْت ، أَبـوءُ لَـكَ بِنِعْـمَتِـكَ عَلَـيَّ وَأَبـوءُ بِذَنْـبي فَاغْفـِرْ لي فَإِنَّـهُ لا يَغْـفِرُ الذُّنـوبَ إِلاّ أَنْتَ',
    'رَضيـتُ بِاللهِ رَبَّـاً وَبِالإسْلامِ ديـناً وَبِمُحَـمَّدٍ صلى الله عليه وسلم نَبِيّـاً',
    'اللّهُـمَّ إِنِّـي أَصْبَـحْتُ أُشْـهِدُك ، وَأُشْـهِدُ حَمَلَـةَ عَـرْشِـك ، وَمَلَائِكَتَكَ ، وَجَمـيعَ خَلْـقِك ، أَنَّـكَ أَنْـتَ اللهُ لا إلهَ إلاّ أَنْـتَ وَحْـدَكَ لا شَريكَ لَـك ، وَأَنَّ ُ مُحَمّـداً عَبْـدُكَ وَرَسـولُـك',
    'اللّهُـمَّ ما أَصْبَـَحَ بي مِـنْ نِعْـمَةٍ أَو بِأَحَـدٍ مِـنْ خَلْـقِك ، فَمِـنْكَ وَحْـدَكَ لا شريكَ لَـك ، فَلَـكَ الْحَمْـدُ وَلَـكَ الشُّكْـر',
    'حَسْبِـيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَـيهِ تَوَكَّـلتُ وَهُوَ رَبُّ العَرْشِ العَظـيم',
    'بِسـمِ اللهِ الذي لا يَضُـرُّ مَعَ اسمِـهِ شَيءٌ في الأرْضِ وَلا في السّمـاءِ وَهـوَ السّمـيعُ العَلـيم',
    'اللّهُـمَّ بِكَ أَصْـبَحْنا وَبِكَ أَمْسَـينا ، وَبِكَ نَحْـيا وَبِكَ نَمُـوتُ وَإِلَـيْكَ النُّـشُور',
    'أَصْبَـحْـنا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِين',
    'سُبْحـانَ اللهِ وَبِحَمْـدِهِ عَدَدَ خَلْـقِه ، وَرِضـا نَفْسِـه ، وَزِنَـةَ عَـرْشِـه ، وَمِـدادَ كَلِمـاتِـه',
    'اللّهُـمَّ عافِـني في بَدَنـي ، اللّهُـمَّ عافِـني في سَمْـعي ، اللّهُـمَّ عافِـني في بَصَـري ، لا إلهَ إلاّ أَنْـتَ',
    'اللّهُـمَّ إِنّـي أَعـوذُ بِكَ مِنَ الْكُـفر ، وَالفَـقْر ، وَأَعـوذُ بِكَ مِنْ عَذابِ القَـبْر ، لا إلهَ إلاّ أَنْـتَ',
     'اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في الدُّنْـيا وَالآخِـرَة ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ العَـفْوَ وَالعـافِـيةَ في ديني وَدُنْـيايَ وَأهْـلي وَمالـي ، اللّهُـمَّ اسْتُـرْ عـوْراتي وَآمِـنْ رَوْعاتـي ، اللّهُـمَّ احْفَظْـني مِن بَـينِ يَدَيَّ وَمِن خَلْفـي وَعَن يَمـيني وَعَن شِمـالي ، وَمِن فَوْقـي ، وَأَعـوذُ بِعَظَمَـتِكَ أَن أُغْـتالَ مِن تَحْتـي',
    'يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلْنِي إلَى نَفْسِي طَـرْفَةَ عَيْنٍ',
    'أَصْبَـحْـنا وَأَصْبَـحْ المُـلكُ للهِ رَبِّ العـالَمـين ، اللّهُـمَّ إِنِّـي أسْـأَلُـكَ خَـيْرَ هـذا الـيَوْم ، فَـتْحَهُ ، وَنَصْـرَهُ ، وَنـورَهُ وَبَـرَكَتَـهُ ، وَهُـداهُ ، وَأَعـوذُ بِـكَ مِـنْ شَـرِّ ما فـيهِ وَشَـرِّ ما بَعْـدَه',
    'اللّهُـمَّ عالِـمَ الغَـيْبِ وَالشّـهادَةِ فاطِـرَ السّماواتِ وَالأرْضِ رَبَّ كـلِّ شَـيءٍ وَمَليـكَه ، أَشْهَـدُ أَنْ لا إِلـهَ إِلاّ أَنْت ، أَعـوذُ بِكَ مِن شَـرِّ نَفْسـي وَمِن شَـرِّ الشَّيْـطانِ وَشِرْكِهِ ، وَأَنْ أَقْتَـرِفَ عَلـى نَفْسـي سوءاً أَوْ أَجُـرَّهُ إِلـى مُسْـلِم',
    'أَعـوذُ بِكَلِمـاتِ اللّهِ التّـامّـاتِ مِنْ شَـرِّ ما خَلَـق',
    'اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد',
    'اللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنْ أَنْ نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ ، وَنَسْتَغْفِرُكَ لِمَا لَا نَعْلَمُه',
    'اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَمِّ وَالْحَزَنِ، وَأَعُوذُ بِكَ مِنْ الْعَجْزِ وَالْكَسَلِ، وَأَعُوذُ بِكَ مِنْ الْجُبْنِ وَالْبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ، وَقَهْرِ الرِّجَالِ',
    'أسْتَغْفِرُ اللهَ العَظِيمَ الَّذِي لاَ إلَهَ إلاَّ هُوَ، الحَيُّ القَيُّومُ، وَأتُوبُ إلَيهِ',
    'يَا رَبِّ , لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ , وَلِعَظِيمِ سُلْطَانِكَ',
    'اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا طَيِّبًا، وَعَمَلًا مُتَقَبَّلًا',
    'اللَّهُمَّ أَنْتَ رَبِّي لا إِلَهَ إِلا أَنْتَ ، عَلَيْكَ تَوَكَّلْتُ ، وَأَنْتَ رَبُّ الْعَرْشِ الْعَظِيمِ , مَا شَاءَ اللَّهُ كَانَ ، وَمَا لَمْ يَشَأْ لَمْ يَكُنْ ، وَلا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ الْعَلِيِّ الْعَظِيمِ , أَعْلَمُ أَنَّ اللَّهَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ ، وَأَنَّ اللَّهَ قَدْ أَحَاطَ بِكُلِّ شَيْءٍ عِلْمًا , اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي ، وَمِنْ شَرِّ كُلِّ دَابَّةٍ أَنْتَ آخِذٌ بِنَاصِيَتِهَا ، إِنَّ رَبِّي عَلَى صِرَاطٍ مُسْتَقِيمٍ',
    'لَا إلَه إلّا اللهُ وَحْدَهُ لَا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءِ قَدِير',
    'سُبْحـانَ اللهِ وَبِحَمْـدِه',
    'أسْتَغْفِرُ اللهَ وَأتُوبُ إلَيْهِ'
  ];

   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.2),
      appBar: AppBar(
        backgroundColor: Colors.black,
        brightness: Brightness.dark,
        title: Text("أذكار الصباح" ,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10.0),
          child: Column (
            children: [
              Text(
                "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيم", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 19.0
              ),),
              SizedBox(
                height: 10.0,),
              Text(
                   azkarSabah[0],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(height: 10.0,),
              Text(
                "من قالها حين يصبح أجير من الجن حتى يمسى ومن قالها حين يمسى أجير من الجن حتى يصبح." , style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
                textAlign: TextAlign.end,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[0],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[0] >0){
                    numbersOfAzkar[0]-- ;
                  }

                  if(numbersOfAzkar[0]==0){
                    colorsOfAzkar[0]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[0]}' , style: TextStyle(
                      color: Colors.white
                  ),),

                ),
              ),

              Text(
                "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 19.0
              ),),
              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[1] ,
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Text(
                "من قالها حين يصبح وحين يمسى كفته من كل شىء (الإخلاص والمعوذتين)" , style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
                textAlign: TextAlign.end,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[1],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[1] >0){
                    numbersOfAzkar[1]-- ;
                  }
                  if(numbersOfAzkar[1]==0){
                    colorsOfAzkar[1] = MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text("${numbersOfAzkar[1]}" , style: TextStyle(
                      color: Colors.white
                  ),),

                ),
              ),

              Text(
                "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 19.0
              ),),
              SizedBox(
                height: 10.0,),
              Text(
              " ${azkarSabah[2]}",
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color:colorsOfAzkar[2],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[2] >0){
                    numbersOfAzkar[2]-- ;
                  }
                  if(numbersOfAzkar[2]==0){
                   colorsOfAzkar[2] = MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text("${numbersOfAzkar[2]}" , style: TextStyle(
                      color: Colors.white
                  ),),

                ),
              ),

              Text(
                "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 19.0
              ),),
              SizedBox(
                height: 10.0,),
              Text(
                "${azkarSabah[3]}",
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 23.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[3],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[3] >0){
                    numbersOfAzkar[3]-- ;
                  }
                  if(numbersOfAzkar[3] ==0){
                    colorsOfAzkar[3] = MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text("${numbersOfAzkar[3]}" , style: TextStyle(
                      color: Colors.white
                  ),),

                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                "${azkarSabah[4]}",
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 23.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[4],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[4] >0){
                    numbersOfAzkar[4]-- ;
                  }
                  if(numbersOfAzkar[4] ==0){
                    colorsOfAzkar[4] = MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text("${numbersOfAzkar[4]}" , style: TextStyle(
                      color: Colors.white
                  ),),

                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[5],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(height: 10.0,),
              Text(
                "من قالها موقنا بها حين يمسى ومات من ليلته دخل الجنة وكذلك حين يصبح" , style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
                textAlign: TextAlign.end,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[5],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[5] >0){
                    numbersOfAzkar[5]-- ;
                  }

                  if(numbersOfAzkar[5]==0){
                    colorsOfAzkar[5]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[5]}' , style: TextStyle(
                      color: Colors.white
                  ),),

                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[6],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(height: 10.0,),
              Text(
                "من قالها حين يصبح وحين يمسى كان حقا على الله أن يرضيه يوم القيامة" , style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
                textAlign: TextAlign.end,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[6],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[6] >0){
                    numbersOfAzkar[6]-- ;
                  }

                  if(numbersOfAzkar[6]==0){
                    colorsOfAzkar[6]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[6]}' , style: TextStyle(
                      color: Colors.white
                  ),),

                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[7],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(height: 10.0,),
              Text(
                "من قالها أعتقه الله من النار" , style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
                textAlign: TextAlign.end,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[7],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[7] >0){
                    numbersOfAzkar[7]-- ;
                  }

                  if(numbersOfAzkar[7]==0){
                    colorsOfAzkar[7]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[7]}' , style: TextStyle(
                      color: Colors.white
                  ),),

                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[8],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(height: 10.0,),
              Text(
                "من قالها حين يصبح أدى شكر يومه" , style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
                textAlign: TextAlign.end,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[8],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[8] >0){
                    numbersOfAzkar[8]-- ;
                  }

                  if(numbersOfAzkar[8]==0){
                    colorsOfAzkar[8]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[8]}' , style: TextStyle(
                      color: Colors.white
                  ),),

                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[9],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Text(
                "من قالها كفاه الله ما أهمه من أمر الدنيا والأخرة" , style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
                textAlign: TextAlign.end,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[9],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[9] >0){
                    numbersOfAzkar[9]-- ;
                  }

                  if(numbersOfAzkar[9]==0){
                    colorsOfAzkar[9]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[9]}' , style: TextStyle(
                      color: Colors.white
                  ),),

                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[10],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Text(
                "لم يضره من الله شيء" , style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
                textAlign: TextAlign.end,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[10],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[10] >0){
                    numbersOfAzkar[10]-- ;
                  }

                  if(numbersOfAzkar[10]==0){
                    colorsOfAzkar[10]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[10]}' , style: TextStyle(
                      color: Colors.white
                  ),),

                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[11],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[11],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[11] >0){
                    numbersOfAzkar[11]-- ;
                  }

                  if(numbersOfAzkar[11]==0){
                    colorsOfAzkar[11]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[11]}' , style: TextStyle(
                      color: Colors.white
                  ),),

                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[12],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[12],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[12] >0){
                    numbersOfAzkar[12]-- ;
                  }

                  if(numbersOfAzkar[12]==0){
                    colorsOfAzkar[12]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[12]}' , style: TextStyle(
                      color: Colors.white
                  ),),

                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[13],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[13],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[13] >0){
                    numbersOfAzkar[13]-- ;
                  }

                  if(numbersOfAzkar[13]==0){
                    colorsOfAzkar[13]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[13]}' , style: TextStyle(
                      color: Colors.white
                  ),),

                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[14],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[14],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[14] >0){
                    numbersOfAzkar[14]-- ;
                  }

                  if(numbersOfAzkar[14]==0){
                    colorsOfAzkar[14]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[14]}' , style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[15],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[15],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[15] >0){
                    numbersOfAzkar[15]-- ;
                  }

                  if(numbersOfAzkar[15]==0){
                    colorsOfAzkar[15]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[15]}' , style: TextStyle(
                      color: Colors.white
                  ),),

                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[16],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[16],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[16] >0){
                    numbersOfAzkar[16]-- ;
                  }

                  if(numbersOfAzkar[16]==0){
                    colorsOfAzkar[16]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[16]}' , style: TextStyle(
                      color: Colors.white
                  ),),

                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[17],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[17],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[17] >0){
                    numbersOfAzkar[17]-- ;
                  }

                  if(numbersOfAzkar[17]==0){
                    colorsOfAzkar[17]= MyThemeData.accentColor;
                  }
                  setState(() {});
                } ,
                  child: Text('${numbersOfAzkar[17]}' , style: TextStyle(
                      color: Colors.white
                  ),),),),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[18],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[18],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[18] >0){
                    numbersOfAzkar[14]-- ;
                  }

                  if(numbersOfAzkar[18]==0){
                    colorsOfAzkar[18]= MyThemeData.accentColor;
                  }
                  setState(() {});
                } ,
                  child: Text('${numbersOfAzkar[18]}' , style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[19],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[19],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[19] >0){
                    numbersOfAzkar[19]-- ;
                  }

                  if(numbersOfAzkar[19]==0){
                    colorsOfAzkar[19]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[19]}' , style: TextStyle(
                      color: Colors.white
                  ),),

                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[20],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[20],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[20] >0){
                    numbersOfAzkar[20]-- ;
                  }

                  if(numbersOfAzkar[20]==0){
                    colorsOfAzkar[20]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[20]}' , style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[21],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Text(
                "من صلى على حين يصبح وحين يمسى ادركته شفاعتى يوم القيامة" , style: TextStyle(
                color: Colors.grey,
                fontSize: 15.0,
              ),
                textAlign: TextAlign.end,
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[21],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[21] >0){
                    numbersOfAzkar[21]-- ;
                  }

                  if(numbersOfAzkar[21]==0){
                    colorsOfAzkar[21]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[21]}' , style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[22],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[22],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[22] >0){
                    numbersOfAzkar[22]-- ;
                  }

                  if(numbersOfAzkar[22]==0){
                    colorsOfAzkar[22]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[22]}' , style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[23],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[23],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[23] >0){
                    numbersOfAzkar[23]-- ;
                  }

                  if(numbersOfAzkar[23]==0){
                    colorsOfAzkar[23]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[23]}' , style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[24],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[24],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[24] >0){
                    numbersOfAzkar[24]-- ;
                  }

                  if(numbersOfAzkar[24]==0){
                    colorsOfAzkar[24]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[24]}' , style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[25],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[25],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[25] >0){
                    numbersOfAzkar[25]-- ;
                  }

                  if(numbersOfAzkar[25]==0){
                    colorsOfAzkar[25]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[25]}' , style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[26],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[26],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[26] >0){
                    numbersOfAzkar[26]-- ;
                  }

                  if(numbersOfAzkar[26]==0){
                    colorsOfAzkar[26]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[26]}' , style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[27],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[27],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[27] >0){
                    numbersOfAzkar[27]-- ;
                  }

                  if(numbersOfAzkar[27]==0){
                    colorsOfAzkar[27]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[27]}' , style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[28],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[28],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[28] >0){
                    numbersOfAzkar[28]-- ;
                  }

                  if(numbersOfAzkar[28]==0){
                    colorsOfAzkar[28]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[28]}' , style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[29],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[29],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[29] >0){
                    numbersOfAzkar[29]-- ;
                  }

                  if(numbersOfAzkar[29]==0){
                    colorsOfAzkar[29]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[29]}' , style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ),

              SizedBox(
                height: 10.0,),
              Text(
                azkarSabah[30],
                textAlign: TextAlign.end,
                style: TextStyle(
                    color: Colors.white ,
                    fontSize: 25.0
                ),),
              SizedBox(
                height: 10.0,),
              Container(
                width: double.infinity,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: colorsOfAzkar[30],
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: MaterialButton(onPressed: (){
                  if( numbersOfAzkar[30] >0){
                    numbersOfAzkar[30]-- ;
                  }

                  if(numbersOfAzkar[30]==0){
                    colorsOfAzkar[30]= MyThemeData.accentColor;
                  }
                  setState(() {
                  });
                } ,
                  child: Text('${numbersOfAzkar[30]}' , style: TextStyle(
                      color: Colors.white
                  ),),
                ),
              ),







            ],
          ),
        ),
      ),
    );
  }
}
