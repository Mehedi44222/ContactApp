 const String tblContact = 'tbl_contact';
const String tblContactColId = 'id';
const String tblContactColName = 'name';
const String tblContactColNumber = 'number';
const String tblContactColEmail = 'email';
const String tblContactColCompany = 'company';
const String tblContactColAddress = 'address';
const String tblContactColDesignaton = 'designaton';
const String tblContactColWebsite = 'website';
const String tblContactColFavorite = 'favorite';



class ContactModel {
  int id;
  String name;
  String number;
  String email;
  String company;
  String address;
  String designation;
  String website;
  bool favorite;

  ContactModel({
    this.id = -1,
    this.name = '',
    this.number = '',
    this.email = '',
    this.company = '',
    this.address = '',
    this.designation = '',
    this.website = '',
    this.favorite = false
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{

      tblContactColName: name,
      tblContactColNumber: number,
      tblContactColEmail: email,
      tblContactColCompany: company,
      tblContactColAddress: address,
      tblContactColDesignaton: designation,
      tblContactColWebsite: website,
      tblContactColFavorite: favorite ? 1 : 0,


    };
    if (id > 0) {
      map[tblContactColId] = id;
    }
    return map;
  }
   factory ContactModel.fromMap( Map<String,
       dynamic> map) => ContactModel(
     id: map[tblContactColId],
     name: map[tblContactColName],
     number: map[tblContactColNumber],
     email: map[tblContactColEmail],
     company: map[tblContactColCompany],
     address: map[tblContactColAddress],
     designation: map[tblContactColDesignaton],
     website: map[tblContactColWebsite],
     favorite: map[tblContactColFavorite] == 1? true: false,
   );

  @override
  String toString() {
    //sob gula object ek shate print korar jonno
    return 'ContactModel{name: $name, number:$number, '
        'email:$email, company:$company, '
        'address:$address, designation:$designation, website:$website}';
  }
}