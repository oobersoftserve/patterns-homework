//Adapter pattern
//DocumentParser - concrete class implementing Parser interface 
public class DocumentParser implements Parser {
    
    ParserAdapter adapter;

    public override void parse(String fileType, String fileName) {

        //inbuilt support to parse txt  files
        if(fileType.contains('.txt')) {
            parser = new XmlParser();
        } 
        
        //adapter is providing support to parse other file formats
        else if(fileType.contains('.json') || fileType.contains('xml')) {
            parser = new ParserAdapter(fileType);
            parser.parse(fileType, fileName);
        }

        else {
            System.debug('Format not supported ' + fileType);
        }
    }
}
