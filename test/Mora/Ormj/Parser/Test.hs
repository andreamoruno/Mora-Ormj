module Mora.Ormj.Parser.Test where

import Content
import Mora.Ormj.Parser

testSingleParser = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/java/openjdk-6-src-b27/jdk/src/share/classes/com/sun/demo/jvmti/hprof/Tracker.java"

testAllTypeParser = do
                       res <- recursiveContentsParser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser"
                       let tokens = res
                       putStr (show tokens)

testParser = do
                res <- recursiveContentsParser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test"
                let tokens = res
                putStr (show tokens)

tsp0 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/0compilationUnit.mora"
tsp1 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/1compilationUnitSimple.mora"
tsp2 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/2packageDeclarationMarkerAnnotation.mora"
tsp2_1 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/2packageDeclarationNormalAnnotation1.mora"
tsp2_2 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/2packageDeclarationNormalAnnotation2.mora"
tsp2_3 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/2packageDeclarationNormalAnnotation3.mora"
tsp2_4 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/2packageDeclarationSimple.mora"
tsp2_5 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/2packageDeclarationSingleElementAnnotation1.mora"
tsp7 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/7elementValuePairs.mora"
tsp8 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/8elementValuePair.mora"
tsp9 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/9elementValue.mora"
tsp10 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/10conditionalExpression.mora"
tsp11 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/11conditionalOrExpression.mora"
tsp17 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/17relationalExpression.mora"
tsp18 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/18shiftExpression.mora"
tsp19 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/19additiveExpression.mora"
tsp21 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/21unaryExpression.mora"
tsp24 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/24unaryExpressionNotPlusMinus.mora"
tsp25 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/25postfixExpression.mora"
tsp26 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/26primary.mora"
tsp27 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/27primaryNoNewArray.mora"
tsp28 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/28literal.mora"
tsp29 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/29type.mora"
tsp30 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/30primitiveType.mora"
tsp34 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/34referenceType.mora"
tsp35 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/35classOrInterfaceType.mora"
tsp38 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/38typeArguments.mora"
tsp40 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/40actualTypeArgument.mora"
tsp47 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/47expression.mora"
tsp49 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/49assignment.mora"
tsp56 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/56classInstanceCreationExpression.mora"
tsp58 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/58methodInvocation.mora"
tsp62 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/62arrayCreationExpression.mora"
tsp69 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/69postIncrementExpression.mora"
tsp70 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/70postDecrementExpression.mora"
tsp71 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/71castExpression.mora"
tsp72 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/72elementValueArrayInitializer.mora"
tsp76 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/76packageName.mora"
tsp77 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/77importDeclarations.mora"
tsp84 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/84typeDeclarations.mora"
tsp85 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/85typeDeclaration0.mora"
tsp85_1 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/85typeDeclaration1.mora"
tsp85_2 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/85typeDeclaration2.mora"
tsp86_1 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/86classDeclaration1.mora"
tsp87 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/87normalClassDeclaration.mora"
tsp92 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/92typeParameter.mora"
tsp96 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/96super.mora"
tsp97 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/97interfaces.mora"
tsp99 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/99classBody.mora"
tsp102 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/102classMemberDeclaration.mora"
tsp110 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/110methodDeclaration.mora"
tsp127 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/127block.mora"
tsp132 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/132statement.mora"
tsp132_1 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/132statement1.mora"
tsp133 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/133statementWithoutTrailingSubstatement.mora"
tsp154 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/154switchStatement.mora"
tsp162 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/162doStatement.mora"
tsp166 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/166ifThenElseStatement.mora"
tsp167 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/167statementNoShortIf.mora"
tsp179 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/179interfaceDeclaration.mora"
tsp193 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/193annotationTypeDeclaration.mora"
tsp198 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/198enumDeclaration.mora"
tsp203 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/203instanceInitializer.mora"
tsp204 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/204staticInitializer.mora"
tsp205 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/205constructorDeclaration.mora"
tspClase = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/Clase.mora"
tspclase1 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/clase1.mora"
tspclase2 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/clase2.mora"
tspClass = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/Class.mora"
tspEV = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/elemenValueVsElementValuePairs.mora"
tspImport = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/Import.mora"
tspPI = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/PackageImportTest.mora"
tspPC = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/PruebaConditionalExpression.mora"
tspPP = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/PruebaParser.mora"

tspj1 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/java/AbstractApplicationContextTests.java"
tspj2 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/java/AbstractAttributes.java"
tspj3 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/java/AbstractBeanFactoryTests.java"
tspj4 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/java/AbstractControlFlowTests.java"
tspj5 = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/java/AbstractListableBeanFactoryTests.java"

tspj = parser "/home/andrea/workspaceclipse_haskell/Mora-Ormj/test/Mora/Ormj/Parser/java/CharArrayPropertyEditorTests.java"