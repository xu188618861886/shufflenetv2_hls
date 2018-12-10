// ECE527 Fall 2017
// University of Illinois, Urbana-Champaign
// Author - Sitao Huang, Ashutosh Dhar
// Demo code of LeNet Convolutional Neural Network
// *****************************************
// Before running the code make that the following files are on the SD card
// 1. images.bin
// 2. labels.bin
// 3. params.bin
// This code demos inference on the MNIST dataset with a LeNet CNN
// Provided network parameters have been training already and should give an accuracy of ~98.39%

#include <c++/6.2.1/iostream>
#include <c++/6.2.1/cmath>
#include <c++/6.2.1/algorithm>
#include <c++/6.2.1/fstream>
#include <c++/6.2.1/vector>
#include <c++/6.2.1/array>

#include "xparameters.h"	/* SDK generated parameters */
#include "xsdps.h"			/* SD device driver */
#include "xil_printf.h"
#include "ff.h"				/* FAT File System */
#include "xil_cache.h"
#include "xplatform_info.h"
//-------new header file--------------------------------
using namespace std;
#include "xtmrctr.h"
#include <stdio.h>
#define TMRCTR_DEVICE_ID    XPAR_AXI_TIMER_0_DEVICE_ID
//new end-----------------------------------
// Max number of test cases in LeNet is 10K
// You can reduce this for testing/debuggin
// Final report must use all 10000 test cases
//#define NUM_TESTS 10000

// SD card and file reading objects
static FIL fil;		/* File object */
static FATFS fatfs;
static char *SD_File;
u32 Platform;

using namespace std;

//Static allocation of test images
//unsigned char images[NUM_TESTS*28*28];
//unsigned char labels[NUM_TESTS];
// *****************************************
/* original data
//Static allocation of network parameters and their outputs
float image[1][32][32] = {0};
float conv1_weights[6][1][5][5] = {0};
float conv1_bias[6] = {0};
float conv1_output[6][28][28] = {0};

float pool2_output[6][14][14] = {0};

float conv3_weights[16][6][5][5] = {0};
float conv3_bias[16] = {0};
float conv3_output[16][10][10] = {0};

float pool4_output[16][5][5] = {0};

float conv5_weights[120][16][5][5] = {0};
float conv5_bias[120] = {0};
float conv5_output[120][1][1] = {0};

float fc6_weights[10][120][1][1] = {0};
float fc6_bias[10] = {0};
float fc6_output[10] = {0};*/

//--------------new data declaration---------------
auto image = new float[1][3][32][32];
auto conv1_output = new float[1][24][32][32];

auto downsampleunit0_output = new float[1][48][16][16];
auto shuffleunit0_0_output = new float[1][48][16][16];
auto shuffleunit0_1_output = new float[1][48][16][16];
auto shuffleunit0_2_output = new float[1][48][16][16];
auto downsampleunit1_output = new float[1][96][8][8];
auto shuffleunit1_0_output = new float[1][96][8][8];
auto shuffleunit1_1_output = new float[1][96][8][8];
auto shuffleunit1_2_output = new float[1][96][8][8];
auto shuffleunit1_3_output = new float[1][96][8][8];
auto shuffleunit1_4_output = new float[1][96][8][8];
auto shuffleunit1_5_output = new float[1][96][8][8];
auto shuffleunit1_6_output = new float[1][96][8][8];
auto shuffleunit1_7_output = new float[1][96][8][8];
auto downsampleunit2_output = new float[1][192][4][4];
auto shuffleunit2_0_output = new float[1][192][4][4];
auto shuffleunit2_1_output = new float[1][192][4][4];
auto shuffleunit2_2_output = new float[1][192][4][4];
auto conv_last_output = new float[1][512][4][4];
auto avgpool_output = new float[512];
auto fc_output = new float[10];
/**weights**/

auto conv1_weight = new float[24][3][3][3];
auto conv1_bias = new float[24];

auto ShuffleConvs_0_DownsampleUnit_conv1r_weight = new float[24][24][1][1];
auto ShuffleConvs_0_DownsampleUnit_conv1r_bias = new float[24];
auto ShuffleConvs_0_DownsampleUnit_conv2r_weight = new float[24][1][3][3];
auto ShuffleConvs_0_DownsampleUnit_conv2r_bias = new float[24];
auto ShuffleConvs_0_DownsampleUnit_conv3r_weight = new float[24][24][1][1];
auto ShuffleConvs_0_DownsampleUnit_conv3r_bias = new float[24];
auto ShuffleConvs_0_DownsampleUnit_conv1l_weight = new float[24][1][3][3];
auto ShuffleConvs_0_DownsampleUnit_conv1l_bias = new float[24];
auto ShuffleConvs_0_DownsampleUnit_conv2l_weight = new float[24][24][1][1];
auto ShuffleConvs_0_DownsampleUnit_conv2l_bias = new float[24];
auto ShuffleConvs_0_ShuffleUnit0_0_conv1_weight = new float[24][24][1][1];
auto ShuffleConvs_0_ShuffleUnit0_0_conv1_bias = new float[24];
auto ShuffleConvs_0_ShuffleUnit0_0_conv2_weight = new float[24][1][3][3];
auto ShuffleConvs_0_ShuffleUnit0_0_conv2_bias = new float[24];
auto ShuffleConvs_0_ShuffleUnit0_0_conv3_weight = new float[24][24][1][1];
auto ShuffleConvs_0_ShuffleUnit0_0_conv3_bias = new float[24];
auto ShuffleConvs_0_ShuffleUnit0_1_conv1_weight = new float[24][24][1][1];
auto ShuffleConvs_0_ShuffleUnit0_1_conv1_bias = new float[24];
auto ShuffleConvs_0_ShuffleUnit0_1_conv2_weight = new float[24][1][3][3];
auto ShuffleConvs_0_ShuffleUnit0_1_conv2_bias = new float[24];
auto ShuffleConvs_0_ShuffleUnit0_1_conv3_weight = new float[24][24][1][1];
auto ShuffleConvs_0_ShuffleUnit0_1_conv3_bias = new float[24];
auto ShuffleConvs_0_ShuffleUnit0_2_conv1_weight = new float[24][24][1][1];
auto ShuffleConvs_0_ShuffleUnit0_2_conv1_bias = new float[24];
auto ShuffleConvs_0_ShuffleUnit0_2_conv2_weight = new float[24][1][3][3];
auto ShuffleConvs_0_ShuffleUnit0_2_conv2_bias = new float[24];
auto ShuffleConvs_0_ShuffleUnit0_2_conv3_weight = new float[24][24][1][1];
auto ShuffleConvs_0_ShuffleUnit0_2_conv3_bias = new float[24];
auto ShuffleConvs_1_DownsampleUnit_conv1r_weight = new float[48][48][1][1];
auto ShuffleConvs_1_DownsampleUnit_conv1r_bias = new float[48];
auto ShuffleConvs_1_DownsampleUnit_conv2r_weight = new float[48][1][3][3];
auto ShuffleConvs_1_DownsampleUnit_conv2r_bias = new float[48];
auto ShuffleConvs_1_DownsampleUnit_conv3r_weight = new float[48][48][1][1];
auto ShuffleConvs_1_DownsampleUnit_conv3r_bias = new float[48];
auto ShuffleConvs_1_DownsampleUnit_conv1l_weight = new float[48][1][3][3];
auto ShuffleConvs_1_DownsampleUnit_conv1l_bias = new float[48];
auto ShuffleConvs_1_DownsampleUnit_conv2l_weight = new float[48][48][1][1];
auto ShuffleConvs_1_DownsampleUnit_conv2l_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_0_conv1_weight = new float[48][48][1][1];
auto ShuffleConvs_1_ShuffleUnit1_0_conv1_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_0_conv2_weight = new float[48][1][3][3];
auto ShuffleConvs_1_ShuffleUnit1_0_conv2_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_0_conv3_weight = new float[48][48][1][1];
auto ShuffleConvs_1_ShuffleUnit1_0_conv3_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_1_conv1_weight = new float[48][48][1][1];
auto ShuffleConvs_1_ShuffleUnit1_1_conv1_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_1_conv2_weight = new float[48][1][3][3];
auto ShuffleConvs_1_ShuffleUnit1_1_conv2_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_1_conv3_weight = new float[48][48][1][1];
auto ShuffleConvs_1_ShuffleUnit1_1_conv3_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_2_conv1_weight = new float[48][48][1][1];
auto ShuffleConvs_1_ShuffleUnit1_2_conv1_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_2_conv2_weight = new float[48][1][3][3];
auto ShuffleConvs_1_ShuffleUnit1_2_conv2_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_2_conv3_weight = new float[48][48][1][1];
auto ShuffleConvs_1_ShuffleUnit1_2_conv3_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_3_conv1_weight = new float[48][48][1][1];
auto ShuffleConvs_1_ShuffleUnit1_3_conv1_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_3_conv2_weight = new float[48][1][3][3];
auto ShuffleConvs_1_ShuffleUnit1_3_conv2_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_3_conv3_weight = new float[48][48][1][1];
auto ShuffleConvs_1_ShuffleUnit1_3_conv3_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_4_conv1_weight = new float[48][48][1][1];
auto ShuffleConvs_1_ShuffleUnit1_4_conv1_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_4_conv2_weight = new float[48][1][3][3];
auto ShuffleConvs_1_ShuffleUnit1_4_conv2_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_4_conv3_weight = new float[48][48][1][1];
auto ShuffleConvs_1_ShuffleUnit1_4_conv3_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_5_conv1_weight = new float[48][48][1][1];
auto ShuffleConvs_1_ShuffleUnit1_5_conv1_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_5_conv2_weight = new float[48][1][3][3];
auto ShuffleConvs_1_ShuffleUnit1_5_conv2_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_5_conv3_weight = new float[48][48][1][1];
auto ShuffleConvs_1_ShuffleUnit1_5_conv3_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_6_conv1_weight  = new float[48][48][1][1];
auto ShuffleConvs_1_ShuffleUnit1_6_conv1_bias  = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_6_conv2_weight  = new float[48][1][3][3];
auto ShuffleConvs_1_ShuffleUnit1_6_conv2_bias   = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_6_conv3_weight = new float[48][48][1][1];
auto ShuffleConvs_1_ShuffleUnit1_6_conv3_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_7_conv1_weight  = new float[48][48][1][1];
auto ShuffleConvs_1_ShuffleUnit1_7_conv1_bias = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_7_conv2_weight   = new float[48][1][3][3];
auto ShuffleConvs_1_ShuffleUnit1_7_conv2_bias  = new float[48];
auto ShuffleConvs_1_ShuffleUnit1_7_conv3_weight   = new float[48][48][1][1];
auto ShuffleConvs_1_ShuffleUnit1_7_conv3_bias = new float[48];
auto ShuffleConvs_2_DownsampleUnit_conv1r_weight = new float[96][96][1][1];
auto ShuffleConvs_2_DownsampleUnit_conv1r_bias = new float[96];
auto ShuffleConvs_2_DownsampleUnit_conv2r_weight = new float[96][1][3][3];
auto ShuffleConvs_2_DownsampleUnit_conv2r_bias = new float[96];
auto ShuffleConvs_2_DownsampleUnit_conv3r_weight = new float[96][96][1][1];
auto ShuffleConvs_2_DownsampleUnit_conv3r_bias = new float[96];
auto ShuffleConvs_2_DownsampleUnit_conv1l_weight = new float[96][1][3][3];
auto ShuffleConvs_2_DownsampleUnit_conv1l_bias = new float[96];
auto ShuffleConvs_2_DownsampleUnit_conv2l_weight = new float[96][96][1][1];
auto ShuffleConvs_2_DownsampleUnit_conv2l_bias = new float[96];
auto ShuffleConvs_2_ShuffleUnit2_0_conv1_weight = new float[96][96][1][1];
auto ShuffleConvs_2_ShuffleUnit2_0_conv1_bias = new float[96];
auto ShuffleConvs_2_ShuffleUnit2_0_conv2_weight = new float[96][1][3][3];
auto ShuffleConvs_2_ShuffleUnit2_0_conv2_bias = new float[96];
auto ShuffleConvs_2_ShuffleUnit2_0_conv3_weight = new float[96][96][1][1];
auto ShuffleConvs_2_ShuffleUnit2_0_conv3_bias = new float[96];
auto ShuffleConvs_2_ShuffleUnit2_1_conv1_weight = new float[96][96][1][1];
auto ShuffleConvs_2_ShuffleUnit2_1_conv1_bias = new float[96];
auto ShuffleConvs_2_ShuffleUnit2_1_conv2_weight = new float[96][1][3][3];
auto ShuffleConvs_2_ShuffleUnit2_1_conv2_bias = new float[96];
auto ShuffleConvs_2_ShuffleUnit2_1_conv3_weight = new float[96][96][1][1];
auto ShuffleConvs_2_ShuffleUnit2_1_conv3_bias = new float[96];
auto ShuffleConvs_2_ShuffleUnit2_2_conv1_weight = new float[96][96][1][1];
auto ShuffleConvs_2_ShuffleUnit2_2_conv1_bias = new float[96];
auto ShuffleConvs_2_ShuffleUnit2_2_conv2_weight = new float[96][1][3][3];
auto ShuffleConvs_2_ShuffleUnit2_2_conv2_bias = new float[96];
auto ShuffleConvs_2_ShuffleUnit2_2_conv3_weight = new float[96][96][1][1];
auto ShuffleConvs_2_ShuffleUnit2_2_conv3_bias = new float[96];

