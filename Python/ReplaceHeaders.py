import os
import csv
import json

def update_csv_headers(folder_path, json_file_path):
    # Check if the folder and JSON file exist
    if not os.path.exists(folder_path):
        print(f"The folder '{folder_path}' does not exist.")
        return
    if not os.path.exists(json_file_path):
        print(f"The JSON file '{json_file_path}' does not exist.")
        return

    # Read the JSON file containing headers
    with open(json_file_path, 'r', encoding='utf-8') as json_file:
        header_dict = json.load(json_file)

    # Iterate over each file in the folder
    for filename, new_header in header_dict.items():
        if filename.endswith(".csv"):
            csv_file_path = os.path.join(folder_path, filename)

            # Read the existing CSV data
            with open(csv_file_path, 'r', newline='', encoding='utf-8') as csv_file:
                csv_reader = csv.reader(csv_file)
                data_rows = list(csv_reader)

            # Replace the header with the new header
            if data_rows:
                data_rows[0] = new_header

                # Write the updated data back to the CSV file
                with open(csv_file_path, 'w', newline='', encoding='utf-8') as csv_file:
                    csv_writer = csv.writer(csv_file)
                    csv_writer.writerows(data_rows)

                print(f"Header of '{filename}' updated.")

if __name__ == "__main__":
    folder_path = "C:/Users/Zvi/Repos/holisticcrm-data-migration/Source"
    json_file_path = "C:/Users/Zvi/Repos/holisticcrm-data-migration/Source/headers.json"
    update_csv_headers(folder_path, json_file_path)
