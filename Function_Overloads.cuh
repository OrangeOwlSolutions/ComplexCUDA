/*************/
/* REAL PART */
/*************/
__host__ __device__ __forceinline __forceinline__ result_type_root_reduced<int>::root_reduced								real(const int a)							{ return a; };
__host__ __device__ __forceinline __forceinline__ result_type_root_reduced<float>::root_reduced								real(const float a)							{ return a; };
__host__ __device__ __forceinline __forceinline__ result_type_root_reduced<double>::root_reduced							real(const double a)						{ return a; };
__host__ __device__ __forceinline __forceinline__ result_type_root_reduced<int2_>::root_reduced								real(const int2_ a)							{ return a.c.x; };
__host__ __device__ __forceinline __forceinline__ result_type_root_reduced<float2_>::root_reduced							real(const float2_ a)						{ return a.c.x; };
__host__ __device__ __forceinline __forceinline__ result_type_root_reduced<double2_>::root_reduced							real(const double2_ a)						{ return a.c.x; };

/******************/
/* IMAGINARY PART */
/******************/
__host__ __device__ __forceinline __forceinline__ result_type_root_reduced<int>::root_reduced								imag(const int a)							{ return 0; }
__host__ __device__ __forceinline __forceinline__ result_type_root_reduced<float>::root_reduced								imag(const float a)							{ return 0.f; }
__host__ __device__ __forceinline __forceinline__ result_type_root_reduced<double>::root_reduced							imag(const double a)						{ return 0.; }
__host__ __device__ __forceinline __forceinline__ result_type_root_reduced<int2_>::root_reduced								imag(const int2_ a)							{ return a.c.y; }
__host__ __device__ __forceinline __forceinline__ result_type_root_reduced<float2_>::root_reduced							imag(const float2_ a)						{ return a.c.y; }
__host__ __device__ __forceinline __forceinline__ result_type_root_reduced<double2_>::root_reduced							imag(const double2_ a)						{ return a.c.y; }

