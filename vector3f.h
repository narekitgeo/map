#ifndef __VECTOR3f_H__
#define __VECTOR3f_H__

typedef struct vector3f
{
    float x;
    float y;
    float z;
} vector3f;

vector3f vector3f_create(float x, float y, float z);
void vector3f_print(vector3f *v);

#endif