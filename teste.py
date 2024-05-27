import mysql.connector
from mysql.connector import Error
import pandas as pd


def insert_video_game_sales(data):
    try:
        # Establish the connection
        connection = mysql.connector.connect(
            host="localhost",
            user="root",
            password="root",
            database="database_python",
            port=3306,
        )

        if connection.is_connected():
            cursor = connection.cursor()
            insert_query = """
            INSERT INTO video_game_sales (
                Name,
                Platform,
                Year_of_Release,
                Genre,
                Publisher,
                NA_Sales,
                EU_Sales,
                JP_Sales,
                Other_Sales,
                Global_Sales,
                Critic_Score,
                Critic_Count,
                User_Score,
                User_Count,
                Developer,
                Rating
            ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
            """

            cursor.executemany(insert_query, data)
            connection.commit()
            print(
                f"{cursor.rowcount} records inserted successfully into video_game_sales table"
            )

    except Error as e:
        print(f"Error: {e}")
    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed")


def read_csv_and_insert(filename):
    # Read the CSV file using pandas
    df = pd.read_csv(filename)
    df = df.fillna({
        'Name': '',
        'Platform': '',
        'Year_of_Release': 0,
        'Genre': '',
        'Publisher': '',
        'NA_Sales': 0.0,
        'EU_Sales': 0.0,
        'JP_Sales': 0.0,
        'Other_Sales': 0.0,
        'Global_Sales': 0.0,
        'Critic_Score': 0,
        'Critic_Count': 0,
        'User_Score': 0.0,
        'User_Count': 0,
        'Developer': '',
        'Rating': ''
    })
    # Convert the DataFrame to a list of tuples
    data = [tuple(row) for row in df.itertuples(index=False, name=None)]

    insert_video_game_sales(data)


# Specify the path to your CSV file
csv_file_path = r"C:\Users\Willian Murayama\Downloads\archive\Video_Games_Sales_as_at_22_Dec_2016.csv"

# Read the CSV file and insert data into the database
read_csv_and_insert(csv_file_path)
