import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// import flutter material design
// text, container, scaffold, appbar, etc.
void main() {
// starting point of every dart file
    runApp(const SimplePortfolioApp());
// flutter function that runs our application
// function - standalone block of code
// method - a function that define within a class and operates on objects data
// MyApp() - your application
}
class SimplePortfolioApp extends StatelessWidget{
// class name
// doesn't change
    const SimplePortfolioApp ({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context){
    return MaterialApp (
    debugShowCheckedModeBanner: false,
    title: 'Portfolio',
    theme: ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color(0xFF121212),
      cardColor: const Color(0xFF1E1E1E),
    ),
    home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget{
    const HomePage({Key? key}) : super(key: key);
 @override 
 State<HomePage> createState() => _HomePageState();
}
 // State - return the objects
 // State for the Homepage    
 // createState = Method
 // _HomePageState(); = hold data that can change, trigger to rebuild our application 
    class _HomePageState extends State<HomePage>{
      String selectedPage = 'Home';
    late ScrollController _scrollController;
    
    
    Widget _infoCard({required Widget child}) {
  return Card(
    color: const Color(0xFF1E1E1E),
    elevation: 4,
    margin: EdgeInsets.symmetric(vertical: 10),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: EdgeInsets.all(16),
      child: child,
    ),
  );
}
Widget _homePage() {
  return Column(
    children: [
      SizedBox(height: 30),
      Container(
        decoration: BoxDecoration(
      shape: BoxShape.circle,
      boxShadow: [
        BoxShadow(
        color: Colors.black54,
           blurRadius: 20,
            spreadRadius: 5,
           ),
        ],
        ),
        child: ClipOval(
          child: Image.asset(
            'lib/assets/images/profile.jpg',
            width: 140,
            height: 140,
            fit: BoxFit.cover,
          ),
        ),
      ),
      SizedBox(height: 20),
      Text(
        'Rendel Tuliao',
        style: GoogleFonts.montserrat(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),
      SizedBox(height: 8),
      Text(
        'Flutter | Java Developer ',
        style: GoogleFonts.montserrat(
          fontSize: 20,
          color: Colors.grey[400],
        ),
      ),
    SizedBox(height: 10),
Text(
  'I build clean and modern mobile programs.',
  style: GoogleFonts.montserrat(
    fontSize: 14,
    color: Colors.grey[500],
  ),
),
    ],
  );
}
Widget _aboutPage() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 20),
      Text('About Me',
          style: GoogleFonts.montserrat(
          fontSize: 24, fontWeight: FontWeight.bold)),
      Divider(color: Colors.grey[800]),
      _infoCard(
        child: Text(
          'I am a Rendel V. Tuliao a 2nd year Computer Science student. As of now, '
          'I am learning and trying to know every possible way to code, I do not have anything in my mind that I think I should focus and invest all my time in, yet.'
          'I just love learning how systems work and turning ideas into real programs that people can use.',
          style: GoogleFonts.montserrat(fontSize: 16),
        ),
      ),
    ],
  );
}
Widget _skillsPage() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 20),
      Text('Skills',
     style: GoogleFonts.montserrat(
        fontSize: 24, fontWeight: FontWeight.bold)),
      Divider(color: Colors.grey[800]),
      _infoCard(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
           children: [
            Icon(Icons.flutter_dash, color: Colors.grey[400]),
          SizedBox(width: 10),
           Text('Flutter & Dart', style: GoogleFonts.montserrat(fontSize: 16)),
              ],
            ),
            SizedBox(height: 10),
            Row(
           children: [
            Icon(Icons.code, color: Colors.grey[400]),
            SizedBox(width: 10),
             Text('Java', style: GoogleFonts.montserrat(fontSize: 16)),
        ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
           Icon(Icons.computer, color: Colors.grey[400]),
               SizedBox(width: 10),
             Text('C#', style: GoogleFonts.montserrat(fontSize: 16)),
              ],
            ),
            SizedBox(height: 10),
            Row(
        children: [
           Icon(Icons.web, color: Colors.grey[400]),
           SizedBox(width: 10),
          Text('HTML', style: GoogleFonts.montserrat(fontSize: 16)),
         ],
        ),
         ],
      ),
     ),
    ],
  );
}
Widget _contactPage() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      SizedBox(height: 20),
      Text('Contact',
          style: GoogleFonts.montserrat(
          fontSize: 24, fontWeight: FontWeight.bold)),
      Divider(color: Colors.grey[800]),
      _infoCard(
       child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
         children: [
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey[400]),
                SizedBox(width: 10),
               Text('Email: rendeltuliao29.@gmail.com',
               style: GoogleFonts.montserrat(fontSize: 16)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.phone, color: Colors.grey[400]),
             SizedBox(width: 10),
                Text('Phone: 09462424627',
                style: GoogleFonts.montserrat(fontSize: 16)),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.code, color: Colors.grey[400]),
                SizedBox(width: 10),
                Text('GitHub: github.com/rendeltuliao29',
                style: GoogleFonts.montserrat(fontSize: 16)),
          ],
        ),
       ],
     ),
     ),
 ],
  );
}

