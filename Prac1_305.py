from pymongo import MongoClient
client = MongoClient('localhost:27017')
db=client.EmployeeData
def insert():
    try:
        employees=[
            {"id": input('Enter Employee id:'),"name": input('Enter Name:'), "age": input('Enter age:'), "country": input('Enter Country:')},
            {"id": input('Enter Employee id:'),"name": input('Enter Name:'), "age": input('Enter age:'), "country": input('Enter Country:')},
             {"id": input('Enter Employee id:'),"name": input('Enter Name:'), "age": input('Enter age:'), "country": input('Enter Country:')}
                           ]; #array of documents
        x=db.Employee.insert_many(employees)
        print("\nInserted data successfully\n")
        print(x.inserted_ids)
    except Exception:
         print(str(e))

insert()
