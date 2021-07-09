//Adapter pattern
//Parser interface implementing by concrete class - DocumentParser. DocumentParser can parse txt format files by default.
public interface Parser {
    void parse(String fileType, String fileName);
}
