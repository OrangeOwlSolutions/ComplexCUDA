#ifndef __COMPLEXTYPES_H__
#define __COMPLEXTYPES_H__

#include <iomanip>							// Needed for setw


	#define pi_f  3.14159265358979f					// Greek pi in single precision
	#define pi_d  3.141592653589793238463			// Greek pi in double precision

    class float2_;
	class double2_;

	#define prec_cout 10			// Precision in couting complex numbers

	class int2_ {
	
		public:
			int2 c;

			__host__ __device__ __forceinline __forceinline__ int2_()											{ }
			__host__ __device__ __forceinline __forceinline__ int2_(const int x_,const int y_)					{ c.x=x_;		c.y=y_;}
			__host__ __device__ __forceinline __forceinline__ int2_(const int a)								{ c.x = a;		c.y=0; }
			__host__ __device__ __forceinline __forceinline__ int2_(const float a)								{ c.x = (int)a; c.y=0; }
			__host__ __device__ __forceinline __forceinline__ int2_(const double a)								{ c.x = (int)a; c.y=0; }
			__host__ __device__ __forceinline __forceinline__ int2_(const float2_ a);
			__host__ __device__ __forceinline __forceinline__ int2_(const double2_ a);

			__host__ __device__ __forceinline __forceinline__ const int2_& operator=(const int a)				{ c.x = a;		c.y = 0.;		return *this; }
			__host__ __device__ __forceinline __forceinline__ const int2_& operator=(const float a)				{ c.x = (int)a;	c.y = 0.;		return *this; }
			__host__ __device__ __forceinline __forceinline__ const int2_& operator=(const double a)			{ c.x = (int)a; c.y = 0.;		return *this; }
			__host__ __device__ __forceinline __forceinline__ const int2_& operator=(const int2_ a)				{ c.x = a.c.x;	c.y = a.c.y;	return *this; }
			__host__ __device__ __forceinline __forceinline__ const int2_& operator=(const float2_ a);
			__host__ __device__ __forceinline __forceinline__ const int2_& operator=(const double2_ a);
            __host__ __device__ __forceinline __forceinline__ int2_ operator-()const    {   return int2_(-c.x,-c.y); }									
            __host__ __device__ __forceinline __forceinline__ const int& real()const {return c.x;};                        
            __host__ __device__ __forceinline __forceinline__ int &real() {return c.x;};            
            __host__ __device__ __forceinline __forceinline__ const int& imag()const {return c.y;};                        
            __host__ __device__ __forceinline __forceinline__ int &imag() {return c.y;};            


	};

	class float2_ {

		public:
			float2 c;
			__host__ __device__ __forceinline __forceinline__ float2_(const float x_,const float y_)			{ c.x=x_;				c.y=y_; }
			__host__ __device__ __forceinline __forceinline__ float2_()											{ };
			__host__ __device__ __forceinline __forceinline__ float2_(const int a)								{ c.x = (float)a;		c.y=0.; }
			__host__ __device__ __forceinline __forceinline__ float2_(const float a)							{ c.x = a;				c.y=0.; }
			__host__ __device__ __forceinline __forceinline__ float2_(const double a)							{ c.x = (float)a;		c.y=0.; }
			__host__ __device__ __forceinline __forceinline__ float2_(const int2_ a)							{ c.x = (float)a.c.x;	c.y=(float)a.c.y; }
			__host__ __device__ __forceinline __forceinline__ float2_(const double2_ a);

			__host__ __device__ __forceinline __forceinline__ const float2_& operator=(const int a)				{ c.x = (float)a;		c.y = 0.;			return *this; }
 			__host__ __device__ __forceinline __forceinline__ const float2_& operator=(const float a)			{ c.x = a;				c.y = 0.;			return *this; }
			__host__ __device__ __forceinline __forceinline__ const float2_& operator=(const double a)			{ c.x = (float)a;		c.y = 0.;			return *this; }
			__host__ __device__ __forceinline __forceinline__ const float2_& operator=(const int2_ a)			{ c.x = (float)a.c.x;	c.y = (float)a.c.y;	return *this; }
			__host__ __device__ __forceinline __forceinline__ const float2_& operator=(const float2_ a)			{ c.x = a.c.x;			c.y = a.c.y;		return *this; }
			__host__ __device__ __forceinline __forceinline__ const float2_& operator=(const double2_ a);
            __host__ __device__ __forceinline __forceinline__ float2_ operator-()const    {   return float2_(-c.x,-c.y); }						

            __host__ __device__ __forceinline __forceinline__ const float& real()const {return c.x;};                        
            __host__ __device__ __forceinline __forceinline__ float &real() {return c.x;};            
            __host__ __device__ __forceinline __forceinline__ const float& imag()const {return c.y;};                        
            __host__ __device__ __forceinline __forceinline__ float &imag() {return c.y;};            
			
	};

	class double2_ {
	
		public:
			double2 c;

			__host__ __device__ __forceinline __forceinline__ double2_(const double x_,const double y_)			{ c.x=x_;				c.y=y_; }
			__host__ __device__ __forceinline __forceinline__ double2_()										{ };
			__host__ __device__ __forceinline __forceinline__ double2_(const int a)								{ c.x = (double)a;		c.y=0.; }
			__host__ __device__ __forceinline __forceinline__ double2_(const float a)							{ c.x = (double)a;		c.y=0.; }
			__host__ __device__ __forceinline __forceinline__ double2_(const double a)							{ c.x = a;				c.y=0.; }
			__host__ __device__ __forceinline __forceinline__ double2_(const int2_ a)							{ c.x = (double)a.c.x;	c.y=(double)a.c.y; }
			__host__ __device__ __forceinline __forceinline__ double2_(const float2_ a)							{ c.x = (double)a.c.x;	c.y=(double)a.c.y; }

			__host__ __device__ __forceinline __forceinline__ const double2_& operator=(const int a)			{ c.x = (double)a;		c.y = 0.;				return *this; }
			__host__ __device__ __forceinline __forceinline__ const double2_& operator=(const float a)			{ c.x = (double)a;		c.y = 0.;				return *this; }
			__host__ __device__ __forceinline __forceinline__ const double2_& operator=(const double a)			{ c.x = a;				c.y = 0.;				return *this; }
			__host__ __device__ __forceinline __forceinline__ const double2_& operator=(const int2_ a)			{ c.x = (double)a.c.x;	c.y = (double)a.c.y;	return *this; }
			__host__ __device__ __forceinline __forceinline__ const double2_& operator=(const float2_ a)		{ c.x = (double)a.c.x;	c.y = (double)a.c.y;	return *this; }
			__host__ __device__ __forceinline __forceinline__ const double2_& operator=(const double2_ a)		{ c.x = a.c.x;			c.y = a.c.y;			return *this; }
            __host__ __device__ __forceinline __forceinline__ double2_ operator-()const    {   return double2_(-c.x,-c.y); }			
            
            __host__ __device__ __forceinline __forceinline__ const double& real()const {return c.x;};                        
            __host__ __device__ __forceinline __forceinline__ double &real() {return c.x;};            
            __host__ __device__ __forceinline __forceinline__ const double& imag()const {return c.y;};                        
            __host__ __device__ __forceinline __forceinline__ double &imag() {return c.y;};  

	};

	__host__ __device__ __forceinline __forceinline__ int2_::int2_(const float2_ a)								{ c.x = (int)a.c.x;		c.y=(int)a.c.y; }
	__host__ __device__ __forceinline __forceinline__ int2_::int2_(const double2_ a)						{ c.x = (int)a.c.x;		c.y=(int)a.c.y; }
	__host__ __device__ __forceinline __forceinline__ const int2_& int2_::operator=(const float2_ a)			{ c.x = (int)a.c.x;		c.y = (int)a.c.y;	return *this; }
	__host__ __device__ __forceinline __forceinline__ const int2_& int2_::operator=(const double2_ a)			{ c.x = (int)a.c.x;		c.y = (int)a.c.y;	return *this; }
	__host__ __device__ __forceinline __forceinline__ float2_::float2_(const double2_ a)						{ c.x = (float)a.c.x;	c.y=(float)a.c.y; }
	__host__ __device__ __forceinline __forceinline__ const float2_& float2_::operator=(const double2_ a)		{ c.x = (float)a.c.x;	c.y = (float)a.c.y; return *this; }


	/*std::ostream& operator<<(std::ostream& output, const int2_& v)
	{
		output << std::setw(prec_cout) << "(" << v.c.x << "," << v.c.y << ")\t";
		return output;
	}


	std::ostream& operator<<(std::ostream& output, const float2_& v)
	{
		output << std::setw(prec_cout) << "(" << v.c.x << "," << v.c.y << ")\t";
		return output;
	}
	
	std::ostream& operator<<(std::ostream& output, const double2_& v)
	{
		output << std::setw(prec_cout) << "(" << v.c.x << "," << v.c.y << ")\t";
		return output;
	}*/

#endif
