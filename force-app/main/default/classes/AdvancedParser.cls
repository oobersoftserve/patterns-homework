//Adapter pattern
//AdvancedParser interface implementing by classes - XmlParser, JsonParser. These classes can parse xml and json format files.
public interface AdvancedParser {
    void parseXML();
    void parseJSON(); 
}
