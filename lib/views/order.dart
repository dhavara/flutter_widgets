part of 'pages.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);
  static const String routeName = '/order';

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  void initState() {
    super.initState();
  }

  final _loginKey = GlobalKey<FormState>();
  final ctrlName = TextEditingController();
  final ctrlEmail = TextEditingController();
  final ctrlPhone = TextEditingController();
  final ctrlCity = TextEditingController();

  @override
  void dispose() {
    ctrlName.dispose();
    ctrlEmail.dispose();
    ctrlPhone.dispose();
    ctrlCity.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Order Form"),
          backgroundColor: Colors.pink,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Form(
              key: _loginKey,
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        labelText: "Your Full Name",
                        prefixIcon: Icon(Icons.person)),
                    controller: ctrlName,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      return value.toString().isEmpty
                          ? 'Please Fill in the Blank'
                          : null;
                    },
                  ),
                  SizedBox(height: 36),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Your Email", prefixIcon: Icon(Icons.email)),
                    controller: ctrlEmail,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      return !EmailValidator.validate(value.toString())
                          ? 'Email is not valid!'
                          : null;
                    },
                  ),
                  SizedBox(height: 36),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        labelText: "Your Phone Number",
                        prefixIcon: Icon(Icons.phone_iphone)),
                    controller: ctrlPhone,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      return value.toString().isEmpty
                          ? 'Please Fill in the Blank'
                          : null;
                    },
                  ),
                  SizedBox(height: 36),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        labelText: "Your Hometown",
                        prefixIcon: Icon(Icons.location_city)),
                    controller: ctrlCity,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      return value.toString().isEmpty
                          ? 'Please Fill in the Blank'
                          : null;
                    },
                  ),
                  SizedBox(height: 36),
                  ElevatedButton.icon(
                    icon: Icon(Icons.save),
                    label: Text("Order Now"),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
                    onPressed: () {
                      if (ctrlName.text.toString() == "" ||
                          ctrlEmail.text.toString() == "" ||
                          ctrlPhone.text.toString() == "" ||
                          ctrlCity.text.toString() == "") {
                        showDialog(
                            context: context,
                            builder: ((((context) {
                              return AlertDialog(
                                title: Text("Error!"),
                                content: Text("Please fill in the blanks!"),
                              );
                            }))));
                      } else {
                        showDialog(
                            context: context,
                            builder: ((((context) {
                              return AlertDialog(
                                title: Text("Success!"),
                                content: Text(
                                    "Full Name: ${ctrlName.text}\nEmail: ${ctrlEmail.text}\nPhone: ${ctrlPhone.text}\nCity: ${ctrlCity.text}"),
                                actions: [
                                  ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushAndRemoveUntil<dynamic>(
                                            context,
                                            MaterialPageRoute<dynamic>(
                                                builder: (context) =>
                                                    Mission1()),
                                            (route) => false);
                                      },
                                      child: Text("OK"))
                                ],
                              );
                            }))));
                      }
                    },
                  ),
                ],
              )),
        ));
  }
}
