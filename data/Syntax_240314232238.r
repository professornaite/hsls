#/************************************************************************
#*** You may need to edit this code.                                  ***
#***                                                                  ***
#*** Please check all SETWD statements before running this code.      ***
#***                                                                  ***
#*** You may have selected variables that contain missing data or     ***
#*** valid skips. You may wish to recode one or both of these special ***
#*** values. You need to consult the Variable Description to see if   ***
#*** these special codes apply to your extracted variables. You can   ***
#*** recode these special values to missing using the "car" package   ***
#*** and the following sample code:                                   ***
#***                                                                  ***
#*** {variable name} <- recode({variable name},"c({value}) = NA")     ***
#***                                                                  ***
#*** Replace {variable name} above with the name of the variable you  ***
#*** wish to recode. Replace {value} with the special value you wish  ***
#*** to recode to missing.                                            ***
#***                                                                  ***
#*** It is important to retain full sample weights, replicate         ***
#*** weights, and identification numbers as appropriate.              ***
#************************************************************************/

# Change working directory
setwd("C:/OnlineCodebook/HSLS")

# Load R Data File
load("HSLS_09_SCHOOL_v1_0.rdata")

# Create vector of selected variables
keepvars <- c(
   "W1SCHOOL"
)

# Create new object containing only selected variables
HSLS_09_SCHOOL_v1_0_240314232238 <- HSLS_09_SCHOOL_v1_0[keepvars]

# Save dataset
save(HSLS_09_SCHOOL_v1_0_240314232238, file="HSLS_09_SCHOOL_v1_0_240314232238.rdata")

# Set the working dataset
attach(HSLS_09_SCHOOL_v1_0_240314232238)


# Display summary statistics for continuous variables, missing values excluded
mean(W1SCHOOL,na.rm=TRUE)
median(W1SCHOOL,na.rm=TRUE)
range(W1SCHOOL,na.rm=TRUE)


# Load R Data File
load("HSLS_17_STUDENT_PETS_SR_v1_0.rdata")

# Create vector of selected variables
keepvars <- c(
   "W1STUDENT",
   "W1PARENT",
   "W1MATHTCH",
   "W1SCITCH",
   "W2STUDENT",
   "W2W1STU",
   "W2PARENT",
   "W2W1PAR",
   "X1TXMTH",
   "X1TXMSEM",
   "X1TXMSCR",
   "X1TXMTSCOR",
   "X1TXMQUINT",
   "X1TXMPROF1",
   "X1TXMPROF2",
   "X1TXMPROF3",
   "X1TXMPROF4",
   "X1TXMPROF5",
   "X1MACC",
   "X1MTHID",
   "X1MTHUTI",
   "X1MTHEFF",
   "X1MTHINT",
   "X1TESTSTAT",
   "X1TESTDATE",
   "X1TMQSTAT",
   "X1TMLINK",
   "X1TMCRSLINK",
   "X1TMRACE",
   "X1TMCERT",
   "X1TMCOMM",
   "X1TMEFF",
   "X1TMEXP",
   "X1TMPRINC",
   "X1TMRESP",
   "X2TXMTH",
   "X2TXMSEM",
   "X2TXMSCR",
   "X2X1TXMSCR",
   "X2TXMTSCOR",
   "X2TXMQUINT",
   "X2TXMPROF1",
   "X2TXMPROF2",
   "X2TXMPROF3",
   "X2TXMPROF4",
   "X2TXMPROF5",
   "X2TXMPROF6",
   "X2TXMPROF7",
   "X2MACC",
   "X2MEFFORT ",
   "X2MTHID",
   "X2MTHUTI",
   "X2MTHEFF",
   "X2MTHINT_R",
   "X2TESTSTAT",
   "X3T1CREDINTM",
   "X3TCREDAPMTH",
   "X3TCREDMAT",
   "X3THIMATH",
   "X3THIMATH9",
   "X3TGPAMAT",
   "X3TGPAHIMTH",
   "X3TCREDMTSC",
   "X3TGPAMTHAP",
   "X3TCRSES1",
   "X3TCRSES2",
   "X3TCRSES3",
   "X3TCRSES4",
   "X3TCRSES5",
   "X3TXSATMATH",
   "X3TXAPMATCOM",
   "X3TXSATMAT1",
   "X3TXSATMAT2",
   "X4TXSATMATH",
   "X4ENTMJST",
   "X5REMMTTOT",
   "X5REMMTHPS",
   "X5REMMTRAT",
   "X5CMTHATT",
   "X5CMTHERN",
   "S1MCLUB",
   "S1MCAMP",
   "S1MTUTOR",
   "S1NOMSACT",
   "S1MPERSON1",
   "S1MPERSON2",
   "S1MUNDERST",
   "S1MFALL09",
   "S1REVM09",
   "S1INTGM109",
   "M1SEX",
   "M1HISP",
   "M1WHITE",
   "M1BLACK",
   "M1ASIAN",
   "M1PACISLE",
   "M1AMINDIAN",
   "M1HIDEG",
   "M1HIDEGYR",
   "A1FTMTCHRS"
)

