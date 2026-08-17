#1.read the data frame called df
df=read.csv("SLE_clinical_data.csv",header=TRUE)
View(df)


#2. how many columns and how many patients are there?
print(dim(df)[2]) #how many columns
print(dim(df)[1]) # how many patients
colnames(df)
#3. data summary of following columns :
#TLC, Platelet, Neutrophils, Lymphocyte, creatinine,
#ALT, Bilirubin, Proteins, ALP, Calcium, Albumin


summary(df[,c("TLC","Platelet","Neutrophils","Lymphocyte","Creatinine","ALT","Bilirubin","Proteins","ALP","Calcium","Albumin")])

#4. Divide the screen into 4 and plot the histograms of : TLC, Platelet, Neutrophil, Lymphocyte

par(mfrow = c(2,2))

TLC=subset(df$TLC,df$TLC<30)
Platelet=subset(df$Platelet,df$Platelet<1000)

hist(TLC, main="Histogram of TLC",xlab="TLC Count", col="skyblue")
hist(Platelet, main="Histogram of Platelet",xlab="Platelet Count", col="red")
hist(df$Neutrophil,main="Histogram of Neutrophil",xlab="Neutrophil Count", col="yellow")
hist(df$Lymphocyte, main="Histogram of Lymphocyte",xlab="Lymphocyte Count", col="pink")

#5. Divide the screen into 4 and plot the histograms of : Bilirubin, Proteins, Calcium and Albumin
x11()
par(mfrow = c(2,2))

Bilirubin=subset(df$Bilirubin,df$Bilirubin<5)
Proteins=subset(df$Proteins,df$Proteins<11)
calcium=subset(df$Calcium,df$Calcium<11)
Albumin=subset(df$Albumin,df$Albumin<7)

hist(Bilirubin, main="Histogram of Bilirubin",xlab="Bilirubin Count", col="green")
hist(Proteins, main="Histogram of Proteins",xlab="Proteins Count", col="grey")
hist(calcium,main="Histogram of Calcium",xlab="calcium Count", col="orange")
hist(Albumin, main="Histogram of Albumin",xlab="Albumin Count", col="lightgreen")


#6. Divide the data into two subsets: subset 1 with Lupus_anticoagulant_binary=1,subset 2 with Lupus_anticoagulant_binary = 0


# Subset 1: Patients positive for Lupus Anticoagulant (1)
subset_positive = subset(df, Lupus_anticoagulant_binary == 1)

# Subset 2: Patients negative for Lupus Anticoagulant (0)
subset_negative = subset(df, Lupus_anticoagulant_binary == 0)


# Summary for Lupus Anticoagulant Positive (Subset 1)
print("--- Neutrophils Summary: Positive (Subset 1) ---")
summary(subset_positive$Neutrophils)

# Summary for Lupus Anticoagulant Negative (Subset 2)
print("--- Neutrophils Summary: Negative (Subset 2) ---")
summary(subset_negative$Neutrophils)

# 1. Clean the subsets to remove extreme bilirubin values
bili_pos_clean = subset_positive$Bilirubin[subset_positive$Bilirubin < 10]
bili_neg_clean = subset_negative$Bilirubin[subset_negative$Bilirubin < 10]

x11()
# 2. Divide screen into 2 columns (1 row, 2 columns)
par(mfrow = c(1, 2))

# 3. Plot both histograms
barplot(bili_pos_clean, main = "Bilirubin: Positive (Sub 1)", xlab = "Bilirubin", col = "salmon", breaks = 15)
barplot(bili_neg_clean, main = "Bilirubin: Negative (Sub 2)", xlab = "Bilirubin", col = "lightblue", breaks = 15)