auto conv_last_weight = new float[512][192][1][1];

auto conv_last_bias = new float[512];

auto fc_weight = new float[10][512];

auto fc_bias = new float[10];


auto bias = new float[3618];

auto shuffle_conv_1x1 = new float[5496][24][1][1];

auto shuffle_conv_3x3 = new float[1080][1][3][3];

// *****************************************
// End declaration of layers parameters and buffers
// *****************************************

// Start function definitions of different layers
/*---------------original layer---------------------------------
inline float relu(float input)
{
    return (input > 0)? input:0;
}

// Convolution Layer 1
void convolution1(float input[1][32][32], float weights[6][1][5][5], float bias[6], float output[6][28][28])
{
    for(int co = 0; co < 6; co++)
        for(int h = 0; h < 28; h++)
            for(int w = 0; w < 28; w++)
            {
                float sum = 0;
                for(int i = h, m = 0; i < (h + 5); i++, m++)
                {
                    for(int j = w, n = 0; j < (w + 5); j++, n++)
                        sum += weights[co][0][m][n] * input[0][i][j];
                }
                output[co][h][w] = sum + bias[co];
            }
}

// Relu Layer 1
void relu1(float input[6][28][28], float output[6][28][28])
{
    for(int i = 0; i < 6; i++)
        for(int j = 0; j < 28; j++)
            for(int k = 0; k < 28; k++)
                output[i][j][k] = relu(input[i][j][k]);
}

// Pooling Layer 2
void max_pooling2(float input[6][28][28],float output[6][14][14])
{
    for(int c = 0;c < 6; c++)
        for(int h = 0; h < 14; h++)
            for(int w = 0; w < 14; w++)
            {
                float max_value=-1000000000000.0;
                for(int i = h*2; i < h*2+2; i++)
                {
                    for(int j = w*2;j < w*2+2; j++)
                        max_value = (max_value > input[c][i][j]) ? max_value:input[c][i][j];
                }
                output[c][h][w] = max_value;

            }
}

// Relu Layer 2
void relu2(float input[6][14][14], float output[6][14][14])
{
    for(int i = 0; i < 6; i++)
        for(int j = 0; j < 14; j++)
            for(int k = 0; k < 14; k++)
                output[i][j][k] = relu(input[i][j][k]);
}

// Convolution Layer 3
void convolution3(float input[6][14][14], float weights[16][6][5][5], float bias[16], float output[16][10][10])
{
    for(int co = 0; co < 16; co++)
        for(int h = 0; h < 10; h++)
            for(int w = 0; w < 10; w++)
            {
                    float sum = 0;
                    for(int i = h, m = 0; i < (h+5); i++, m++)
                    {
                        for(int j = w, n = 0; j < (w+5); j++, n++)
                            for (int ci = 0; ci < 6; ci++)
                                sum += weights[co][ci][m][n] * input[ci][i][j];
                    }
                    output[co][h][w] = sum + bias[co];
            }
}

// Relu Layer 3
void relu3(float input[16][10][10], float output[16][10][10])
{
    for(int i = 0; i < 16; i++)
        for(int j = 0; j < 10; j++)
            for(int k = 0; k < 10; k++)
                output[i][j][k] = relu(input[i][j][k]);
}

// Pooling Layer 4
void max_pooling4(float input[16][10][10],float output[16][5][5])
{
    for(int c = 0;c < 16; c++)
        for(int h = 0; h < 5; h++)
            for(int w = 0; w < 5; w++)
            {
                float max_value=-1000000000000.0;
                for(int i = h*2; i < h*2+2; i++)
                {
                    for(int j = w*2;j < w*2+2; j++)
                        max_value = (max_value > input[c][i][j]) ? max_value:input[c][i][j];
                }
                output[c][h][w] = max_value;
            }
}

// Relu Layer 4
void relu4(float input[16][5][5], float output[16][5][5])
{
    for(int i = 0; i < 16; i++)
        for(int j = 0; j < 5; j++)
            for(int k = 0; k < 5; k++)
                output[i][j][k] = relu(input[i][j][k]);
}

// Convolution Layer 5
void convolution5(float input[16][5][5], float weights[120][16][5][5], float bias[120], float output[120][1][1])
{
    for(int co = 0; co < 120; co++)
    {
        float sum = 0;
        for(int i = 0, m = 0; i < 5; i++, m++)
        {
            for(int j = 0, n = 0; j < 5; j++, n++)
            {
                for (int ci = 0; ci < 16; ci++)
                    sum += weights[co][ci][m][n] * input[ci][i][j];
            }
        }
        output[co][0][0] = sum + bias[co];
    }
}

// Relu Layer 5
void relu5(float input[120][1][1], float output[120][1][1])
{
    for(int i = 0; i < 120; i++)
        output[i][0][0] = relu(input[i][0][0]);
}

// Fully connected Layer 6
void fc6(const float input[120][1][1], const float weights[10][120][1][1], const float bias[10], float output[10])
{
    for(int n = 0; n < 10; n++)
    {
        output[n] = 0;
        for(int c = 0; c < 120; c++)
        {
            output[n] += weights[n][c][0][0] * input[c][0][0];
        }
        output[n]+=bias[n];
    }
}

// Relu Layer 6
void relu6(float input[10], float output[10])
{
    for(int i = 0; i < 10; i++)
        output[i] = relu(input[i]);
}
*/
//-----------New layers-----------------
void conv1(float input[1][3][32][32],
	float weight[24][3][3][3],
	float bias[24],
	float output[1][24][32][32]){
	for(int co = 0;co<24;co++){

		for(int h = 0;h<32;h++){
			for(int w = 0;w<32;w++){
				float sum = 0;
				for(int ci = 0;ci<3;ci++){
					for(int m = 0;m<3;m++){
						for(int n = 0;n<3;n++){
							sum += weight[co][ci][m][n] * (( h+m-1 >= 0 && w+n-1 >= 0 && h+m-1 < 32 && w+n-1 < 32) ?input[0][ci][h+m-1][w+n-1]:0);
						}
					}
				}
				float result = sum + bias[co];
				output[0][co][h][w] = (result > 0)? result : 0.0f;
			}
		}
	}
}


