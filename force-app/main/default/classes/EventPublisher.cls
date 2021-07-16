//EventPublisher class whish publish Platform Events

public class EventPublisher {

static void insertPlatformEvent() {
    List<Platform_event__e> eventsList = new List<Platform_event__e>();
    Platform_event__e event = new Platform_event__e(Object_Name__c = 'Account');
    eventsList.add(event);

    if(/*Some condition to insert(publish) Platform Event*/ condition) {
        List<Database.SaveResult> results = EventBus.publish(eventsList);
    }

    for (Database.SaveResult sr : results) {
        if (sr.isSuccess()) {
            System.debug('Successfully published event.');
        } else {
            for(Database.Error err : sr.getErrors()) {
                System.debug('Error returned: ' + err.getStatusCode() );
            }
        }
    }   
}
}
