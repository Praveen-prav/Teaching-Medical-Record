import 'package:flutter/material.dart';
import 'patientClientHistory.dart';
class PatientDataPage extends StatefulWidget {
  @override
  State<PatientDataPage> createState() => _PatientDataPageState();
}

class _PatientDataPageState extends State<PatientDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patient and Client Data'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/goatBg2.png'), // Replace with your image asset
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withOpacity(0.8),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Client Data Section
                  const Text(
                    'Client Data',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const RoundedTextField(label: 'Client Name'),
                  const SizedBox(height: 10.0),
                  const RoundedTextField(label: 'Client Email'),
                  const SizedBox(height: 10.0),
                  const RoundedTextField(label: 'Mobile Phone no'),
                  const SizedBox(height: 10.0),
                  const RoundedTextField(label: 'Resident Phone no'),
                  const SizedBox(height: 10.0),
                  const RoundedTextField(label: 'Case No'),
                  const SizedBox(height: 10.0),
                  const RoundedTextField(label: 'Client Address'),
                  const SizedBox(height: 10.0),
                  const RoundedTextField(label: 'Client Occupation'),
                  const SizedBox(height: 24.0),

                  // Signalment Data Section
                  const Text(
                    'Signalment Data',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const RoundedTextField(label: "Pet's Name"),
                  const SizedBox(height: 10.0),
                  const RoundedDropdownField(
                    label: 'Select Species',
                    options: [
                      'Canine',
                      'Feline',
                      'Bovine',
                      'Bubaline',
                      'Ovine',
                      'Caprine',
                      'Equine',
                      'Avian',
                      'Lapine',
                      'Others',
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  const RoundedTextField(label: 'Breed'),
                  const SizedBox(height: 10.0),
                  const Row(
                    children: [
                      Expanded(
                        child: RoundedTextField(label: 'Age (Months)'),
                      ),
                      SizedBox(width: 16.0),
                      Expanded(
                        child: RoundedTextField(label: 'Age (Years)'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  const RoundedDropdownField(
                    label: 'Select Sex',
                    options: ['Male', 'Female', 'Entire', 'Neutered'],
                  ),
                  const SizedBox(height: 10.0),
                  const RoundedTextField(label: 'Body Weight'),
                  const SizedBox(height: 24.0),

                  // Clinical Unit Section
                  const Text(
                    'Clinical Unit',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const RoundedDropdownField(
                    label: 'Select Clinical Unit',
                    options: [
                      'SAC/LAC',
                      'Referal',
                      'Medicine',
                      'Surgery',
                      'Ob & Gyn',
                      'Dermatology',
                      'Vaccine Clinic',
                      'Ambulatory',
                    ],
                  ),
                  const SizedBox(height: 24.0),

                  // Next Button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Add your next button logic here
                          Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PatientHistoryPage()));
                        },
                        child: const Text('Next'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
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
      style: TextStyle(color: Colors.white),
      items: options.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyle(color: Colors.black),
          ),
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
