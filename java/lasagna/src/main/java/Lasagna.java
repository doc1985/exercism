public class Lasagna {
    // TODO: define the 'expectedMinutesInOven()' method
    public int expectedMinutesInOven() {
        return 40;
    }
    // TODO: define the 'remainingMinutesInOven()' method
    public int remainingMinutesInOven(int remainingTime) {
        return 15;
    }
    // TODO: define the 'preparationTimeInMinutes()' method
    public int preparationTimeInMinutes(int amountLayers) {
        return amountLayers * 2;
    }
    // TODO: define the 'totalTimeInMinutes()' method
    public int totalTimeInMinutes(int layers, int remaining) {
        return preparationTimeInMinutes(layers) + remaining;
    }
}
