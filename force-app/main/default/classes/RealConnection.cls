//Proxy pattern
//RealConnection class implementing Connector interface 
public class RealConnection implements Connector{
   
    public override void connectTo(String extSysUrl) {
        
        System.debug('Connecting to ' + extSysUrl);
    }
}