void initState() {
  super.initState();
  _scrollController = ScrollController();
}

Widget _buildContent() {
  switch (selectedPage) {
    case 'Home':
      return _homePage();

    case 'About':
      return _aboutPage();

    case 'Skills':
      return _skillsPage();

    case 'Contact':
      return _contactPage();

    default:
      return _homePage();
  }
}


    Widget build(BuildContext context){
    return Scaffold ( //page structure (hold Appbar, drawer, body)
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1E1E1E),
        elevation: 0,
        leading: Builder(
          builder:(BuildContext context ){
            return IconButton(
             icon: Icon(Icons.menu, color: Colors.grey[400]),
             onPressed: (){
              Scaffold.of(context).openDrawer();


}
           );

          }
        ),
        
        title: Text('Portfolio', 
        style : GoogleFonts.montserrat(fontSize: 20, fontWeight: FontWeight.w600),
      ),
      ),
      
      drawer: Drawer(
        backgroundColor: const Color(0xFF121212),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
  decoration: BoxDecoration(
    color: const Color(0xFF1E1E1E),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.end,
    children: [

      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
       boxShadow: [
      BoxShadow(
          color: Colors.black54,
         blurRadius: 10,
             spreadRadius: 2,
            ),
          ],
        ),
        child: ClipOval(
         child: Image.asset('lib/assets/images/profile.jpg',
          width: 80,
          height: 80,
         fit:BoxFit.cover,  
          
          ),
        ),
      ),
      Text(
        'Rendel Tuliao',
        style: GoogleFonts.montserrat(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        ),
      ),
      SizedBox(height: 4),
      Text(
        'Flutter Developer',
     style: GoogleFonts.montserrat(
      fontSize: 14,
      color: Colors.white70,
        ),
      ),
    ],
  ),
),

ListTile(
  leading: Icon(Icons.home, color: Colors.grey[400]),
  title: Text('Home'),
  onTap: () {
    Navigator.pop(context);
    setState(() {
    selectedPage = 'Home';
    });
  },
),
ListTile(
  leading: Icon(Icons.person, color: Colors.grey[400]),
  title: Text('About'),
  onTap: () {
    Navigator.pop(context);
    setState(() {
    selectedPage = 'About';
    });
  },
),
ListTile(
  leading: Icon(Icons.lightbulb, color: Colors.grey[400]),
  title: Text('Skills'),
  onTap: () {
    Navigator.pop(context);
    setState(() {
    selectedPage = 'Skills';
    });
  },
),
ListTile(
  leading: Icon(Icons.email, color: Colors.grey[400]),
  title: Text('Contact'),
  onTap: () {
    Navigator.pop(context);
    setState(() {
      selectedPage = 'Contact';
    });
  },
),
Divider(),
ListTile(
  leading: Icon(Icons.download, color: Colors.grey[400]),
  title: Text('Download Resume'),
  onTap: () {
    Navigator.pop(context);
    print('Download Resume tapped');
  },
),
],
)
),
  body: SingleChildScrollView(
  controller: _scrollController,
  child: Padding(
  padding: EdgeInsets.all(20),
  child: Center(
  child: _buildContent(),
      ),
     
        ),
      ),
   );
}

@override
void dispose() {
  _scrollController.dispose();
  super.dispose();
}

  }
