package com.logisticregresion;

public class Logistic2 {
	public int N;
	public int n_in;
	public int n_out;
	public double[][] W;
	public double[] b;
	
	public Logistic2(int N, int n_in, int n_out) {
		this.N = N;
		this.n_in = n_in;
		this.n_out = n_out;
		
		W = new double[this.n_out][this.n_in];
		b = new double[this.n_out];
	}
	
	public void train(int[] x, int[] y, double lr) {
		double[] p_y_given_x = new double[n_out];
		double[] dy = new double[n_out];
		
		for(int i=0; i<n_out; i++) {
			p_y_given_x[i] = 0;
			for(int j=0; j<n_in; j++) {
				p_y_given_x[i] += W[i][j] * x[j];
			}
			p_y_given_x[i] += b[i];
		}
		softmax(p_y_given_x);
		
		for(int i=0; i<n_out; i++) {
			dy[i] = y[i] - p_y_given_x[i];
			
			for(int j=0; j<n_in; j++) {
				W[i][j] += lr * dy[i] * x[j] / N;
			}
			
			b[i] += lr * dy[i] / N;
		}
	}
	
	public void softmax(double[] x) {
		double max = 0.0;
		double sum = 0.0;
		
		for(int i=0; i<n_out; i++) if(max < x[i]) max = x[i];
		
		for(int i=0; i<n_out; i++) {
			x[i] = Math.exp(x[i] - max);
			sum += x[i];
		}
		
		for(int i=0; i<n_out; i++) x[i] /= sum;
	}
	
	public void predict(int[] x, double[] y) {
		for(int i=0; i<n_out; i++) {
			y[i] = 0;
			for(int j=0; j<n_in; j++) {
				y[i] += W[i][j] * x[j];
			}
			y[i] += b[i];
		}
		
		softmax(y);
	}	
	
	private static void test_lr() {
		double learning_rate = 0.1;
		double n_epochs = 500;
		
		int train_N = 1;
		int test_N = 2;
		int n_in = 6;
		int n_out = 2;
		
		int[][] train_X = {
			{2000, 2500, 1200, 3000, 3200, 4000},
			{2019, 2018, 2017, 2016, 2015, 2014},
			
		};
		
		int[][] train_Y = {
			{2000, 2019},
			{2500, 2018},
			{1200, 2017},
			{3000, 2016},
			{3200, 2015},
			{4000, 2014}
		}; 
		
		// construct
		Logistic2 classifier = new Logistic2(train_N, n_in, n_out);
		
		// train 
		for(int epoch=0; epoch<n_epochs; epoch++) {
			for(int i=0; i<train_N; i++) {
				classifier.train(train_X[i], train_Y[i], learning_rate);
			}
			//learning_rate *= 0.95;
		}
		
		// test data
		int[][] test_X = {
			{2000, 3000, 2500, 3500, 1000, 1200},
			{2019, 2018, 2017, 2016, 2015, 2014}
		};
		
		double[][] test_Y = new double[test_N][n_in];
		
		
		// test
		for(int i=0; i<test_N; i++) {
			classifier.predict(test_X[i], test_Y[i]);
			for(int j=0; j<n_out; j++) {
				System.out.print(test_Y[i][j] + " ");
			}
			System.out.println();
		}
	}
	
	public static void main(String[] args) {
		test_lr();
	}
}
