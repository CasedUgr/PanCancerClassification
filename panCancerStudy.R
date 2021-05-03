require(KnowSeq)
require(CORElearn)
source("uncompressGDCData.R")

# # GDC DATA DECOMPRESSING
breastInfo <- uncompressGDCData("BreastCancer")
lungInfo <- uncompressGDCData("LungCancer")
colonInfo <- uncompressGDCData("ColonCancer")
esophagusInfo <- uncompressGDCData("EsophagusCancer")
kidneyInfo <- uncompressGDCData("KidneyCancer")
liverInfo <- uncompressGDCData("LiverCancer")
prostateInfo <- uncompressGDCData("ProstateCancer")
stomachInfo <- uncompressGDCData("StomachCancer")
thyroidInfo <- uncompressGDCData("ThyroidCancer")
bladderInfo <- uncompressGDCData("BladderCancer")
corpusInfo <- uncompressGDCData("CorpusUteriCancer")
headneckInfo <- uncompressGDCData("HeadNeckCancer")
larynxInfo <- uncompressGDCData("LarynxCancer")
brainInfo <- uncompressGDCData("BrainCancer")


# DIFFERENT 15 COUNT DATASETS CREATION
breastInfo <- breastInfo[-which(breastInfo$Sample.Type == "Metastatic"),]
breastInfo$Sample.Type <- factor(breastInfo$Sample.Type)
breastDataset <- data.frame(Run = breastInfo$File.Name, Path = paste("BreastCancer/CountFiles/",breastInfo$File.ID,sep = ""), Class = breastInfo$Sample.Type)
write.csv(breastDataset, file = "BreastCancer/breastDataset.csv")
breastDataset <- countsToMatrix("BreastCancer/breastDataset.csv")


lungInfo <- lungInfo[-which(lungInfo$Sample.Type == "Recurrent Tumor"),]
lungInfo$Sample.Type <- factor(lungInfo$Sample.Type)
lungDataset <- data.frame(Run = lungInfo$File.Name, Path = paste("LungCancer/CountFiles/",lungInfo$File.ID,sep = ""), Class = lungInfo$Sample.Type)
write.csv(lungDataset, file = "LungCancer/lungDataset.csv")
lungDataset <- countsToMatrix("LungCancer/lungDataset.csv")


colonInfo <- colonInfo[-which(colonInfo$Sample.Type == "Metastatic"),]
colonInfo <- colonInfo[-which(colonInfo$Sample.Type == "Recurrent Tumor"),]
colonInfo$Sample.Type <- factor(colonInfo$Sample.Type)
colonDataset <- data.frame(Run = colonInfo$File.Name, Path = paste("ColonCancer/CountFiles/",colonInfo$File.ID,sep = ""), Class = colonInfo$Sample.Type)
write.csv(colonDataset, file = "ColonCancer/colonDataset.csv")
colonDataset <- countsToMatrix("ColonCancer/colonDataset.csv")


esophagusInfo <- esophagusInfo[-which(esophagusInfo$Sample.Type == "Metastatic"),]
esophagusInfo$Sample.Type <- factor(esophagusInfo$Sample.Type)
esophagusDataset <- data.frame(Run = esophagusInfo$File.Name, Path = paste("EsophagusCancer/CountFiles/",esophagusInfo$File.ID,sep = ""), Class = esophagusInfo$Sample.Type)
write.csv(esophagusDataset, file = "EsophagusCancer/esophagusDataset.csv")
esophagusDataset <- countsToMatrix("EsophagusCancer/esophagusDataset.csv")


kidneyInfo <- kidneyInfo[-which(kidneyInfo$Sample.Type == "Additional - New Primary"),]
kidneyInfo$Sample.Type <- factor(kidneyInfo$Sample.Type)
kidneyDataset <- data.frame(Run = kidneyInfo$File.Name, Path = paste("KidneyCancer/CountFiles/",kidneyInfo$File.ID,sep = ""), Class = kidneyInfo$Sample.Type)
write.csv(kidneyDataset, file = "KidneyCancer/kidneyDataset.csv")
kidneyDataset <- countsToMatrix("KidneyCancer/kidneyDataset.csv")


liverInfo <- liverInfo[-which(liverInfo$Sample.Type == "Recurrent Tumor"),]
liverInfo$Sample.Type <- factor(liverInfo$Sample.Type)
liverDataset <- data.frame(Run = liverInfo$File.Name, Path = paste("LiverCancer/CountFiles/",liverInfo$File.ID,sep = ""), Class = liverInfo$Sample.Type)
write.csv(liverDataset, file = "LiverCancer/liverDataset.csv")
liverDataset <- countsToMatrix("LiverCancer/liverDataset.csv")


prostateInfo <- prostateInfo[-which(prostateInfo$Sample.Type == "Metastatic"),]
prostateInfo$Sample.Type <- factor(prostateInfo$Sample.Type)
prostateDataset <- data.frame(Run = prostateInfo$File.Name, Path = paste("ProstateCancer/CountFiles/",prostateInfo$File.ID,sep = ""), Class = prostateInfo$Sample.Type)
write.csv(prostateDataset, file = "ProstateCancer/prostateDataset.csv")
prostateDataset <- countsToMatrix("ProstateCancer/prostateDataset.csv")


stomachDataset <- data.frame(Run = stomachInfo$File.Name, Path = paste("StomachCancer/CountFiles/",stomachInfo$File.ID,sep = ""), Class = stomachInfo$Sample.Type)
write.csv(stomachDataset, file = "StomachCancer/stomachDataset.csv")
stomachDataset <- countsToMatrix("StomachCancer/stomachDataset.csv")


thyroidInfo <- thyroidInfo[-which(thyroidInfo$Sample.Type == "Metastatic"),]
thyroidInfo$Sample.Type <- factor(thyroidInfo$Sample.Type)
thyroidDataset <- data.frame(Run = thyroidInfo$File.Name, Path = paste("ThyroidCancer/CountFiles/",thyroidInfo$File.ID,sep = ""), Class = thyroidInfo$Sample.Type)
write.csv(thyroidDataset, file = "ThyroidCancer/thyroidDataset.csv")
thyroidDataset <- countsToMatrix("ThyroidCancer/thyroidDataset.csv")


bladderDataset <- data.frame(Run = bladderInfo$File.Name, Path = paste("BladderCancer/CountFiles/",bladderInfo$File.ID,sep = ""), Class = bladderInfo$Sample.Type)
write.csv(bladderDataset, file = "BladderCancer/bladderDataset.csv")
bladderDataset <- countsToMatrix("BladderCancer/bladderDataset.csv")


corpusInfo <- corpusInfo[-which(corpusInfo$Sample.Type == "Recurrent Tumor"),]
corpusInfo$Sample.Type <- factor(corpusInfo$Sample.Type)
corpusDataset <- data.frame(Run = corpusInfo$File.Name, Path = paste("CorpusUteriCancer/CountFiles/",corpusInfo$File.ID,sep = ""), Class = corpusInfo$Sample.Type)
write.csv(corpusDataset, file = "CorpusUteriCancer/corpusDataset.csv")
corpusDataset <- countsToMatrix("CorpusUteriCancer/corpusDataset.csv")


headneckDataset <- data.frame(Run = headneckInfo$File.Name, Path = paste("HeadNeckCancer/CountFiles/",headneckInfo$File.ID,sep = ""), Class = headneckInfo$Sample.Type)
write.csv(headneckDataset, file = "HeadNeckCancer/headneckDataset.csv")
headneckDataset <- countsToMatrix("HeadNeckCancer/headneckDataset.csv")


larynxDataset <- data.frame(Run = larynxInfo$File.Name, Path = paste("LarynxCancer/CountFiles/",larynxInfo$File.ID,sep = ""), Class = larynxInfo$Sample.Type)
write.csv(larynxDataset, file = "LarynxCancer/larynxDataset.csv")
larynxDataset <- countsToMatrix("LarynxCancer/larynxDataset.csv")


