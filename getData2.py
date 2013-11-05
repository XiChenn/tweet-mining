import csv
csvfile=file('train_processed.csv','rb');
reader=csv.reader(csvfile);
text_file = open("train_processed.txt", "w");
for line in reader:
    text_file.write(line[1]+"\n");
    #remember int(0.8)=0
    if float(line[25])>=0.5:
       text_file.write("1\n");
    else:
       text_file.write("0\n");
csvfile.close();
text_file.close();

