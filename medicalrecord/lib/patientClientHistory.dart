import 'package:flutter/material.dart';
import 'soapDetailsPage.dart';

class PatientHistoryPage extends StatefulWidget {
  @override
  State<PatientHistoryPage> createState() => _PatientHistoryPageState();
}

class _PatientHistoryPageState extends State<PatientHistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient History and Client Complaints'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          'assets/images/goatBg2.png',
          fit: BoxFit.cover,
        ),
        Container(
          color: Colors.black.withOpacity(0.8),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Presenting Complaint Section
                  Text(
                    'Presenting Complaint',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  RoundedMultilineTextField(label: 'Complaints'),
                  SizedBox(height: 10.0),

                  // Other Issues Section
                  Text(
                    'Other Issues',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  RoundedMultilineTextField(label: 'Issue'),
                  SizedBox(height: 10.0),

                  // Feeding History Section
                  Text(
                    'Feeding History',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  RoundedDropdownField(
                    label: 'Select Feeding Type',
                    options: ['Commercial Food', 'Home Food', 'Farm Food'],
                  ),
                  SizedBox(height: 10.0),
                  RoundedTextField(label: 'Special Items'),
                  SizedBox(height: 10.0),

                  // Environment History Section
                  Text(
                    'Environment History',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  RoundedDropdownField(
                    label: 'Select Environment',
                    options: ['Indoor', 'Apartment', 'Outdoor', 'Stray'],
                  ),
                  SizedBox(height: 10.0),
                  RoundedTextField(label: 'Floor Cleaner'),
                  SizedBox(height: 10.0),
                  RoundedTextField(label: 'Bathing Frequency'),
                  SizedBox(height: 24.0),

                  // Next Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SoapDetailsPage()));
                          // Add your next button logic here
                        },
                        child: Text('Next'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class RoundedTextField extends StatelessWidget {
  final String label;

  const RoundedTextField({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        labelText: label,
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class RoundedMultilineTextField extends StatelessWidget {
  final String label;

  const RoundedMultilineTextField({required this.label});

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: null,
      keyboardType: TextInputType.multiline,
      style: TextStyle(color: Colors.black),
      decoration: InputDecoration(
        labelText: label,
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class RoundedDropdownField extends StatelessWidget {
  final String label;
  final List<String> options;

  const RoundedDropdownField({
    required this.label,
    required this.options,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      style: TextStyle(color: Colors.black),
      items: options.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      decoration: InputDecoration(
        labelText: label,
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onChanged: (String? value) {
        // Add your dropdown selection logic here
      },
    );
  }
}