brainInfo <- brainInfo[-which(brainInfo$Sample.Type == "Recurrent Tumor"),]
brainInfo$Sample.Type <- factor(brainInfo$Sample.Type)
brainDataset <- data.frame(Run = brainInfo$File.Name, Path = paste("BrainCancer/CountFiles/",brainInfo$File.ID,sep = ""), Class = brainInfo$Sample.Type)
write.csv(brainDataset, file = "BrainCancer/brainDataset.csv")
brainDataset <- countsToMatrix("BrainCancer/brainDataset.csv")



# GENE EXPRESSION DATASETS CONVERSION
breastAnnotation <- getGenesAnnotation(rownames(breastDataset$countsMatrix))
breastExpression <- calculateGeneExpressionValues(breastDataset$countsMatrix, breastAnnotation)
breastLabels <- breastDataset$labels

breastQA <- RNAseqQA(breastExpression, toRemoval = TRUE, toPNG = F, toPDF = F)
breastQAMatrix <- breastQA$matrix
breastOutIndex <- match(breastQA$outliers, colnames(breastExpression))
breastQALabels <- breastLabels[-breastOutIndex]

breastIndex <- cvGenStratified(breastQALabels, k = 5)
breastTraining <- breastQAMatrix[,-which(breastIndex == 5)]
breastTrainingLabels <- breastQALabels[-which(breastIndex == 5)]
breastTest <- breastQAMatrix[,which(breastIndex == 5)]
breastTestLabels <- breastQALabels[which(breastIndex == 5)]




lungAnnotation <- getGenesAnnotation(rownames(lungDataset$countsMatrix))
lungExpression <- calculateGeneExpressionValues(lungDataset$countsMatrix, lungAnnotation)
lungLabels <- lungDataset$labels

lungQA <- RNAseqQA(lungExpression, toRemoval = TRUE, toPNG = F, toPDF = F)
lungQAMatrix <- lungQA$matrix
lungOutIndex <- match(lungQA$outliers, colnames(lungExpression))
lungQALabels <- lungLabels[-lungOutIndex]


lungIndex <- cvGenStratified(lungQALabels, k = 5)
lungTraining <- lungQAMatrix[,-which(lungIndex == 5)]
lungTrainingLabels <- lungQALabels[-which(lungIndex == 5)]
lungTest <- lungQAMatrix[,which(lungIndex == 5)]
lungTestLabels <- lungQALabels[which(lungIndex == 5)]





colonAnnotation <- getGenesAnnotation(rownames(colonDataset$countsMatrix))
colonExpression <- calculateGeneExpressionValues(colonDataset$countsMatrix, colonAnnotation)
colonLabels <- colonDataset$labels

colonQA <- RNAseqQA(colonExpression, toRemoval = TRUE, toPNG = F, toPDF = F)
colonQAMatrix <- colonQA$matrix
colonOutIndex <- match(colonQA$outliers, colnames(colonExpression))
colonQALabels <- colonLabels[-colonOutIndex]


colonIndex <- cvGenStratified(colonQALabels, k = 5)
colonTraining <- colonQAMatrix[,-which(colonIndex == 5)]
colonTrainingLabels <- colonQALabels[-which(colonIndex == 5)]
colonTest <- colonQAMatrix[,which(colonIndex == 5)]
colonTestLabels <- colonQALabels[which(colonIndex == 5)]








esophagusAnnotation <- getGenesAnnotation(rownames(esophagusDataset$countsMatrix))
esophagusExpression <- calculateGeneExpressionValues(esophagusDataset$countsMatrix, esophagusAnnotation)
esophagusLabels <- esophagusDataset$labels

esophagusQA <- RNAseqQA(esophagusExpression, toRemoval = TRUE, toPNG = F, toPDF = F)
esophagusQAMatrix <- esophagusQA$matrix
esophagusOutIndex <- match(esophagusQA$outliers, colnames(esophagusExpression))
esophagusQALabels <- esophagusLabels


esophagusIndex <- cvGenStratified(esophagusQALabels, k = 5)
esophagusTraining <- esophagusQAMatrix[,-which(esophagusIndex == 5)]
esophagusTrainingLabels <- esophagusQALabels[-which(esophagusIndex == 5)]
esophagusTest <- esophagusQAMatrix[,which(esophagusIndex == 5)]
esophagusTestLabels <- esophagusQALabels[which(esophagusIndex == 5)]







kidneyAnnotation <- getGenesAnnotation(rownames(kidneyDataset$countsMatrix))
kidneyExpression <- calculateGeneExpressionValues(kidneyDataset$countsMatrix, kidneyAnnotation)
kidneyLabels <- kidneyDataset$labels

kidneyQA <- RNAseqQA(kidneyExpression, toRemoval = TRUE, toPNG = F, toPDF = F)
kidneyQAMatrix <- kidneyQA$matrix
kidneyOutIndex <- match(kidneyQA$outliers, colnames(kidneyExpression))
kidneyQALabels <- kidneyLabels[-kidneyOutIndex]

kidneyIndex <- cvGenStratified(kidneyQALabels, k = 5)
kidneyTraining <- kidneyQAMatrix[,-which(kidneyIndex == 5)]
kidneyTrainingLabels <- kidneyQALabels[-which(kidneyIndex == 5)]
kidneyTest <- kidneyQAMatrix[,which(kidneyIndex == 5)]
kidneyTestLabels <- kidneyQALabels[which(kidneyIndex == 5)]








liverAnnotation <- getGenesAnnotation(rownames(liverDataset$countsMatrix))
liverExpression <- calculateGeneExpressionValues(liverDataset$countsMatrix, liverAnnotation)
liverLabels <- liverDataset$labels

liverQA <- RNAseqQA(liverExpression, toRemoval = TRUE, toPNG = F, toPDF = F)
liverQAMatrix <- liverQA$matrix
liverOutIndex <- match(liverQA$outliers, colnames(liverExpression))
liverQALabels <- liverLabels[-liverOutIndex]


liverIndex <- cvGenStratified(liverQALabels, k = 5)
liverTraining <- liverQAMatrix[,-which(liverIndex == 5)]
liverTrainingLabels <- liverQALabels[-which(liverIndex == 5)]
liverTest <- liverQAMatrix[,which(liverIndex == 5)]
liverTestLabels <- liverQALabels[which(liverIndex == 5)]







prostateAnnotation <- getGenesAnnotation(rownames(prostateDataset$countsMatrix))
prostateExpression <- calculateGeneExpressionValues(prostateDataset$countsMatrix, prostateAnnotation)
prostateLabels <- prostateDataset$labels

prostateQA <- RNAseqQA(prostateExpression, toRemoval = TRUE, toPNG = F, toPDF = F)
prostateQAMatrix <- prostateQA$matrix
prostateOutIndex <- match(prostateQA$outliers, colnames(prostateExpression))
prostateQALabels <- prostateLabels[-prostateOutIndex]

prostateIndex <- cvGenStratified(prostateQALabels, k = 5)
prostateTraining <-  prostateQAMatrix[,-which(prostateIndex == 5)]
prostateTrainingLabels <- prostateQALabels[-which(prostateIndex == 5)]
prostateTest <- prostateQAMatrix[,which(prostateIndex == 5)]
prostateTestLabels <- prostateQALabels[which(prostateIndex == 5)]





stomachAnnotation <- getGenesAnnotation(rownames(stomachDataset$countsMatrix))
stomachExpression <- calculateGeneExpressionValues(stomachDataset$countsMatrix, stomachAnnotation)
stomachLabels <- stomachDataset$labels

stomachQA <- RNAseqQA(stomachExpression, toRemoval = TRUE, toPNG = F, toPDF = F)
stomachQAMatrix <- stomachQA$matrix
stomachOutIndex <- match(stomachQA$outliers, colnames(stomachExpression))
stomachQALabels <- stomachLabels[-stomachOutIndex]


