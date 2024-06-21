import sqlite3


def setup_database():
    # Connect to the SQLite database
    conn = sqlite3.connect('datatest.db')
    cursor = conn.cursor()

    # Execute the SQL commands from main.sql file
    with open('main.sql', 'r') as file:
        sql = file.read()
        cursor.executescript(sql)

    # Commit changes and close the connection
    conn.commit()
    conn.close()


# Main block to run the setup_database() function
if __name__ == "__main__":
    setup_database()