# Create new object containing only selected variables
HSLS_17_STUDENT_PETS_SR_v1_0_240314232238 <- HSLS_17_STUDENT_PETS_SR_v1_0[keepvars]

# Save dataset
save(HSLS_17_STUDENT_PETS_SR_v1_0_240314232238, file="HSLS_17_STUDENT_PETS_SR_v1_0_240314232238.rdata")

# Set the working dataset
attach(HSLS_17_STUDENT_PETS_SR_v1_0_240314232238)

# Display frequencies for the categorical variables
table(X1TXMQUINT)
table(X1MACC)
table(X1TESTSTAT)
table(X1TMQSTAT)
table(X1TMLINK)
table(X1TMCRSLINK)
table(X1TMRACE)
table(X1TMCERT)
table(X2TXMQUINT)
table(X2MACC)
table(X2TESTSTAT)
table(X3T1CREDINTM)
table(X3THIMATH)
table(X3THIMATH9)
table(X3TCRSES1)
table(X3TCRSES2)
table(X3TCRSES3)
table(X3TCRSES4)
table(X3TCRSES5)
table(X3TXAPMATCOM)
table(X4ENTMJST)
table(S1MCLUB)
table(S1MCAMP)
table(S1MTUTOR)
table(S1NOMSACT)
table(S1MPERSON1)
table(S1MPERSON2)
table(S1MUNDERST)
table(S1MFALL09)
table(S1REVM09)
table(S1INTGM109)
table(M1SEX)
table(M1HISP)
table(M1WHITE)
table(M1BLACK)
table(M1ASIAN)
table(M1PACISLE)
table(M1AMINDIAN)
table(M1HIDEG)

# Display summary statistics for continuous variables, missing values excluded
mean(X1TXMTH,na.rm=TRUE)
median(X1TXMTH,na.rm=TRUE)
range(X1TXMTH,na.rm=TRUE)

mean(X1TXMSEM,na.rm=TRUE)
median(X1TXMSEM,na.rm=TRUE)
range(X1TXMSEM,na.rm=TRUE)

mean(X1TXMSCR,na.rm=TRUE)
median(X1TXMSCR,na.rm=TRUE)
range(X1TXMSCR,na.rm=TRUE)

mean(X1TXMTSCOR,na.rm=TRUE)
median(X1TXMTSCOR,na.rm=TRUE)
range(X1TXMTSCOR,na.rm=TRUE)

mean(X1TXMPROF1,na.rm=TRUE)
median(X1TXMPROF1,na.rm=TRUE)
range(X1TXMPROF1,na.rm=TRUE)

mean(X1TXMPROF2,na.rm=TRUE)
median(X1TXMPROF2,na.rm=TRUE)
range(X1TXMPROF2,na.rm=TRUE)

mean(X1TXMPROF3,na.rm=TRUE)
median(X1TXMPROF3,na.rm=TRUE)
range(X1TXMPROF3,na.rm=TRUE)

