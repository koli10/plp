# File Creation
try:
    with open("my_file.txt", "w") as file:
        file.write("This is line 1\n")
        file.write("2nd line with some numbers: 12345\n")
        file.write("Line 3: End of file creation.\n")
except PermissionError:
    print("Permission denied to create the file.")
except Exception as e:
    print("An error occurred:", e)
finally:
    print("File creation process completed.")

# File Reading and Display
try:
    with open("my_file.txt", "r") as file:
        print("Contents of my_file.txt:")
        print(file.read())
except FileNotFoundError:
    print("File not found.")
except PermissionError:
    print("Permission denied to read the file.")
except Exception as e:
    print("An error occurred:", e)

# File Appending
try:
    with open("my_file.txt", "a") as file:
        file.write("\nAppending line 1\n")
        file.write("Appending line 2\n")
        file.write("Appending line 3\n")
except PermissionError:
    print("Permission denied to append to the file.")
except Exception as e:
    print("An error occurred:", e)
finally:
    print("File appending process completed.")
