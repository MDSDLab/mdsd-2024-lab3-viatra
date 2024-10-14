package webtest.transformation.rules

import org.eclipse.emf.ecore.resource.Resource
import java.util.List
import org.eclipse.viatra.transformation.runtime.emf.rules.batch.BatchTransformationRule
import org.eclipse.viatra.query.runtime.api.ViatraQueryEngine
import org.eclipse.viatra.query.runtime.emf.EMFScope
import org.eclipse.viatra.query.runtime.api.IPatternMatch
import org.eclipse.viatra.query.runtime.api.ViatraQueryMatcher
import java.util.function.Consumer
import java.util.Random
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import webtest.model.ModelPackage
import org.eclipse.emf.ecore.xmi.impl.XMIResourceFactoryImpl
import org.eclipse.emf.common.util.URI

class Simulation {
	def static init() {
		ModelPackage.eINSTANCE.eClass
		Resource.Factory.Registry.INSTANCE.extensionToFactoryMap.put("xmi",new XMIResourceFactoryImpl);
	}
		
	def static simulate(String model, String output, List<BatchTransformationRule<?, ?>> rules, int steps) {
		val ResourceSet rs = new ResourceSetImpl;
		val resource = rs.getResource(URI.createURI(model),true);
		
		val engine = ViatraQueryEngine.on(new EMFScope(resource));
		val preconditions = rules.map[it.precondition.getMatcher(engine)].toList
		val actions = rules.map[it.action].toList

		val random = new Random;
		for(var i =0; i<steps; i++) {
			fireRandom(preconditions,actions,random)
		}
		
		val outputModel = rs.createResource(URI.createURI(output))
		outputModel.contents.add(resource.contents.get(0))
		outputModel.save(emptyMap)
		println('''Model saved to «output»!''')
	}

	def static fireRandom(List<ViatraQueryMatcher<? extends IPatternMatch>> preconditions,
		List<Consumer<? extends IPatternMatch>> actions, Random random) {
		val sum = preconditions.map[it.countMatches].reduce[p1, p2|p1 + p2];
		if(sum === 0){
			return false;
		} else {
			var needToBeSkipped = random.nextInt(sum);
			var index = 0;
			
			while(needToBeSkipped >= preconditions.get(index).countMatches) {
				needToBeSkipped -= preconditions.get(index).countMatches
				index++
			}
			
			val iterator = preconditions.get(index).allMatches.iterator
			while(needToBeSkipped>0) {
				iterator.next
				needToBeSkipped--
			}
			val match = iterator.next
			val action = actions.get(index)
			fireMatch(match,action);
			println('''«preconditions.get(index).specification.simpleName» fired!''')
		}
	}
	
	def static fireMatch(IPatternMatch match, Consumer<? extends IPatternMatch> action) {
		(action as Consumer<IPatternMatch>).accept(match);
	}
}