stomachIndex <- cvGenStratified(stomachQALabels, k = 5)
stomachTraining <- stomachQAMatrix[,-which(stomachIndex == 5)]
stomachTrainingLabels <- stomachQALabels[-which(stomachIndex == 5)]
stomachTest <- stomachQAMatrix[,which(stomachIndex == 5)]
stomachTestLabels <- stomachQALabels[which(stomachIndex == 5)]







thyroidAnnotation <- getGenesAnnotation(rownames(thyroidDataset$countsMatrix))
thyroidExpression <- calculateGeneExpressionValues(thyroidDataset$countsMatrix, thyroidAnnotation)
thyroidLabels <- thyroidDataset$labels

thyroidQA <- RNAseqQA(thyroidExpression, toRemoval = TRUE, toPNG = F, toPDF = F)
thyroidQAMatrix <- thyroidQA$matrix
thyroidOutIndex <- match(thyroidQA$outliers, colnames(thyroidExpression))
thyroidQALabels <- thyroidLabels[-thyroidOutIndex]


thyroidIndex <- cvGenStratified(thyroidQALabels, k = 5)
thyroidTraining <- thyroidQAMatrix[,-which(thyroidIndex == 5)]
thyroidTrainingLabels <- thyroidQALabels[-which(thyroidIndex == 5)]
thyroidTest <- thyroidQAMatrix[,which(thyroidIndex == 5)]
thyroidTestLabels <- thyroidQALabels[which(thyroidIndex == 5)]






bladderAnnotation <- getGenesAnnotation(rownames(bladderDataset$countsMatrix))
bladderExpression <- calculateGeneExpressionValues(bladderDataset$countsMatrix, bladderAnnotation)
bladderLabels <- bladderDataset$labels

bladderQAMatrix <- bladderExpression
bladderQALabels <- bladderLabels


bladderIndex <- cvGenStratified(bladderQALabels, k = 5)
bladderTraining <- bladderQAMatrix[,-which(bladderIndex == 5)]
bladderTrainingLabels <- bladderQALabels[-which(bladderIndex == 5)]
bladderTest <- bladderQAMatrix[,which(bladderIndex == 5)]
bladderTestLabels <- bladderQALabels[which(bladderIndex == 5)]







corpusAnnotation <- getGenesAnnotation(rownames(corpusDataset$countsMatrix))
corpusExpression <- calculateGeneExpressionValues(corpusDataset$countsMatrix, corpusAnnotation)
corpusLabels <- corpusDataset$labels

corpusQA <- RNAseqQA(corpusExpression, toRemoval = TRUE, toPNG = F, toPDF = F)
corpusQAMatrix <- corpusQA$matrix
corpusOutIndex <- match(corpusQA$outliers, colnames(corpusExpression))
corpusQALabels <- corpusLabels[-corpusOutIndex]


corpusIndex <- cvGenStratified(corpusQALabels, k = 5)
corpusTraining <- corpusQAMatrix[,-which(corpusIndex == 5)]
corpusTrainingLabels <- corpusQALabels[-which(corpusIndex == 5)]
corpusTest <- corpusQAMatrix[,which(corpusIndex == 5)]
corpusTestLabels <- corpusQALabels[which(corpusIndex == 5)]







headneckAnnotation <- getGenesAnnotation(rownames(headneckDataset$countsMatrix))
headneckExpression <- calculateGeneExpressionValues(headneckDataset$countsMatrix, headneckAnnotation)
headneckLabels <- headneckDataset$labels

headneckQA <- RNAseqQA(headneckExpression, toRemoval = TRUE, toPNG = F, toPDF = F)
headneckQAMatrix <- headneckQA$matrix
headneckOutIndex <- match(headneckQA$outliers, colnames(headneckExpression))
headneckQALabels <- headneckLabels[-headneckOutIndex]


headneckIndex <- cvGenStratified(headneckQALabels, k = 5)
headneckTraining <- headneckQAMatrix[,-which(headneckIndex == 5)]
headneckTrainingLabels <- headneckQALabels[-which(headneckIndex == 5)]
headneckTest <- headneckQAMatrix[,which(headneckIndex == 5)]
headneckTestLabels <- headneckQALabels[which(headneckIndex == 5)]






larynxAnnotation <- getGenesAnnotation(rownames(larynxDataset$countsMatrix))
larynxExpression <- calculateGeneExpressionValues(larynxDataset$countsMatrix, larynxAnnotation)
larynxLabels <- larynxDataset$labels

larynxQA <- RNAseqQA(larynxExpression, toRemoval = TRUE, toPNG = F, toPDF = F)
larynxQAMatrix <- larynxQA$matrix
larynxOutIndex <- match(larynxQA$outliers, colnames(larynxExpression))
larynxQALabels <- larynxLabels[-larynxOutIndex]


larynxIndex <- cvGenStratified(larynxQALabels, k = 5)
larynxTraining <- larynxQAMatrix[,-which(larynxIndex == 5)]
larynxTrainingLabels <- larynxQALabels[-which(larynxIndex == 5)]
larynxTest <- larynxQAMatrix[,which(larynxIndex == 5)]
larynxTestLabels <- larynxQALabels[which(larynxIndex == 5)]







brainAnnotation <- getGenesAnnotation(rownames(brainDataset$countsMatrix))
brainExpression <- calculateGeneExpressionValues(brainDataset$countsMatrix, brainAnnotation)
brainLabels <- brainDataset$labels

brainQAMatrix <- brainExpression
brainQALabels <- brainLabels


brainIndex <- cvGenStratified(brainQALabels, k = 5)
brainTraining <- brainQAMatrix[,-which(brainIndex == 5)]
brainTrainingLabels <- brainQALabels[-which(brainIndex == 5)]
brainTest <- brainQAMatrix[,which(brainIndex == 5)]
brainTestLabels <- brainQALabels[which(brainIndex == 5)]


commonDEGs <- Reduce(intersect, list(rownames(breastExpression), rownames(lungExpression), rownames(colonExpression),
                                     rownames(esophagusExpression), rownames(kidneyExpression), rownames(liverExpression),
                                     rownames(prostateExpression), rownames(stomachExpression), rownames(thyroidExpression),
                                     rownames(bladderExpression), rownames(corpusExpression), rownames(headneckExpression),
                                     rownames(larynxExpression), rownames(brainExpression)))


## 5-CV BI-CLASS DEGs EXTRACTION

breastTumor <- breastTraining[commonDEGs,which(breastTrainingLabels == "Primary Tumor")]
breastNormal <- breastTraining[commonDEGs,which(breastTrainingLabels == "Solid Tissue Normal")]
breastLabelsTumor <- breastTrainingLabels[which(breastTrainingLabels == "Primary Tumor")]
breastLabelsNormal <- breastTrainingLabels[which(breastTrainingLabels == "Solid Tissue Normal")]


lungTumor <- lungTraining[commonDEGs,which(lungTrainingLabels == "Primary Tumor")]
lungNormal <- lungTraining[commonDEGs,which(lungTrainingLabels == "Solid Tissue Normal")]
lungLabelsTumor <- lungTrainingLabels[which(lungTrainingLabels == "Primary Tumor")]
lungLabelsNormal <- lungTrainingLabels[which(lungTrainingLabels == "Solid Tissue Normal")]

colonTumor <- colonTraining[commonDEGs,which(colonTrainingLabels == "Primary Tumor")]
colonNormal <- colonTraining[commonDEGs,which(colonTrainingLabels == "Solid Tissue Normal")]
colonLabelsTumor <- colonTrainingLabels[which(colonTrainingLabels == "Primary Tumor")]
colonLabelsNormal <- colonTrainingLabels[which(colonTrainingLabels == "Solid Tissue Normal")]

