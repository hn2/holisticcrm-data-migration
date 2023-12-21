import os
import csv
import json

def process_csv_files(folder_path, output_json_file):
    # Check if the folder exists
    if not os.path.exists(folder_path):
        print(f"The folder '{folder_path}' does not exist.")
        return

    # Create an empty dictionary to store header rows
    header_dict = {}

    # Iterate over each file in the folder
    for filename in os.listdir(folder_path):
        if filename.endswith(".csv"):
            csv_file_path = os.path.join(folder_path, filename)

            # Read the header row from the CSV file
            with open(csv_file_path, 'r', newline='') as csv_file:
                csv_reader = csv.reader(csv_file)
                header_row = next(csv_reader, None)

            if header_row:
                # Add the header row to the dictionary with filename as key
                header_dict[filename] = header_row

    # Save the dictionary as a single JSON file
    with open(output_json_file, 'w') as json_file:
        json.dump(header_dict, json_file, indent=2)

    print(f"Header rows saved to '{output_json_file}'.")

if __name__ == "__main__":
    folder_path = "/path/to/your/csv/files"
    output_json_file = "/path/to/your/output/headers.json"
    process_csv_files(folder_path, output_json_file)
