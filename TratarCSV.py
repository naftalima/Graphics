import csv
 
"""
         #type(reader) == _csv.reader
    for row in reader:
        # type(row) == list  # linha
        for column in row: 
            # type(column) == str # coluna
"""

with open('arquivo.csv', 'rb') as inp, open('arquivoEdit.csv', 'wb') as out:
    writer = csv.writer(out)

    contador=0
    for row in csv.reader(inp):
        if contador >= 3 and contador < 10000 : 
            # do 4 ate o 10000
            writer.writerow(row)
        contador+=1

with open('arquivoEdit.csv', 'rb') as csvfile, open('arquivoFinal.csv', 'wb') as final:
    reader = csv.reader(csvfile,  delimiter=',', quotechar='|')
    writere = csv.writer(final)
    
    lista = []
    contador = 0 
    for row in reader: 
        for column in row:
            if "[" in column:

                # " [%]"
                if " [%]" in column:
                    column = column.replace(" [%]","")

                    # (Normalized) [%]
                    if "(Normalized)" in column:
                        column = column.replace("(Normalized)","Normalized")

                # " [ms]" || Time*
                if " [ms]" in column:
                    column = column.replace(" [ms]","")
                    column = column + str(contador)
                    contador+=1

                # " [kHz]"
                if " [kHz]" in column:
                    column = column.replace(" [kHz]","")

                # " [KB]"
                if " [KB]" in column:
                    column = column.replace(" [KB]","")


                # "* [uW]"
                if "* [uW]" in column:
                    column = column.replace("* [uW]","")

            column = column.replace(" ","") 
            lista.append(column)

        break # Percorre apenas a primeira linha
    
    writere.writerow(lista)
    contador=0
    for row in reader:
        if contador >=1 :
            writere.writerow(row)
        contador+=1
    
#print(lista)

