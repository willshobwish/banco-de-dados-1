import subprocess

def create_database_dump(user, password, host, database, dump_file):
    try:
        # Full path to mysqldump executable
        mysqldump_path = r'C:\Program Files\MySQL\MySQL Server 8.0\bin\mysqldump.exe'

        # Construct the mysqldump command
        dump_command = [
            mysqldump_path,
            '-u', user,
            f'-p{password}',
            '-h', host,
            database
        ]

        # Open the output file
        with open(dump_file, 'w') as file:
            # Run the mysqldump command and redirect the output to the file
            result = subprocess.run(dump_command, stdout=file, stderr=subprocess.PIPE)

        if result.returncode == 0:
            print(f"Database dump saved to {dump_file}")
        else:
            print(f"Error occurred: {result.stderr.decode()}")

    except Exception as e:
        print(f"Exception occurred: {e}")

# Specify your database connection details and the output dump file
db_user = 'root'
db_password = 'root'
db_host = 'localhost'
db_name = 'database_python'
output_file = 'database_python_dump.sql'

# Create the database dump
create_database_dump(db_user, db_password, db_host, db_name, output_file)
