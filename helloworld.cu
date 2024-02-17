#include<stdio.h>

__global__ void hello_world_gpu()
{
    printf("Hello World from the GPU\n");
}

int main(void)
{
    hello_world_gpu<<<1,1>>>();
    cudaDeviceSynchronize();
    return 0;
}