/**unit0**/

void subconv_1x1_32(float input[1][24][32][32],
	float weight[24][24][1][1],
	float bias[24],
	float output[1][24][32][32]){

	for(int co = 0;co<24;co++){
		for(int h = 0;h<32;h++){
			for(int w = 0;w<32;w++){
				float sum = 0;
				for(int ci = 0;ci<24;ci++){
					sum += weight[co][ci][0][0]*input[0][ci][h][w];
				}
				float result = sum + bias[co];
                output[0][co][h][w] = (result > 0)? result : 0.0f;
			}
		}
	}

}

void subconv_1x1_16(float input[1][24][16][16],
	float weight[24][24][1][1],
	float bias[24],
	float output[1][24][16][16]){


	for(int co = 0;co<24;co++){
		for(int h = 0;h<16;h++){
			for(int w = 0;w<16;w++){
				float sum = 0;
				for(int ci = 0;ci<24;ci++){
					sum += weight[co][ci][0][0]*input[0][ci][h][w];




				}
				float result = sum + bias[co];
                output[0][co][h][w] = (result > 0)? result : 0.0f;
			}
		}
	}
}

void subconv_3x3_32_stride_no_relu(float input[1][24][32][32],
	float weight[24][1][3][3],
	float bias[24],
	float output[1][24][16][16]){
	for(int co = 0;co<24;co++){
		for(int h = 0;h<16;h++){
			for(int w = 0;w<16;w++){
				float sum = 0;
				for(int m = 0;m<3;m++){
						for(int n = 0;n<3;n++){
							sum += weight[co][0][m][n] * (( h*2+m-1 >= 0 && w*2+n-1 >= 0 && h*2+m-1 < 32 && w*2+n-1 < 32) ?input[0][co][h*2+m-1][w*2+n-1]:0);
						}
					}
				float result = sum + bias[co];
				output[0][co][h][w] = result;

			}
		}
	}

}


void subconv_3x3_16_no_relu(float input[1][24][16][16],
	float weight[24][1][3][3],
	float bias[24],
	float output[1][24][16][16]){
	for(int co = 0;co<24;co++){
		for(int h = 0;h<16;h++){
			for(int w = 0;w<16;w++){
				float sum = 0;
				for(int m = 0;m<3;m++){
						for(int n = 0;n<3;n++){
							sum += weight[co][0][m][n] * (( h+m-1 >= 0 && w+n-1 >= 0 && h+m-1 < 16 && w+n-1 < 16) ?input[0][co][h+m-1][w+n-1]:0);
						}
					}
				float result = sum + bias[co];
				output[0][co][h][w] = result;

			}
		}
	}
}

void shuffle_24(float left[1][24][16][16],float right[1][24][16][16],float output[1][48][16][16]){
	for(int co = 0;co <48;co ++){
		for(int h=0;h<16;h++){
			for(int w = 0;w<16;w++){
				if (co%2 == 0)output[0][co][h][w] = left[0][co/2][h][w];
				else output[0][co][h][w] = right[0][co/2][h][w];
			}
		}
	}
}


void DownsampleUnit0(float input[1][24][32][32],
	float conv1r_weight[24][24][1][1],
	float conv1r_bias[24],
	float conv2r_weight[24][1][3][3],
	float conv2r_bias[24],
	float conv3r_weight[24][24][1][1],
	float conv3r_bias[24],
	float conv1l_weight[24][1][3][3],
	float conv1l_bias[24],
	float conv2l_weight[24][24][1][1],
	float conv2l_bias[24],
	float output[1][48][16][16]){

	float conv1r_output[1][24][32][32]={0};
	float conv2r_ourput[1][24][16][16]={0};
	float conv3r_ourput[1][24][16][16]={0};
	float conv1l_output[1][24][16][16]={0};
	float conv2l_output[1][24][16][16]={0};


	//conv1r
	subconv_1x1_32(input,conv1r_weight,conv1r_bias,conv1r_output);
	//conv2r
	subconv_3x3_32_stride_no_relu(conv1r_output,conv2r_weight,conv2r_bias,conv2r_ourput);
	//conv3r
	subconv_1x1_16(conv2r_ourput,conv3r_weight,conv3r_bias,conv3r_ourput);
	//conv1l
	subconv_3x3_32_stride_no_relu(input,conv1l_weight,conv1l_bias,conv1l_output);
	//conv2l
	subconv_1x1_16(conv1l_output,conv2l_weight,conv2l_bias,conv2l_output);

	//shuffle
	shuffle_24(conv3r_ourput,conv2l_output,output);
}



void ShuffleUnit0(float input[1][48][16][16],
	float conv1_weight[24][24][1][1],
	float conv1_bias[24],
	float conv2_weight[24][1][3][3],
	float conv2_bias[24],
	float conv3_weight[24][24][1][1],
	float conv3_bias[24],
	float output[1][48][16][16]
	){
	float left_part[1][24][16][16] = {0};
	float right_part[1][24][16][16] = {0};
	float conv1_output[1][24][16][16] = {0};
	float conv2_output[1][24][16][16] = {0};
	float conv3_output[1][24][16][16] = {0};
	//right
	for(int co = 0;co <24;co ++){
		for(int h=0;h<16;h++){
			for(int w = 0;w<16;w++){
				right_part[0][co][h][w] = input[0][24+co][h][w];
				left_part[0][co][h][w] = input[0][co][h][w];
			}
		}
	}
	//conv1
	subconv_1x1_16(right_part,conv1_weight,conv1_bias,conv1_output);
	//conv2
	subconv_3x3_16_no_relu(conv1_output,conv2_weight,conv2_bias,conv2_output);
	//conv3
	subconv_1x1_16(conv2_output,conv3_weight,conv3_bias,conv3_output);

	shuffle_24(left_part,conv3_output,output);
}

/**unit1**/

void subconv_1x1_16p(float input[1][48][16][16],
	float weight[48][48][1][1],
	float bias[48],
	float output[1][48][16][16]){

	for(int co = 0;co<48;co++){
		for(int h = 0;h<16;h++){
			for(int w = 0;w<16;w++){
				float sum = 0;
				for(int ci = 0;ci<48;ci++){
					sum += weight[co][ci][0][0]*input[0][ci][h][w];




				}
				float result = sum + bias[co];
                output[0][co][h][w] = (result > 0)? result : 0.0f;
			}
		}
	}

}

void subconv_1x1_8(float input[1][48][8][8],
	float weight[48][48][1][1],
	float bias[48],
	float output[1][48][8][8]){


	for(int co = 0;co<48;co++){
		for(int h = 0;h<8;h++){
			for(int w = 0;w<8;w++){
				float sum = 0;
				for(int ci = 0;ci<48;ci++){
					sum += weight[co][ci][0][0]*input[0][ci][h][w];
				}
				float result = sum + bias[co];
                output[0][co][h][w] = (result > 0)? result : 0.0f;
			}
		}
	}
}


void subconv_3x3_16_stride_no_relu(float input[1][48][16][16],
	float weight[48][1][3][3],
	float bias[48],
	float output[1][48][8][8]){
	for(int co = 0;co<48;co++){
		for(int h = 0;h<8;h++){
			for(int w = 0;w<8;w++){
				float sum = 0;
				for(int m = 0;m<3;m++){
						for(int n = 0;n<3;n++){
							sum += weight[co][0][m][n] * (( h*2+m-1 >= 0 && w*2+n-1 >= 0 && h*2+m-1 < 16 && w*2+n-1 < 16) ?input[0][co][h*2+m-1][w*2+n-1]:0);
						}
					}
				float result = sum + bias[co];
				output[0][co][h][w] = result;

			}
		}
	}
}


void subconv_3x3_8_no_relu(float input[1][48][8][8],
	float weight[48][1][3][3],
	float bias[48],
	float output[1][48][8][8]){
	for(int co = 0;co<48;co++){
		for(int h = 0;h<8;h++){
			for(int w = 0;w<8;w++){
				float sum = 0;
				for(int m = 0;m<3;m++){
						for(int n = 0;n<3;n++){
							sum += weight[co][0][m][n] * (( h+m-1 >= 0 && w+n-1 >= 0 && h+m-1 < 8 && w+n-1 < 8) ?input[0][co][h+m-1][w+n-1]:0);
						}
					}
				float result = sum + bias[co];
				output[0][co][h][w] = result;
			}
		}
	}
}

void shuffle_48(float left[1][48][8][8],float right[1][48][8][8],float output[1][96][8][8]){
	for(int co = 0;co <96;co ++){
		for(int h=0;h<8;h++){
			for(int w = 0;w<8;w++){
				if (co%2 == 0)output[0][co][h][w] = left[0][co/2][h][w];
				else output[0][co][h][w] = right[0][co/2][h][w];
			}
		}
	}
}


