public class Discount {
    
    private Calculatable calculatableAlgoritmh;

    private Set<String> seasonMonths = new Set<String>{'June', 'July', 'August'};
    private Set<String> nonSeasonMonths = new Set<String>{'December', 'January', 'February'};

    public Discount(String month) {

        if(seasonMonths.contains(month)){
            calculatableAlgoritmh = new SeasonDiscount();
        } else if(nonSeasonMonths.contains(month)) {
            calculatableAlgoritmh = new NonSeasonDiscount();
        }
    }

    public Double calculateDiscountFirstAlgorithm() {
            return calculatableAlgoritmh.calculateDiscountFirstAlgorithm();
    }

    public Double calculateDiscountSecondAlgorithm() {
        return calculatableAlgoritmh.calculateDiscountSecondAlgorithm();
    }
}