esophagusTumor <- esophagusTraining[commonDEGs,which(esophagusTrainingLabels == "Primary Tumor")]
esophagusNormal <- esophagusTraining[commonDEGs,which(esophagusTrainingLabels == "Solid Tissue Normal")]
esophagusLabelsTumor <- esophagusTrainingLabels[which(esophagusTrainingLabels == "Primary Tumor")]
esophagusLabelsNormal <- esophagusTrainingLabels[which(esophagusTrainingLabels == "Solid Tissue Normal")]

kidneyTumor <- kidneyTraining[commonDEGs,which(kidneyTrainingLabels == "Primary Tumor")]
kidneyNormal <- kidneyTraining[commonDEGs,which(kidneyTrainingLabels == "Solid Tissue Normal")]
kidneyLabelsTumor <- kidneyTrainingLabels[which(kidneyTrainingLabels == "Primary Tumor")]
kidneyLabelsNormal <- kidneyTrainingLabels[which(kidneyTrainingLabels == "Solid Tissue Normal")]

liverTumor <- liverTraining[commonDEGs,which(liverTrainingLabels == "Primary Tumor")]
liverNormal <- liverTraining[commonDEGs,which(liverTrainingLabels == "Solid Tissue Normal")]
liverLabelsTumor <- liverTrainingLabels[which(liverTrainingLabels == "Primary Tumor")]
liverLabelsNormal <- liverTrainingLabels[which(liverTrainingLabels == "Solid Tissue Normal")]

prostateTumor <- prostateTraining[commonDEGs,which(prostateTrainingLabels == "Primary Tumor")]
prostateNormal <- prostateTraining[commonDEGs,which(prostateTrainingLabels == "Solid Tissue Normal")]
prostateLabelsTumor <- prostateTrainingLabels[which(prostateTrainingLabels == "Primary Tumor")]
prostateLabelsNormal <- prostateTrainingLabels[which(prostateTrainingLabels == "Solid Tissue Normal")]

stomachTumor <- stomachTraining[commonDEGs,which(stomachTrainingLabels == "Primary Tumor")]
stomachNormal <- stomachTraining[commonDEGs,which(stomachTrainingLabels == "Solid Tissue Normal")]
stomachLabelsTumor <- stomachTrainingLabels[which(stomachTrainingLabels == "Primary Tumor")]
stomachLabelsNormal <- stomachTrainingLabels[which(stomachTrainingLabels == "Solid Tissue Normal")]

thyroidTumor <- thyroidTraining[commonDEGs,which(thyroidTrainingLabels == "Primary Tumor")]
thyroidNormal <- thyroidTraining[commonDEGs,which(thyroidTrainingLabels == "Solid Tissue Normal")]
thyroidLabelsTumor <- thyroidTrainingLabels[which(thyroidTrainingLabels == "Primary Tumor")]
thyroidLabelsNormal <- thyroidTrainingLabels[which(thyroidTrainingLabels == "Solid Tissue Normal")]

bladderTumor <- bladderTraining[commonDEGs,which(bladderTrainingLabels == "Primary Tumor")]
bladderNormal <- bladderTraining[commonDEGs,which(bladderTrainingLabels == "Solid Tissue Normal")]
bladderLabelsTumor <- bladderTrainingLabels[which(bladderTrainingLabels == "Primary Tumor")]
bladderLabelsNormal <- bladderTrainingLabels[which(bladderTrainingLabels == "Solid Tissue Normal")]

corpusTumor <- corpusTraining[commonDEGs,which(corpusTrainingLabels == "Primary Tumor")]
corpusNormal <- corpusTraining[commonDEGs,which(corpusTrainingLabels == "Solid Tissue Normal")]
corpusLabelsTumor <- corpusTrainingLabels[which(corpusTrainingLabels == "Primary Tumor")]
corpusLabelsNormal <- corpusTrainingLabels[which(corpusTrainingLabels == "Solid Tissue Normal")]

headneckTumor <- headneckTraining[commonDEGs,which(headneckTrainingLabels == "Primary Tumor")]
headneckNormal <- headneckTraining[commonDEGs,which(headneckTrainingLabels == "Solid Tissue Normal")]
headneckLabelsTumor <- headneckTrainingLabels[which(headneckTrainingLabels == "Primary Tumor")]
headneckLabelsNormal <- headneckTrainingLabels[which(headneckTrainingLabels == "Solid Tissue Normal")]

larynxTumor <- larynxTraining[commonDEGs,which(larynxTrainingLabels == "Primary Tumor")]
larynxNormal <- larynxTraining[commonDEGs,which(larynxTrainingLabels == "Solid Tissue Normal")]
larynxLabelsTumor <- larynxTrainingLabels[which(larynxTrainingLabels == "Primary Tumor")]
larynxLabelsNormal <- larynxTrainingLabels[which(larynxTrainingLabels == "Solid Tissue Normal")]

brainTumor <- brainTraining[commonDEGs,which(brainTrainingLabels == "Primary Tumor")]
brainNormal <- brainTraining[commonDEGs,which(brainTrainingLabels == "Solid Tissue Normal")]
brainLabelsTumor <- brainTrainingLabels[which(brainTrainingLabels == "Primary Tumor")]
brainLabelsNormal <- brainTrainingLabels[which(brainTrainingLabels == "Solid Tissue Normal")]



tumorTrainingDataset <- cbind(breastTumor, lungTumor, colonTumor, esophagusTumor, kidneyTumor, liverTumor, 
                      prostateTumor, stomachTumor, thyroidTumor, bladderTumor, corpusTumor,
                      headneckTumor, larynxTumor, brainTumor)
tumorTrainingLabels <- c(breastLabelsTumor, lungLabelsTumor, colonLabelsTumor, esophagusLabelsTumor, kidneyLabelsTumor, 
                 liverLabelsTumor, prostateLabelsTumor, stomachLabelsTumor, thyroidLabelsTumor, 
                 bladderLabelsTumor, corpusLabelsTumor, headneckLabelsTumor, larynxLabelsTumor, brainLabelsTumor)

normalTrainingDataset <- cbind(breastNormal, lungNormal, colonNormal, esophagusNormal, kidneyNormal, liverNormal, 
                      prostateNormal, stomachNormal, thyroidNormal, bladderNormal, corpusNormal,
                      headneckNormal, larynxNormal, brainNormal)
normalTrainingLabels <- c(breastLabelsNormal, lungLabelsNormal, colonLabelsNormal, esophagusLabelsNormal, kidneyLabelsNormal, 
                 liverLabelsNormal, prostateLabelsNormal, stomachLabelsNormal, thyroidLabelsNormal, 
                 bladderLabelsNormal, corpusLabelsNormal, headneckLabelsNormal, larynxLabelsNormal, brainLabelsNormal)

biclassTrainingDataset <- cbind(tumorTrainingDataset, normalTrainingDataset)
biclassTrainingLabels <- c(tumorTrainingLabels, normalTrainingLabels)


folds <- 5
cvIndex <- cvGenStratified(biclassTrainingLabels, k = folds)
cvResults <- list()
cvDEGs <- list() 

for(i in seq_len(folds)){

  cvResults[[i]] <- DEGsExtraction(biclassTrainingDataset[,which(cvIndex == i)], biclassTrainingLabels[which(cvIndex == i)], lfc = 1, pvalue = 0.001, cov = 1, number = Inf)
  cvDEGs[[i]] <- rownames(cvResults[[i]]$Table)

}

myCol <- RColorBrewer::brewer.pal(5, "Pastel2")
VennDiagram::venn.diagram(cvDEGs, category.names = c("Fold 1" , "Fold 2 " , "Fold 3", "Fold 4" , "Fold 5"), filename = 'biClassDegs_venn_diagramm.png', output=TRUE,

                          # Output features
                          imagetype="png" ,
                          height = 1920 ,
                          width = 3200 ,
                          resolution = 300,
                          compression = "lzw",

                          # Circles
                          lwd = 3,
                          lty = 'blank',
                          fill = myCol,
                          # Numbers
                          cex = .8,
                          fontface = "bold",
                          fontfamily = "sans",
                          # Set names
                          cat.cex = 0.8,
                          cat.fontface = "bold",
                          cat.dist = c(0.155, 0.155, 0.185, 0.15, 0.15),
                          cat.default.pos = "inner",
                          cat.fontfamily = "sans")


