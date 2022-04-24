#!/bin/bash

##currentpwd= current directory path
currentpwd=$PWD

#pathdata reçoit le path du répertoire contenant les fichiers fastq de données RNAseq
# on a un répertoire par échantillon qui contient fastq1 et fastq2
pathdata=/mnt/data/CONECT-bgi/RNA-Seq/F20FTSEUHT1348_HUMlrdE/CleanData

#on affecte à md5file le path du fichier md5 (cleandata.md5)
#ce fichier contient tous les md5 des fastq
md5file=/mnt/data/CONECT-bgi/RNA-Seq/F20FTSEUHT1348_HUMlrdE/CleanData.md5


#affecter à metadatafile le fichier RNASEQmetadata.tsv 
# output file
metadatafile=$currentpwd/RNASEQmetadata.tsv

#se placer dans le répertoire contenant les fichiers de données RNAseq
cd $pathdata


#écrit dans le fichier metadatafile les colonnes d'intérêt: 
#patientid ,sampeid, filepath, md5 ,sequencingbatch
#\t sert à la tabulation
echo -e "PatientID\tSampleID\tFilePath\tFileSize\tmd5\tSequencingBatch" > $metadatafile

#parcourir tous les échantillons de données dans le répertoire actuel( pathdata)
for sample in *
do
#imprime tout les noms d'échantillon dans le répertoire actuel
  echo "sample: $sample"
#enlever "_DG_MO" des noms des échantillons dans le répertoire actuel
  pid=${sample/_DG_MO_RNA}
  echo $pid
#parcourir les fastq read1 et read2 de chaque échantillon de données RNAseq 
  for fastq in `ls $sample`
  do
  #pour chaque dossier on a 2 reads , pour chaque read(fichier): md5, sizefile, pathfile
  	md5=`grep $fastq $md5file | cut -f1 -d' '`
  	sizefile=`ls -lh $sample/$fastq |cut -f5 -d' '`
    echo $sizefile $fastq
  
  	pathfile=$pathdata/$sample/$fastq

  	echo $md5
   	echo -e "$pid\t$sample\t$pathfile\t$sizefile\t$md5\t2" >> $metadatafile
  done
done

cd $currentpwd