void DownsampleUnit1(float input[1][48][16][16],
	float conv1r_weight[48][48][1][1],
	float conv1r_bias[48],
	float conv2r_weight[48][1][3][3],
	float conv2r_bias[48],
	float conv3r_weight[48][48][1][1],
	float conv3r_bias[48],
	float conv1l_weight[48][1][3][3],
	float conv1l_bias[48],
	float conv2l_weight[48][48][1][1],
	float conv2l_bias[48],
	float output[1][96][8][8]){

	float conv1r_output[1][48][16][16]={0};
	float conv2r_ourput[1][48][8][8]={0};
	float conv3r_ourput[1][48][8][8]={0};
	float conv1l_output[1][48][8][8]={0};
	float conv2l_output[1][48][8][8]={0};


	//conv1r
	subconv_1x1_16p(input,conv1r_weight,conv1r_bias,conv1r_output);
	//conv2r
	subconv_3x3_16_stride_no_relu(conv1r_output,conv2r_weight,conv2r_bias,conv2r_ourput);
	//conv3r
	subconv_1x1_8(conv2r_ourput,conv3r_weight,conv3r_bias,conv3r_ourput);
	//conv1l
	subconv_3x3_16_stride_no_relu(input,conv1l_weight,conv1l_bias,conv1l_output);
	//conv2l
	subconv_1x1_8(conv1l_output,conv2l_weight,conv2l_bias,conv2l_output);

	//shuffle
	shuffle_48(conv3r_ourput,conv2l_output,output);


}


void ShuffleUnit1(float input[1][96][8][8],
	float conv1_weight[48][48][1][1],
	float conv1_bias[48],
	float conv2_weight[48][1][3][3],
	float conv2_bias[48],
	float conv3_weight[48][48][1][1],
	float conv3_bias[48],
	float output[1][96][8][8]
	){
	float left_part[1][48][8][8] = {0};
	float right_part[1][48][8][8] = {0};
	float conv1_output[1][48][8][8] = {0};
	float conv2_output[1][48][8][8] = {0};
	float conv3_output[1][48][8][8] = {0};

	//right
	for(int co = 0;co <48;co ++){
		for(int h=0;h<8;h++){
			for(int w = 0;w<8;w++){
				right_part[0][co][h][w] = input[0][48+co][h][w];
				left_part[0][co][h][w] = input[0][co][h][w];
			}
		}
	}
	//conv1
	subconv_1x1_8(right_part,conv1_weight,conv1_bias,conv1_output);


	//conv2
	subconv_3x3_8_no_relu(conv1_output,conv2_weight,conv2_bias,conv2_output);
	//conv3
	subconv_1x1_8(conv2_output,conv3_weight,conv3_bias,conv3_output);

	shuffle_48(left_part,conv3_output,output);
}


/**unit2**/
void subconv_1x1_8p(float input[1][96][8][8],
	float weight[96][96][1][1],
	float bias[96],
	float output[1][96][8][8]){

	for(int co = 0;co<96;co++){
		for(int h = 0;h<8;h++){
			for(int w = 0;w<8;w++){
				float sum = 0;
				for(int ci = 0;ci<96;ci++){
					sum += weight[co][ci][0][0]*input[0][ci][h][w];
				}
				float result = sum + bias[co];
                output[0][co][h][w] = (result > 0)? result : 0.0f;
			}
		}
	}
}

void subconv_1x1_4(float input[1][96][4][4],
	float weight[96][96][1][1],
	float bias[96],
	float output[1][96][4][4]){


	for(int co = 0;co<96;co++){
		for(int h = 0;h<4;h++){
			for(int w = 0;w<4;w++){
				float sum = 0;
				for(int ci = 0;ci<96;ci++){
					sum += weight[co][ci][0][0]*input[0][ci][h][w];
				}
				float result = sum + bias[co];
                output[0][co][h][w] = (result > 0)? result : 0.0f;
			}
		}
	}
}

void subconv_3x3_8_stride_no_relu(float input[1][96][8][8],
	float weight[96][1][3][3],
	float bias[96],
	float output[1][96][4][4]){
	for(int co = 0;co<96;co++){
		for(int h = 0;h<4;h++){
			for(int w = 0;w<4;w++){
				float sum = 0;
				for(int m = 0;m<3;m++){
						for(int n = 0;n<3;n++){
							sum += weight[co][0][m][n] * (( h*2+m-1 >= 0 && w*2+n-1 >= 0 && h*2+m-1 < 8 && w*2+n-1 < 8) ?input[0][co][h*2+m-1][w*2+n-1]:0);
						}
					}
				float result = sum + bias[co];
				output[0][co][h][w] = result;

			}
		}
	}
}


void subconv_3x3_4_no_relu(float input[1][96][4][4],
	float weight[96][1][3][3],
	float bias[96],
	float output[1][96][4][4]){
	for(int co = 0;co<96;co++){
		for(int h = 0;h<4;h++){
			for(int w = 0;w<4;w++){
				float sum = 0;
				for(int m = 0;m<3;m++){
						for(int n = 0;n<3;n++){
							sum += weight[co][0][m][n] * (( h+m-1 >= 0 && w+n-1 >= 0 && h+m-1 < 4 && w+n-1 < 4) ?input[0][co][h+m-1][w+n-1]:0);
						}
					}
				float result = sum + bias[co];
				output[0][co][h][w] = result;
			}
		}
	}
}


void shuffle_96(float left[1][96][4][4],float right[1][96][4][4],float output[1][192][4][4]){
	for(int co = 0;co <192;co ++){
		for(int h=0;h<4;h++){
			for(int w = 0;w<4;w++){
				if (co%2 == 0)output[0][co][h][w] = left[0][co/2][h][w];
				else output[0][co][h][w] = right[0][co/2][h][w];
			}
		}
	}
}


void DownsampleUnit2(float input[1][96][8][8],
	float conv1r_weight[96][96][1][1],
	float conv1r_bias[96],
	float conv2r_weight[96][1][3][3],
	float conv2r_bias[96],
	float conv3r_weight[96][96][1][1],
	float conv3r_bias[96],
	float conv1l_weight[96][1][3][3],
	float conv1l_bias[96],
	float conv2l_weight[96][96][1][1],
	float conv2l_bias[96],
	float output[1][192][4][4]){

	float conv1r_output[1][96][8][8]={0};
	float conv2r_ourput[1][96][4][4]={0};
	float conv3r_ourput[1][96][4][4]={0};
	float conv1l_output[1][96][4][4]={0};
	float conv2l_output[1][96][4][4]={0};


	//conv1r
	subconv_1x1_8p(input,conv1r_weight,conv1r_bias,conv1r_output);
	//conv2r
	subconv_3x3_8_stride_no_relu(conv1r_output,conv2r_weight,conv2r_bias,conv2r_ourput);
	//conv3r
	subconv_1x1_4(conv2r_ourput,conv3r_weight,conv3r_bias,conv3r_ourput);
	//conv1l
	subconv_3x3_8_stride_no_relu(input,conv1l_weight,conv1l_bias,conv1l_output);
	//conv2l
	subconv_1x1_4(conv1l_output,conv2l_weight,conv2l_bias,conv2l_output);

	//shuffle
	shuffle_96(conv3r_ourput,conv2l_output,output);


}

void ShuffleUnit2(float input[1][192][4][4],
	float conv1_weight[96][96][1][1],
	float conv1_bias[96],
	float conv2_weight[96][1][3][3],
	float conv2_bias[96],
	float conv3_weight[96][96][1][1],
	float conv3_bias[96],
	float output[1][192][4][4]
	){
	float left_part[1][96][4][4] = {0};
	float right_part[1][96][4][4] = {0};
	float conv1_output[1][96][4][4] = {0};
	float conv2_output[1][96][4][4] = {0};
	float conv3_output[1][96][4][4] = {0};

	//right
	for(int co = 0;co <96;co ++){
		for(int h=0;h<4;h++){
			for(int w = 0;w<4;w++){
				right_part[0][co][h][w] = input[0][96+co][h][w];
				left_part[0][co][h][w] = input[0][co][h][w];
			}
		}
	}
	//conv1
	subconv_1x1_4(right_part,conv1_weight,conv1_bias,conv1_output);


	//conv2
	subconv_3x3_4_no_relu(conv1_output,conv2_weight,conv2_bias,conv2_output);
	//conv3
	subconv_1x1_4(conv2_output,conv3_weight,conv3_bias,conv3_output);

	shuffle_96(left_part,conv3_output,output);
}


void conv_last(float input[1][192][4][4],
	float weight[512][192][1][1],
	float bias[512],
	float output[1][512][4][4]){

	for(int co = 0;co<512;co++){
		for(int h = 0;h<4;h++){
			for(int w = 0;w<4;w++){
				float sum = 0;
				for(int ci = 0;ci<192;ci++){
					sum += weight[co][ci][0][0]*input[0][ci][h][w];
				}
				float result = sum + bias[co];
                output[0][co][h][w] = (result > 0)? result : 0.0f;
			}
		}
	}
}

void avgpool(float input[1][512][4][4],
	float output[512]){

	for(int co = 0;co<512;co++){
		float sum = 0;
		for(int h = 0;h<4;h++){
			for(int w=0;w<4;w++){
				sum += input[0][co][h][w];
			}
		}
		output[co] = sum/16;
	}
}

