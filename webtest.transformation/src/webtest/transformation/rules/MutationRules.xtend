package webtest.transformation.rules

import java.util.ArrayList
import java.util.List
import org.eclipse.viatra.transformation.runtime.emf.rules.batch.BatchTransformationRule
import org.eclipse.viatra.transformation.runtime.emf.rules.batch.BatchTransformationRuleFactory
import webtest.transformation.queries.Queries
import webtest.model.ModelFactory

class MutationRules {
	val extension BatchTransformationRuleFactory ruleFactory = new BatchTransformationRuleFactory()
	val extension Queries queries = Queries.instance
	val extension ModelFactory factory = ModelFactory.eINSTANCE
		
	def initRules() {
		val List<BatchTransformationRule<?, ?>> rules = new ArrayList;
		
		rules += createRule(simpleQuery).action[		// <- precondition 
			it.variable.name = it.variable.name + "X";  // <- action
		].build											// <- don't forget to build!

//		// new rules are going here!		
//		rules += createRule(nameOfMyQuery).action[		// <- precondition 
//			// the code that operates on the matches of // <- action
//			// the precondition goes here!		
//			// If you need to create new objects, use
//			// the factory methods, e.g.,
//			// "createIntegerExpression"		
//		].build											// <- don't forget to build!
		
		return rules
	}
	
	def static void main(String[] args) {
		val model = "examples/calculator.xmi"
		val output = "output/calculator-mutated.xmi"
		
		Simulation.init()
		Simulation.simulate(model,output,(new MutationRules).initRules,2)
	}
}