biClassCommonCVDEGs <- Reduce(intersect, cvDEGs)

breastTumorTest <- breastTest[commonDEGs,which(breastTestLabels == "Primary Tumor")]
breastTumorTestLabels <- breastTestLabels[which(breastTestLabels == "Primary Tumor")]
breastNormalTest <- breastTest[commonDEGs,which(breastTestLabels == "Solid Tissue Normal")]
breastNormalTestLabels <- breastTestLabels[which(breastTestLabels == "Solid Tissue Normal")]

lungTumorTest <- lungTest[commonDEGs,which(lungTestLabels == "Primary Tumor")]
lungTumorTestLabels <- lungTestLabels[which(lungTestLabels == "Primary Tumor")]
lungNormalTest <- lungTest[commonDEGs,which(lungTestLabels == "Solid Tissue Normal")]
lungNormalTestLabels <- lungTestLabels[which(lungTestLabels == "Solid Tissue Normal")]

colonTumorTest <- colonTest[commonDEGs,which(colonTestLabels == "Primary Tumor")]
colonTumorTestLabels <- colonTestLabels[which(colonTestLabels == "Primary Tumor")]
colonNormalTest <- colonTest[commonDEGs,which(colonTestLabels == "Solid Tissue Normal")]
colonNormalTestLabels <- colonTestLabels[which(colonTestLabels == "Solid Tissue Normal")]

esophagusTumorTest <- esophagusTest[commonDEGs,which(esophagusTestLabels == "Primary Tumor")]
esophagusTumorTestLabels <- esophagusTestLabels[which(esophagusTestLabels == "Primary Tumor")]
esophagusNormalTest <- esophagusTest[commonDEGs,which(esophagusTestLabels == "Solid Tissue Normal")]
esophagusNormalTestLabels <- esophagusTestLabels[which(esophagusTestLabels == "Solid Tissue Normal")]

kidneyTumorTest <- kidneyTest[commonDEGs,which(kidneyTestLabels == "Primary Tumor")]
kidneyTumorTestLabels <- kidneyTestLabels[which(kidneyTestLabels == "Primary Tumor")]
kidneyNormalTest <- kidneyTest[commonDEGs,which(kidneyTestLabels == "Solid Tissue Normal")]
kidneyNormalTestLabels <- kidneyTestLabels[which(kidneyTestLabels == "Solid Tissue Normal")]

liverTumorTest <- liverTest[commonDEGs,which(liverTestLabels == "Primary Tumor")]
liverTumorTestLabels <- liverTestLabels[which(liverTestLabels == "Primary Tumor")]
liverNormalTest <- liverTest[commonDEGs,which(liverTestLabels == "Solid Tissue Normal")]
liverNormalTestLabels <- liverTestLabels[which(liverTestLabels == "Solid Tissue Normal")]

prostateTumorTest <- prostateTest[commonDEGs,which(prostateTestLabels == "Primary Tumor")]
prostateTumorTestLabels <- prostateTestLabels[which(prostateTestLabels == "Primary Tumor")]
prostateNormalTest <- prostateTest[commonDEGs,which(prostateTestLabels == "Solid Tissue Normal")]
prostateNormalTestLabels <- prostateTestLabels[which(prostateTestLabels == "Solid Tissue Normal")]

stomachTumorTest <- stomachTest[commonDEGs,which(stomachTestLabels == "Primary Tumor")]
stomachTumorTestLabels <- stomachTestLabels[which(stomachTestLabels == "Primary Tumor")]
stomachNormalTest <- stomachTest[commonDEGs,which(stomachTestLabels == "Solid Tissue Normal")]
stomachNormalTestLabels <- stomachTestLabels[which(stomachTestLabels == "Solid Tissue Normal")]

thyroidTumorTest <- thyroidTest[commonDEGs,which(thyroidTestLabels == "Primary Tumor")]
thyroidTumorTestLabels <- thyroidTestLabels[which(thyroidTestLabels == "Primary Tumor")]
thyroidNormalTest <- thyroidTest[commonDEGs,which(thyroidTestLabels == "Solid Tissue Normal")]
thyroidNormalTestLabels <- thyroidTestLabels[which(thyroidTestLabels == "Solid Tissue Normal")]

bladderTumorTest <- bladderTest[commonDEGs,which(bladderTestLabels == "Primary Tumor")]
bladderTumorTestLabels <- bladderTestLabels[which(bladderTestLabels == "Primary Tumor")]
bladderNormalTest <- bladderTest[commonDEGs,which(bladderTestLabels == "Solid Tissue Normal")]
bladderNormalTestLabels <- bladderTestLabels[which(bladderTestLabels == "Solid Tissue Normal")]

corpusTumorTest <- corpusTest[commonDEGs,which(corpusTestLabels == "Primary Tumor")]
corpusTumorTestLabels <- corpusTestLabels[which(corpusTestLabels == "Primary Tumor")]
corpusNormalTest <- corpusTest[commonDEGs,which(corpusTestLabels == "Solid Tissue Normal")]
corpusNormalTestLabels <- corpusTestLabels[which(corpusTestLabels == "Solid Tissue Normal")]

headneckTumorTest <- headneckTest[commonDEGs,which(headneckTestLabels == "Primary Tumor")]
headneckTumorTestLabels <- headneckTestLabels[which(headneckTestLabels == "Primary Tumor")]
headneckNormalTest <- headneckTest[commonDEGs,which(headneckTestLabels == "Solid Tissue Normal")]
headneckNormalTestLabels <- headneckTestLabels[which(headneckTestLabels == "Solid Tissue Normal")]

larynxTumorTest <- larynxTest[commonDEGs,which(larynxTestLabels == "Primary Tumor")]
larynxTumorTestLabels <- larynxTestLabels[which(larynxTestLabels == "Primary Tumor")]
larynxNormalTest <- larynxTest[commonDEGs,which(larynxTestLabels == "Solid Tissue Normal")]
larynxNormalTestLabels <- larynxTestLabels[which(larynxTestLabels == "Solid Tissue Normal")]

brainTumorTest <- brainTest[commonDEGs,which(brainTestLabels == "Primary Tumor")]
brainTumorTestLabels <- brainTestLabels[which(brainTestLabels == "Primary Tumor")]
brainNormalTest <- brainTest[commonDEGs,which(brainTestLabels == "Solid Tissue Normal")]
brainNormalTestLabels <- brainTestLabels[which(brainTestLabels == "Solid Tissue Normal")]

tumorTestDataset <- cbind(breastTumorTest, lungTumorTest, colonTumorTest, esophagusTumorTest, kidneyTumorTest, liverTumorTest,
                              prostateTumorTest, stomachTumorTest, thyroidTumorTest, bladderTumorTest, corpusTumorTest,
                              headneckTumorTest, larynxTumorTest, brainTumorTest)
tumorTestLabels <- c(breastTumorTestLabels, lungTumorTestLabels, colonTumorTestLabels, esophagusTumorTestLabels,
                         kidneyTumorTestLabels, liverTumorTestLabels, prostateTumorTestLabels, stomachTumorTestLabels,
                         thyroidTumorTestLabels, bladderTumorTestLabels, corpusTumorTestLabels,
                         headneckTumorTestLabels, larynxTumorTestLabels, brainTumorTestLabels)

