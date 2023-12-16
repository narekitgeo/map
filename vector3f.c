#include <stdio.h>
#include "vector3f.h"

vector3f vector3f_create(float x, float y, float z)
{
    vector3f v;
    v.x = x;
    v.y = y;
    v.z = z;

    return v;
}

void vector3f_print(vector3f *v)
{
    printf("(%f, %f, %f)", v->x, v->y, v->z);
}