/******************/
/* ABSOLUTE VALUE */  //OK
/******************/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions_reduced<int2_>::root_functions_reduced			abs(const int2_ a)							{ return hypot((float)a.c.x,(float)a.c.y); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions_reduced<float2_>::root_functions_reduced		abs(const float2_ a)						{ return hypot(a.c.x,a.c.y); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions_reduced<double2_>::root_functions_reduced		abs(const double2_ a)						{ return hypot(a.c.x,a.c.y); }

/************/
/* ARGUMENT */  //OK
/************/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions_reduced<int>::root_functions_reduced			angle(const int a)							{ return atan2(0.f,(float)a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions_reduced<float>::root_functions_reduced			angle(const float a)						{ return atan2(0.f,a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions_reduced<double>::root_functions_reduced		angle(const double a)						{ return atan2(0.,a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions_reduced<int2_>::root_functions_reduced			angle(const int2_ a)						{ return atan2((float)a.c.y,(float)a.c.x); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions_reduced<float2_>::root_functions_reduced		angle(const float2_ a)						{ return atan2(a.c.y,a.c.x); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions_reduced<double2_>::root_functions_reduced		angle(const double2_ a)						{ return atan2(a.c.y,a.c.x); }

/*************/
/* CONJUGATE */
/*************/
__host__ __device__ __forceinline __forceinline__ int																		conj(const int a)							{ return a; }
__host__ __device__ __forceinline __forceinline__ float																		conj(const float a)							{ return a; }
__host__ __device__ __forceinline __forceinline__ double																	conj(const double a)						{ return a; }
__host__ __device__ __forceinline __forceinline__ int2_																		conj(const int2_ a)							{ return int2_(a.c.x,-a.c.y); }
__host__ __device__ __forceinline __forceinline__ float2_																	conj(const float2_ a)						{ return float2_(a.c.x,-a.c.y); }
__host__ __device__ __forceinline __forceinline__ double2_																	conj(const double2_ a)						{ return double2_(a.c.x,-a.c.y); }

/*******/
/* LOG */  //OK
/*******/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int>::root_functions							log(const int a)							{ return log((float)a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int2_>::root_functions							log(const int2_ a)							{ return float2_(0.5f*log((float)(a.c.x*a.c.x)+(float)(a.c.y*a.c.y)),atan2((float)a.c.y,(float)a.c.x)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<float2_>::root_functions						log(const float2_ a)						{ return float2_(0.5f*log(a.c.x*a.c.x+a.c.y*a.c.y),atan2(a.c.y,a.c.x)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<double2_>::root_functions						log(const double2_ a)						{ return double2_(0.5*log(a.c.x*a.c.x+a.c.y*a.c.y),atan2(a.c.y,a.c.x)); }

/*********/
/* LOG10 */  //OK
/*********/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int>::root_functions							log10(const int a)							{ return (log((float)a)/log(10.f)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int2_>::root_functions							log10(const int2_ a)						{ return float2_(log((float)abs(a))/log(10.f),angle(a)/log(10.f)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<float2_>::root_functions						log10(const float2_ a)						{ return float2_(log(abs(a))/log(10.f),angle(a)/log(10.f)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<double2_>::root_functions						log10(const double2_ a)						{ return double2_(log(abs(a))/log(10.),angle(a)/log(10.)); }

/*********/
/* POLAR */
/*********/
__host__ __device__ __forceinline __forceinline__ result_type_root_augmented<int>::root_augmented							polar(const int a, const int b = 0)			{ return float2_(a*cos((float)b),a*sin((float)b)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_augmented<float>::root_augmented							polar(const float a, const float b = 0)		{ return float2_(a*cos(b),a*sin(b)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_augmented<double>::root_augmented						polar(const double a, const double b = 0)	{ return double2_(a*cos(b),a*sin(b)); }

/********/
/* SQRT */  //OK
/********/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int>::root_functions							sqrt(const int a)							{ return sqrt((float)a); }

__host__ __device__ __forceinline __forceinline__ float2_ sqrt(const int2_& z)
{
	float rr = (float)z.c.x;
	float ii = (float)z.c.y;
	
	float x = fabs(rr); float y = fabs(ii);

	if ((x == 0.f)&(y == 0.f)) return float2_(0.f,0.f);

	float temp = hypot(x,y)+x;
	x = sqrt(0.5f * temp);
	y = sqrt(0.5f * y * y / temp);
	if (ii >= 0.f) { if (rr >= 0.f) return float2_(x, y); else return float2_(y, x); }
	else { if (rr >= 0.f) return float2_(x, -y); else return float2_(y, -x); }
}

__host__ __device__ __forceinline __forceinline__ float2_ sqrt(const float2_& z)
{
	float rr = z.c.x;
	float ii = z.c.y;
	
	float x = fabs(rr); float y = fabs(ii);

	if ((x == 0.f)&(y == 0.f)) return float2_(0.f,0.f);

	float temp = hypot(x,y)+x;
	x = sqrt(0.5f * temp);
	y = sqrt(0.5f * y * y / temp);
	if (ii >= 0.f) { if (rr >= 0.f) return float2_(x, y); else return float2_(y, x); }
	else { if (rr >= 0.f) return float2_(x, -y); else return float2_(y, -x); }
}

__host__ __device__ __forceinline __forceinline__ double2_ sqrt(const double2_& z)
{
	double rr = z.c.x;
	double ii = z.c.y;
	
	double x = fabs(rr); double y = fabs(ii);

	if ((x == 0.f)&(y == 0.f)) return float2_(0.f,0.f);

	float temp = hypot(x,y)+x;
	x = sqrt(0.5 * temp);
	y = sqrt(0.5 * y * y / temp);
	if (ii >= 0.) { if (rr >= 0.) return double2_(x, y); else return double2_(y, x); }
	else { if (rr >= 0.) return double2_(x, -y); else return double2_(y, -x); }
}

/*******/
/* SIN */  //OK
/*******/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int>::root_functions		sin(const int a)				{ return sin((float)a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int2_>::root_functions		sin(const int2_ a)				{ return float2_(sin((float)a.c.x)*cosh((float)a.c.y),cos((float)a.c.x)*sinh((float)a.c.y)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<float2_>::root_functions	sin(const float2_ a)			{ return float2_(sin(a.c.x)*cosh(a.c.y),cos(a.c.x)*sinh(a.c.y)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<double2_>::root_functions	sin(const double2_ a)			{ return double2_(sin(a.c.x)*cosh(a.c.y),cos(a.c.x)*sinh(a.c.y)); }

/*******/
/* COS */  //OK
/*******/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int>::root_functions		cos(const int a)				{ return cos((float)a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int2_>::root_functions		cos(const int2_ a)				{ return float2_(cos((float)a.c.x)*cosh((float)a.c.y),-sin((float)a.c.x)*sinh((float)a.c.y)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<float2_>::root_functions	cos(const float2_ a)			{ return float2_(cos(a.c.x)*cosh(a.c.y),-sin(a.c.x)*sinh(a.c.y)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<double2_>::root_functions	cos(const double2_ a)			{ return double2_(cos(a.c.x)*cosh(a.c.y),-sin(a.c.x)*sinh(a.c.y)); }

/*******/
/* TAN */  //OK
/*******/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int>::root_functions		tan(const int a)				{ return tan((float)a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int2_>::root_functions		tan(const int2_ a)				{ return float2_(tan((float)a.c.x), tanh((float)a.c.y))/float2_(1.f,-tan((float)a.c.x)*tanh((float)a.c.y)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<float2_>::root_functions	tan(const float2_ a)			{ return float2_(tan(a.c.x), tanh(a.c.y))/float2_(1.f,-tan(a.c.x)*tanh(a.c.y)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<double2_>::root_functions	tan(const double2_ a)			{ return double2_(tan(a.c.x), tanh(a.c.y))/double2_(1.,-tan(a.c.x)*tanh(a.c.y)); }

/*******/
/* EXP */  //OK
/*******/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int>::root_functions		exp(const int a)				{ return exp((float)a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int2_>::root_functions		exp(const int2_ a)				{ return exp((float)a.c.x)*float2_(cos((float)a.c.y),sin((float)a.c.y)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<float2_>::root_functions	exp(const float2_ a)			{ return exp(a.c.x)*float2_(cos(a.c.y),sin(a.c.y)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<double2_>::root_functions	exp(const double2_ a)			{ return exp(a.c.x)*double2_(cos(a.c.y),sin(a.c.y)); }

/*******/
/* POW */  //TO BE OPTIMIZED
/*******/
// --- Real-Real
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<int,	float>::strongest	pow(const int a, const float b)				{ return pow(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<int,	double>::strongest	pow(const int a, const double b)			{ return pow(a,b); }

// --- Complex-Complex
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<int2_,	int2_>::strongest				pow(const int2_ a, const int2_ b)			{ if ((a.c.x==0)&&(a.c.y==0)) return int2_(0,0); return exp(b*log(a)); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<int2_,	float2_>::strongest				pow(const int2_ a, const float2_ b)			{ if ((a.c.x==0)&&(a.c.y==0)) return int2_(0,0); return exp(b*log(a)); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<int2_,	double2_>::strongest			pow(const int2_ a, const double2_ b)		{ if ((a.c.x==0)&&(a.c.y==0)) return int2_(0,0); return exp(b*log(a)); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<float2_,	int2_>::strongest				pow(const float2_ a, const int2_ b)			{ if ((a.c.x==0.f)&&(a.c.y==0.f)) return float2_(0.f,0.f); return exp(b*log(a)); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<float2_,	float2_>::strongest				pow(const float2_ a, const float2_ b)		{ if ((a.c.x==0.f)&&(a.c.y==0.f)) return float2_(0.f,0.f); return exp(b*log(a)); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<float2_,	double2_>::strongest			pow(const float2_ a, const double2_ b)		{ if ((a.c.x==0.f)&&(a.c.y==0.f)) return float2_(0.f,0.f); return exp(b*log(a)); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<double2_,	int2_>::strongest				pow(const double2_ a, const int2_ b)		{ if ((a.c.x==0.)&&(a.c.y==0.)) return double2_(0.,0.); return exp(b*log(a)); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<double2_,	float2_>::strongest				pow(const double2_ a, const float2_ b)		{ if ((a.c.x==0.f)&&(a.c.y==0.f)) return double2_(0.,0.); return exp(b*log(a)); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<double2_,	double2_>::strongest			pow(const double2_ a, const double2_ b)		{ if ((a.c.x==0.f)&&(a.c.y==0.f)) return double2_(0.,0.); return exp(b*log(a)); }

// --- Complex-Real
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<int2_,	float>::strongest				pow(const int2_ a, const float b)			{ float2_	c(b,0.f);			return pow(a,c); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<int2_,	double>::strongest				pow(const int2_ a, const double b)			{ double2_	c(b,0.);			return pow(a,c); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<float2_,	float>::strongest				pow(const float2_ a, const float b)			{ float2_	c(b,0.f);			return pow(a,c); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<float2_,	double>::strongest				pow(const float2_ a, const double b)		{ float2_	c(b,0.);			return pow(a,c); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<double2_,	float>::strongest				pow(const double2_ a, const float b)		{ double2_	c(b,0.);			return pow(a,c); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<double2_,	double>::strongest				pow(const double2_ a, const double b)		{ double2_	c(b,0.);			return pow(a,c); }

// --- Real-Complex
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<int,		int2_>::strongest				pow(const int a, const int2_ b)				{ float2_	c((float)a,0.f);	return pow(c,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<float,	int2_>::strongest				pow(const float a, const int2_ b)			{ float2_	c(a,0.f);			return pow(c,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<double,	int2_>::strongest				pow(const double a, const int2_ b)			{ double2_	c(a,0.);			return pow(c,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<int,		float2_>::strongest				pow(const int a, const float2_ b)			{ float2_	c((float)a,0.f);	return pow(c,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<float,	float2_>::strongest				pow(const float a, const float2_ b)			{ float2_	c(a,0.f);			return pow(c,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<double,	float2_>::strongest				pow(const double a, const float2_ b)		{ double2_	c(a,0.);			return pow(c,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<int,		double2_>::strongest			pow(const int a, const double2_ b)			{ float2_	c((float)a,0.f);	return pow(c,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<float,	double2_>::strongest			pow(const float a, const double2_ b)		{ float2_	c(a,0.);			return pow(c,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion_functions<double,	double2_>::strongest			pow(const double a, const double2_ b)		{ double2_	c(a,0.);			return pow(c,b); }

// --- Complex-Int (int2_)
__host__ __device__ __forceinline __forceinline__ float2_	pow(const float2_, const int);				
__host__ __device__ __forceinline __forceinline__ float2_	pow(const int2_ a, const int b)				
{ 
	switch (b)
	{
		case 0:		return int2_(1,0);
		case 1:		return a;
		case 2:		return a*a;
		case 3:		return a*a*a;
		case 4:		return a*a*a*a;
		case 5:		return a*a*a*a*a;
		case 6:		return a*a*a*a*a*a;
		case 7:		return a*a*a*a*a*a*a;
		case 8:		return a*a*a*a*a*a*a*a;
		case 9:		return a*a*a*a*a*a*a*a*a;
		case 10:	return a*a*a*a*a*a*a*a*a*a;
		case 11:	return a*a*a*a*a*a*a*a*a*a*a;
		case 12:	return a*a*a*a*a*a*a*a*a*a*a*a;
		default:
			if (b < 0 && b >= -12) return pow(1.f/a,-b);
			return pow(a, (float)b);
   }
}

// --- Complex-Int (float2_)
__host__ __device__ __forceinline __forceinline__ float2_	pow(const float2_ a, const int b)				
{ 
	switch (b)
	{
		case 0:		return float2_(1.f,0);
		case 1:		return a;
		case 2:		return a*a;
		case 3:		return a*a*a;
		case 4:		return a*a*a*a;
		case 5:		return a*a*a*a*a;
		case 6:		return a*a*a*a*a*a;
		case 7:		return a*a*a*a*a*a*a;
		case 8:		return a*a*a*a*a*a*a*a;
		case 9:		return a*a*a*a*a*a*a*a*a;
		case 10:	return a*a*a*a*a*a*a*a*a*a;
		case 11:	return a*a*a*a*a*a*a*a*a*a*a;
		case 12:	return a*a*a*a*a*a*a*a*a*a*a*a;
		default:
			if (b < 0 && b >= -12) return pow(1.f/a,-b);
			return pow(a, (float)b);
   }
}

// --- Complex-Int (double2_)
__host__ __device__ __forceinline __forceinline__ double2_	pow(const double2_ a, const int b)				
{ 
	switch (b)
	{
		case 0:		return double2_(1.f,0);
		case 1:		return a;
		case 2:		return a*a;
		case 3:		return a*a*a;
		case 4:		return a*a*a*a;
		case 5:		return a*a*a*a*a;
		case 6:		return a*a*a*a*a*a;
		case 7:		return a*a*a*a*a*a*a;
		case 8:		return a*a*a*a*a*a*a*a;
		case 9:		return a*a*a*a*a*a*a*a*a;
		case 10:	return a*a*a*a*a*a*a*a*a*a;
		case 11:	return a*a*a*a*a*a*a*a*a*a*a;
		case 12:	return a*a*a*a*a*a*a*a*a*a*a*a;
		default:
			if (b < 0 && b >= -12) return pow(1./a,-b);
			return pow(a, (double)b);
   }
}

/*********/
/* ASINH */  //OK
/*********/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int>::root_functions							asinh(const int a)							{ return asinh((float)a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int2_>::root_functions							asinh(const int2_ a)						{ float2_	c = log(a + sqrt(a*a+1.0f));return float2_	(copysign(c.c.x, (float)a.c.x), copysign(c.c.y, (float)	a.c.y)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<float2_>::root_functions						asinh(const float2_ a)						{ float2_	c = log(a + sqrt(a*a+1.0f));	return float2_	(copysign(c.c.x,		a.c.x), copysign(c.c.y,			a.c.y)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<double2_>::root_functions						asinh(const double2_ a)						{ double2_	c = log(a + sqrt(a*a+1.0));	return double2_	(copysign(c.c.x,		a.c.x), copysign(c.c.y,			a.c.y)); }

/*********/
/* ACOSH */  //OK
/*********/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int>::root_functions							acosh(const int a)							{ return acosh((float)a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int2_>::root_functions							acosh(const int2_ a)						{ float2_	c = log(a + sqrt(a*a-1.0f));	return float2_	(copysign(c.c.x, 0.f),	copysign(c.c.y, (float)	a.c.y)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<float2_>::root_functions						acosh(const float2_ a)						{ float2_	c = log(a + sqrt(a*a-1.0f));	return float2_	(copysign(c.c.x, 0.f),	copysign(c.c.y,			a.c.y)); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<double2_>::root_functions						acosh(const double2_ a)						{ double2_	c = log(a + sqrt(a*a-1.0));	return double2_	(copysign(c.c.x, 0.),	copysign(c.c.y,			a.c.y)); }

/*********/
/* ATANH */  //OK
/*********/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int>::root_functions							atanh(const int a)							{ return atanh((float)a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int2_>::root_functions							atanh(const int2_ a)						{ float2_	c = log((1.f+a)/(1.f-a))/2.f;	return c; }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<float2_>::root_functions						atanh(const float2_ a)						{ float2_	c = log((1.f+a)/(1.f-a))/2.f;	return c; }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<double2_>::root_functions						atanh(const double2_ a)						{ double2_	c = log((1.+a)/(1.-a))/2.;		return c; }

/********/
/* SINH */  //OK
/********/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int>::root_functions							sinh(const int a)							{ return sinh((float)a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int2_>::root_functions							sinh(const int2_ a)							{ return sin(float2_(0.f,1.f)*a)/float2_(0.f,1.f); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<float2_>::root_functions						sinh(const float2_ a)						{ return sin(float2_(0.f,1.f)*a)/float2_(0.f,1.f); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<double2_>::root_functions						sinh(const double2_ a)						{ return sin(double2_(0.,1.)*a)/double2_(0.,1.); }

/********/
/* COSH */  //OK
/********/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int>::root_functions							cosh(const int a)							{ return cosh((float)a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int2_>::root_functions							cosh(const int2_ a)							{ return cos(float2_(0.f,1.f)*a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<float2_>::root_functions						cosh(const float2_ a)						{ return cos(float2_(0.f,1.f)*a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<double2_>::root_functions						cosh(const double2_ a)						{ return cos(double2_(0.,1.)*a); }

/********/
/* TANH */  //OK
/********/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int>::root_functions							tanh(const int a)							{ return tanh((float)a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int2_>::root_functions							tanh(const int2_ a)							{ return tan(float2_(0.f,1.f)*a)/float2_(0.f,1.f); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<float2_>::root_functions						tanh(const float2_ a)						{ return tan(float2_(0.f,1.f)*a)/float2_(0.f,1.f); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<double2_>::root_functions						tanh(const double2_ a)						{ return tan(double2_(0.,1.)*a)/double2_(0.f,1.f); }

/********/
/* ASIN */  //OK
/********/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int>::root_functions		asin(const int a)				{ return asin((float)a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int2_>::root_functions		asin(const int2_ a)				{ return float2_(0.f,-1.f)*asinh(float2_(0.f,1.f)*a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<float2_>::root_functions	asin(const float2_ a)			{ return float2_(0.f,-1.f)*asinh(float2_(0.f,1.f)*a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<double2_>::root_functions	asin(const double2_ a)			{ return double2_(0.,-1.)*asinh(double2_(0.,1.)*a); }

/********/
/* ATAN */  //OK
/********/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int>::root_functions		atan(const int a)				{ return atan((float)a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int2_>::root_functions		atan(const int2_ a)				{ return atanh(float2_(0.f,1.f)*a)/float2_(0.f,1.f); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<float2_>::root_functions	atan(const float2_ a)			{ return atanh(float2_(0.f,1.f)*a)/float2_(0.f,1.f); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<double2_>::root_functions	atan(const double2_ a)			{ return atanh(double2_(0.,1.)*a)/double2_(0.,1.); }

/********/
/* ACOS */  //OK
/********/
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int>::root_functions		acos(const int a)				{ return acos((float)a); }
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<int2_>::root_functions		acos(const int2_ a)				
					{	
 						if (a.c.x == 0) return float2_(pi_f/2., -(float)a.c.y); 
						return atan((sqrt(1-a*a))/a);
					}
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<float2_>::root_functions	acos(const float2_ a)			
					{	
 						if (a.c.x == 0.f) return float2_(pi_f/2., -a.c.y); 
						return atan((sqrt(1-a*a))/a);
					}
__host__ __device__ __forceinline __forceinline__ result_type_root_functions<double2_>::root_functions	acos(const double2_ a)	
					{	
 						if (a.c.x == 0.) return float2_(pi_d/2., -a.c.y); 
						return atan((sqrt(1-a*a))/a);
					}