normalTestDataset <- cbind(breastNormalTest, lungNormalTest, colonNormalTest, esophagusNormalTest, kidneyNormalTest, liverNormalTest,
                               prostateNormalTest, stomachNormalTest, thyroidNormalTest, bladderNormalTest, corpusNormalTest,
                               headneckNormalTest, larynxNormalTest, brainNormalTest)
normalTestLabels <-  c(breastNormalTestLabels, lungNormalTestLabels, colonNormalTestLabels, esophagusNormalTestLabels,
                       kidneyNormalTestLabels, liverNormalTestLabels, prostateNormalTestLabels, stomachNormalTestLabels,
                       thyroidNormalTestLabels, bladderNormalTestLabels, corpusNormalTestLabels,
                           headneckNormalTestLabels, larynxNormalTestLabels, brainNormalTestLabels)

biclassTestDataset <- t(cbind(tumorTestDataset, normalTestDataset))
biclassTestLabels <- c(tumorTestLabels, normalTestLabels)

biclassTrainingDatasetML <- t(biclassTrainingDataset[biClassCommonCVDEGs,])


biclass_mrmr_ranking <- featureSelection(biclassTrainingDatasetML, biclassTrainingLabels, colnames(biclassTrainingDatasetML))

biclass_knn_cv_nofs_results <- knn_trn(biclassTrainingDatasetML, biclassTrainingLabels, colnames(biclassTrainingDatasetML))
biclass_knn_cv_mrmr_results <- knn_trn(biclassTrainingDatasetML, biclassTrainingLabels, names(biclass_mrmr_ranking)[1:12])

biclass_knn_test_nofs_results <- knn_test(biclassTrainingDatasetML, biclassTrainingLabels, biclassTestDataset, biclassTestLabels, colnames(biclassTrainingDatasetML)[1:20], bestK = biclass_knn_cv_nofs_results$bestK)
biclass_knn_test_mrmr_results <- knn_test(biclassTrainingDatasetML, biclassTrainingLabels, biclassTestDataset, biclassTestLabels, names(biclass_mrmr_ranking)[1:12], bestK = biclass_knn_cv_mrmr_results$bestK)

testAccResult <- rbind(biclass_knn_test_nofs_results$accVector, biclass_knn_test_mrmr_results$accVector)
rownames(testAccResult) <- c("No F.S. test biclass ACC","mRMR test biclass ACC")
dataPlot(biclass_knn_test_mrmr_results$accVector[1:10], mode = "classResults", main = "Bi-Class k-NN classification Results", colours = c("blue","red","green"),xlab = "Genes", ylab = "Accuracy" ,ygrid = TRUE)

dataPlot(biclassTrainingDataset[names(biclass_mrmr_ranking)[1:10],], biclassTrainingLabels, mode = "genesBoxplot")
dataPlot(biclassTrainingDataset[names(biclass_dared_ranking)[1:8],], biclassTrainingLabels, mode = "genesBoxplot")

dataPlot(biclass_knn_test_nofs_results$cfMats[[8]]$table, mode = "confusionMatrix")
dataPlot(biclass_knn_test_mrmr_results$cfMats[[5]]$table, mode = "confusionMatrix")
dataPlot(biclass_knn_test_dared_results$cfMats[[8]]$table, mode = "confusionMatrix")


dataPlot(biclassTrainingDataset[names(biclass_mrmr_ranking)[1:5],],biclassTrainingLabels, mode = "genesBoxplot", colours = colours)


predictions <- biclass_knn_test_mrmr_results$predictions[[5]]
classifiedTumors = integer()
classifiedNormals = integer()
failedTumors = integer()
failedNormals = integer()

for(i in seq_len(length(biclassTestLabels))){
  
  if(biclassTestLabels[i] == "Primary Tumor"){
    
    if(biclassTestLabels[i] == predictions[i]){
      
      classifiedTumors = c(classifiedTumors,i)
      
    }else{
      
      failedTumors = c(failedTumors,i)
      
    }
    
  }else if(biclassTestLabels[i] == "Solid Tissue Normal"){
  
    if(biclassTestLabels[i] == predictions[i]){
      
      classifiedNormals = c(classifiedNormals,i)
      
    }else{
      
      failedNormals = c(failedNormals,i)
      
    }
  }
}

uncertain = c(failedTumors, failedNormals)


## MULTI-CLASS DEGs WITH COV

breastCov <- breastTraining[commonDEGs,-which(breastTrainingLabels == "Solid Tissue Normal")]
breastControlCov <- breastTraining[commonDEGs,which(breastTrainingLabels == "Solid Tissue Normal")]

lungCov <- lungTraining[commonDEGs,-which(lungTrainingLabels == "Solid Tissue Normal")]
lungControlCov <- lungTraining[commonDEGs,which(lungTrainingLabels == "Solid Tissue Normal")]

colonCov <- colonTraining[commonDEGs,-which(colonTrainingLabels == "Solid Tissue Normal")]
colonControlCov <- colonTraining[commonDEGs,which(colonTrainingLabels == "Solid Tissue Normal")]

esophagusCov <- esophagusTraining[commonDEGs,-which(esophagusTrainingLabels == "Solid Tissue Normal")]
esophagusControlCov <- esophagusTraining[commonDEGs,which(esophagusTrainingLabels == "Solid Tissue Normal")]

kidneyCov <- kidneyTraining[commonDEGs,-which(kidneyTrainingLabels == "Solid Tissue Normal")]
kidneyControlCov <- kidneyTraining[commonDEGs,which(kidneyTrainingLabels == "Solid Tissue Normal")]

liverCov <- liverTraining[commonDEGs,-which(liverTrainingLabels == "Solid Tissue Normal")]
liverControlCov <- liverTraining[commonDEGs,which(liverTrainingLabels == "Solid Tissue Normal")]

prostateCov <- prostateTraining[commonDEGs,-which(prostateTrainingLabels == "Solid Tissue Normal")]
prostateControlCov <- prostateTraining[commonDEGs,which(prostateTrainingLabels == "Solid Tissue Normal")]

stomachCov <- stomachTraining[commonDEGs,-which(stomachTrainingLabels == "Solid Tissue Normal")]
stomachControlCov <- stomachTraining[commonDEGs,which(stomachTrainingLabels == "Solid Tissue Normal")]

thyroidCov <- thyroidTraining[commonDEGs,-which(thyroidTrainingLabels == "Solid Tissue Normal")]
thyroidControlCov <- thyroidTraining[commonDEGs,which(thyroidTrainingLabels == "Solid Tissue Normal")]

bladderCov <- bladderTraining[commonDEGs,-which(bladderTrainingLabels == "Solid Tissue Normal")]
bladderControlCov <- bladderTraining[commonDEGs,which(bladderTrainingLabels == "Solid Tissue Normal")]

corpusCov <- corpusTraining[commonDEGs,-which(corpusTrainingLabels == "Solid Tissue Normal")]
corpusControlCov <- corpusTraining[commonDEGs,which(corpusTrainingLabels == "Solid Tissue Normal")]

headneckCov <- headneckTraining[commonDEGs,-which(headneckTrainingLabels == "Solid Tissue Normal")]
headneckControlCov <- headneckTraining[commonDEGs,which(headneckTrainingLabels == "Solid Tissue Normal")]

larynxCov <- larynxTraining[commonDEGs,-which(larynxTrainingLabels == "Solid Tissue Normal")]
larynxControlCov <- larynxTraining[commonDEGs,which(larynxTrainingLabels == "Solid Tissue Normal")]

brainCov <- brainTraining[commonDEGs,-which(brainTrainingLabels == "Solid Tissue Normal")]
brainControlCov <- brainTraining[commonDEGs,which(brainTrainingLabels == "Solid Tissue Normal")]
 
covTumorMatrix <- cbind(breastCov, lungCov, colonCov, esophagusCov,
                        kidneyCov, liverCov, prostateCov, stomachCov,
                        thyroidCov, bladderCov, corpusCov,
                        headneckCov, larynxCov, brainCov)