mean(X1TXMPROF4,na.rm=TRUE)
median(X1TXMPROF4,na.rm=TRUE)
range(X1TXMPROF4,na.rm=TRUE)

mean(X1TXMPROF5,na.rm=TRUE)
median(X1TXMPROF5,na.rm=TRUE)
range(X1TXMPROF5,na.rm=TRUE)

mean(X1MTHID,na.rm=TRUE)
median(X1MTHID,na.rm=TRUE)
range(X1MTHID,na.rm=TRUE)

mean(X1MTHUTI,na.rm=TRUE)
median(X1MTHUTI,na.rm=TRUE)
range(X1MTHUTI,na.rm=TRUE)

mean(X1MTHEFF,na.rm=TRUE)
median(X1MTHEFF,na.rm=TRUE)
range(X1MTHEFF,na.rm=TRUE)

mean(X1MTHINT,na.rm=TRUE)
median(X1MTHINT,na.rm=TRUE)
range(X1MTHINT,na.rm=TRUE)

mean(X1TESTDATE,na.rm=TRUE)
median(X1TESTDATE,na.rm=TRUE)
range(X1TESTDATE,na.rm=TRUE)

mean(X1TMCOMM,na.rm=TRUE)
median(X1TMCOMM,na.rm=TRUE)
range(X1TMCOMM,na.rm=TRUE)

mean(X1TMEFF,na.rm=TRUE)
median(X1TMEFF,na.rm=TRUE)
range(X1TMEFF,na.rm=TRUE)

mean(X1TMEXP,na.rm=TRUE)
median(X1TMEXP,na.rm=TRUE)
range(X1TMEXP,na.rm=TRUE)

mean(X1TMPRINC,na.rm=TRUE)
median(X1TMPRINC,na.rm=TRUE)
range(X1TMPRINC,na.rm=TRUE)

mean(X1TMRESP,na.rm=TRUE)
median(X1TMRESP,na.rm=TRUE)
range(X1TMRESP,na.rm=TRUE)

mean(X2TXMTH,na.rm=TRUE)
median(X2TXMTH,na.rm=TRUE)
range(X2TXMTH,na.rm=TRUE)

mean(X2TXMSEM,na.rm=TRUE)
median(X2TXMSEM,na.rm=TRUE)
range(X2TXMSEM,na.rm=TRUE)

mean(X2TXMSCR,na.rm=TRUE)
median(X2TXMSCR,na.rm=TRUE)
range(X2TXMSCR,na.rm=TRUE)

mean(X2X1TXMSCR,na.rm=TRUE)
median(X2X1TXMSCR,na.rm=TRUE)
range(X2X1TXMSCR,na.rm=TRUE)

mean(X2TXMTSCOR,na.rm=TRUE)
median(X2TXMTSCOR,na.rm=TRUE)
range(X2TXMTSCOR,na.rm=TRUE)

mean(X2TXMPROF1,na.rm=TRUE)
median(X2TXMPROF1,na.rm=TRUE)
range(X2TXMPROF1,na.rm=TRUE)

mean(X2TXMPROF2,na.rm=TRUE)
median(X2TXMPROF2,na.rm=TRUE)
range(X2TXMPROF2,na.rm=TRUE)

mean(X2TXMPROF3,na.rm=TRUE)
median(X2TXMPROF3,na.rm=TRUE)
range(X2TXMPROF3,na.rm=TRUE)

mean(X2TXMPROF4,na.rm=TRUE)
median(X2TXMPROF4,na.rm=TRUE)
range(X2TXMPROF4,na.rm=TRUE)

mean(X2TXMPROF5,na.rm=TRUE)
median(X2TXMPROF5,na.rm=TRUE)
range(X2TXMPROF5,na.rm=TRUE)

mean(X2TXMPROF6,na.rm=TRUE)
median(X2TXMPROF6,na.rm=TRUE)
range(X2TXMPROF6,na.rm=TRUE)

