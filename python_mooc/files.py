#!/usr/bin/env python3
f = open(r'C:\temp\spam.txt', 'w', encoding= 'utf8')
for i in range(100):
    f.write(f"ligne {i+1}\n")
f.close()

f = open(r'C:\temp\spam.txt', 'r', encoding= 'utf8')
f2 = open(r'C:\temp\spam2.txt', 'w', encoding= 'utf8')
for line in f:
    line = line.split()
    line[0] = line[0].upper()
    f2.write(",".join(line) + "\n")
    
f2 = open(r'C:\temp\spam2.txt', 'r', encoding= 'utf8')
for j in f2:
    print(j)
    
f.close()
f2.close()

with open(r'C:\temp\spam.txt', 'r', encoding= 'utf8') as f:
    for line in f:
        print(line)

with open(r'C:\temp\spam.bin', 'bw') as f:
    for i in range(100):
        f.write(b'\x3d')
        
with open(r'C:\temp\spam.txt', 'br') as f:
    for line in f:
        print(line)