breastCovLabels <- gsub("Primary Tumor","Breast",breastTrainingLabels[-which(breastTrainingLabels == "Solid Tissue Normal")])
breastCovTestLabels <- gsub("Primary Tumor","Breast",breastTestLabels[-which(breastTestLabels == "Solid Tissue Normal")])
breastControlCovLabels <- gsub("Solid Tissue Normal", "BreastControl", breastTrainingLabels[which(breastTrainingLabels == "Solid Tissue Normal")])

lungCovLabels <- gsub("Primary Tumor","Lung",lungTrainingLabels[-which(lungTrainingLabels == "Solid Tissue Normal")])
lungCovTestLabels <- gsub("Primary Tumor","Lung",lungTestLabels[-which(lungTestLabels == "Solid Tissue Normal")])
lungControlCovLabels <- gsub("Solid Tissue Normal", "LungControl", lungTrainingLabels[which(lungTrainingLabels == "Solid Tissue Normal")])

colonCovLabels <- gsub("Primary Tumor","Colon",colonTrainingLabels[-which(colonTrainingLabels == "Solid Tissue Normal")])
colonCovTestLabels <- gsub("Primary Tumor","Colon",colonTestLabels[-which(colonTestLabels == "Solid Tissue Normal")])
colonControlCovLabels <- gsub("Solid Tissue Normal", "ColonControl", colonTrainingLabels[which(colonTrainingLabels == "Solid Tissue Normal")])

esophagusCovLabels <- gsub("Primary Tumor", "Esophagus",esophagusTrainingLabels[-which(esophagusTrainingLabels == "Solid Tissue Normal")])
esophagusCovTestLabels <- gsub("Primary Tumor", "Esophagus",esophagusTestLabels[-which(esophagusTestLabels == "Solid Tissue Normal")])
esophagusControlCovLabels <- gsub("Solid Tissue Normal", "EsophagusControl", esophagusTrainingLabels[which(esophagusTrainingLabels == "Solid Tissue Normal")])

kidneyCovLabels <- gsub("Primary Tumor", "Kidney",kidneyTrainingLabels[-which(kidneyTrainingLabels == "Solid Tissue Normal")])
kidneyCovTestLabels <- gsub("Primary Tumor", "Kidney",kidneyTestLabels[-which(kidneyTestLabels == "Solid Tissue Normal")])
kidneyControlCovLabels <- gsub("Solid Tissue Normal", "KidneyControl", kidneyTrainingLabels[which(kidneyTrainingLabels == "Solid Tissue Normal")])

liverCovLabels <- gsub("Primary Tumor", "Liver",liverTrainingLabels[-which(liverTrainingLabels == "Solid Tissue Normal")])
liverCovTestLabels <- gsub("Primary Tumor", "Liver",liverTestLabels[-which(liverTestLabels == "Solid Tissue Normal")])
liverControlCovLabels <- gsub("Solid Tissue Normal", "LiverControl", liverTrainingLabels[which(liverTrainingLabels == "Solid Tissue Normal")])

prostateCovLabels <- gsub("Primary Tumor","Prostate",prostateTrainingLabels[-which(prostateTrainingLabels == "Solid Tissue Normal")])
prostateCovTestLabels <- gsub("Primary Tumor","Prostate",prostateTestLabels[-which(prostateTestLabels == "Solid Tissue Normal")])
prostateControlCovLabels <- gsub("Solid Tissue Normal", "ProstateControl", prostateTrainingLabels[which(prostateTrainingLabels == "Solid Tissue Normal")])

stomachCovLabels <- gsub("Primary Tumor", "Stomach",stomachTrainingLabels[-which(stomachTrainingLabels == "Solid Tissue Normal")])
stomachCovTestLabels <- gsub("Primary Tumor", "Stomach",stomachTestLabels[-which(stomachTestLabels == "Solid Tissue Normal")])
stomachControlCovLabels <- gsub("Solid Tissue Normal", "StomachControl", stomachTrainingLabels[which(stomachTrainingLabels == "Solid Tissue Normal")])

thyroidCovLabels <- gsub("Primary Tumor", "Thyroid",thyroidTrainingLabels[-which(thyroidTrainingLabels == "Solid Tissue Normal")])
thyroidCovTestLabels <- gsub("Primary Tumor", "Thyroid",thyroidTestLabels[-which(thyroidTestLabels == "Solid Tissue Normal")])
thyroidControlCovLabels <- gsub("Solid Tissue Normal", "ThyroidControl", thyroidTrainingLabels[which(thyroidTrainingLabels == "Solid Tissue Normal")])

bladderCovLabels <- gsub("Primary Tumor", "Bladder",bladderTrainingLabels[-which(bladderTrainingLabels == "Solid Tissue Normal")])
bladderCovTestLabels <- gsub("Primary Tumor", "Bladder",bladderTestLabels[-which(bladderTestLabels == "Solid Tissue Normal")])
bladderControlCovLabels <- gsub("Solid Tissue Normal", "BladderControl", bladderTrainingLabels[which(bladderTrainingLabels == "Solid Tissue Normal")])

corpusCovLabels <- gsub("Primary Tumor", "CorpusUteri",corpusTrainingLabels[-which(corpusTrainingLabels == "Solid Tissue Normal")])
corpusCovTestLabels <- gsub("Primary Tumor", "CorpusUteri",corpusTestLabels[-which(corpusTestLabels == "Solid Tissue Normal")])
corpusControlCovLabels <- gsub("Solid Tissue Normal", "CorpusControl", corpusTrainingLabels[which(corpusTrainingLabels == "Solid Tissue Normal")])

headneckCovLabels <- gsub("Primary Tumor", "HeadNeck",headneckTrainingLabels[-which(headneckTrainingLabels == "Solid Tissue Normal")])
headneckCovTestLabels <- gsub("Primary Tumor", "HeadNeck",headneckTestLabels[-which(headneckTestLabels == "Solid Tissue Normal")])
headneckControlCovLabels <- gsub("Solid Tissue Normal", "HeadNeckControl", headneckTrainingLabels[which(headneckTrainingLabels == "Solid Tissue Normal")])

larynxCovLabels <- gsub("Primary Tumor", "Larynx",larynxTrainingLabels[-which(larynxTrainingLabels == "Solid Tissue Normal")])
larynxCovTestLabels <- gsub("Primary Tumor", "Larynx",larynxTestLabels[-which(larynxTestLabels == "Solid Tissue Normal")])
larynxControlCovLabels <- gsub("Solid Tissue Normal", "LarynxControl", larynxTrainingLabels[which(larynxTrainingLabels == "Solid Tissue Normal")])

brainCovLabels <- gsub("Primary Tumor", "Brain",brainTrainingLabels[-which(brainTrainingLabels == "Solid Tissue Normal")])
brainCovTestLabels <- gsub("Primary Tumor", "Brain",brainTestLabels[-which(brainTestLabels == "Solid Tissue Normal")])
brainControlCovLabels <- gsub("Solid Tissue Normal", "BrainControl", brainTrainingLabels[which(brainTrainingLabels == "Solid Tissue Normal")])

covTumorLabels <- c(breastCovLabels, lungCovLabels, colonCovLabels,
                       esophagusCovLabels, kidneyCovLabels, liverCovLabels,
                      prostateCovLabels, stomachCovLabels, thyroidCovLabels,
                       bladderCovLabels, corpusCovLabels, headneckCovLabels,
                       larynxCovLabels, brainCovLabels)

covTestLabels <- c(breastCovTestLabels, lungCovTestLabels, colonCovTestLabels, esophagusCovTestLabels, kidneyCovTestLabels, liverCovTestLabels,
                   prostateCovTestLabels, stomachCovTestLabels, thyroidCovTestLabels, bladderCovTestLabels, corpusCovTestLabels,
                   headneckCovTestLabels, larynxCovTestLabels, brainCovTestLabels)


