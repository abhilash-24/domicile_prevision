package com.prediction;
import java.util.HashMap;
import java.util.ArrayList;
/**
 * This class get the weathers rated by each user and put the result into a HashMap.
 * And put the ratings for each weather into a HashMap.
 * 
 * 100000 ratings by 943 users on 1682 items
 * So there are 943 lines in "user_rated_value.txt"
 */

public class user_rated_value {
	/** 
	 * @param filename
	 *            the name of the input dataset, "ratings.dat"
	 * @param weatherNumber
	 *            the number of the weathers in the training set
	 * @param usernum
	 *            the number of users in the training set
	 */
	private static final int weatherNumber = 3334;
	private static final int usernum = 7;
	private static ArrayList<String[]> train = read_file.readInData(prediction.datasetname, '\t');

	/**
	 * Create a HashMap, the user number is the key, their corresponding rated weathers are the values
	 */
	
	/**
	 * Create a HashMap, the user number is the key, their corresponding ratings are the values
	 * If a user did not rate a weather, put 0 instead.
	 */
	public static HashMap<Integer, Integer[]> createRating(){
		HashMap<Integer, Integer[]> map = new HashMap<Integer, Integer[]>();
		for(int i = 0; i < train.size(); i++)
		{
			
			
			String s[]=train.get(i)[0].split(",");
			
			System.out.println("--------"+s[0]);
			
			
			if(!map.containsKey(Integer.parseInt(s[0])))
			{
				Integer[] ratings = new Integer[weatherNumber];
				for(int j = 0; j < ratings.length; j++)
					ratings[j] = 0;
				map.put(Integer.parseInt(s[0]), ratings);
			}
			Integer[] sublist = map.get(Integer.parseInt(s[0]));
			
			System.out.println("_++++++++"+train.get(i)[1]);
			System.out.println("_++++++++"+train.get(i)[2]);
			
			//sublist[Integer.parseInt(train.get(i)[1]) - 1] = Integer.parseInt(train.get(i)[2]);
		}
		return map;
	}

	/**
	 * Get the ratings by a certain user
	 */
	public static Integer[] user_ratings(int user){
		HashMap<Integer, Integer[]> map = createRating();
		return map.get(user);
	}
	
	/**
	 * Put the weathers and ratings into a HashMap containing:
	 * weatherID(key) : ratings by users from 1 to 1682
	 * If a user did not rate a weather, put 0 automatically
	 */
	public static HashMap<Integer, Integer[]> weather_ratings(){
		HashMap<Integer, Integer[]> map = new HashMap<Integer, Integer[]>();
		for(int i = 0; i < train.size(); i++){
			if(!map.containsKey(Integer.parseInt(train.get(i)[1]))){
				Integer[] s = new Integer[usernum];
				for(int n = 0; n < s.length; n++)
					s[n] = 0;
				map.put(Integer.parseInt(train.get(i)[1]), s);
			}
			Integer[] ratings = map.get(Integer.parseInt(train.get(i)[1]));
			ratings[Integer.parseInt(train.get(i)[0]) - 1] = Integer.parseInt(train.get(i)[2]);
		}
		return map;
	}
}

