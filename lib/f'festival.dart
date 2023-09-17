import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.purple),
    debugShowCheckedModeBanner: false,
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  bool isHiddenPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/b1.webp'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
              ),
              Image.asset(
                'assets/login.png',
                color: Colors.white,
                height: 150,
                width: 150,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 325,
                width: 325,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Please Login To Your Account',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email Address',
                          suffixIcon: Icon(
                            Icons.mail,
                            size: 19,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        obscureText: isHiddenPassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(
                              Icons.visibility,
                              size: 19,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 40, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgotPasswordScreen(),
                                ),
                              );
                            },
                            child: Text(
                              'Forgot Password',
                              style: TextStyle(color: Colors.orangeAccent[700]),
                            ),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}

class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  void resetPassword() {
    // Implement the password reset logic here.
    // Typically, you'd make an API call to your backend for this.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Enter your email to reset your password:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: resetPassword,
              child: Text('Reset Password'),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Message App',
      theme: ThemeData(primarySwatch: Colors.purple),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Message> messages = [
    Message(
      sender: 'Hari',
      subject: 'Meeting Tomorrow',
      message: 'Hello, let\'s have a meeting tomorrow at 10 AM.',
      time: '9:30 AM',
      unread: true,
    ),
    Message(
      sender: 'Krishna',
      subject: 'Report Submission',
      message: 'Please submit your report by the end of the day.',
      time: '5:35 AM',
      unread: false,
    ),
    Message(
      sender: 'Shiva',
      subject: 'Complaining',
      message: 'Water is not coming regularly',
      time: '3:58 AM',
      unread: true,
    ),
    Message(
      sender: 'Karthick',
      subject: 'Courses',
      message: 'Hello, Your course has been activated',
      time: 'Yesterday',
      unread: true,
    ),
    Message(
      sender: 'Ram',
      subject: 'Certificate',
      message: 'Hello, your certificate is issued tomorrow',
      time: 'Yesterday',
      unread: true,
    ),
    Message(
      sender: 'Gajendran',
      subject: 'Your experience',
      message: 'Please, Share your experience',
      time: 'Friday',
      unread: true,
    ),
    Message(
      sender: 'Durga',
      subject: 'Hello wanna',
      message: 'Hello, let\'s have a meeting tomorrow at 10 AM.',
      time: 'Thursday',
      unread: true,
    ),
    Message(
      sender: 'Seetha',
      subject: 'Thanking',
      message: 'Please submit your report by the end of the day.',
      time: 'Wednesday',
      unread: false,
    ),
    Message(
      sender: 'Brahm',
      subject: 'Goodbye',
      message: 'Water is not coming regularly',
      time: 'Tuesday',
      unread: true,
    ),
    Message(
      sender: 'Lax',
      subject: ' Wishes',
      message: 'Hello, Your course has been activated',
      time: 'Monday',
      unread: true,
    ),
    Message(
      sender: 'Saras',
      subject: 'Welcome',
      message: 'Hello, your certificate is issued tomorrow',
      time: 'Sunday',
      unread: true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 15.0,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Vashan'),
              accountEmail: Text('vashan@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('Vashan'),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                )
              ],
            ),
            ListTile(
              title: Text('Inbox'),
              leading: Icon(Icons.inbox),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Sent'),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Events'),
              leading: Icon(Icons.event),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Notification'),
              leading: Icon(Icons.notifications),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Outbox'),
              leading: Icon(Icons.outbox),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Snoozed'),
              leading: Icon(Icons.snooze),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Important'),
              leading: Icon(Icons.label_important),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Draft'),
              leading: Icon(Icons.drafts),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Bin'),
              leading: Icon(Icons.delete),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
            ),
            Divider(
              height: 0.1,
            ),
            ListTile(
              title: Text('Help and feedback'),
              leading: Icon(Icons.help),
            ),
            Divider(
              height: 0.1,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Message For You'),
        actions: [
          Icon(Icons.message),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(messages[index].sender[0]),
            ),
            title: Text(messages[index].sender),
            subtitle: Text(messages[index].subject),
            trailing: Text(messages[index].time),
            onTap: () {},
            tileColor: messages[index].unread ? Colors.white : Colors.grey[200],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}

class Message {
  final String sender;
  final String subject;
  final String message;
  final String time;
  final bool unread;

  Message({
    required this.sender,
    required this.subject,
    required this.message,
    required this.time,
    required this.unread,
  });
}
