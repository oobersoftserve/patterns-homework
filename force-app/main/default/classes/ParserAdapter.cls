//Adapter pattern
//Adapter class implementing Parser interface
public class ParserAdapter implements Parser {
    
    AdvancedParser parser;

    public ParserAdapter(String fileType) {

        if(fileType.contains('.xml')) {
            parser = new XmlParser();
        } else if (fileType.contains('.json')) {
            parser = new JsonParser();
        }
    }

    public override void parse(String fileType, String fileName) {

        if(fileType.contains('.xml')) {
            parser.parseXML();
        } else if (fileType.contains('.json')) {
            parser.parseJSON();
        }
    }
}
