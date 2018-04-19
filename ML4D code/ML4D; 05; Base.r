# Page 64, Data type - Row
MyVar <- charToRaw('Hello!')
print(MyVar)
print(class(MyVar))

# Page 66, R-object - Vectors
MyVector <- c(1, 2, 3)
print(MyVector)
class(MyVector)

MyVector1 <- c(1, "Hello", TRUE)
print(MyVector1)
class(MyVector1)

# Page 66, R-object - Lists
MyList <- list(1, "Hello", TRUE)
print(MyList)
class(MyList)
print(MyList[1])
class(MyList[1])
print(MyList[[1]])
class(MyList[[1]])

MyVectorList <- list(c(1, 2, 3))
print(MyVectorList)
print(MyVectorList[[1]][2])

# Page 67, R-object - Matrices, matrix(data, nrow, ncol, byrow, dimnames)
MyfirstMatrix <- matrix(c(1:5))
print(MyfirstMatrix)

My3rMatrix <- matrix(c(1:6), 3)
print(My3rMatrix)

My3r4cMatrix <- matrix(c(1:6), 3, 4)
print(My3r4cMatrix)

My2r4cMatrix <- matrix(c(1:8), 2, 4)
print(My2r4cMatrix)

My2r4cbyrowMatrix <- matrix(c(1:8), 2, 4, TRUE)
print(My2r4cbyrowMatrix)
print(My2r4cbyrowMatrix[2, 2])
print(My2r4cbyrowMatrix[1:2, 2])
print(My2r4cbyrowMatrix[1:2, 2:3])

RN = c("Row1", "Row2")
CN = c("Col1", "Col2", "Col3", "Col4")
MyMatrix <- matrix(c(1:8), nrow=2, dimnames=list(RN, CN))
print(MyMatrix["Row2", "Col2"])
print(colnames(MyMatrix))
colnames(MyMatrix) <- c("Column1", "Column2", "Column3", "Column4")
print(MyMatrix)
rownames(MyMatrix) <- NULL
print(MyMatrix)

# Page 71, R-object - Arrays, array(data, dim, dimnames)
MyArray <- array(c(1:8))
dim(MyArray) <- c(4,2)
print(MyArray)
dim(MyArray) <- c(2,2,2)
print(MyArray)

MyArray <- array(c(1:8), c(2,2,2), list(c("Row1","Row2"),c("Col1","Col2"),c("Mat1","Mat2")))
print(MyArray)
print(MyArray["Row1", "Col2", "Mat2"])
print(MyArray[,,2])
dimnames(MyArray)[[3]] <- c("Matrix1","Matrix2")
print(MyArray)

# Page 74, R-object - Factors
MyFactor <- factor(c("North", "South", "East", "West", "West"))
print(MyFactor)
print(levels(MyFactor))
print(nlevels(MyFactor))
levels(MyFactor) <- c("North", "South", "East", "West")
print(MyFactor)

SecondFactor <- factor(MyFactor, levels=c("North", "South", "East", "West"))
print(SecondFactor)

NumFactor <- factor(c(1, 2, 3, 4, 1, 2, 1, 3))
print(NumFactor)

StrFactor <- factor(NumFactor, labels=c("North", "South", "East", "West"))
print(StrFactor)

Appearances <- table(StrFactor)
print(Appearances)
print(Appearances["North"])

# Page 76, R-object - Data frames
Names <- c("Jane", "Sam", "Jose", "Amy")
Ages <- c(42, 33, 39, 25)
Locations <- factor(c("West", "West", "South", "South"))
EmpData <- data.frame(Name=Names, Age=Ages, Location=Locations)
print(EmpData)
print(EmpData[1])
print(EmpData[1,])
print(EmpData[1,2])
print(EmpData$Age)
EmpData <- data.frame(Name=Names, Age=Ages, Location=Locations, stringsAsFactors=FALSE)
print(str(EmpData))
print(summary(EmpData))

SubFrame <- data.frame(Name=EmpData$Name, Age=EmpData$Age)
print(SubFrame)

SubFrame <- EmpData[2:3,]
print(SubFrame)

HireDates <- as.Date(c("2001/10/15", "2012/05/30", "2010/06/28", "2014/04/02"))
EmpData$HireDate <- HireDates
print(EmpData)

NewEmp <- data.frame(
  Name = "Kerry",
  Age = 51,
  Location = "West",
  HireDate = as.Date("2016/06/28"),
  stringsAsFactors = FALSE)
EmpData <- rbind(EmpData, NewEmp)
print(EmpData)

# Page 81, if and if else
A <- 3
B <- 4
if (A < B)
{
  print("Less than!")
}

MyStrings <- c("This", "is", "a", "string.")
if ("This" %in% MyStrings)
{
  print("Found!")
} else
{
  Print("Not Found.")
}

# Page 82, switch and loops
Num <- as.integer(readline(
  "Enter a number between 1 and 5: "))
Result <- switch(
  Num,
  "One",
  "2",
  "It's Three!",
  "Almost There!",
  "Done!")
print(Result)

Count <- 1
repeat
{
  print(Count)
  if (Count > 5)
  {
    break
  }
  Count <- Count + 1
}

Count <- 1
while (Count <= 6)
{
  print(Count)
  Count <- Count + 1
}

MyStrings <- c("This", "is", "a", "string.")
for (AString in MyStrings)
{
  print(AString)
}

IntValues <- c(1, 4, 5, 9, 2)
DecValues <- IntValues * 0.1
print(DecValues)

# Page 85 Functions
LessThan <- function(Value1, Value2)
{
  if(Value1 < Value2)
  {
    result <- TRUE
  }
  else
  {
    result <- FALSE
  }
}

MySamples <- c(19, 4, 5, 7, 29, 19, 29, 13, 25, 19, 42)
print(mean(MySamples, trim=0, na.rm=FALSE))
print(median(MySamples, na.rm=FALSE))

install.packages("modeest")
library(modeest)
MySamples <- c(19, 4, 5, 7, 29, 19, 29, 13, 25, 19, 42)
mlv(MySamples, method = "mfv")
library(help = "modeest")

# Page 87, barplot(H,xlab,ylab,main, names.arg,col)
MySamples <- c(19, 4, 5, 7, 29, 19, 29, 13, 25, 19, 42)
barplot(MySamples)