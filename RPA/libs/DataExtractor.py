import openpyxl


class DataExtractor:


    def from_file_to_list(arg):
        wb = openpyxl.load_workbook('data/challenge.xlsx')
        sheet = wb.active

        list_of_persons = []

        for i, row in enumerate(sheet.values):
            if i == 0:
                key_list = list(row)[:-1]
                key_list[1] = "Last Name"
                continue
            
            if row[0] == None:
                break
            
            personal_info = {}
            for j, value in enumerate(row):
                if value == None:
                    break
                personal_info[key_list[j]] = value
            list_of_persons.append(personal_info)

        return  list_of_persons
        
