package webtest.transformation.querytest

import org.junit.jupiter.api.Test
import static org.junit.jupiter.api.Assertions.*
import static webtest.transformation.util.QueryLoader.*

class QueryTests {
	//ModelLoader modelLoader = new ModelLoader
	//QueryLoader queryLoader = new QueryLoader;//(modelLoader.load("examples/Main.xmi"))
	
	@Test
	def void queryFound() {
		assertTrue(hasQuery("simpleQuery"))
	}
	@Test
	def void queryNotFound() {
		assertFalse(hasQuery("invalid query name, you should not have any query with this name"))
	}
	
	// Common Tests
	@Test
	def void test1() { assertEquals(0,numberOfMatches("examples/Main.xmi", "variableSameElement")) }
	@Test
	def void test2() { assertEquals(0,numberOfMatches("examples/Main.xmi", "variableSameString")) }
	@Test
	def void test3() { assertEquals(0,numberOfMatches("examples/Main.xmi", "variableExpressionLoop")) }
	@Test
	def void test4() { assertEquals(0,numberOfMatches("examples/Main.xmi", "waitSecondsNotInteger")) }
	@Test
	def void test5() { assertEquals(0,numberOfMatches("examples/Main.xmi", "waitConditionNotBoolean")) }
	@Test
	def void test6() { assertEquals(0,numberOfMatches("examples/Main.xmi", "twoDeepVariableExpression")) }
	@Test
	def void test7() { assertEquals(0,numberOfMatches("examples/Main.xmi", "tenDeepvariableExpression")) }
	@Test
	def void test8() { assertEquals(0,numberOfMatches("examples/Main.xmi", "operationWithThreeParameters")) }
	@Test
	def void test9() { assertEquals(0,numberOfMatches("examples/HelloWorld.xmi", "variableSameElement")) }
	@Test
	def void test10() { assertEquals(0,numberOfMatches("examples/HelloWorld.xmi", "variableSameString")) }
	@Test
	def void test11() { assertEquals(0,numberOfMatches("examples/HelloWorld.xmi", "variableExpressionLoop")) }
	@Test
	def void test12() { assertEquals(0,numberOfMatches("examples/HelloWorld.xmi", "waitSecondsNotInteger")) }
	@Test
	def void test13() { assertEquals(0,numberOfMatches("examples/HelloWorld.xmi", "waitConditionNotBoolean")) }
	@Test
	def void test14() { assertEquals(0,numberOfMatches("examples/HelloWorld.xmi", "twoDeepVariableExpression")) }
	@Test
	def void test15() { assertEquals(0,numberOfMatches("examples/HelloWorld.xmi", "tenDeepvariableExpression")) }
	@Test
	def void test16() { assertEquals(0,numberOfMatches("examples/HelloWorld.xmi", "operationWithThreeParameters")) }
	@Test
	def void test17() { assertEquals(0,numberOfMatches("examples/calculator.xmi", "variableSameElement")) }
	@Test
	def void test18() { assertEquals(0,numberOfMatches("examples/calculator.xmi", "variableSameString")) }
	@Test
	def void test19() { assertEquals(0,numberOfMatches("examples/calculator.xmi", "variableExpressionLoop")) }
	@Test
	def void test20() { assertEquals(0,numberOfMatches("examples/calculator.xmi", "waitSecondsNotInteger")) }
	@Test
	def void test21() { assertEquals(0,numberOfMatches("examples/calculator.xmi", "waitConditionNotBoolean")) }
	@Test
	def void test22() { assertEquals(0,numberOfMatches("examples/calculator.xmi", "twoDeepVariableExpression")) }
	@Test
	def void test23() { assertEquals(0,numberOfMatches("examples/calculator.xmi", "tenDeepvariableExpression")) }
	@Test
	def void test24() { assertEquals(1,numberOfMatches("examples/calculator.xmi", "operationWithThreeParameters")) }
	@Test
	def void test25() { assertEquals(0,numberOfMatches("examples/google.xmi", "variableSameElement")) }
	@Test
	def void test26() { assertEquals(0,numberOfMatches("examples/google.xmi", "variableSameString")) }
	@Test
	def void test27() { assertEquals(0,numberOfMatches("examples/google.xmi", "variableExpressionLoop")) }
	@Test
	def void test28() { assertEquals(0,numberOfMatches("examples/google.xmi", "waitSecondsNotInteger")) }
	@Test
	def void test29() { assertEquals(0,numberOfMatches("examples/google.xmi", "waitConditionNotBoolean")) }
	@Test
	def void test30() { assertEquals(0,numberOfMatches("examples/google.xmi", "twoDeepVariableExpression")) }
	@Test
	def void test31() { assertEquals(0,numberOfMatches("examples/google.xmi", "tenDeepvariableExpression")) }
	@Test
	def void test32() { assertEquals(0,numberOfMatches("examples/google.xmi", "operationWithThreeParameters")) }
	@Test
	def void test33() { assertEquals(0,numberOfMatches("examples/dialog.xmi", "variableSameElement")) }
	@Test
	def void test34() { assertEquals(0,numberOfMatches("examples/dialog.xmi", "variableSameString")) }
	@Test
	def void test35() { assertEquals(0,numberOfMatches("examples/dialog.xmi", "variableExpressionLoop")) }
	@Test
	def void test36() { assertEquals(0,numberOfMatches("examples/dialog.xmi", "waitSecondsNotInteger")) }
	@Test
	def void test37() { assertEquals(0,numberOfMatches("examples/dialog.xmi", "waitConditionNotBoolean")) }
	@Test
	def void test38() { assertEquals(0,numberOfMatches("examples/dialog.xmi", "twoDeepVariableExpression")) }
	@Test
	def void test39() { assertEquals(0,numberOfMatches("examples/dialog.xmi", "tenDeepvariableExpression")) }
	@Test
	def void test40() { assertEquals(0,numberOfMatches("examples/dialog.xmi", "operationWithThreeParameters")) }
	@Test
	def void test41() { assertEquals(0,numberOfMatches("examples/wizard.xmi", "variableSameElement")) }
	@Test
	def void test42() { assertEquals(0,numberOfMatches("examples/wizard.xmi", "variableSameString")) }
	@Test
	def void test43() { assertEquals(0,numberOfMatches("examples/wizard.xmi", "variableExpressionLoop")) }
	@Test
	def void test44() { assertEquals(0,numberOfMatches("examples/wizard.xmi", "waitSecondsNotInteger")) }
	@Test
	def void test45() { assertEquals(0,numberOfMatches("examples/wizard.xmi", "waitConditionNotBoolean")) }
	@Test
	def void test46() { assertEquals(0,numberOfMatches("examples/wizard.xmi", "twoDeepVariableExpression")) }
	@Test
	def void test47() { assertEquals(0,numberOfMatches("examples/wizard.xmi", "tenDeepvariableExpression")) }
	@Test
	def void test48() { assertEquals(0,numberOfMatches("examples/wizard.xmi", "operationWithThreeParameters")) }
	@Test
	def void test49() { assertEquals(2,numberOfMatches("error-examples/calculator-1.xmi", "variableSameElement")) }
	@Test
	def void test50() { assertEquals(0,numberOfMatches("error-examples/calculator-1.xmi", "variableSameString")) }
	@Test
	def void test51() { assertEquals(1,numberOfMatches("error-examples/calculator-1.xmi", "variableExpressionLoop")) }
	@Test
	def void test52() { assertEquals(0,numberOfMatches("error-examples/calculator-1.xmi", "waitSecondsNotInteger")) }
	@Test
	def void test53() { assertEquals(0,numberOfMatches("error-examples/calculator-1.xmi", "waitConditionNotBoolean")) }
	@Test
	def void test54() { assertEquals(11,numberOfMatches("error-examples/calculator-1.xmi", "twoDeepVariableExpression")) }
	@Test
	def void test55() { assertEquals(1,numberOfMatches("error-examples/calculator-1.xmi", "tenDeepvariableExpression")) }
	@Test
	def void test56() { assertEquals(1,numberOfMatches("error-examples/calculator-1.xmi", "operationWithThreeParameters")) }
	@Test
	def void test57() { assertEquals(0,numberOfMatches("error-examples/dialog-1.xmi", "variableSameElement")) }
	@Test
	def void test58() { assertEquals(2,numberOfMatches("error-examples/dialog-1.xmi", "variableSameString")) }
	@Test
	def void test59() { assertEquals(0,numberOfMatches("error-examples/dialog-1.xmi", "variableExpressionLoop")) }
	@Test
	def void test60() { assertEquals(1,numberOfMatches("error-examples/dialog-1.xmi", "waitSecondsNotInteger")) }
	@Test
	def void test61() { assertEquals(0,numberOfMatches("error-examples/dialog-1.xmi", "waitConditionNotBoolean")) }
	@Test
	def void test62() { assertEquals(0,numberOfMatches("error-examples/dialog-1.xmi", "twoDeepVariableExpression")) }
	@Test
	def void test63() { assertEquals(0,numberOfMatches("error-examples/dialog-1.xmi", "tenDeepvariableExpression")) }
	@Test
	def void test64() { assertEquals(0,numberOfMatches("error-examples/dialog-1.xmi", "operationWithThreeParameters")) }
	@Test
	def void test65() { assertEquals(0,numberOfMatches("error-examples/google-1.xmi", "variableSameElement")) }
	@Test
	def void test66() { assertEquals(0,numberOfMatches("error-examples/google-1.xmi", "variableSameString")) }
	@Test
	def void test67() { assertEquals(0,numberOfMatches("error-examples/google-1.xmi", "variableExpressionLoop")) }
	@Test
	def void test68() { assertEquals(0,numberOfMatches("error-examples/google-1.xmi", "waitSecondsNotInteger")) }
	@Test
	def void test69() { assertEquals(1,numberOfMatches("error-examples/google-1.xmi", "waitConditionNotBoolean")) }
	@Test
	def void test70() { assertEquals(0,numberOfMatches("error-examples/google-1.xmi", "twoDeepVariableExpression")) }
	@Test
	def void test71() { assertEquals(0,numberOfMatches("error-examples/google-1.xmi", "tenDeepvariableExpression")) }
	@Test
	def void test72() { assertEquals(0,numberOfMatches("error-examples/google-1.xmi", "operationWithThreeParameters")) }
	
//	// Capture Tests
//	def void test73() { assertEquals(0,numberOfMatches("examples/Capture.xmi", "variableSameElement")) }
//	@Test
//	def void test74() { assertEquals(0,numberOfMatches("examples/Capture.xmi", "variableSameString")) }
//	@Test
//	def void test75() { assertEquals(0,numberOfMatches("examples/Capture.xmi", "variableExpressionLoop")) }
//	@Test
//	def void test76() { assertEquals(0,numberOfMatches("examples/Capture.xmi", "waitSecondsNotInteger")) }
//	@Test
//	def void test77() { assertEquals(0,numberOfMatches("examples/Capture.xmi", "waitConditionNotBoolean")) }
//	@Test
//	def void test78() { assertEquals(0,numberOfMatches("examples/Capture.xmi", "twoDeepVariableExpression")) }
//	@Test
//	def void test79() { assertEquals(0,numberOfMatches("examples/Capture.xmi", "tenDeepvariableExpression")) }
//	@Test
//	def void test80() { assertEquals(0,numberOfMatches("examples/Capture.xmi", "operationWithThreeParameters")) }
//	
//	// ForEach Tests
//	@Test
//	def void test81() { assertEquals(0,numberOfMatches("examples/ForEach.xmi", "variableSameElement")) }
//	@Test
//	def void test82() { assertEquals(0,numberOfMatches("examples/ForEach.xmi", "variableSameString")) }
//	@Test
//	def void test83() { assertEquals(0,numberOfMatches("examples/ForEach.xmi", "variableExpressionLoop")) }
//	@Test
//	def void test84() { assertEquals(0,numberOfMatches("examples/ForEach.xmi", "waitSecondsNotInteger")) }
//	@Test
//	def void test85() { assertEquals(0,numberOfMatches("examples/ForEach.xmi", "waitConditionNotBoolean")) }
//	@Test
//	def void test86() { assertEquals(0,numberOfMatches("examples/ForEach.xmi", "twoDeepVariableExpression")) }
//	@Test
//	def void test87() { assertEquals(0,numberOfMatches("examples/ForEach.xmi", "tenDeepvariableExpression")) }
//	@Test
//	def void test88() { assertEquals(0,numberOfMatches("examples/ForEach.xmi", "operationWithThreeParameters")) }
//	
//	// JavaScript Tests
//	@Test
//	def void test89() { assertEquals(0,numberOfMatches("examples/JavaScript.xmi", "variableSameElement")) }
//	@Test
//	def void test90() { assertEquals(0,numberOfMatches("examples/JavaScript.xmi", "variableSameString")) }
//	@Test
//	def void test91() { assertEquals(0,numberOfMatches("examples/JavaScript.xmi", "variableExpressionLoop")) }
//	@Test
//	def void test92() { assertEquals(0,numberOfMatches("examples/JavaScript.xmi", "waitSecondsNotInteger")) }
//	@Test
//	def void test93() { assertEquals(0,numberOfMatches("examples/JavaScript.xmi", "waitConditionNotBoolean")) }
//	@Test
//	def void test94() { assertEquals(0,numberOfMatches("examples/JavaScript.xmi", "twoDeepVariableExpression")) }
//	@Test
//	def void test95() { assertEquals(0,numberOfMatches("examples/JavaScript.xmi", "tenDeepvariableExpression")) }
//	@Test
//	def void test96() { assertEquals(0,numberOfMatches("examples/JavaScript.xmi", "operationWithThreeParameters")) }
//	
//	// ManualTest Tests
//	@Test
//	def void test97() { assertEquals(0,numberOfMatches("examples/ManualTest.xmi", "variableSameElement")) }
//	@Test
//	def void test98() { assertEquals(0,numberOfMatches("examples/ManualTest.xmi", "variableSameString")) }
//	@Test
//	def void test99() { assertEquals(0,numberOfMatches("examples/ManualTest.xmi", "variableExpressionLoop")) }
//	@Test
//	def void test100() { assertEquals(0,numberOfMatches("examples/ManualTest.xmi", "waitSecondsNotInteger")) }
//	@Test
//	def void test101() { assertEquals(0,numberOfMatches("examples/ManualTest.xmi", "waitConditionNotBoolean")) }
//	@Test
//	def void test102() { assertEquals(0,numberOfMatches("examples/ManualTest.xmi", "twoDeepVariableExpression")) }
//	@Test
//	def void test103() { assertEquals(0,numberOfMatches("examples/ManualTest.xmi", "tenDeepvariableExpression")) }
//	@Test
//	def void test104() { assertEquals(0,numberOfMatches("examples/ManualTest.xmi", "operationWithThreeParameters")) }
//	
//	// TestParams Tests
//	@Test
//	def void test105() { assertEquals(0,numberOfMatches("examples/TestParams.xmi", "variableSameElement")) }
//	@Test
//	def void test106() { assertEquals(0,numberOfMatches("examples/TestParams.xmi", "variableSameString")) }
//	@Test
//	def void test107() { assertEquals(0,numberOfMatches("examples/TestParams.xmi", "variableExpressionLoop")) }
//	@Test
//	def void test108() { assertEquals(0,numberOfMatches("examples/TestParams.xmi", "waitSecondsNotInteger")) }
//	@Test
//	def void test109() { assertEquals(0,numberOfMatches("examples/TestParams.xmi", "waitConditionNotBoolean")) }
//	@Test
//	def void test110() { assertEquals(0,numberOfMatches("examples/TestParams.xmi", "twoDeepVariableExpression")) }
//	@Test
//	def void test111() { assertEquals(0,numberOfMatches("examples/TestParams.xmi", "tenDeepvariableExpression")) }
//	@Test
//	def void test112() { assertEquals(1,numberOfMatches("examples/TestParams.xmi", "operationWithThreeParameters")) }
	
	// Complex Tests
	@Test
	def void test113() { assertEquals(4,numberOfMatches("error-examples/complex-errors.xmi", "variableSameElement")) }
	@Test
	def void test114() { assertEquals(20,numberOfMatches("error-examples/complex-errors.xmi", "variableSameString")) }
	@Test
	def void test115() { assertEquals(6,numberOfMatches("error-examples/complex-errors.xmi", "variableExpressionLoop")) }
	@Test
	def void test116() { assertEquals(10,numberOfMatches("error-examples/complex-errors.xmi", "waitSecondsNotInteger")) }
	@Test
	def void test117() { assertEquals(4,numberOfMatches("error-examples/complex-errors.xmi", "waitConditionNotBoolean")) }
	@Test
	def void test118() { assertEquals(28,numberOfMatches("error-examples/complex-errors.xmi", "twoDeepVariableExpression")) }
	@Test
	def void test119() { assertEquals(1,numberOfMatches("error-examples/complex-errors.xmi", "tenDeepvariableExpression")) }
	@Test
	def void test120() { assertEquals(1,numberOfMatches("error-examples/complex-errors.xmi", "operationWithThreeParameters")) }

}