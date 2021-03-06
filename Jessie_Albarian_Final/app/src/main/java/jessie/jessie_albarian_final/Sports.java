package jessie.jessie_albarian_final;

/**
 * Created by ashes on 4/28/16.
 */
public class Sports {
    private String name;
    private int imageResourceID;

    private Sports(String newname, int newID) {
        this.name = newname;
        this.imageResourceID = newID;
    }

    //CARDIO IMAGES
    public static final Sports[] cardio = {
            new Sports("Running", R.drawable.cardio),
            new Sports("Biking", R.drawable.cardio)
    };

    //STRENGTH IMAGES
    public static final Sports[] strength = {
            new Sports("Push Ups", R.drawable.strength),
            new Sports("Leg Presses", R.drawable.strength)
    };

    //FLEXIBILITY IMAGES
    public static final Sports[] flex = {
            new Sports("Yoga", R.drawable.flexibility)
    };

    public String getName() {
        return name;
    }

    public int getImageResourceID() {
        return imageResourceID;
    }

    public String toString() {
        return this.name;
    }
}