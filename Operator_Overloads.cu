/*********************************************/
/* AUXILIARY FUNCTION FOR operator+ OVERLOAD */
/*********************************************/
// --- Real-Real
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,int>::strongest				add(const int a,		const int b)		{ return a+b; };
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,float>::strongest			add(const int a,		const float b)		{ return a+b; };
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,int>::strongest			add(const float a,		const int b)		{ return a+b; };
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,double>::strongest			add(const int a,		const double b)		{ return a+b; };
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,int>::strongest			add(const double a,		const int b)		{ return a+b; };
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,float>::strongest			add(const float a,		const float b)		{ return a+b; };
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,double>::strongest		add(const float a,		const double b)		{ return a+b; };
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,float>::strongest		add(const double a,		const float b)		{ return a+b; };
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,double>::strongest		add(const double a,		const double b)		{ return a+b; };

// --- Complex-Real
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,int>::strongest			add(const int2_ a,		const int b)		{ result_type_promotion<int2_,int>::strongest				c; c.c.x = a.c.x+b; c.c.y = a.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,float>::strongest			add(const int2_ a,		const float b)		{ result_type_promotion<int2_,float>::strongest				c; c.c.x = a.c.x+b; c.c.y = a.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,double>::strongest		add(const int2_ a,		const double b)		{ result_type_promotion<int2_,double>::strongest			c; c.c.x = a.c.x+b; c.c.y = a.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,int>::strongest			add(const float2_ a,	const int b)		{ result_type_promotion<float2_,int>::strongest				c; c.c.x = a.c.x+b; c.c.y = a.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,float>::strongest		add(const float2_ a,	const float b)		{ result_type_promotion<float2_,float>::strongest			c; c.c.x = a.c.x+b; c.c.y = a.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,double>::strongest		add(const float2_ a,	const double b)		{ result_type_promotion<float2_,double>::strongest			c; c.c.x = a.c.x+b; c.c.y = a.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,int>::strongest		add(const double2_ a,	const int b)		{ result_type_promotion<double2_,int>::strongest			c; c.c.x = a.c.x+b; c.c.y = a.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,float>::strongest		add(const double2_ a,	const float b)		{ result_type_promotion<double2_,float>::strongest			c; c.c.x = a.c.x+b; c.c.y = a.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,double>::strongest		add(const double2_ a,	const double b)		{ result_type_promotion<double2_,double>::strongest			c; c.c.x = a.c.x+b; c.c.y = a.c.y; return c; }

// --- Real-Complex
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,int2_>::strongest			add(const int a,		const int2_ b)		{ result_type_promotion<int,int2_>::strongest				c; c.c.x = a+b.c.x; c.c.y = b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,int2_>::strongest			add(const float a,		const int2_ b)		{ result_type_promotion<float,int2_>::strongest				c; c.c.x = a+b.c.x; c.c.y = b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,int2_>::strongest		add(const double a,		const int2_ b)		{ result_type_promotion<double,int2_>::strongest			c; c.c.x = a+b.c.x; c.c.y = b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,float2_>::strongest			add(const int a,		const float2_ b)	{ result_type_promotion<int,float2_>::strongest				c; c.c.x = a+b.c.x; c.c.y = b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,float2_>::strongest		add(const float a,		const float2_ b)	{ result_type_promotion<float,float2_>::strongest			c; c.c.x = a+b.c.x; c.c.y = b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,float2_>::strongest		add(const double a,		const float2_ b)	{ result_type_promotion<double,float2_>::strongest			c; c.c.x = a+b.c.x; c.c.y = b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,double2_>::strongest		add(const int a,		const double2_ b)	{ result_type_promotion<int,double2_>::strongest			c; c.c.x = a+b.c.x; c.c.y = b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,double2_>::strongest		add(const float a,		const double2_ b)	{ result_type_promotion<float,double2_>::strongest			c; c.c.x = a+b.c.x; c.c.y = b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,double2_>::strongest		add(const double a,		const double2_ b)	{ result_type_promotion<double,double2_>::strongest			c; c.c.x = a+b.c.x; c.c.y = b.c.y; return c; }

// --- Complex-Complex
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,int2_>::strongest			add(const int2_ a, const int2_ b)			{ result_type_promotion<int2_,int2_>::strongest				c; c.c.x = a.c.x+b.c.x; c.c.y = a.c.y+b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,float2_>::strongest		add(const int2_ a, const float2_ b)			{ result_type_promotion<int2_,float2_>::strongest			c; c.c.x = a.c.x+b.c.x; c.c.y = a.c.y+b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,int2_>::strongest		add(const float2_ a, const int2_ b)			{ result_type_promotion<float2_,int2_>::strongest			c; c.c.x = a.c.x+b.c.x; c.c.y = a.c.y+b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,double2_>::strongest		add(const int2_ a, const double2_ b)		{ result_type_promotion<int2_,double2_>::strongest			c; c.c.x = a.c.x+b.c.x; c.c.y = a.c.y+b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,int2_>::strongest		add(const double2_ a, const int2_ b)		{ result_type_promotion<double2_,int2_>::strongest			c; c.c.x = a.c.x+b.c.x; c.c.y = a.c.y+b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,float2_>::strongest		add(const float2_ a, const float2_ b)		{ result_type_promotion<float2_,float2_>::strongest			c; c.c.x = a.c.x+b.c.x; c.c.y = a.c.y+b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,double2_>::strongest	add(const float2_ a, const double2_ b)		{ result_type_promotion<float2_,double2_>::strongest		c; c.c.x = a.c.x+b.c.x; c.c.y = a.c.y+b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,float2_>::strongest	add(const double2_ a, const float2_ b)		{ result_type_promotion<double2_,float2_>::strongest		c; c.c.x = a.c.x+b.c.x; c.c.y = a.c.y+b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,double2_>::strongest	add(const double2_ a, const double2_ b)		{ result_type_promotion<double2_,double2_>::strongest		c; c.c.x = a.c.x+b.c.x; c.c.y = a.c.y+b.c.y; return c; }

/*********************************************/
/* AUXILIARY FUNCTION FOR operator- OVERLOAD */
/*********************************************/
// --- Real-Real
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,int>::strongest			sub(const int a, const int b)				{ return a-b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,float>::strongest			sub(const int a, const float b)				{ return a-b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,int>::strongest			sub(const float a, const int b)				{ return a-b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,double>::strongest			sub(const int a, const double b)			{ return a-b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,int>::strongest			sub(const double a, const int b)			{ return a-b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,float>::strongest		sub(const float a, const float b)			{ return a-b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,double>::strongest		sub(const float a, const double b)			{ return a-b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,float>::strongest		sub(const double a, const float b)			{ return a-b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,double>::strongest		sub(const double a, const double b)			{ return a-b; }
// --- Complex-Real
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,int>::strongest			sub(const int2_ a, const int b)				{ result_type_promotion<int2_,int>::strongest				c; c.c.x = a.c.x-b; c.c.y = a.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,float>::strongest		sub(const int2_ a, const float b)			{ result_type_promotion<int2_,float>::strongest				c; c.c.x = a.c.x-b; c.c.y = a.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,double>::strongest		sub(const int2_ a, const double b)			{ result_type_promotion<int2_,double>::strongest			c; c.c.x = a.c.x-b; c.c.y = a.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,int>::strongest		sub(const float2_ a, const int b)			{ result_type_promotion<float2_,int>::strongest				c; c.c.x = a.c.x-b; c.c.y = a.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,float>::strongest		sub(const float2_ a, const float b)			{ result_type_promotion<float2_,float>::strongest			c; c.c.x = a.c.x-b; c.c.y = a.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,double>::strongest		sub(const float2_ a, const double b)		{ result_type_promotion<float2_,double>::strongest			c; c.c.x = a.c.x-b; c.c.y = a.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,int>::strongest		sub(const double2_ a, const int b)			{ result_type_promotion<double2_,int>::strongest			c; c.c.x = a.c.x-b; c.c.y = a.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,float>::strongest		sub(const double2_ a, const float b)		{ result_type_promotion<double2_,float>::strongest			c; c.c.x = a.c.x-b; c.c.y = a.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,double>::strongest	sub(const double2_ a, const double b)		{ result_type_promotion<double2_,double>::strongest			c; c.c.x = a.c.x-b; c.c.y = a.c.y; return c; }
// --- Real-Complex
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,int2_>::strongest			sub(const int a, const int2_ b)				{ result_type_promotion<int,int2_>::strongest			c; c.c.x = a-b.c.x; c.c.y = -b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,int2_>::strongest		sub(const float a, const int2_ b)			{ result_type_promotion<float,int2_>::strongest			c; c.c.x = a-b.c.x; c.c.y = -b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,int2_>::strongest		sub(const double a, const int2_ b)			{ result_type_promotion<double,int2_>::strongest		c; c.c.x = a-b.c.x; c.c.y = -b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,float2_>::strongest		sub(const int a, const float2_ b)			{ result_type_promotion<int,float2_>::strongest			c; c.c.x = a-b.c.x; c.c.y = -b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,float2_>::strongest		sub(const float a, const float2_ b)			{ result_type_promotion<float,float2_>::strongest		c; c.c.x = a-b.c.x; c.c.y = -b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,float2_>::strongest		sub(const double a, const float2_ b)		{ result_type_promotion<double,float2_>::strongest		c; c.c.x = a-b.c.x; c.c.y = -b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,double2_>::strongest		sub(const int a, const double2_ b)			{ result_type_promotion<int,double2_>::strongest		c; c.c.x = a-b.c.x; c.c.y = -b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,double2_>::strongest		sub(const float a, const double2_ b)		{ result_type_promotion<float,double2_>::strongest		c; c.c.x = a-b.c.x; c.c.y = -b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,double2_>::strongest	sub(const double a, const double2_ b)		{ result_type_promotion<double,double2_>::strongest		c; c.c.x = a-b.c.x; c.c.y = -b.c.y; return c; }
// --- Complex-Complex
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,int2_>::strongest		sub(const int2_ a, const int2_ b)			{ result_type_promotion<int2_,int2_>::strongest			c; c.c.x = a.c.x-b.c.x; c.c.y = a.c.y-b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,float2_>::strongest		sub(const int2_ a, const float2_ b)			{ result_type_promotion<int2_,float2_>::strongest		c; c.c.x = a.c.x-b.c.x; c.c.y = a.c.y-b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,int2_>::strongest		sub(const float2_ a, const int2_ b)			{ result_type_promotion<float2_,int2_>::strongest		c; c.c.x = a.c.x-b.c.x; c.c.y = a.c.y-b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,double2_>::strongest		sub(const int2_ a, const double2_ b)		{ result_type_promotion<int2_,double2_>::strongest		c; c.c.x = a.c.x-b.c.x; c.c.y = a.c.y-b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,int2_>::strongest		sub(const double2_ a, const int2_ b)		{ result_type_promotion<double2_,int2_>::strongest		c; c.c.x = a.c.x-b.c.x; c.c.y = a.c.y-b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,float2_>::strongest	sub(const float2_ a, const float2_ b)		{ result_type_promotion<float2_,float2_>::strongest		c; c.c.x = a.c.x-b.c.x; c.c.y = a.c.y-b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,double2_>::strongest	sub(const float2_ a, const double2_ b)		{ result_type_promotion<float2_,double2_>::strongest	c; c.c.x = a.c.x-b.c.x; c.c.y = a.c.y-b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,float2_>::strongest	sub(const double2_ a, const float2_ b)		{ result_type_promotion<double2_,float2_>::strongest	c; c.c.x = a.c.x-b.c.x; c.c.y = a.c.y-b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,double2_>::strongest	sub(const double2_ a, const double2_ b)		{ result_type_promotion<double2_,double2_>::strongest	c; c.c.x = a.c.x-b.c.x; c.c.y = a.c.y-b.c.y; return c; }

/*********************************************/
/* AUXILIARY FUNCTION FOR operator* OVERLOAD */
/*********************************************/
// --- Real-Real
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,int>::strongest			mul(const int a, const int b)				{ return a*b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,float>::strongest			mul(const int a, const float b)				{ return a*b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,int>::strongest			mul(const float a, const int b)				{ return a*b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,double>::strongest			mul(const int a, const double b)			{ return a*b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,int>::strongest			mul(const double a, const int b)			{ return a*b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,float>::strongest		mul(const float a, const float b)			{ return a*b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,double>::strongest		mul(const float a, const double b)			{ return a*b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,float>::strongest		mul(const double a, const float b)			{ return a*b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,double>::strongest		mul(const double a, const double b)			{ return a*b; }
// --- Complex-Real
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,int>::strongest			mul(const int2_ a, const int b)				{ result_type_promotion<int2_,int>::strongest				c; c.c.x = a.c.x*b; c.c.y = a.c.y*b; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,float>::strongest		mul(const int2_ a, const float b)			{ result_type_promotion<int2_,float>::strongest				c; c.c.x = a.c.x*b; c.c.y = a.c.y*b; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,double>::strongest		mul(const int2_ a, const double b)			{ result_type_promotion<int2_,double>::strongest			c; c.c.x = a.c.x*b; c.c.y = a.c.y*b; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,int>::strongest		mul(const float2_ a, const int b)			{ result_type_promotion<float2_,int>::strongest				c; c.c.x = a.c.x*b; c.c.y = a.c.y*b; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,float>::strongest		mul(const float2_ a, const float b)			{ result_type_promotion<float2_,float>::strongest			c; c.c.x = a.c.x*b; c.c.y = a.c.y*b; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,double>::strongest		mul(const float2_ a, const double b)		{ result_type_promotion<float2_,double>::strongest			c; c.c.x = a.c.x*b; c.c.y = a.c.y*b; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,int>::strongest		mul(const double2_ a, const int b)			{ result_type_promotion<double2_,int>::strongest			c; c.c.x = a.c.x*b; c.c.y = a.c.y*b; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,float>::strongest		mul(const double2_ a, const float b)		{ result_type_promotion<double2_,float>::strongest			c; c.c.x = a.c.x*b; c.c.y = a.c.y*b; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,double>::strongest	mul(const double2_ a, const double b)		{ result_type_promotion<double2_,double>::strongest			c; c.c.x = a.c.x*b; c.c.y = a.c.y*b; return c; }
// --- Real-Complex
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,int2_>::strongest			mul(const int a, const int2_ b)				{ result_type_promotion<int,int2_>::strongest				c; c.c.x = a*b.c.x; c.c.y = a*b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,int2_>::strongest		mul(const float a, const int2_ b)			{ result_type_promotion<float,int2_>::strongest				c; c.c.x = a*b.c.x; c.c.y = a*b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,int2_>::strongest		mul(const double a, const int2_ b)			{ result_type_promotion<double,int2_>::strongest			c; c.c.x = a*b.c.x; c.c.y = a*b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,float2_>::strongest		mul(const int a, const float2_ b)			{ result_type_promotion<int,float2_>::strongest				c; c.c.x = a*b.c.x; c.c.y = a*b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,float2_>::strongest		mul(const float a, const float2_ b)			{ result_type_promotion<float,float2_>::strongest			c; c.c.x = a*b.c.x; c.c.y = a*b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,float2_>::strongest		mul(const double a, const float2_ b)		{ result_type_promotion<double,float2_>::strongest			c; c.c.x = a*b.c.x; c.c.y = a*b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,double2_>::strongest		mul(const int a, const double2_ b)			{ result_type_promotion<int,double2_>::strongest			c; c.c.x = a*b.c.x; c.c.y = a*b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,double2_>::strongest		mul(const float a, const double2_ b)		{ result_type_promotion<float,double2_>::strongest			c; c.c.x = a*b.c.x; c.c.y = a*b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,double2_>::strongest	mul(const double a, const double2_ b)		{ result_type_promotion<double,double2_>::strongest			c; c.c.x = a*b.c.x; c.c.y = a*b.c.y; return c; }
// --- Complex-Complex
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,int2_>::strongest			mul(const int2_ a, const int2_ b)			{ result_type_promotion<int2_,int2_>::strongest				c; c.c.x = a.c.x*b.c.x-a.c.y*b.c.y; c.c.y = a.c.y*b.c.x+a.c.x*b.c.y; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,float2_>::strongest		mul(const int2_ a, const float2_ b)			{ result_type_promotion<int2_,float2_>::strongest			c; c.c.x = a.c.x*b.c.x-a.c.y*b.c.y; c.c.y = a.c.y*b.c.x+a.c.x*b.c.y; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,int2_>::strongest		mul(const float2_ a, const int2_ b)			{ result_type_promotion<float2_,int2_>::strongest			c; c.c.x = a.c.x*b.c.x-a.c.y*b.c.y; c.c.y = a.c.y*b.c.x+a.c.x*b.c.y; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,double2_>::strongest		mul(const int2_ a, const double2_ b)		{ result_type_promotion<int2_,double2_>::strongest			c; c.c.x = a.c.x*b.c.x-a.c.y*b.c.y; c.c.y = a.c.y*b.c.x+a.c.x*b.c.y; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,int2_>::strongest		mul(const double2_ a, const int2_ b)		{ result_type_promotion<double2_,int2_>::strongest			c; c.c.x = a.c.x*b.c.x-a.c.y*b.c.y; c.c.y = a.c.y*b.c.x+a.c.x*b.c.y; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,float2_>::strongest		mul(const float2_ a, const float2_ b)		{ result_type_promotion<float2_,float2_>::strongest			c; c.c.x = a.c.x*b.c.x-a.c.y*b.c.y; c.c.y = a.c.y*b.c.x+a.c.x*b.c.y; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,double2_>::strongest		mul(const float2_ a, const double2_ b)		{ result_type_promotion<float2_,double2_>::strongest		c; c.c.x = a.c.x*b.c.x-a.c.y*b.c.y; c.c.y = a.c.y*b.c.x+a.c.x*b.c.y; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,float2_>::strongest		mul(const double2_ a, const float2_ b)		{ result_type_promotion<double2_,float2_>::strongest		c; c.c.x = a.c.x*b.c.x-a.c.y*b.c.y; c.c.y = a.c.y*b.c.x+a.c.x*b.c.y; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,double2_>::strongest	mul(const double2_ a, const double2_ b)		{ result_type_promotion<double2_,double2_>::strongest		c; c.c.x = a.c.x*b.c.x-a.c.y*b.c.y; c.c.y = a.c.y*b.c.x+a.c.x*b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,int2_>::strongest		mul(const int2_ a, const int2_ b)			{ result_type_promotion<int2_,int2_>::strongest				c; int k1, k2, k3; k1 = a.c.x*(b.c.x + b.c.y); k2 = b.c.y*(a.c.x + a.c.y); k3 = b.c.x*(a.c.y - a.c.x); c.c.x = k1 - k2; c.c.y = k1 + k3; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,float2_>::strongest		mul(const int2_ a, const float2_ b)			{ result_type_promotion<int2_,float2_>::strongest			c; float k1, k2, k3; k1 = a.c.x*(b.c.x + b.c.y); k2 = b.c.y*(a.c.x + a.c.y); k3 = b.c.x*(a.c.y - a.c.x); c.c.x = k1 - k2; c.c.y = k1 + k3; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,int2_>::strongest		mul(const float2_ a, const int2_ b)			{ result_type_promotion<float2_,int2_>::strongest			c; float k1, k2, k3; k1 = a.c.x*(b.c.x + b.c.y); k2 = b.c.y*(a.c.x + a.c.y); k3 = b.c.x*(a.c.y - a.c.x); c.c.x = k1 - k2; c.c.y = k1 + k3; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,double2_>::strongest		mul(const int2_ a, const double2_ b)		{ result_type_promotion<int2_,double2_>::strongest			c; double k1, k2, k3; k1 = a.c.x*(b.c.x + b.c.y); k2 = b.c.y*(a.c.x + a.c.y); k3 = b.c.x*(a.c.y - a.c.x); c.c.x = k1 - k2; c.c.y = k1 + k3; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,int2_>::strongest		mul(const double2_ a, const int2_ b)		{ result_type_promotion<double2_,int2_>::strongest			c; double k1, k2, k3; k1 = a.c.x*(b.c.x + b.c.y); k2 = b.c.y*(a.c.x + a.c.y); k3 = b.c.x*(a.c.y - a.c.x); c.c.x = k1 - k2; c.c.y = k1 + k3; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,float2_>::strongest	mul(const float2_ a, const float2_ b)		{ result_type_promotion<float2_,float2_>::strongest			c; float k1, k2, k3; k1 = a.c.x*(b.c.x + b.c.y); k2 = b.c.y*(a.c.x + a.c.y); k3 = b.c.x*(a.c.y - a.c.x); c.c.x = k1 - k2; c.c.y = k1 + k3; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,double2_>::strongest	mul(const float2_ a, const double2_ b)		{ result_type_promotion<float2_,double2_>::strongest		c; double k1, k2, k3; k1 = a.c.x*(b.c.x + b.c.y); k2 = b.c.y*(a.c.x + a.c.y); k3 = b.c.x*(a.c.y - a.c.x); c.c.x = k1 - k2; c.c.y = k1 + k3; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,float2_>::strongest	mul(const double2_ a, const float2_ b)		{ result_type_promotion<double2_,float2_>::strongest		c; double k1, k2, k3; k1 = a.c.x*(b.c.x + b.c.y); k2 = b.c.y*(a.c.x + a.c.y); k3 = b.c.x*(a.c.y - a.c.x); c.c.x = k1 - k2; c.c.y = k1 + k3; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,double2_>::strongest	mul(const double2_ a, const double2_ b)		{ result_type_promotion<double2_,double2_>::strongest		c; double k1, k2, k3; k1 = a.c.x*(b.c.x + b.c.y); k2 = b.c.y*(a.c.x + a.c.y); k3 = b.c.x*(a.c.y - a.c.x); c.c.x = k1 - k2; c.c.y = k1 + k3; return c; }

/*********************************************/
/* AUXILIARY FUNCTION FOR operator/ OVERLOAD */
/*********************************************/
// --- Real-Real
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,int>::strongest			div(const int a, const int b)				{ return a/b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,float>::strongest			div(const int a, const float b)				{ return a/b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,int>::strongest			div(const float a, const int b)				{ return a/b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,double>::strongest			div(const int a, const double b)			{ return a/b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,int>::strongest			div(const double a, const int b)			{ return a/b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,float>::strongest		div(const float a, const float b)			{ return a/b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,double>::strongest		div(const float a, const double b)			{ return a/b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,float>::strongest		div(const double a, const float b)			{ return a/b; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,double>::strongest		div(const double a, const double b)			{ return a/b; }
// --- Complex-Real
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,int>::strongest			div(const int2_ a, const int b)				{ result_type_promotion<int2_,int>::strongest				c; c.c.x = a.c.x/b; c.c.y = a.c.y/b; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,float>::strongest		div(const int2_ a, const float b)			{ result_type_promotion<int2_,float>::strongest				c; c.c.x = a.c.x/b; c.c.y = a.c.y/b; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,double>::strongest		div(const int2_ a, const double b)			{ result_type_promotion<int2_,double>::strongest			c; c.c.x = a.c.x/b; c.c.y = a.c.y/b; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,int>::strongest		div(const float2_ a, const int b)			{ result_type_promotion<float2_,int>::strongest				c; c.c.x = a.c.x/b; c.c.y = a.c.y/b; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,float>::strongest		div(const float2_ a, const float b)			{ result_type_promotion<float2_,float>::strongest			c; c.c.x = a.c.x/b; c.c.y = a.c.y/b; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,double>::strongest		div(const float2_ a, const double b)		{ result_type_promotion<float2_,double>::strongest			c; c.c.x = a.c.x/b; c.c.y = a.c.y/b; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,int>::strongest		div(const double2_ a, const int b)			{ result_type_promotion<double2_,int>::strongest			c; c.c.x = a.c.x/b; c.c.y = a.c.y/b; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,float>::strongest		div(const double2_ a, const float b)		{ result_type_promotion<double2_,float>::strongest			c; c.c.x = a.c.x/b; c.c.y = a.c.y/b; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,double>::strongest	div(const double2_ a, const double b)		{ result_type_promotion<double2_,double>::strongest			c; c.c.x = a.c.x/b; c.c.y = a.c.y/b; return c; }
// --- Real-Complex
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,int2_>::strongest			div(const int a, const int2_ b)				{ result_type_promotion<int,int2_>::strongest				c; result_type_root<int,int2_>::root den;		den = b.c.x*b.c.x+b.c.y*b.c.y; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,int2_>::strongest		div(const float a, const int2_ b)			{ result_type_promotion<float,int2_>::strongest				c; result_type_root<float,int2_>::root den;		den = b.c.x*b.c.x+b.c.y*b.c.y; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,int2_>::strongest		div(const double a, const int2_ b)			{ result_type_promotion<double,int2_>::strongest			c; result_type_root<double,int2_>::root den;	den = b.c.x*b.c.x+b.c.y*b.c.y; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,float2_>::strongest		div(const int a, const float2_ b)			{ result_type_promotion<int,float2_>::strongest				c; result_type_root<int,float2_>::root den;		den = b.c.x*b.c.x+b.c.y*b.c.y; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,float2_>::strongest		div(const float a, const float2_ b)			{ result_type_promotion<float,float2_>::strongest			c; result_type_root<float,float2_>::root den;	den = b.c.x*b.c.x+b.c.y*b.c.y; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,float2_>::strongest		div(const double a, const float2_ b)		{ result_type_promotion<double,float2_>::strongest			c; result_type_root<double,float2_>::root den;	den = b.c.x*b.c.x+b.c.y*b.c.y; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,double2_>::strongest		div(const int a, const double2_ b)			{ result_type_promotion<int,double2_>::strongest			c; result_type_root<int,double2_>::root den;	den = b.c.x*b.c.x+b.c.y*b.c.y; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,double2_>::strongest		div(const float a, const double2_ b)		{ result_type_promotion<float,double2_>::strongest			c; result_type_root<float,double2_>::root den;	den = b.c.x*b.c.x+b.c.y*b.c.y; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,double2_>::strongest	div(const double a, const double2_ b)		{ result_type_promotion<double,double2_>::strongest			c; result_type_root<double,double2_>::root den; den = b.c.x*b.c.x+b.c.y*b.c.y; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,int2_>::strongest			div(const int a, const int2_ b)				{ result_type_promotion<int,int2_>::strongest				c; result_type_root<int,int2_>::root den;		den = hypot((float)b.c.x,(float)b.c.y); den = den*den; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,int2_>::strongest		div(const float a, const int2_ b)			{ result_type_promotion<float,int2_>::strongest				c; result_type_root<float,int2_>::root den;		den = hypot((float)b.c.x,(float)b.c.y); den = den*den; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,int2_>::strongest		div(const double a, const int2_ b)			{ result_type_promotion<double,int2_>::strongest			c; result_type_root<double,int2_>::root den;	den = hypot((float)b.c.x,(float)b.c.y); den = den*den; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,float2_>::strongest		div(const int a, const float2_ b)			{ result_type_promotion<int,float2_>::strongest				c; result_type_root<int,float2_>::root den;		den = hypot(b.c.x,b.c.y); den = den*den; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,float2_>::strongest		div(const float a, const float2_ b)			{ result_type_promotion<float,float2_>::strongest			c; result_type_root<float,float2_>::root den;	den = hypot(b.c.x,b.c.y); den = den*den; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,float2_>::strongest		div(const double a, const float2_ b)		{ result_type_promotion<double,float2_>::strongest			c; result_type_root<double,float2_>::root den;	den = hypot(b.c.x,b.c.y); den = den*den; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int,double2_>::strongest		div(const int a, const double2_ b)			{ result_type_promotion<int,double2_>::strongest			c; result_type_root<int,double2_>::root den;	den = hypot(b.c.x,b.c.y); den = den*den; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float,double2_>::strongest		div(const float a, const double2_ b)		{ result_type_promotion<float,double2_>::strongest			c; result_type_root<float,double2_>::root den;	den = hypot(b.c.x,b.c.y); den = den*den; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double,double2_>::strongest	div(const double a, const double2_ b)		{ result_type_promotion<double,double2_>::strongest			c; result_type_root<double,double2_>::root den; den = hypot(b.c.x,b.c.y); den = den*den; c.c.x = a*b.c.x/den; c.c.y = -a*b.c.y/den; return c; }
// --- Complex-Complex
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,int2_>::strongest		div(const int2_ a, const int2_ b)			{ result_type_promotion<int2_,int2_>::strongest				c; result_type_root<int2_,int2_>::root den;			den = (b.c.x*b.c.x)+(b.c.y*b.c.y); c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,float2_>::strongest		div(const int2_ a, const float2_ b)			{ result_type_promotion<int2_,float2_>::strongest			c; result_type_root<int2_,float2_>::root den;		den = (b.c.x*b.c.x)+(b.c.y*b.c.y); c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,int2_>::strongest		div(const float2_ a, const int2_ b)			{ result_type_promotion<float2_,int2_>::strongest			c; result_type_root<float2_,int2_>::root den;		den = (b.c.x*b.c.x)+(b.c.y*b.c.y); c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,double2_>::strongest		div(const int2_ a, const double2_ b)		{ result_type_promotion<int2_,double2_>::strongest			c; result_type_root<int2_,double2_>::root den;		den = (b.c.x*b.c.x)+(b.c.y*b.c.y); c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,int2_>::strongest		div(const double2_ a, const int2_ b)		{ result_type_promotion<double2_,int2_>::strongest			c; result_type_root<double2_,int2_>::root den;		den = (b.c.x*b.c.x)+(b.c.y*b.c.y); c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,float2_>::strongest	div(const float2_ a, const float2_ b)		{ result_type_promotion<float2_,float2_>::strongest			c; result_type_root<float2_,float2_>::root den;		den = (b.c.x*b.c.x)+(b.c.y*b.c.y); c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,double2_>::strongest	div(const float2_ a, const double2_ b)		{ result_type_promotion<float2_,double2_>::strongest		c; result_type_root<float2_,double2_>::root den;	den = (b.c.x*b.c.x)+(b.c.y*b.c.y); c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,float2_>::strongest	div(const double2_ a, const float2_ b)		{ result_type_promotion<double2_,float2_>::strongest		c; result_type_root<double2_,float2_>::root den;	den = (b.c.x*b.c.x)+(b.c.y*b.c.y); c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }
//__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,double2_>::strongest	div(const double2_ a, const double2_ b)		{ result_type_promotion<double2_,double2_>::strongest		c; result_type_root<double2_,double2_>::root den;	den = (b.c.x*b.c.x)+(b.c.y*b.c.y); c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,int2_>::strongest		div(const int2_ a, const int2_ b)			{ result_type_promotion<int2_,int2_>::strongest				c; result_type_root<int2_,int2_>::root den;			den = hypot((float)b.c.x,(float)b.c.y); den = den*den; c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,float2_>::strongest		div(const int2_ a, const float2_ b)			{ result_type_promotion<int2_,float2_>::strongest			c; result_type_root<int2_,float2_>::root den;		den = hypot(b.c.x,b.c.y); den = den*den; c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,int2_>::strongest		div(const float2_ a, const int2_ b)			{ result_type_promotion<float2_,int2_>::strongest			c; result_type_root<float2_,int2_>::root den;		den = hypot((float)b.c.x,(float)b.c.y); den = den*den; c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<int2_,double2_>::strongest		div(const int2_ a, const double2_ b)		{ result_type_promotion<int2_,double2_>::strongest			c; result_type_root<int2_,double2_>::root den;		den = hypot(b.c.x,b.c.y); den = den*den; c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,int2_>::strongest		div(const double2_ a, const int2_ b)		{ result_type_promotion<double2_,int2_>::strongest			c; result_type_root<double2_,int2_>::root den;		den = hypot((float)b.c.x,(float)b.c.y); den = den*den; c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,float2_>::strongest	div(const float2_ a, const float2_ b)		{ result_type_promotion<float2_,float2_>::strongest			c; result_type_root<float2_,float2_>::root den;		den = hypot(b.c.x,b.c.y); den = den*den; c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<float2_,double2_>::strongest	div(const float2_ a, const double2_ b)		{ result_type_promotion<float2_,double2_>::strongest		c; result_type_root<float2_,double2_>::root den;	den = hypot(b.c.x,b.c.y); den = den*den; c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,float2_>::strongest	div(const double2_ a, const float2_ b)		{ result_type_promotion<double2_,float2_>::strongest		c; result_type_root<double2_,float2_>::root den;	den = hypot(b.c.x,b.c.y); den = den*den; c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }
__host__ __device__ __forceinline __forceinline__  result_type_promotion<double2_,double2_>::strongest	div(const double2_ a, const double2_ b)		{ result_type_promotion<double2_,double2_>::strongest		c; result_type_root<double2_,double2_>::root den;	den = hypot(b.c.x,b.c.y); den = den*den; c.c.x = ((a.c.x*b.c.x)+(a.c.y*b.c.y))/den; c.c.y = ((a.c.y*b.c.x)-(a.c.x*b.c.y))/den; return c; }

/*******************************/
/* INSTANTIATIONS OF operator+ */
/*******************************/
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,int2_>::strongest operator+(const int a,const int2_ b)							{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,float2_>::strongest operator+(const int a,const float2_ b)						{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,double2_>::strongest operator+(const int a,const double2_ b)					{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,int2_>::strongest operator+(const float a,const int2_ b)						{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,float2_>::strongest operator+(const float a,const float2_ b)					{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,double2_>::strongest operator+(const float a,const double2_ b)				{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,int2_>::strongest operator+(const double a,const int2_ b)					{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,float2_>::strongest operator+(const double a,const float2_ b)				{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,double2_>::strongest operator+(const double a,const double2_ b)				{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,int>::strongest operator+(const int2_ a,const int b)							{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,float>::strongest operator+(const int2_ a,const float b)						{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,double>::strongest operator+(const int2_ a,const double b)					{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,int2_>::strongest operator+(const int2_ a,const int2_ b)						{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,float2_>::strongest operator+(const int2_ a,const float2_ b)					{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,double2_>::strongest operator+(const int2_ a,const double2_ b)				{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,int>::strongest operator+(const float2_ a,const int b)						{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,float>::strongest operator+(const float2_ a,const float b)					{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,double>::strongest operator+(const float2_ a,const double b)				{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,int2_>::strongest operator+(const float2_ a,const int2_ b)					{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,float2_>::strongest operator+(const float2_ a,const float2_ b)				{ result_type_promotion<float2_,float2_>::strongest			c; c.c.x = a.c.x+b.c.x; c.c.y = a.c.y+b.c.y; return c; }

//__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,float2_>::strongest operator+(const float2_ a,const float2_ b)				{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,double2_>::strongest operator+(const float2_ a,const double2_ b)			{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,int>::strongest operator+(const double2_ a,const int b)					{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,float>::strongest operator+(const double2_ a,const float b)				{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,double>::strongest operator+(const double2_ a,const double b)				{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,int2_>::strongest operator+(const double2_ a,const int2_ b)				{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,float2_>::strongest operator+(const double2_ a,const float2_ b)			{ return add(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,double2_>::strongest operator+(const double2_ a,const double2_ b)			{ return add(a,b); }

/*******************************/
/* INSTANTIATIONS OF operator- */
/*******************************/
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,int2_>::strongest operator-(const int a,const int2_ b)							{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,float2_>::strongest operator-(const int a,const float2_ b)						{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,double2_>::strongest operator-(const int a,const double2_ b)					{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,int2_>::strongest operator-(const float a,const int2_ b)						{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,float2_>::strongest operator-(const float a,const float2_ b)					{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,double2_>::strongest operator-(const float a,const double2_ b)				{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,int2_>::strongest operator-(const double a,const int2_ b)					{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,float2_>::strongest operator-(const double a,const float2_ b)				{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,double2_>::strongest operator-(const double a,const double2_ b)				{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,int>::strongest operator-(const int2_ a,const int b)							{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,float>::strongest operator-(const int2_ a,const float b)						{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,double>::strongest operator-(const int2_ a,const double b)					{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,int2_>::strongest operator-(const int2_ a,const int2_ b)						{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,float2_>::strongest operator-(const int2_ a,const float2_ b)					{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,double2_>::strongest operator-(const int2_ a,const double2_ b)				{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,int>::strongest operator-(const float2_ a,const int b)						{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,float>::strongest operator-(const float2_ a,const float b)					{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,double>::strongest operator-(const float2_ a,const double b)				{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,int2_>::strongest operator-(const float2_ a,const int2_ b)					{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,float2_>::strongest operator-(const float2_ a,const float2_ b)				{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,double2_>::strongest operator-(const float2_ a,const double2_ b)			{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,int>::strongest operator-(const double2_ a,const int b)					{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,float>::strongest operator-(const double2_ a,const float b)				{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,double>::strongest operator-(const double2_ a,const double b)				{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,int2_>::strongest operator-(const double2_ a,const int2_ b)				{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,float2_>::strongest operator-(const double2_ a,const float2_ b)			{ return sub(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,double2_>::strongest operator-(const double2_ a,const double2_ b)			{ return sub(a,b); }

/*******************************/
/* INSTANTIATIONS OF operator* */
/*******************************/
// http://www.embedded.com/design/embedded/4007256/Digital-Signal-Processing-Tricks--Fast-multiplication-of-complex-numbers%5D

__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,int2_>::strongest operator*(const int a,const int2_ b)							{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,float2_>::strongest operator*(const int a,const float2_ b)						{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,double2_>::strongest operator*(const int a,const double2_ b)					{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,int2_>::strongest operator*(const float a,const int2_ b)						{ return mul(a,b); }
//__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,float2_>::strongest operator*(const float a,const float2_ b)					{ result_type_promotion<float,float2_>::strongest			c; c.c.x = a*b.c.x; c.c.y = a*b.c.y; return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,float2_>::strongest operator*(const float a,const float2_ b)					{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,double2_>::strongest operator*(const float a,const double2_ b)				{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,int2_>::strongest operator*(const double a,const int2_ b)					{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,float2_>::strongest operator*(const double a,const float2_ b)				{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,double2_>::strongest operator*(const double a,const double2_ b)				{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,int>::strongest operator*(const int2_ a,const int b)							{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,float>::strongest operator*(const int2_ a,const float b)						{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,double>::strongest operator*(const int2_ a,const double b)					{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,int2_>::strongest operator*(const int2_ a,const int2_ b)						{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,float2_>::strongest operator*(const int2_ a,const float2_ b)					{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,double2_>::strongest operator*(const int2_ a,const double2_ b)				{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,int>::strongest operator*(const float2_ a,const int b)						{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,float>::strongest operator*(const float2_ a,const float b)					{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,double>::strongest operator*(const float2_ a,const double b)				{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,int2_>::strongest operator*(const float2_ a,const int2_ b)					{ return mul(a,b); }
 __host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,float2_>::strongest operator*(const float2_ a,const float2_ b)				{ return mul(a,b); }
//__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,float2_>::strongest operator*(const float2_ a,const float2_ b)				{ result_type_promotion<float2_,float2_>::strongest			c; c.c.x = a.c.x*b.c.x-a.c.y*b.c.y; c.c.y=a.c.x*b.c.y+a.c.y*b.c.x; printf("%f %f %f %f\n",c.c.x,c.c.y,a.c.x,a.c.y); return c; }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,double2_>::strongest operator*(const float2_ a,const double2_ b)			{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,int>::strongest operator*(const double2_ a,const int b)					{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,float>::strongest operator*(const double2_ a,const float b)				{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,double>::strongest operator*(const double2_ a,const double b)				{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,int2_>::strongest operator*(const double2_ a,const int2_ b)				{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,float2_>::strongest operator*(const double2_ a,const float2_ b)			{ return mul(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,double2_>::strongest operator*(const double2_ a,const double2_ b)			{ return mul(a,b); }



/*******************************/
/* INSTANTIATIONS OF operator/ */
/*******************************/
// http://www.embedded.com/design/embedded/4007256/Digital-Signal-Processing-Tricks--Fast-multiplication-of-complex-numbers%5D

__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,int2_>::strongest operator/(const int a,const int2_ b)							{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,float2_>::strongest operator/(const int a,const float2_ b)						{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int,double2_>::strongest operator/(const int a,const double2_ b)					{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,int2_>::strongest operator/(const float a,const int2_ b)						{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,float2_>::strongest operator/(const float a,const float2_ b)					{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float,double2_>::strongest operator/(const float a,const double2_ b)				{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,int2_>::strongest operator/(const double a,const int2_ b)					{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,float2_>::strongest operator/(const double a,const float2_ b)				{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double,double2_>::strongest operator/(const double a,const double2_ b)				{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,int>::strongest operator/(const int2_ a,const int b)							{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,float>::strongest operator/(const int2_ a,const float b)						{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,double>::strongest operator/(const int2_ a,const double b)					{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,int2_>::strongest operator/(const int2_ a,const int2_ b)						{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,float2_>::strongest operator/(const int2_ a,const float2_ b)					{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<int2_,double2_>::strongest operator/(const int2_ a,const double2_ b)				{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,int>::strongest operator/(const float2_ a,const int b)						{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,float>::strongest operator/(const float2_ a,const float b)					{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,double>::strongest operator/(const float2_ a,const double b)				{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,int2_>::strongest operator/(const float2_ a,const int2_ b)					{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,float2_>::strongest operator/(const float2_ a,const float2_ b)				{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<float2_,double2_>::strongest operator/(const float2_ a,const double2_ b)			{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,int>::strongest operator/(const double2_ a,const int b)					{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,float>::strongest operator/(const double2_ a,const float b)				{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,double>::strongest operator/(const double2_ a,const double b)				{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,int2_>::strongest operator/(const double2_ a,const int2_ b)				{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,float2_>::strongest operator/(const double2_ a,const float2_ b)			{ return div(a,b); }
__host__ __device__ __forceinline __forceinline__ result_type_promotion<double2_,double2_>::strongest operator/(const double2_ a,const double2_ b)			{ return div(a,b); }

