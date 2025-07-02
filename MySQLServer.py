import mysql.connector

def create_database():
    try:
        mydb = mysql.connector.connect(
            host = "localhost",
            user = "ibrahim",
            password = "ebrahim88888",
            database = "alx_book_store"
        )
        
        # if mydb.is_connected():
        mycursor = mydb.cursor()
        mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store ")
        print(" Database 'alx_book_store' created successfully!")
            
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        
    finally:
        # if mydb.is_connected:
        mycursor.close()
        mydb.close()
        print("MySQL connection closed")
            
if __name__ == "__main__":
    create_database()