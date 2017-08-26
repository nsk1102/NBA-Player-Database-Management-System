package nba.database.entity;

import java.text.DecimalFormat;

public class roundTwoDecimals {
	static public double roundTwoDecimals(double d) {
	    DecimalFormat twoDForm = new DecimalFormat("#.##");
	    return Double.valueOf(twoDForm.format(d));
	}
}
