import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final tabs=[
    Screen1(),
    Screen2(),
    Screen3(),
    Screen4(),
  ];

  int previousIndex=0;
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我的自傳"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
                             type: BottomNavigationBarType.fixed,
                             backgroundColor: Colors.white,
                             selectedItemColor: Colors.blue,
                             selectedFontSize: 18,
                             unselectedFontSize: 14,
                             iconSize: 30,
                             currentIndex: currentIndex,
                             items: [
                               BottomNavigationBarItem(icon: currentIndex==0? Image.asset('assets/a1.png', width: 40, height: 40,):Image.asset('assets/a11.png', width: 30, height: 30,), label:"自我介紹",),
                               BottomNavigationBarItem(icon: currentIndex==1? Image.asset('assets/a2.png', width: 40, height: 40,):Image.asset('assets/a21.png', width: 30, height: 30,), label:"學習歷程",),
                               BottomNavigationBarItem(icon: currentIndex==2? Image.asset('assets/a3.jpg', width: 40, height: 40,):Image.asset('assets/a31.jpg', width: 30, height: 30,), label:"學習計畫",),
                               BottomNavigationBarItem(icon: currentIndex==3? Image.asset('assets/a4.png', width: 40, height: 40,):Image.asset('assets/a41.png', width: 30, height: 30,), label:"專業方向",),
                             ],
                             onTap: (index) {
                               setState(() {
                                 previousIndex=currentIndex;
                                 currentIndex=index;
                               });
                             },
                           ),
    );
  }
}

class Screen1 extends StatelessWidget {
  Screen1({super.key});

  String s1="我出生在一個平凡但樸實的小家庭，家中的氣氛強調「各自獨立」。父母親給予我們極大的個人空間，不採取高壓式的管教，這無形中培養了我凡事依靠自己、獨立思考的習慣。雖然家境普通，並非大富大貴，但也正因如此，我深知必須腳踏實地，唯有專注於學習、掌握一技之長，未來才能在社會上自立更生。小學時代的我，是一個性格外向、活潑開朗的孩子。那時的我喜歡與人互動，對周遭事物充滿好奇心，在學校的生活總是充滿了活力，不單侷限於課本知識，更熱衷於探索校園生活中的各種樂趣。國中時期則是我求學生涯的一個重要轉折點。隨著心智逐漸成熟，我開始意識到學習的重要性，收起了小學時單純好動的心，將重心轉移到課業上。這段期間，我學會了自我約束，並在知識的積累中找到了成就感，個性也從原本的活潑外放，轉變為更能靜下心來思考與沉澱的性格。進入高中後，學校的風氣是讀書與玩樂並重，在這樣的環境下，我學會了如何在課業壓力與休閒活動之間取得平衡。在眾多科目中，我發現自己對於「邏輯思考」有著優異的敏銳度，這也讓我在資訊領域找到了極大的熱情。我最擅長且喜歡的科目是 C++ 程式設計與數位邏輯，因為這些學科講求嚴謹的推演與架構，能訓練我組織與解決問題的能力。憑藉著清晰的邏輯思維與不斷的練習，我曾在 APCS 大學程式設計先修檢測中取得了 8 級分的成績，這不僅是對我能力的肯定，更堅定了我往資訊領域發展的決心。對我而言，寫程式不只是應付學業，更是一種透過代碼與邏輯來建構世界、解決問題的過程。我期許自己能保持這份熱忱，在未來的求學路上持續精進。";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //標題
          Padding(
            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
            child: Text("Who am I", style: TextStyle(fontSize: 32,
                                                     fontWeight: FontWeight.bold),
                   ),
          ),
          //自傳部分
          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(30, 0, 30, 30),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 3,),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(color: Colors.amberAccent, offset: Offset(6,6)),
              ],
            ),
            child: Text(s1, style: TextStyle(fontSize: 20,)),
          ),
        ],
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('在高中自由的學風下，我挖掘出自身對於邏輯思考的熱忱與天賦。透過 C++ 與數位邏輯的深入鑽研，我建立了扎實的運算思維，並能在繁複的程式架構中理出清晰脈絡。這份對程式設計的堅持，反映在我的 APCS 檢測成績上，獲得了 8 級分的高度肯定。這不僅代表我具備優異的實作能力，更證明我能將所學知識轉化為解決問題的具體工具，為未來進入資訊領域打下堅實基礎。');
  }
}
class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("大一時期", style: TextStyle(fontSize: 24,)),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 200,
                //width: 200,
                child: ListView(
                  children: [
                    Text("1. 穩固數理基礎", style: TextStyle(fontSize: 20,)),
                    Text("2. 程式語言多樣化", style: TextStyle(fontSize: 20,)),
                    Text("3. 厚植基礎", style: TextStyle(fontSize: 20,)),
                    Text("4. 人際關係", style: TextStyle(fontSize: 20,)),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("大二時期", style: TextStyle(fontSize: 24,)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 140,
                //width: 200,
                child: ListView(
                  children: [
                    Text("1. 學業重心", style: TextStyle(fontSize: 20,)),
                    Text("2. 實務應用", style: TextStyle(fontSize: 20,)),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("大三時期", style: TextStyle(fontSize: 24,)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: 140,
                //width: 200,
                child: ListView(
                  children: [
                    Text("1. 學業重心", style: TextStyle(fontSize: 20,)),
                    Text("2. 自主學習", style: TextStyle(fontSize: 20,)),
                    Text("3. 專題製作", style: TextStyle(fontSize: 20,)),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("大四時期", style: TextStyle(fontSize: 24,)),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 90,
                width: 140,
                //width: 200,
                child: ListView(
                  children: [
                    Text("1. 實習經驗", style: TextStyle(fontSize: 20,)),
                    Text("2. 專題完成", style: TextStyle(fontSize: 20,)),
                    Text("3. 未來規劃", style: TextStyle(fontSize: 20,)),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          SizedBox(height: 10,),
          Row(),
          SizedBox(height: 10,),
          Row(),
          SizedBox(height: 10,),
          Row(),
        ],
      ),
    );
  }
}
class Screen4 extends StatelessWidget {
  const Screen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Text('結合我對 C++ 程式語言的熟練掌握以及在數位邏輯領域的濃厚興趣，我將未來的專業發展方向鎖定於**「演算法設計」與「系統軟韌體整合」**。我深信，優秀的工程師不應僅止於應用層面的開發，更須具備向下扎根、理解底層運作原理的能力。APCS 8 級分的成績證明了我具備嚴謹的邏輯架構能力，這將助於我在面對複雜的運算問題時，能以更精準的演算邏輯進行效能優化。我期許自己能成為一名兼具軟硬體整合思維的專業工程師，不論是投入嵌入式系統開發或高效能運算領域，都能透過扎實的技術解決實際問題，落實務實致用的精神。');
  }
}
