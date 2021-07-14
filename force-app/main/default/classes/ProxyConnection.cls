//Proxy pattern
//ProxyConnection - proxy class implementing Connector interface 
public class ProxyConnection implements Connector {
    
    private Connector connector = new RealConnection();
    List<String> notAllowedConnections = new List<String>{'.ru', 'abc'};

    public override void connectTo(String extSysUrl) {

        if(notAllowedConnections.contains(extSysUrl)) {
            System.debug('Connecttion is not allowed');
        }

        connector.connectTo(extSysUrl);
    }
}
