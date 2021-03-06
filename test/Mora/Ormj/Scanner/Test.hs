module Mora.Ormj.Scanner.Test where

import Mora.Ormj.Scanner
import Content

import Mora.Ormj.Scanner.Position
import UU.Scanner.Position
import Control.Exception(evaluate)
import Control.Monad(forM, liftM)


import Control.Proxy
import Control.Proxy.Safe hiding (readFileS)
import System.FilePath ((</>), takeFileName)
import Content



testSingleScanner = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/java/openjdk-6-src-b27/jdk/src/share/classes/com/sun/demo/jvmti/hprof/Tracker.java"

testAllTypeScanner = do
                       res <- recursiveContentsScanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Scanner"
                       let tokens = res
                       putStr (show tokens)

-- testScanner = do
--                 res <- recursiveContentsScanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test"
--                 let tokens = res
--                putStr (show tokens)

-- testScanner = do
--                res <- recursiveContentsScanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test"
--                 mapM f res
--                    where f res = readFile res >>= (\r ->  evaluate (classify r (initPos r)))
--

testScanner  = runSafeIO $ runProxy $ runEitherK $
                    contentsRecursive "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test" />/ handler

testJavaTest  = runSafeIO $ runProxy $ runEitherK $
                    contentsRecursive "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/java/openjdk-6-src-b27/jdk/test/java/lang/StrictMath/" />/ handler

testJavaTest2  = runSafeIO $ runProxy $ runEitherK $
                    contentsRecursive "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/java/openjdk-6-src-b27/langtools/test/" />/ handler

testEncodingDir = runSafeIO $ runProxy $ runEitherK $
                                      contentsRecursive "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/java/openjdk-6-src-b27/langtools/test/com/sun/javadoc/testEncoding/" />/ handler





-- OK resolved testFloat = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/java/openjdk-6-src-b27/jdk/test/java/lang/StrictMath/Expm1Tests.java"
-- testear codificacion
testEncode = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/java/openjdk-6-src-b27/langtools/test/com/sun/javadoc/testEncoding/EncodeTest.java"
testFloat = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/java/openjdk-6-src-b27/jdk/test/java/lang/StrictMath/Log1pTests.java"
testFloat2 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/tmp/testfloat.java"
tssswitchboard = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/java/SwitchBoardController.java"

testScannerWithError1 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/java/openjdk-6-src-b27/jdk/test/sun/security/rsa/TestKeyFactory.java"
testScannerWithError2  = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/java/openjdk-6-src-b27/jdk/test/com/sun/crypto/provider/Cipher/DES/PerformanceTest.java"
testScannerWithError  = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/java/openjdk-6-src-b27/jdk/test/java/lang/StrictMath/Log1pTests.java"

tss0 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/0compilationUnit.mora"
tss1 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/1compilationUnitSimple.mora"
tss2 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/2packageDeclarationMarkerAnnotation.mora"
tss2_1 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/2packageDeclarationNormalAnnotation1.mora"
tss2_2 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/2packageDeclarationNormalAnnotation2.mora"
tss2_3 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/2packageDeclarationNormalAnnotation3.mora"
tss2_4 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/2packageDeclarationSimple.mora"
tss2_5 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/2packageDeclarationSingleElementAnnotation1.mora"
tss7 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/7elementValuePairs.mora"
tss8 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/8elementValuePair.mora"
tss9 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/9elementValue.mora"
tss10 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/10conditionalExpression.mora"
tss11 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/11conditionalOrExpression.mora"
tss17 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/17relationalExpression.mora"
tss18 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/18shiftExpression.mora"
tss19 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/19additiveExpression.mora"
tss21 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/21unaryExpression.mora"
tss24 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/24unaryExpressionNotPlusMinus.mora"
tss25 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/25postfixExpression.mora"
tss26 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/26primary.mora"
tss27 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/27primaryNoNewArray.mora"
tss28 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/28literal.mora"
tss29 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/29type.mora"
tss30 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/30primitiveType.mora"
tss34 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/34referenceType.mora"
tss35 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/35classOrInterfaceType.mora"
tss38 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/38typeArguments.mora"
tss40 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/40actualTypeArgument.mora"
tss47 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/47expression.mora"
tss49 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/49assignment.mora"
tss56 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/56classInstanceCreationExpression.mora"
tss58 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/58methodInvocation.mora"
tss62 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/62arrayCreationExpression.mora"
tss69 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/69postIncrementExpression.mora"
tss70 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/70postDecrementExpression.mora"
tss71 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/71castExpression.mora"
tss72 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/72elementValueArrayInitializer.mora"
tss76 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/76packageName.mora"
tss77 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/77importDeclarations.mora"
tss84 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/84typeDeclarations.mora"
tss85 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/85typeDeclaration0.mora"
tss85_1 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/85typeDeclaration1.mora"
tss85_2 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/85typeDeclaration2.mora"
tss86_1 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/86classDeclaration1.mora"
tss87 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/87normalClassDeclaration.mora"
tss92 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/92typeParameter.mora"
tss96 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/96super.mora"
tss97 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/97interfaces.mora"
tss99 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/99classBody.mora"
tss102 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/102classMemberDeclaration.mora"
tss110 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/110methodDeclaration.mora"
tss127 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/127block.mora"
tss132 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/132statement.mora"
tss132_1 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/132statement1.mora"
tss133 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/133statementWithoutTrailingSubstatement.mora"
tss154 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/154switchStatement.mora"
tss162 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/162doStatement.mora"
tss166 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/166ifThenElseStatement.mora"
tss167 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/167statementNoShortIf.mora"
tss179 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/179interfaceDeclaration.mora"
tss193 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/193annotationTypeDeclaration.mora"
tss198 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/198enumDeclaration.mora"
tss203 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/203instanceInitializer.mora"
tss204 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/204staticInitializer.mora"
tss205 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/205constructorDeclaration.mora"
tssClase = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/Clase.mora"
tssclase1 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/clase1.mora"
tssclase2 = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/clase2.mora"
tssClass = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/Class.mora"
tssEV = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/elemenValueVsElementValuePairs.mora"
tssImport = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/Import.mora"
tssPI = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/PackageImportTest.mora"
tssPC = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/PruebaConditionalExpression.mora"
tssPP = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/PruebaParser.mora"

tssj = scanner "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/java/CharArrayPropertyEditorTests.java"


