package webtest.transformation.util

import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.viatra.query.runtime.api.IPatternMatch
import org.eclipse.viatra.query.runtime.api.IQuerySpecification
import org.eclipse.viatra.query.runtime.api.ViatraQueryEngine
import org.eclipse.viatra.query.runtime.api.ViatraQueryMatcher
import org.eclipse.viatra.query.runtime.emf.EMFScope
import webtest.transformation.queries.Queries
import webtest.model.ModelPackage
import org.eclipse.emf.ecore.resource.ResourceSet
import org.eclipse.emf.ecore.resource.impl.ResourceSetImpl
import org.eclipse.emf.ecore.xmi.impl.XMIResourceFactoryImpl
import org.eclipse.emf.common.util.URI

class QueryLoader {
	def static void init() {
		ModelPackage.eINSTANCE.eClass
		Resource.Factory.Registry.INSTANCE.extensionToFactoryMap.put("xmi",new XMIResourceFactoryImpl);
	}
	
	def static Resource load(String uri) {
		val ResourceSet rs = new ResourceSetImpl;
		val r = rs.getResource(URI.createURI(uri),true);
		return r;
	}
	
	private def static getQuerySpecification(String simpleName) {
		return Queries.instance.specifications.filter[simpleName.equals(it.simpleName)].head
	}
	
	def static boolean hasQuery(String simpleName) {
		init
		return getQuerySpecification(simpleName) !== null;
	}
	def static int numberOfMatches(String uri, String simpleName) {
		init
		val ResourceSet rs = new ResourceSetImpl;
		val resource = rs.getResource(URI.createURI(uri),true);
		val ViatraQueryEngine engine= ViatraQueryEngine.on(new EMFScope(resource))
		Queries.instance.prepare(engine)
		
		val specification = getQuerySpecification(simpleName)
		if(specification !== null) {
			engine.getMatcher(specification as IQuerySpecification<? extends ViatraQueryMatcher<? extends IPatternMatch>>).countMatches
		} else {
			throw new IllegalArgumentException('''There is no query called «simpleName»!''')
		}
	}
}