mean(X2TXMPROF7,na.rm=TRUE)
median(X2TXMPROF7,na.rm=TRUE)
range(X2TXMPROF7,na.rm=TRUE)

mean(X2MEFFORT ,na.rm=TRUE)
median(X2MEFFORT ,na.rm=TRUE)
range(X2MEFFORT ,na.rm=TRUE)

mean(X2MTHID,na.rm=TRUE)
median(X2MTHID,na.rm=TRUE)
range(X2MTHID,na.rm=TRUE)

mean(X2MTHUTI,na.rm=TRUE)
median(X2MTHUTI,na.rm=TRUE)
range(X2MTHUTI,na.rm=TRUE)

mean(X2MTHEFF,na.rm=TRUE)
median(X2MTHEFF,na.rm=TRUE)
range(X2MTHEFF,na.rm=TRUE)

mean(X2MTHINT_R,na.rm=TRUE)
median(X2MTHINT_R,na.rm=TRUE)
range(X2MTHINT_R,na.rm=TRUE)

mean(X3TCREDAPMTH,na.rm=TRUE)
median(X3TCREDAPMTH,na.rm=TRUE)
range(X3TCREDAPMTH,na.rm=TRUE)

mean(X3TCREDMAT,na.rm=TRUE)
median(X3TCREDMAT,na.rm=TRUE)
range(X3TCREDMAT,na.rm=TRUE)

mean(X3TGPAMAT,na.rm=TRUE)
median(X3TGPAMAT,na.rm=TRUE)
range(X3TGPAMAT,na.rm=TRUE)

mean(X3TGPAHIMTH,na.rm=TRUE)
median(X3TGPAHIMTH,na.rm=TRUE)
range(X3TGPAHIMTH,na.rm=TRUE)

mean(X3TCREDMTSC,na.rm=TRUE)
median(X3TCREDMTSC,na.rm=TRUE)
range(X3TCREDMTSC,na.rm=TRUE)

mean(X3TGPAMTHAP,na.rm=TRUE)
median(X3TGPAMTHAP,na.rm=TRUE)
range(X3TGPAMTHAP,na.rm=TRUE)

mean(X3TXSATMATH,na.rm=TRUE)
median(X3TXSATMATH,na.rm=TRUE)
range(X3TXSATMATH,na.rm=TRUE)

mean(X3TXSATMAT1,na.rm=TRUE)
median(X3TXSATMAT1,na.rm=TRUE)
range(X3TXSATMAT1,na.rm=TRUE)

mean(X3TXSATMAT2,na.rm=TRUE)
median(X3TXSATMAT2,na.rm=TRUE)
range(X3TXSATMAT2,na.rm=TRUE)

mean(X4TXSATMATH,na.rm=TRUE)
median(X4TXSATMATH,na.rm=TRUE)
range(X4TXSATMATH,na.rm=TRUE)

mean(X5REMMTTOT,na.rm=TRUE)
median(X5REMMTTOT,na.rm=TRUE)
range(X5REMMTTOT,na.rm=TRUE)

mean(X5REMMTHPS,na.rm=TRUE)
median(X5REMMTHPS,na.rm=TRUE)
range(X5REMMTHPS,na.rm=TRUE)

mean(X5REMMTRAT,na.rm=TRUE)
median(X5REMMTRAT,na.rm=TRUE)
range(X5REMMTRAT,na.rm=TRUE)

mean(X5CMTHATT,na.rm=TRUE)
median(X5CMTHATT,na.rm=TRUE)
range(X5CMTHATT,na.rm=TRUE)

mean(X5CMTHERN,na.rm=TRUE)
median(X5CMTHERN,na.rm=TRUE)
range(X5CMTHERN,na.rm=TRUE)

mean(M1HIDEGYR,na.rm=TRUE)
median(M1HIDEGYR,na.rm=TRUE)
range(M1HIDEGYR,na.rm=TRUE)

mean(A1FTMTCHRS,na.rm=TRUE)
median(A1FTMTCHRS,na.rm=TRUE)
range(A1FTMTCHRS,na.rm=TRUE)

