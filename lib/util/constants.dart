import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


const primaryColor = Color(0xFF804CEF);
final Radius cardRadius = Radius.circular(50);

TextStyle buildTeluguFontStyle(BuildContext context) => GoogleFonts.ramaraja(
    color: Colors.white, textStyle: Theme.of(context).textTheme.headline3);

TextStyle buildHeadingFontStyle(BuildContext context) => GoogleFonts.ramaraja(
    color: Colors.white, textStyle: Theme.of(context).textTheme.headline3);



  List<Color> optionColors = [
    Colors.black,
    Colors.blue,
    Colors.brown,
    Colors.green,
    Colors.red,
    Colors.yellow[900]
    
  ];

   const varnamalaList = [
    {
      'optionText': 'అ - అమ్మ',
      'optionImagePath': 'assets/varnamala/amma.jpg'
      
    },
    {
      'optionText': 'ఆ - ఆవు',
      'optionImagePath': 'assets/varnamala/aavu.png'
      
    },
     {
      'optionText': 'ఇ - ఇల్లు',
      'optionImagePath': 'assets/varnamala/illu.png'
      
    },
    {
      'optionText': 'ఈ - ఈగ',
      'optionImagePath': 'assets/varnamala/eega.jpg'
      
    },
    {
      'optionText': 'ఉ - ఉడుత',
      'optionImagePath': 'assets/varnamala/uduta.jpg'
      
    },
    {
      'optionText': 'ఊ - ఊయల',
      'optionImagePath': 'assets/varnamala/ooyala.jpg'
      
    },
    {
      'optionText': 'ఋ - ఋషి',
      'optionImagePath': 'assets/varnamala/rushi.jpg'
      
    },
    {
      'optionText': 'ౠ',
      'optionImagePath': 'assets/varnamala/rhu.png'
      
    },
    {
      'optionText': 'ఎ - ఎలుక',
      'optionImagePath': 'assets/varnamala/eluka.jpg'
      
    },
    {
      'optionText': 'ఏ - ఏనుగు',
      'optionImagePath': 'assets/varnamala/yenugu.jpg'
      
    },
    {
      'optionText': 'ఐ - ఐదు',
      'optionImagePath': 'assets/varnamala/aidu.jpg'
      
    },
    {
      'optionText': 'ఒ - ఒంటె',
      'optionImagePath': 'assets/varnamala/onte.jpg'
      
    },
    {
      'optionText': 'ఓ - ఓడ',
      'optionImagePath': 'assets/varnamala/ooda.png'
      
    },
     {
      'optionText': 'ఔ - ఔషధము',
      'optionImagePath': 'assets/varnamala/aushadham.jpg'
      
    },
    {
      'optionText': 'అం - అంబరము',
      'optionImagePath': 'assets/varnamala/ambharam.png'
      
    },
    {
      'optionText': 'అః',
      'optionImagePath': 'assets/varnamala/ahaa.png'
      
    },
    {
      'optionText': 'క - కలము',
      'optionImagePath': 'assets/varnamala/kalamu.jpg'
      
    },
    {
      'optionText': 'ఖ - ఖడ్గము',
      'optionImagePath': 'assets/varnamala/sword.jpg'
      
    },
    {
      'optionText': 'గ - గడియారము',
      'optionImagePath': 'assets/varnamala/watch.jpg'
      
    },
    {
      'optionText': 'ఘ - ఘటము',
      'optionImagePath': 'assets/varnamala/pot.jpg'
      
    },
    {
      'optionText': 'ఞ - వాఞ్మయము ',
      'optionImagePath': 'assets/varnamala/literature.jpg'
      
    },
    {
      'optionText': 'చ - చక్రము',
      'optionImagePath': 'assets/varnamala/wheel.png'
      
    },
    {
      'optionText': 'ఛ - ఛత్రము',
      'optionImagePath': 'assets/varnamala/umbrella.jpg'
      
    },
    {
      'optionText': 'జ - జడ',
      'optionImagePath': 'assets/varnamala/jada.jpg'
      
    },
    {
      'optionText': 'ఝ - ఝషము',
      'optionImagePath': 'assets/varnamala/fish.jpg'
      
    },
    {
      'optionText': 'ఞ -  యజ్ఞము',
      'optionImagePath': 'assets/varnamala/ritual.jpg'
      
    },
    {
      'optionText': 'ట - టపాసులు',
      'optionImagePath': 'assets/varnamala/fireworks.jpg'
      
    },
    {
      'optionText': 'ఠ - కంఠము',
      'optionImagePath': 'assets/varnamala/throat.jpg'
      
    },{
      'optionText': 'డ - డబ్బా',
      'optionImagePath': 'assets/varnamala/box.jpg'
      
    },
    {
      'optionText': 'ఢ - ఢంకా',
      'optionImagePath': 'assets/varnamala/drum.jpg'
      
    },
    {
      'optionText': 'ణ - బాణము',
      'optionImagePath': 'assets/varnamala/arrow.png'
      
    },
    {
      'optionText': 'త - తల',
      'optionImagePath': 'assets/varnamala/head.png'
      
    },
    {
      'optionText': 'థ - రథము',
      'optionImagePath': 'assets/varnamala/chariot.png'
      
    },
    {
      'optionText': 'ద - దండ',
      'optionImagePath': 'assets/varnamala/garland.jpg'
      
    },
    {
      'optionText': 'ధ - ధనస్సు',
      'optionImagePath': 'assets/varnamala/bow.jpg'
      
    },
    {
      'optionText': 'న - నత్త',
      'optionImagePath': 'assets/varnamala/snail.jpg'
      
    },
    {
      'optionText': 'ప - పలక',
      'optionImagePath': 'assets/varnamala/palaka.jpg'
      
    },
    {
      'optionText': 'ఫ - ఫలము',
      'optionImagePath': 'assets/fruits.png'
      
    },
    {
      'optionText': 'బ - బండి',
      'optionImagePath': 'assets/varnamala/cart.jpg'
      
    },
    {
      'optionText': 'భ - భల్లూకము',
      'optionImagePath': 'assets/animals/bear.jpg'
      
    },
    {
      'optionText': 'మ - మంట',
      'optionImagePath': 'assets/varnamala/fire.jpg'
      
    },
    {
      'optionText': 'య - యంత్రము',
      'optionImagePath': 'assets/varnamala/machine.jpg'
      
    },
    {
      'optionText': 'ర - రవి',
      'optionImagePath': 'assets/varnamala/sun.jpg'
      
    },
    {
      'optionText': 'ల - లత',
      'optionImagePath': 'assets/varnamala/creeper.jpg'
      
    },
    {
      'optionText': 'వ - వంకాయ',
      'optionImagePath': 'assets/veggies/eggplant.jpg'
      
    },
    {
      'optionText': 'ళ - తాళము',
      'optionImagePath': 'assets/varnamala/lock.jpg'
      
    },
    {
      'optionText': 'శ - శంఖము',
      'optionImagePath': 'assets/varnamala/shell.jpg'
      
    },
    {
      'optionText': 'ష - మేషము',
      'optionImagePath': 'assets/varnamala/goat.jpg'
      
    },
    {
      'optionText': 'స - సంచి',
      'optionImagePath': 'assets/varnamala/bag.png'
      
    },
    {
      'optionText': 'హ - హంస',
      'optionImagePath': 'assets/birds/swan.jpg'
      
    },
    {
      'optionText': 'క్ష - వృక్షము',
      'optionImagePath': 'assets/varnamala/tree.png'
      
    },
    {
      'optionText': 'ఱ - ఱంపము',
      'optionImagePath': 'assets/varnamala/saw.png'
      
    },
    
  ];

  const birdsList = [
     {
      'optionText': 'కొంగ',
      'optionImagePath': 'assets/birds/crane.jpg'
      
    },
    {
      'optionText': 'కాకి',
      'optionImagePath': 'assets/birds/crow.jpg'
      
    },
    {
      'optionText': 'బాతు',
      'optionImagePath': 'assets/birds/duck.jpg'
      
    },
    {
      'optionText': 'రాబందు',
      'optionImagePath': 'assets/birds/eagle.jpg'
      
    },
    {
      'optionText': 'కోడి',
      'optionImagePath': 'assets/birds/chicken.jpg'
      
    },
    {
      'optionText': 'నిప్పుకోడి',
      'optionImagePath': 'assets/birds/ostrich.jpg'
      
    },
    {
      'optionText': 'గుడ్లగూబ',
      'optionImagePath': 'assets/birds/owl.jpg'
      
    },
    {
      'optionText': 'చిలుక',
      'optionImagePath': 'assets/birds/parrot.jpg'
      
    },
    {
      'optionText': 'నెమలి',
      'optionImagePath': 'assets/birds/peacock.jpg'
      
    },
    {
      'optionText': 'పావురము',
      'optionImagePath': 'assets/birds/pigeon.jpg'
      
    },
    {
      'optionText': 'పిచ్చుక',
      'optionImagePath': 'assets/birds/sparrow.jpg'
      
    },
    {
      'optionText': 'హంస',
      'optionImagePath': 'assets/birds/swan.jpg'
      
    }

  ];

  const animalsList = [
    {
      'optionText': 'కోతి',
      'optionImagePath': 'assets/animals/monkey.jpg'
      
    },
    {
      'optionText': 'ఎలుగుబంటి',
      'optionImagePath': 'assets/animals/bear.jpg'
      
    },
    {
      'optionText': 'పిల్లి',
      'optionImagePath': 'assets/animals/cat.jpg'
      
    },
    {
      'optionText': 'చిరుత పులి',
      'optionImagePath': 'assets/animals/leopard.jpg'
      
    },
    {
      'optionText': 'చింపాంజీ',
      'optionImagePath': 'assets/animals/chimpanzee.jpg'
      
    },
    {
      'optionText': 'ఆవు',
      'optionImagePath': 'assets/animals/cow.jpg'
      
    },
    {
      'optionText': 'జింక',
      'optionImagePath': 'assets/animals/deer.jpg'
      
    },
    {
      'optionText': 'సింహం',
      'optionImagePath': 'assets/animals/lion.jpg'
      
    },
    {
      'optionText': 'తాబేలు',
      'optionImagePath': 'assets/animals/tortoise.jpg'
      
    },

  ];

  const fruitsList = [
    {
      'optionText': 'సీమ రేగిపండు',
      'optionImagePath': 'assets/fruits/apple.jpg'
      
    },
    {
      'optionText': 'అరటి పండు ',
      'optionImagePath': 'assets/fruits/banana.jpg'
      
    },
     {
      'optionText': 'పనస పండు',
      'optionImagePath': 'assets/fruits/jackfruit.jpg'
      
    },
     {
      'optionText': 'బొబ్బాయ',
      'optionImagePath': 'assets/fruits/papaya.jpg'
      
    },
     {
      'optionText': 'దానిమ్మ ',
      'optionImagePath': 'assets/fruits/pomegranate.jpg'
      
    },
     {
      'optionText': 'పుచ్చ కాయ',
      'optionImagePath': 'assets/fruits/watermelon.jpg'
      
    },
     {
      'optionText': 'సపోటా',
      'optionImagePath': 'assets/fruits/sapota.jpg'
      
    },
    {
      'optionText': 'ద్రాక్ష',
      'optionImagePath': 'assets/fruits/grapes.jpg'
      
    },
     {
      'optionText': 'మామిడి',
      'optionImagePath': 'assets/fruits/mango.jpg'
      
    },

  ];

  const flowersList = [
    {
      'optionText': 'గులాబీ',
      'optionImagePath': 'assets/flowers/rose.jpg'
      
    },
     {
      'optionText': 'బంతి పువ్వు',
      'optionImagePath': 'assets/flowers/marigold.jpg'
      
    },
    {
      'optionText': 'చామంతి పువ్వు',
      'optionImagePath': 'assets/flowers/chamanthi.jpg'
      
    },
    {
      'optionText': 'మందార',
      'optionImagePath': 'assets/flowers/hibiscus.jpg'
      
    },
    {
      'optionText': 'కమలం',
      'optionImagePath': 'assets/flowers/lotus.jpg'
      
    },
    {
      'optionText': 'మల్లె',
      'optionImagePath': 'assets/flowers/jasmine.jpg'
      
    },
  
  ];

  const veggiesList = [
    {
      'optionText': 'చిలకడ దుంప',
      'optionImagePath': 'assets/veggies/sweetpotato.jpg'
      
    },
    {
      'optionText': 'బఠాణి',
      'optionImagePath': 'assets/veggies/greenpeas.jpg'
      
    },
    {
      'optionText': 'బెండకాయ',
      'optionImagePath': 'assets/veggies/okra.jpg'
      
    },
    {
      'optionText': 'వంకాయ',
      'optionImagePath': 'assets/veggies/eggplant.jpg'
      
    },
    {
      'optionText': 'గుమ్మడికాయ',
      'optionImagePath': 'assets/veggies/pumpkin.jpg'
      
    },
    {
      'optionText': 'బంగాళా దుంప',
      'optionImagePath': 'assets/veggies/potatoes.jpg'
      
    },
    {
      'optionText': 'క్యారెట్',
      'optionImagePath': 'assets/veggies/carrots.jpg'
      
    },
    {
      'optionText': 'బీట్రూట్',
      'optionImagePath': 'assets/veggies/beetroot.jpg'
      
    },
    {
      'optionText': 'టమోటా',
      'optionImagePath': 'assets/veggies/tomatoes.jpg'
      
    },
    {
      'optionText': 'పచ్చి మిరపకాయ',
      'optionImagePath': 'assets/veggies/greenchillies.jpg'
      
    },
    {
      'optionText': 'కరివేపాకు',
      'optionImagePath': 'assets/veggies/curryleaves.jpg'
      
    },

  ];