void fc(float input[512],
	float weight[10][512],
	float bias[10],
	float output[10]){

	for(int co = 0;co<10;co++){
		float sum = 0;
		for(int ci = 0;ci<512;ci++){
			sum += weight[co][ci] * input[ci];

		}
		float result = sum + bias[co];
		output[co] = result;
	}
}
// *****************************************
// End declaration of layers functions
// *****************************************
// Parse MNIST test images
/*int parse_mnist_images
int parse_mnist_images(char* filename, unsigned char *images)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;
    unsigned int header[4];

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening mnist images data file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened mnist images data file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)header, sizeof(unsigned int)*4, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read header from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read header from file\n\r");
	}

	Res = f_read(&fil, (void*)images, sizeof(unsigned char)*NUM_TESTS*28*28, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read images from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read images from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close images file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed images file\n\r");
	}

	xil_printf("Returning...\n\r");


	return XST_SUCCESS;
}
*/
/*int parse_mnist_labels
int parse_mnist_labels(char* filename, unsigned char *labels)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;
    unsigned int header[2];

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening mnist label data file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened mnist labels data file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)header, sizeof(unsigned int)*2, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read header from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read header from file\n\r");
	}

	Res = f_read(&fil, (void*)labels, sizeof(unsigned char)*NUM_TESTS, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read labels from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read labels from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close labels file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed labels file\n\r");
	}

	return 0;


}
*/
/*int parse_parameters
int parse_parameters(char* filename)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening parameter file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened parameter file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)***conv1_weights, sizeof(float)*150, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read conv1_weights from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read conv1_weights from file\n\r");
	}

	Res = f_read(&fil, (void*)conv1_bias, sizeof(float)*6, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read conv1_bias from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read conv1_bias from file\n\r");
	}

	Res = f_read(&fil, (void*)***conv3_weights, sizeof(float)*2400, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read conv3_weights from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read conv3_weights from file\n\r");
	}

	Res = f_read(&fil, (void*)conv3_bias, sizeof(float)*16, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read conv3_bias from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read conv3_bias from file\n\r");
	}

	Res = f_read(&fil, (void*)***conv5_weights, sizeof(float)*48000, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read conv5_weights from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read conv5_weights from file\n\r");
	}

	Res = f_read(&fil, (void*)conv5_bias, sizeof(float)*120, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read conv5_bias from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read conv5_bias from file\n\r");
	}

	Res = f_read(&fil, (void*)***fc6_weights, sizeof(float)*1200, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read fc6_weights from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read fc6_weights from file\n\r");
	}

	Res = f_read(&fil, (void*)fc6_bias, sizeof(float)*10, &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read fc6_bias from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read fc6_bias from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close labels file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed labels file\n\r");
	}

	return 0;

}
*/
//----------------parse pic---------------
int parse_pic_parameters(char* filename)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening pic file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened pic file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("pic Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("pic Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)(***image), 1*3*36*36*sizeof(float), &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read pic from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read pic from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close pic file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed pic file\n\r");
	}

	return 0;
}
//---------------parse bias-------------------
int parse_bias_parameters(char* filename)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening bias.bin file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened bias.bin file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("bias.bin Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("bias.bin Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)(bias), 3618*sizeof(float), &NumBytesRead);
	if (Res)
	{
		xil_printf("bias.bin Cant read bias from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("bias.bin Read bias from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close bias.bin file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed bias.bin file\n\r");
	}

	return 0;
}
//----------------parse shuffle_conv_1x1------
int parse_shuffle_conv_1x1_parameters(char* filename)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening shuffle_conv_1x1 file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened shuffle_conv_1x1 file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("shuffle_conv_1x1 Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("shuffle_conv_1x1 Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)(***shuffle_conv_1x1), 5496*24*1*1*sizeof(float), &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read shuffle_conv_1x1 from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read shuffle_conv_1x1 from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close shuffle_conv_1x1 file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed shuffle_conv_1x1 file\n\r");
	}

	return 0;
}
//----------------parse shuffle_conv_3x3------
int parse_shuffle_conv_3x3_parameters(char* filename)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening shuffle_conv_3x3 file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened shuffle_conv_3x3 file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("shuffle_conv_3x3 Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("shuffle_conv_3x3 Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)(***shuffle_conv_3x3), 1080*1*3*3*sizeof(float), &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read shuffle_conv_3x3 from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read shuffle_conv_3x3 from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close shuffle_conv_3x3 file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed shuffle_conv_3x3 file\n\r");
	}

	return 0;
}
//-----------parse conv1_weight-------------
int parse_conv1_weight_parameters(char* filename)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening conv1_weight file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened conv1_weight file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("conv1_weight Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("conv1_weight Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)(***conv1_weight), 24*3*3*3*sizeof(float), &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read conv1_weight from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read conv1_weight from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close conv1_weight file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed conv1_weight file\n\r");
	}

	return 0;
}
//-----------parse conv_last_weight-------------
int parse_conv_last_weight_parameters(char* filename)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening conv_last_weight file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened conv_last_weight file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("conv_last_weight Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("conv_last_weight Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)(***conv_last_weight), 512*192*1*1*sizeof(float), &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read conv_last_weight from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read conv_last_weight from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close conv_last_weight file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed conv_last_weight file\n\r");
	}

	return 0;
}
//-----------parse conv_last_weight-------------
int parse_conv_fc_weight_parameters(char* filename)
{
	FRESULT Res;
	UINT NumBytesRead;
    SD_File = (char *)filename;

	Res = f_open(&fil, SD_File, FA_READ);
	if (Res)
	{
		xil_printf("ERROR when opening fc_weight file!\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Opened fc_weight file\n\r");
	}

	Res = f_lseek(&fil, 0);
	if (Res)
	{
		xil_printf("fc_weight Cant seek to start\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("fc_weight Seeked to start\n\r");
	}

	Res = f_read(&fil, (void*)(*fc_weight), 10*512*sizeof(float), &NumBytesRead);
	if (Res)
	{
		xil_printf("Cant read fc_weight from file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Read fc_weight from file\n\r");
	}

	Res = f_close(&fil);
	if (Res)
	{
		xil_printf("Failed to close fc_weight file\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Closed fc_weight file\n\r");
	}

	return 0;
}
/*original get_image
void get_image(unsigned char *images, unsigned int idx, float image[1][32][32])
{
    for(int i = 0; i < 32; i++)
        for(int j = 0; j < 32; j++)
        {
            if (i < 2 || i > 29 || j < 2 || j > 29)
                image[0][i][j] = -1.0;
            else
                image[0][i][j] = images[idx*28*28 + (i-2)*28 + j-2] / 255.0 * 2.0 - 1.0;
        }
}
*/
int main(int argc, char **argv)
{
	cout<<"Starting shufflenet\n\r";

	cout<<"Mounting SD\n\r";
	FRESULT Res;
	TCHAR *Path = "0:/";
    Res = f_mount(&fatfs, Path, 0);
	if (Res != FR_OK)
	{
		xil_printf("Failed to open filesystem\n\r");
		return XST_FAILURE;
	}
	else
	{
		xil_printf("Mounted card!!!\n\r");
	}
//-----------Timer----------
	int status;

	//Timer variables to measure time
	u32 timerCount_Stop;
	u32 timerCount_Start;

	//AXI device object for AXI Timer
	XTmrCtr timer;

	status = XTmrCtr_Initialize(&timer, TMRCTR_DEVICE_ID);

	if (status != XST_SUCCESS)
	{
		xil_printf("Timer init fail\n");
		return XST_FAILURE;
	}

	status = XTmrCtr_SelfTest(&timer, TMRCTR_DEVICE_ID);
	if (status != XST_SUCCESS)
	{
		xil_printf("Timer self test fail\n");
		return XST_FAILURE;
	}

	XTmrCtr_Reset(&timer, 0);
	XTmrCtr_ClearStats(&timer);
	XTmrCtr_Start(&timer, 0);

/*------original parse
	cout<<"Parsing MNIST images\n\r";
	parse_mnist_images("images.bin", images);

	cout<<"Parsing MNIST labels\n\r";
	parse_mnist_labels("labels.bin", labels);

	cout<<"Parsing parameters\n\r";
	parse_parameters("params.bin");

	cout<<"Starting inference\n\r";
    int num_correct = 0;
*/
//------------new parse-----------
	cout<<"Parsing image\n\r";
	parse_pic_parameters("plane.bin");



	cout<<"Parsing shuffle_conv_1x1\n\r";
	parse_shuffle_conv_1x1_parameters("shuffle1.bin");

	cout<<"Parsing shuffle_conv_3x3\n\r";
	parse_shuffle_conv_3x3_parameters("shuffle3.bin");

	cout<<"Parsing conv1_weight\n\r";
	parse_conv1_weight_parameters("conv1.bin");

	cout<<"Parsing bias\n\r";
	parse_bias_parameters("bias.bin");

	cout<<"Parsing conv_last_weight\n\r";
	parse_conv_last_weight_parameters("convlast.bin");

	cout<<"Parsing fc_weight\n\r";
	parse_conv_fc_weight_parameters("fc.bin");

/*--------original inference
    xil_printf("\n\rTest Image: ");
    for (int k = 0; k < NUM_TESTS; k++)
    {
    	//Get test image from dataset
        get_image(images, k, image);

        //Begin inference here.
        convolution1(image, conv1_weights, conv1_bias, conv1_output);
        relu1(conv1_output, conv1_output);

        max_pooling2(conv1_output, pool2_output);
        relu2(pool2_output, pool2_output);

        convolution3(pool2_output, conv3_weights, conv3_bias, conv3_output);
        relu3(conv3_output, conv3_output);

        max_pooling4(conv3_output, pool4_output);
        relu4(pool4_output, pool4_output);

        convolution5(pool4_output, conv5_weights, conv5_bias, conv5_output);
        relu5(conv5_output, conv5_output);

        fc6(conv5_output, fc6_weights, fc6_bias, fc6_output);
        //End inference here.

        //Check which output was largest.
        unsigned char result = 0;
        float p = -1000000.0;
        for(int i = 0; i < 10; i++)
        {
            if(fc6_output[i] > p)
            {
                p = fc6_output[i];
                result = i;
            }
        }
        //Largest output is result

        //std::cout << "test " << k << ": " << int(result) << "/" << int(labels[k]) << ": ";
        if(result == labels[k])
        {
            num_correct++;
            //std::cout << "correct" << std::endl;
        }
        else
        {
            //std::cout << "WRONG" << std::endl;
        }

        //Disable these print statements when doing profiling and benchmark times
        xil_printf("%d ", k);
        if(k%10==0)
        	xil_printf("\n\rTest Image: ");
    }

    std::cout << "\n\rAccuracy = " << float(num_correct)/NUM_TESTS * 100.0 << "%" << std::endl;

    return 0;
   */

//--------transfer weights and bias start----------------------------
	for(int co = 0; co < 24; co ++){
	        for(int ci = 0; ci <24; ci ++){
	            ShuffleConvs_0_DownsampleUnit_conv1r_weight[co][ci][0][0] = shuffle_conv_1x1[co][ci][0][0];
	            ShuffleConvs_0_DownsampleUnit_conv3r_weight[co][ci][0][0] = shuffle_conv_1x1[co+24][ci][0][0];
	            ShuffleConvs_0_DownsampleUnit_conv2l_weight[co][ci][0][0] = shuffle_conv_1x1[co+24*2][ci][0][0];
	            ShuffleConvs_0_ShuffleUnit0_0_conv1_weight[co][ci][0][0] = shuffle_conv_1x1[co+24*3][ci][0][0];
	            ShuffleConvs_0_ShuffleUnit0_0_conv3_weight[co][ci][0][0] = shuffle_conv_1x1[co+24*4][ci][0][0];
	            ShuffleConvs_0_ShuffleUnit0_1_conv1_weight[co][ci][0][0] = shuffle_conv_1x1[co+24*5][ci][0][0];
	            ShuffleConvs_0_ShuffleUnit0_1_conv3_weight[co][ci][0][0] = shuffle_conv_1x1[co+24*6][ci][0][0];
	            ShuffleConvs_0_ShuffleUnit0_2_conv1_weight[co][ci][0][0] = shuffle_conv_1x1[co+24*7][ci][0][0];
	            ShuffleConvs_0_ShuffleUnit0_2_conv3_weight[co][ci][0][0] = shuffle_conv_1x1[co+24*8][ci][0][0];

	            for(int i = 0; i < 4; i ++ ){
	            ShuffleConvs_1_DownsampleUnit_conv1r_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*9 + 24 *i][ci][0][0];
	            ShuffleConvs_1_DownsampleUnit_conv3r_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*13 + 24 *i][ci][0][0];
	            ShuffleConvs_1_DownsampleUnit_conv2l_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*17 + 24 *i][ci][0][0];
	            ShuffleConvs_1_ShuffleUnit1_0_conv1_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*21 + 24 *i][ci][0][0];
	            ShuffleConvs_1_ShuffleUnit1_0_conv3_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*25 + 24 *i][ci][0][0];
	            ShuffleConvs_1_ShuffleUnit1_1_conv1_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*29 + 24 *i][ci][0][0];
	            ShuffleConvs_1_ShuffleUnit1_1_conv3_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*33 + 24 *i][ci][0][0];
	            ShuffleConvs_1_ShuffleUnit1_2_conv1_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*37 + 24 *i][ci][0][0];
	            ShuffleConvs_1_ShuffleUnit1_2_conv3_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*41 + 24 *i][ci][0][0];
	            ShuffleConvs_1_ShuffleUnit1_3_conv1_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*45 + 24 *i][ci][0][0];
	            ShuffleConvs_1_ShuffleUnit1_3_conv3_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*49 + 24 *i][ci][0][0];
	            ShuffleConvs_1_ShuffleUnit1_4_conv1_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*53 + 24 *i][ci][0][0];
	            ShuffleConvs_1_ShuffleUnit1_4_conv3_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*57 + 24 *i][ci][0][0];
	            ShuffleConvs_1_ShuffleUnit1_5_conv1_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*61 + 24 *i][ci][0][0];
	            ShuffleConvs_1_ShuffleUnit1_5_conv3_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*65 + 24 *i][ci][0][0];
	            ShuffleConvs_1_ShuffleUnit1_6_conv1_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*69 + 24 *i][ci][0][0];
	            ShuffleConvs_1_ShuffleUnit1_6_conv3_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*73 + 24 *i][ci][0][0];
	            ShuffleConvs_1_ShuffleUnit1_7_conv1_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*77 + 24 *i][ci][0][0];
	            ShuffleConvs_1_ShuffleUnit1_7_conv3_weight[co/2 + i *12][ci + 24*(co%2)][0][0] =shuffle_conv_1x1[co+24*81 + 24 *i][ci][0][0];
	            }

	            for(int i = 0; i < 16;i++){
	                ShuffleConvs_2_DownsampleUnit_conv1r_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*85 + 24 * i][ci][0][0];
	                ShuffleConvs_2_DownsampleUnit_conv3r_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*101 + 24 * i][ci][0][0];
	                ShuffleConvs_2_DownsampleUnit_conv2l_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*117 + 24 * i][ci][0][0];
	                ShuffleConvs_2_ShuffleUnit2_0_conv1_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*133 + 24 * i][ci][0][0];
	                ShuffleConvs_2_ShuffleUnit2_0_conv3_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*149 + 24 * i][ci][0][0];
	                ShuffleConvs_2_ShuffleUnit2_1_conv1_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*165 + 24 * i][ci][0][0];
	                ShuffleConvs_2_ShuffleUnit2_1_conv3_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*181 + 24 * i][ci][0][0];
	                ShuffleConvs_2_ShuffleUnit2_2_conv1_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*197 + 24 * i][ci][0][0];
	                ShuffleConvs_2_ShuffleUnit2_2_conv3_weight[co/4 + i * 6][ci + 24*(co%4)][0][0] =shuffle_conv_1x1[co+24*213 + 24 * i][ci][0][0];
	            }
	        }
	    }
	//1x1
	    for(int co = 0;co<24;co++){
	        for(int w = 0; w <3; w++){
	            for(int h = 0; h <3;h++){

	                ShuffleConvs_0_DownsampleUnit_conv2r_weight[co][0][w][h] = shuffle_conv_3x3[co][0][w][h];
	                ShuffleConvs_0_DownsampleUnit_conv1l_weight[co][0][w][h] = shuffle_conv_3x3[co+24][0][w][h];
	                ShuffleConvs_0_ShuffleUnit0_0_conv2_weight[co][0][w][h] = shuffle_conv_3x3[co+24*2][0][w][h];
	                ShuffleConvs_0_ShuffleUnit0_1_conv2_weight[co][0][w][h] = shuffle_conv_3x3[co+24*3][0][w][h];
	                ShuffleConvs_0_ShuffleUnit0_2_conv2_weight[co][0][w][h] = shuffle_conv_3x3[co+24*4][0][w][h];

	                for(int i = 0; i < 2; i++){
	                    ShuffleConvs_1_DownsampleUnit_conv2r_weight[co + i*24][0][w][h] = shuffle_conv_3x3[co+24*5+ i*24][0][w][h];
	                    ShuffleConvs_1_DownsampleUnit_conv1l_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*7+ i*24][0][w][h];
	                    ShuffleConvs_1_ShuffleUnit1_0_conv2_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*9+ i*24][0][w][h];
	                    ShuffleConvs_1_ShuffleUnit1_1_conv2_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*11+ i*24][0][w][h];
	                    ShuffleConvs_1_ShuffleUnit1_2_conv2_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*13+ i*24][0][w][h];
	                    ShuffleConvs_1_ShuffleUnit1_3_conv2_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*15+ i*24][0][w][h];
	                    ShuffleConvs_1_ShuffleUnit1_4_conv2_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*17+ i*24][0][w][h];
	                    ShuffleConvs_1_ShuffleUnit1_5_conv2_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*19+ i*24][0][w][h];
	                    ShuffleConvs_1_ShuffleUnit1_6_conv2_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*21+ i*24][0][w][h];
	                    ShuffleConvs_1_ShuffleUnit1_7_conv2_weight[co+ i*24][0][w][h] = shuffle_conv_3x3[co+24*23+ i*24][0][w][h];
	                }

	                for(int i = 0; i < 4; i++){
	                    ShuffleConvs_2_DownsampleUnit_conv2r_weight[co + i*24][0][w][h] = shuffle_conv_3x3[co+24*25+ i*24][0][w][h];
	                    ShuffleConvs_2_DownsampleUnit_conv1l_weight[co + i*24][0][w][h] = shuffle_conv_3x3[co+24*29+ i*24][0][w][h];
	                    ShuffleConvs_2_ShuffleUnit2_0_conv2_weight[co + i*24][0][w][h] = shuffle_conv_3x3[co+24*33+ i*24][0][w][h];
	                    ShuffleConvs_2_ShuffleUnit2_1_conv2_weight[co + i*24][0][w][h] = shuffle_conv_3x3[co+24*37+ i*24][0][w][h];
	                    ShuffleConvs_2_ShuffleUnit2_2_conv2_weight[co + i*24][0][w][h] = shuffle_conv_3x3[co+24*41+ i*24][0][w][h];
	                }
	            }
	        }

	    }
	//bias

	    for(int i = 0; i<24; i++){
	        conv1_bias[i] = bias[i];
	        ShuffleConvs_0_DownsampleUnit_conv1r_bias[i] = bias[i+24];
	        ShuffleConvs_0_DownsampleUnit_conv2r_bias[i] = bias[i+24*2];
	        ShuffleConvs_0_DownsampleUnit_conv3r_bias[i] = bias[i+24*3];
	        ShuffleConvs_0_DownsampleUnit_conv1l_bias[i] = bias[i+24*4];
	        ShuffleConvs_0_DownsampleUnit_conv2l_bias[i] = bias[i+24*5];
	        ShuffleConvs_0_ShuffleUnit0_0_conv1_bias[i] = bias[i+24*6];
	        ShuffleConvs_0_ShuffleUnit0_0_conv2_bias[i] = bias[i+24*7];
	        ShuffleConvs_0_ShuffleUnit0_0_conv3_bias[i] = bias[i+24*8];
	        ShuffleConvs_0_ShuffleUnit0_1_conv1_bias[i] = bias[i+24*9];
	        ShuffleConvs_0_ShuffleUnit0_1_conv2_bias[i] = bias[i+24*10];
	        ShuffleConvs_0_ShuffleUnit0_1_conv3_bias[i] = bias[i+24*11];
	        ShuffleConvs_0_ShuffleUnit0_2_conv1_bias[i] = bias[i+24*12];
	        ShuffleConvs_0_ShuffleUnit0_2_conv2_bias[i] = bias[i+24*13];
	        ShuffleConvs_0_ShuffleUnit0_2_conv3_bias[i] = bias[i+24*14];
	        for(int k = 0;k < 2;k++){
	            ShuffleConvs_1_DownsampleUnit_conv1r_bias[i+k*24] = bias[i+24*15+k*24];
	            ShuffleConvs_1_DownsampleUnit_conv2r_bias[i+k*24] = bias[i+24*17+k*24];
	            ShuffleConvs_1_DownsampleUnit_conv3r_bias[i+k*24] = bias[i+24*19+k*24];
	            ShuffleConvs_1_DownsampleUnit_conv1l_bias[i+k*24] = bias[i+24*21+k*24];
	            ShuffleConvs_1_DownsampleUnit_conv2l_bias[i+k*24] = bias[i+24*23+k*24];
	            ShuffleConvs_1_ShuffleUnit1_0_conv1_bias[i+k*24] = bias[i+24*25+k*24];
	            ShuffleConvs_1_ShuffleUnit1_0_conv2_bias[i+k*24] = bias[i+24*27+k*24];
	            ShuffleConvs_1_ShuffleUnit1_0_conv3_bias[i+k*24] = bias[i+24*29+k*24];
	            ShuffleConvs_1_ShuffleUnit1_1_conv1_bias[i+k*24] = bias[i+24*31+k*24];
	            ShuffleConvs_1_ShuffleUnit1_1_conv2_bias[i+k*24] = bias[i+24*33+k*24];
	            ShuffleConvs_1_ShuffleUnit1_1_conv3_bias[i+k*24] = bias[i+24*35+k*24];
	            ShuffleConvs_1_ShuffleUnit1_2_conv1_bias[i+k*24] = bias[i+24*37+k*24];
	            ShuffleConvs_1_ShuffleUnit1_2_conv2_bias[i+k*24] = bias[i+24*39+k*24];
	            ShuffleConvs_1_ShuffleUnit1_2_conv3_bias[i+k*24] = bias[i+24*41+k*24];
	            ShuffleConvs_1_ShuffleUnit1_3_conv1_bias[i+k*24] = bias[i+24*43+k*24];
	            ShuffleConvs_1_ShuffleUnit1_3_conv2_bias[i+k*24] = bias[i+24*45+k*24];
	            ShuffleConvs_1_ShuffleUnit1_3_conv3_bias[i+k*24] = bias[i+24*47+k*24];
	            ShuffleConvs_1_ShuffleUnit1_4_conv1_bias[i+k*24] = bias[i+24*49+k*24];
	            ShuffleConvs_1_ShuffleUnit1_4_conv2_bias[i+k*24] = bias[i+24*51+k*24];
	            ShuffleConvs_1_ShuffleUnit1_4_conv3_bias[i+k*24] = bias[i+24*53+k*24];
	            ShuffleConvs_1_ShuffleUnit1_5_conv1_bias[i+k*24] = bias[i+24*55+k*24];
	            ShuffleConvs_1_ShuffleUnit1_5_conv2_bias[i+k*24] = bias[i+24*57+k*24];
	            ShuffleConvs_1_ShuffleUnit1_5_conv3_bias[i+k*24] = bias[i+24*59+k*24];
	            ShuffleConvs_1_ShuffleUnit1_6_conv1_bias[i+k*24] = bias[i+24*61+k*24];
	            ShuffleConvs_1_ShuffleUnit1_6_conv2_bias[i+k*24] = bias[i+24*63+k*24];
	            ShuffleConvs_1_ShuffleUnit1_6_conv3_bias[i+k*24] = bias[i+24*65+k*24];
	            ShuffleConvs_1_ShuffleUnit1_7_conv1_bias[i+k*24] = bias[i+24*67+k*24];
	            ShuffleConvs_1_ShuffleUnit1_7_conv2_bias[i+k*24] = bias[i+24*69+k*24];
	            ShuffleConvs_1_ShuffleUnit1_7_conv3_bias[i+k*24] = bias[i+24*71+k*24];
	        }

	        for(int k = 0;k < 4;k++){
	        ShuffleConvs_2_DownsampleUnit_conv1r_bias[i+k*24] = bias[i+24*73+k*24];
	        ShuffleConvs_2_DownsampleUnit_conv2r_bias[i+k*24] = bias[i+24*77+k*24];
	        ShuffleConvs_2_DownsampleUnit_conv3r_bias[i+k*24] = bias[i+24*81+k*24];
	        ShuffleConvs_2_DownsampleUnit_conv1l_bias[i+k*24] = bias[i+24*85+k*24];
	        ShuffleConvs_2_DownsampleUnit_conv2l_bias[i+k*24] = bias[i+24*89+k*24];
	        ShuffleConvs_2_ShuffleUnit2_0_conv1_bias[i+k*24] = bias[i+24*93+k*24];
	        ShuffleConvs_2_ShuffleUnit2_0_conv2_bias[i+k*24] = bias[i+24*97+k*24];
	        ShuffleConvs_2_ShuffleUnit2_0_conv3_bias[i+k*24] = bias[i+24*101+k*24];
	        ShuffleConvs_2_ShuffleUnit2_1_conv1_bias[i+k*24] = bias[i+24*105+k*24];
	        ShuffleConvs_2_ShuffleUnit2_1_conv2_bias[i+k*24] = bias[i+24*109+k*24];
	        ShuffleConvs_2_ShuffleUnit2_1_conv3_bias[i+k*24] = bias[i+24*113+k*24];
	        ShuffleConvs_2_ShuffleUnit2_2_conv1_bias[i+k*24] = bias[i+24*117+k*24];
	        ShuffleConvs_2_ShuffleUnit2_2_conv2_bias[i+k*24] = bias[i+24*121+k*24];
	        ShuffleConvs_2_ShuffleUnit2_2_conv3_bias[i+k*24] = bias[i+24*125+k*24];
	        }
	    }
	    for(int i = 0; i < 512 ; i++){
	        conv_last_bias[i] = bias[24*129 + i];
	    }
	    for(int i = 0;i<10;i++){
	        fc_bias[i] = bias[24*129 + 512 + i];
	    }
