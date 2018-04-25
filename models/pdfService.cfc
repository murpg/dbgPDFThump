/**
* I am a new Model Object
*/
component accessors="true"{
	
	// Properties
	

	/**
	 * Constructor
	 */
	pdfService function init(){
		
		return this;
	}
	
	/**
	* @pdfPath.hint This is where your pdf is stored absolute path
	* @pdfDestination.hint This is where you want to store your pdf
	*/
	void function generate( required pdfPath string , required pdfDestination string  ){

		cfpdf( source=arguments.pdfPath, action="thumbnail", pages="1", destination=arguments.pdfDestination );
	
	}


}