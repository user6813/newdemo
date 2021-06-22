from pymongo import MongoClient
client = MongoClient('localhost:27017')
db = client.EmployeeData
def update():
    try:
        name = input("\n Enter name to update \n")
        age = input("\n Enter age to update \n")
        country = input("\n Enter country to update \n")
        db.Employee.update_one(
            {"name": name},
            {"$set":{"age":age,
             "country":country
            }
            }
            )
        print("\n Records update sucessfully \n")
    except Exception:
        print(str(e))
update()
