from pymongo import MongoClient
client = MongoClient('localhost:27017')
db = client.EmployeeData
def delete():
    try:
        criteria = input("\n Enter employee name to delete \n")
        db.Employee.delete_many({"name":criteria})
        print("\n Deletion successfully \n")
    except (Exception):
        print(str(e))

delete()