//--------transfer weights and bias end----------------------------
	//Start the timer
	timerCount_Start = XTmrCtr_GetValue(&timer, 0);
	conv1(image,conv1_weight,conv1_bias,conv1_output);
	/**DownsampleUnit0**/
	DownsampleUnit0(conv1_output,
				 ShuffleConvs_0_DownsampleUnit_conv1r_weight,
				 ShuffleConvs_0_DownsampleUnit_conv1r_bias,
				 ShuffleConvs_0_DownsampleUnit_conv2r_weight,
				 ShuffleConvs_0_DownsampleUnit_conv2r_bias,
				 ShuffleConvs_0_DownsampleUnit_conv3r_weight,
				 ShuffleConvs_0_DownsampleUnit_conv3r_bias,
				 ShuffleConvs_0_DownsampleUnit_conv1l_weight,
				 ShuffleConvs_0_DownsampleUnit_conv1l_bias,
				 ShuffleConvs_0_DownsampleUnit_conv2l_weight,
				 ShuffleConvs_0_DownsampleUnit_conv2l_bias,
				 downsampleunit0_output);
	/**ShuffleUnit0_0**/
	ShuffleUnit0(downsampleunit0_output,
			  ShuffleConvs_0_ShuffleUnit0_0_conv1_weight,
			  ShuffleConvs_0_ShuffleUnit0_0_conv1_bias,
			  ShuffleConvs_0_ShuffleUnit0_0_conv2_weight,
			  ShuffleConvs_0_ShuffleUnit0_0_conv2_bias,
			  ShuffleConvs_0_ShuffleUnit0_0_conv3_weight,
			  ShuffleConvs_0_ShuffleUnit0_0_conv3_bias,
			  shuffleunit0_0_output
			  );
	/**ShuffleUnit0_1**/
	ShuffleUnit0(shuffleunit0_0_output,
			  ShuffleConvs_0_ShuffleUnit0_1_conv1_weight,
			  ShuffleConvs_0_ShuffleUnit0_1_conv1_bias,
			  ShuffleConvs_0_ShuffleUnit0_1_conv2_weight,
			  ShuffleConvs_0_ShuffleUnit0_1_conv2_bias,
			  ShuffleConvs_0_ShuffleUnit0_1_conv3_weight,
			  ShuffleConvs_0_ShuffleUnit0_1_conv3_bias,
			  shuffleunit0_1_output
			  );
	/**ShuffleUnit0_2**/
	ShuffleUnit0(shuffleunit0_1_output,
			  ShuffleConvs_0_ShuffleUnit0_2_conv1_weight,
			  ShuffleConvs_0_ShuffleUnit0_2_conv1_bias,
			  ShuffleConvs_0_ShuffleUnit0_2_conv2_weight,
			  ShuffleConvs_0_ShuffleUnit0_2_conv2_bias,
			  ShuffleConvs_0_ShuffleUnit0_2_conv3_weight,
			  ShuffleConvs_0_ShuffleUnit0_2_conv3_bias,
			  shuffleunit0_2_output
			  );
	/**DownsampleUnit1**/
	DownsampleUnit1(shuffleunit0_2_output,
				 ShuffleConvs_1_DownsampleUnit_conv1r_weight,
				 ShuffleConvs_1_DownsampleUnit_conv1r_bias,
				 ShuffleConvs_1_DownsampleUnit_conv2r_weight,
				 ShuffleConvs_1_DownsampleUnit_conv2r_bias,
				 ShuffleConvs_1_DownsampleUnit_conv3r_weight,
				 ShuffleConvs_1_DownsampleUnit_conv3r_bias,
				 ShuffleConvs_1_DownsampleUnit_conv1l_weight,
				 ShuffleConvs_1_DownsampleUnit_conv1l_bias,
				 ShuffleConvs_1_DownsampleUnit_conv2l_weight,
				 ShuffleConvs_1_DownsampleUnit_conv2l_bias,
				 downsampleunit1_output);
	/**ShuffleUnit1_0**/
	ShuffleUnit1(downsampleunit1_output,
			  ShuffleConvs_1_ShuffleUnit1_0_conv1_weight,
			  ShuffleConvs_1_ShuffleUnit1_0_conv1_bias,
			  ShuffleConvs_1_ShuffleUnit1_0_conv2_weight,
			  ShuffleConvs_1_ShuffleUnit1_0_conv2_bias,
			  ShuffleConvs_1_ShuffleUnit1_0_conv3_weight,
			  ShuffleConvs_1_ShuffleUnit1_0_conv3_bias,
			  shuffleunit1_0_output);
	/**ShuffleUnit1_1**/
	ShuffleUnit1(shuffleunit1_0_output,
			  ShuffleConvs_1_ShuffleUnit1_1_conv1_weight,
			  ShuffleConvs_1_ShuffleUnit1_1_conv1_bias,
			  ShuffleConvs_1_ShuffleUnit1_1_conv2_weight,
			  ShuffleConvs_1_ShuffleUnit1_1_conv2_bias,
			  ShuffleConvs_1_ShuffleUnit1_1_conv3_weight,
			  ShuffleConvs_1_ShuffleUnit1_1_conv3_bias,
			  shuffleunit1_1_output);
	/**ShuffleUnit1_2**/
	ShuffleUnit1(shuffleunit1_1_output,
			  ShuffleConvs_1_ShuffleUnit1_2_conv1_weight,
			  ShuffleConvs_1_ShuffleUnit1_2_conv1_bias,
			  ShuffleConvs_1_ShuffleUnit1_2_conv2_weight,
			  ShuffleConvs_1_ShuffleUnit1_2_conv2_bias,
			  ShuffleConvs_1_ShuffleUnit1_2_conv3_weight,
			  ShuffleConvs_1_ShuffleUnit1_2_conv3_bias,
			  shuffleunit1_2_output);
	/**ShuffleUnit1_3**/
	ShuffleUnit1(shuffleunit1_2_output,
			  ShuffleConvs_1_ShuffleUnit1_3_conv1_weight,
			  ShuffleConvs_1_ShuffleUnit1_3_conv1_bias,
			  ShuffleConvs_1_ShuffleUnit1_3_conv2_weight,
			  ShuffleConvs_1_ShuffleUnit1_3_conv2_bias,
			  ShuffleConvs_1_ShuffleUnit1_3_conv3_weight,
			  ShuffleConvs_1_ShuffleUnit1_3_conv3_bias,
			  shuffleunit1_3_output);
	/**ShuffleUnit1_4**/
	ShuffleUnit1(shuffleunit1_3_output,
			  ShuffleConvs_1_ShuffleUnit1_4_conv1_weight,
			  ShuffleConvs_1_ShuffleUnit1_4_conv1_bias,
			  ShuffleConvs_1_ShuffleUnit1_4_conv2_weight,
			  ShuffleConvs_1_ShuffleUnit1_4_conv2_bias,
			  ShuffleConvs_1_ShuffleUnit1_4_conv3_weight,
			  ShuffleConvs_1_ShuffleUnit1_4_conv3_bias,
			  shuffleunit1_4_output);
	/**ShuffleUnit1_5**/
	ShuffleUnit1(shuffleunit1_4_output,
			  ShuffleConvs_1_ShuffleUnit1_5_conv1_weight,
			  ShuffleConvs_1_ShuffleUnit1_5_conv1_bias,
			  ShuffleConvs_1_ShuffleUnit1_5_conv2_weight,
			  ShuffleConvs_1_ShuffleUnit1_5_conv2_bias,
			  ShuffleConvs_1_ShuffleUnit1_5_conv3_weight,
			  ShuffleConvs_1_ShuffleUnit1_5_conv3_bias,
			  shuffleunit1_5_output);
	/**ShuffleUnit1_6**/
	ShuffleUnit1(shuffleunit1_5_output,
			  ShuffleConvs_1_ShuffleUnit1_6_conv1_weight,
			  ShuffleConvs_1_ShuffleUnit1_6_conv1_bias,
			  ShuffleConvs_1_ShuffleUnit1_6_conv2_weight,
			  ShuffleConvs_1_ShuffleUnit1_6_conv2_bias,
			  ShuffleConvs_1_ShuffleUnit1_6_conv3_weight,
			  ShuffleConvs_1_ShuffleUnit1_6_conv3_bias,
			  shuffleunit1_6_output);
	/**ShuffleUnit1_7**/
	ShuffleUnit1(shuffleunit1_6_output,
			  ShuffleConvs_1_ShuffleUnit1_7_conv1_weight,
			  ShuffleConvs_1_ShuffleUnit1_7_conv1_bias,
			  ShuffleConvs_1_ShuffleUnit1_7_conv2_weight,
			  ShuffleConvs_1_ShuffleUnit1_7_conv2_bias,
			  ShuffleConvs_1_ShuffleUnit1_7_conv3_weight,
			  ShuffleConvs_1_ShuffleUnit1_7_conv3_bias,
			  shuffleunit1_7_output);
	/**DownsampleUnit2**/
	DownsampleUnit2(shuffleunit1_7_output,
				 ShuffleConvs_2_DownsampleUnit_conv1r_weight,
				 ShuffleConvs_2_DownsampleUnit_conv1r_bias,
				 ShuffleConvs_2_DownsampleUnit_conv2r_weight,
				 ShuffleConvs_2_DownsampleUnit_conv2r_bias,
				 ShuffleConvs_2_DownsampleUnit_conv3r_weight,
				 ShuffleConvs_2_DownsampleUnit_conv3r_bias,
				 ShuffleConvs_2_DownsampleUnit_conv1l_weight,
				 ShuffleConvs_2_DownsampleUnit_conv1l_bias,
				 ShuffleConvs_2_DownsampleUnit_conv2l_weight,
				 ShuffleConvs_2_DownsampleUnit_conv2l_bias,
				 downsampleunit2_output);
	/**ShuffleUnit2_0**/
	ShuffleUnit2(downsampleunit2_output,
			  ShuffleConvs_2_ShuffleUnit2_0_conv1_weight,
			  ShuffleConvs_2_ShuffleUnit2_0_conv1_bias,
			  ShuffleConvs_2_ShuffleUnit2_0_conv2_weight,
			  ShuffleConvs_2_ShuffleUnit2_0_conv2_bias,
			  ShuffleConvs_2_ShuffleUnit2_0_conv3_weight,
			  ShuffleConvs_2_ShuffleUnit2_0_conv3_bias,
			  shuffleunit2_0_output);
	/**ShuffleUnit2_1**/
	ShuffleUnit2(shuffleunit2_0_output,
			  ShuffleConvs_2_ShuffleUnit2_1_conv1_weight,
			  ShuffleConvs_2_ShuffleUnit2_1_conv1_bias,
			  ShuffleConvs_2_ShuffleUnit2_1_conv2_weight,
			  ShuffleConvs_2_ShuffleUnit2_1_conv2_bias,
			  ShuffleConvs_2_ShuffleUnit2_1_conv3_weight,
			  ShuffleConvs_2_ShuffleUnit2_1_conv3_bias,
			  shuffleunit2_1_output);
	/**ShuffleUnit2_2**/
	ShuffleUnit2(shuffleunit2_1_output,
			  ShuffleConvs_2_ShuffleUnit2_2_conv1_weight,
			  ShuffleConvs_2_ShuffleUnit2_2_conv1_bias,
			  ShuffleConvs_2_ShuffleUnit2_2_conv2_weight,
			  ShuffleConvs_2_ShuffleUnit2_2_conv2_bias,
			  ShuffleConvs_2_ShuffleUnit2_2_conv3_weight,
			  ShuffleConvs_2_ShuffleUnit2_2_conv3_bias,
			  shuffleunit2_2_output);



	conv_last(shuffleunit2_2_output,
		   conv_last_weight,
		   conv_last_bias,
		   conv_last_output
		   );

	avgpool(conv_last_output,avgpool_output);

	fc(avgpool_output,fc_weight,fc_bias,fc_output);
//--------stop timer-----------------------------
	timerCount_Stop = XTmrCtr_GetValue(&timer, 0);
	for(int w=0;w<32;w++){
		 for(int h=0;h<32;h++){
			 cout<< conv1_output[0][0][w][h] <<" ";
		 }cout<<endl;
	}
	for(int i = 0; i < 10; i++){
	 cout<<fc_output[i]<<endl;
	}
	//Display time
	xil_printf("Time of CPU: %d\n", (timerCount_Stop - timerCount_Start));
}