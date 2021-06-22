from pymongo import MongoClient
client = MongoClient('localhost:27017')
db = client.EmployeeData
def read():
    try:
        empcol=db.Employee.find()
        print("\n All data from EmployeeData Database \n")

        for emp in empcol:
            print(emp)

    except Exception:
        print(str(e))

read()