folds <- 5
cvMultiIndex <- cvGenStratified(covTumorLabels, k = folds)
cvMultiResults <- list()
cvMultiDEGs <- list()


for(i in seq_len(folds)){

  svaMod <- batchEffectRemoval(covTumorMatrix[,which(cvMultiIndex == i)], covTumorLabels[which(cvMultiIndex == i)], method = "sva")
  cvMultiResults[[i]] <- DEGsExtraction(covTumorMatrix[,which(cvMultiIndex == i)], covTumorLabels[which(cvMultiIndex == i)], lfc = 1.5, pvalue = 0.001, cov = 60, number = Inf, svaCorrection = T, svaMod = svaMod)
  cvMultiDEGs[[i]] <- rownames(cvMultiResults[[i]]$DEGsMatrix)

}

myCol <- RColorBrewer::brewer.pal(5, "Pastel2")
VennDiagram::venn.diagram(cvMultiDEGs, category.names = c("Fold 1" , "Fold 2 " , "Fold 3", "Fold 4" , "Fold 5"), filename = 'multiClassDegs_venn_diagramm.png', output=TRUE,

                          # Output features
                          imagetype="png" ,
                          height = 1920 ,
                          width = 3200 ,
                          resolution = 300,
                          compression = "lzw",

                          # Circles
                          lwd = 3,
                          lty = 'blank',
                          fill = myCol,
                          # Numbers
                          cex = .8,
                          fontface = "bold",
                          fontfamily = "sans",
                          # Set names
                          cat.cex = 0.8,
                          cat.fontface = "bold",
                          cat.dist = c(0.155, 0.155, 0.185, 0.15, 0.15),
                          cat.default.pos = "inner",
                          cat.fontfamily = "sans")


multiClassCommonCVDEGs <- Reduce(intersect, cvMultiDEGs)


## ML PROCESS WITH COV
covDEGsML <- t(covTumorMatrix[multiClassCommonCVDEGs,])

cov_mrmr_ranking <- featureSelection(covDEGsML, covTumorLabels, colnames(covDEGsML))

cov_mrmr_ranking_sva <- featureSelection(covDEGsML, covTumorLabels, colnames(covDEGsML))



cov_knn_cv_mrmr_results <- knn_trn(covDEGsML, covTumorLabels, names(cov_mrmr_ranking)[1:21])

dataPlot(cov_knn_cv_mrmr_results, mode = "heatmapResults")

multiclass_knn_test_mrmr_results <- knn_test(covDEGsML, covTumorLabels, t(tumorTestDataset)[classifiedTumors,], covTestLabels[classifiedTumors], names(cov_mrmr_ranking)[1:12], bestK = cov_knn_cv_mrmr_results$bestK)

dataPlot(multiclass_knn_test_mrmr_results$accVector, mode = "classResults", colours = "red", xlab = "Genes", ylab = "Accuracy" ,ygrid = TRUE)
dataPlot(multiclass_knn_test_mrmr_results$sensVector, mode = "classResults", colours = colours, xlab = "Genes", ylab = "Accuracy" ,ygrid = TRUE)
dataPlot(multiclass_knn_test_mrmr_results$specVector, mode = "classResults", colours = colours, xlab = "Genes", ylab = "Accuracy" ,ygrid = TRUE)
dataPlot(multiclass_knn_test_mrmr_results$f1Vector, mode = "classResults", colours = colours, xlab = "Genes", ylab = "Accuracy" ,ygrid = TRUE)


dataPlot(multiclass_knn_test_mrmr_results$cfMats[[12]]$table, mode = "confusionMatrix", colours = colours, xlab = "Genes", ylab = "Accuracy" ,ygrid = TRUE)

cov_svm_cv_mrmr_results <- svm_trn(covDEGsML, covTumorLabels, names(cov_mrmr_ranking)[1:12])

dataPlot(cov_svm_cv_mrmr_results$accMatrix, mode = "classResults", colours = colours, xlab = "Genes", ylab = "Accuracy" ,ygrid = TRUE)
dataPlot(cov_svm_cv_mrmr_results$sensMatrix, mode = "classResults", colours = colours, xlab = "Genes", ylab = "Accuracy" ,ygrid = TRUE)
dataPlot(cov_svm_cv_mrmr_results$specMatrix, mode = "classResults", colours = colours, xlab = "Genes", ylab = "Accuracy" ,ygrid = TRUE)

colours = c("darkred", "forestgreen", "darkorchid3", "dodgerblue3", "darkolivegreen", "darkgoldenrod2",
            "coral4", "aquamarine3","chocolate2","deeppink","lawngreen","hotpink3","midnightblue","saddlebrown")

dataPlot(covTumorMatrix[names(cov_mrmr_ranking)[1:12],], covTumorLabels, mode = "heatmap", colours = colours)

alphabeticalOrder <- sort(covTumorLabels, index.return=T)

dataPlot(covTumorMatrix[names(cov_mrmr_ranking)[1:12],alphabeticalOrder$ix], covTumorLabels[alphabeticalOrder$ix], mode = "genesBoxplot", colours = colours)

par(pty="s")
nGenes = 12
multiROC <- multiclass.roc(covTestLabels[classifiedTumors] ~ multiclass_knn_test_mrmr_results$predictionsProbabilities[[nGenes]],plot=TRUE,print.auc=TRUE,col=colours[1],lwd =4,legacy.axes=TRUE,main="ROC Curve")


multiclass_knn_test_mrmr_results$accVector[12]
multiclass_knn_test_mrmr_results$sensVector[12]
multiclass_knn_test_mrmr_results$specVector[12]
multiclass_knn_test_mrmr_results$f1Vector[12]

response <- as.factor(covTestLabels[classifiedTumors])
aucs <- rep(NA, length(levels(response))) # store AUCs
legendLabels <- as.character()

par(oma = c(4, 1, 0, 1))
plot(x=NA, y=NA, xlim=c(0,1), ylim=c(0,1),
     ylab="Sensitivity",
     xlab="1 - Specificity",
     bty='n')

for (i in seq_along(levels(response))) {
  cur.class <- levels(response)[i]
  binaryTraining.labels <- as.factor(covTumorLabels == cur.class)
  binaryTest.labels <- as.factor(covTestLabels[classifiedTumors] == cur.class)
  
  binary_knn_cv_mrmr_results <- knn_trn(covDEGsML, binaryTraining.labels, names(cov_mrmr_ranking)[1:12])
  
  binary_knn_test_mrmr_results <- knn_test(covDEGsML, binaryTraining.labels, t(tumorTestDataset)[classifiedTumors,], binaryTest.labels, names(cov_mrmr_ranking)[1:12], bestK = binary_knn_cv_mrmr_results$bestK)
  
  score <- binary_knn_test_mrmr_results$predictions[[12]][, 'TRUE']
  pred <- prediction(score, as.vector(binaryTest.labels))
  perf <- performance(pred, "tpr", "fpr")
  roc.x <- unlist(perf@x.values)
  roc.y <- unlist(perf@y.values)
  lines(roc.y ~ roc.x, col = colours[i], lwd = 2)
  # store AUC
  auc <- performance(pred, "auc")
  auc <- unlist(slot(auc, "y.values"))
  aucs[i] <- auc
  legendLabels[i] <- paste(levels(response)[i], " AUC: ",format(round(aucs[i], 4), nsmall = 3),sep = "")
}

print(paste0("Mean AUC under the precision-recall curve is: ", round(mean(aucs), 2)))

lines(x=c(1,0), c(1,0))
par(fig = c(0, 1, 0, 1), oma = c(1.5, 0, 0, 0), mar = c(0, 0, 0, 0), new = TRUE)
plot(0, 0, type = "n", bty = "n", xaxt = "n", yaxt = "n")

legend("bottom", legendLabels, lty=1, ncol= 5,inset = c(0,0),  col = colours, cex = 0.7,lwd=3)
