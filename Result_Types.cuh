#ifndef __RESULT_TYPES_CUH__
#define __RESULT_TYPES_CUH__

/*************/
/* PROMOTION */
/*************/

template <typename, typename> struct result_type_promotion;

// int-int, float-float, double-double, int2_-int2_, float2_-float2_-, double2_-double2_
template<> struct result_type_promotion< int,		int >			{ typedef int strongest; };
template<> struct result_type_promotion< float,		float >			{ typedef float strongest; };
template<> struct result_type_promotion< double,	double >		{ typedef double strongest; };
template<> struct result_type_promotion< int2_,		int2_ >			{ typedef int2_ strongest; };
template<> struct result_type_promotion< float2_,	float2_ >		{ typedef float2_ strongest; };
template<> struct result_type_promotion< double2_,	double2_ >		{ typedef double2_ strongest; };

// --- From int to others
template<> struct result_type_promotion< float,		int >			{ typedef float strongest; };
template<> struct result_type_promotion< int,		float >			{ typedef float strongest; };

template<> struct result_type_promotion< double,	int >			{ typedef double strongest; };
template<> struct result_type_promotion< int,		double >		{ typedef double strongest; };

template<> struct result_type_promotion< int2_,		int >			{ typedef int2_ strongest; };
template<> struct result_type_promotion< int,		int2_ >			{ typedef int2_ strongest; };

template<> struct result_type_promotion< float2_,	int >			{ typedef float2_ strongest; };
template<> struct result_type_promotion< int,		float2_ >		{ typedef float2_ strongest; };

template<> struct result_type_promotion< double2_,	int >			{ typedef double2_ strongest; };
template<> struct result_type_promotion< int,		double2_ >		{ typedef double2_ strongest; };

// --- From float to others
template<> struct result_type_promotion< double,	float >			{ typedef double strongest; };
template<> struct result_type_promotion< float,		double >		{ typedef double strongest; };

template<> struct result_type_promotion< int2_,		float >			{ typedef float2_ strongest; };
template<> struct result_type_promotion< float,		int2_ >			{ typedef float2_ strongest; };

template<> struct result_type_promotion< float2_,	float >			{ typedef float2_ strongest; };
template<> struct result_type_promotion< float,		float2_ >		{ typedef float2_ strongest; };

template<> struct result_type_promotion< double2_,	float >			{ typedef double2_ strongest; };
template<> struct result_type_promotion< float,		double2_ >		{ typedef double2_ strongest; };

// --- From double to others
template<> struct result_type_promotion< int2_,		double >		{ typedef double2_ strongest; };
template<> struct result_type_promotion< double,	int2_ >			{ typedef double2_ strongest; };

template<> struct result_type_promotion< float2_,	double >		{ typedef double2_ strongest; };
template<> struct result_type_promotion< double,	float2_ >		{ typedef double2_ strongest; };

template<> struct result_type_promotion< double2_,	double >		{ typedef double2_ strongest; };
template<> struct result_type_promotion< double,	double2_ >		{ typedef double2_ strongest; };

// --- From int2_ to others
template<> struct result_type_promotion< float2_,	int2_ >			{ typedef float2_ strongest; };
template<> struct result_type_promotion< int2_,		float2_ >		{ typedef float2_ strongest; };

template<> struct result_type_promotion< double2_,	int2_ >			{ typedef double2_ strongest; };
template<> struct result_type_promotion< int2_,		double2_ >		{ typedef double2_ strongest; };

// --- From float2_ to others
template<> struct result_type_promotion< double2_,	float2_ >		{ typedef double2_ strongest; };
template<> struct result_type_promotion< float2_,	double2_ >		{ typedef double2_ strongest; };

/***********************/
/* PROMOTION FUNCTIONS */
/***********************/

template <typename, typename> struct result_type_promotion_functions;

// int-int, float-float, double-double, int2_-int2_, float2_-float2_-, double2_-double2_
template<> struct result_type_promotion_functions< int,		int >			{ typedef float strongest; };
template<> struct result_type_promotion_functions< float,	float >			{ typedef float strongest; };
template<> struct result_type_promotion_functions< double,	double >		{ typedef double strongest; };
template<> struct result_type_promotion_functions< int2_,	int2_ >			{ typedef float2_ strongest; };
template<> struct result_type_promotion_functions< float2_,	float2_ >		{ typedef float2_ strongest; };
template<> struct result_type_promotion_functions< double2_,double2_ >		{ typedef double2_ strongest; };

// --- From int to others
template<> struct result_type_promotion_functions< float,	int >			{ typedef float strongest; };
template<> struct result_type_promotion_functions< int,		float >			{ typedef float strongest; };

template<> struct result_type_promotion_functions< double,	int >			{ typedef double strongest; };
template<> struct result_type_promotion_functions< int,		double >		{ typedef double strongest; };

template<> struct result_type_promotion_functions< int2_,	int >			{ typedef float2_ strongest; };
template<> struct result_type_promotion_functions< int,		int2_ >			{ typedef float2_ strongest; };

template<> struct result_type_promotion_functions< float2_,	int >			{ typedef float2_ strongest; };
template<> struct result_type_promotion_functions< int,		float2_ >		{ typedef float2_ strongest; };

template<> struct result_type_promotion_functions< double2_,int >			{ typedef double2_ strongest; };
template<> struct result_type_promotion_functions< int,		double2_ >		{ typedef double2_ strongest; };

// --- From float to others
template<> struct result_type_promotion_functions< double,	float >			{ typedef double strongest; };
template<> struct result_type_promotion_functions< float,	double >		{ typedef double strongest; };

template<> struct result_type_promotion_functions< int2_,	float >			{ typedef float2_ strongest; };
template<> struct result_type_promotion_functions< float,	int2_ >			{ typedef float2_ strongest; };

template<> struct result_type_promotion_functions< float2_,	float >			{ typedef float2_ strongest; };
template<> struct result_type_promotion_functions< float,	float2_ >		{ typedef float2_ strongest; };

template<> struct result_type_promotion_functions< double2_,float >			{ typedef double2_ strongest; };
template<> struct result_type_promotion_functions< float,	double2_ >		{ typedef double2_ strongest; };

// --- From double to others
template<> struct result_type_promotion_functions< int2_,	double >		{ typedef double2_ strongest; };
template<> struct result_type_promotion_functions< double,	int2_ >			{ typedef double2_ strongest; };

template<> struct result_type_promotion_functions< float2_,	double >		{ typedef double2_ strongest; };
template<> struct result_type_promotion_functions< double,	float2_ >		{ typedef double2_ strongest; };

template<> struct result_type_promotion_functions< double2_,double >		{ typedef double2_ strongest; };
template<> struct result_type_promotion_functions< double,	double2_ >		{ typedef double2_ strongest; };

// --- From int2_ to others
template<> struct result_type_promotion_functions< float2_,	int2_ >			{ typedef float2_ strongest; };
template<> struct result_type_promotion_functions< int2_,	float2_ >		{ typedef float2_ strongest; };

template<> struct result_type_promotion_functions< double2_,int2_ >			{ typedef double2_ strongest; };
template<> struct result_type_promotion_functions< int2_,	double2_ >		{ typedef double2_ strongest; };

// --- From float2_ to others
template<> struct result_type_promotion_functions< double2_,float2_ >		{ typedef double2_ strongest; };
template<> struct result_type_promotion_functions< float2_,	double2_ >		{ typedef double2_ strongest; };

/********/
/* ROOT */
/********/

template <typename, typename> struct result_type_root;

// int-int, float-float, double-double
template<> struct result_type_root< int,		int >			{ typedef int strongest; };
template<> struct result_type_root< float,		float >			{ typedef float strongest; };
template<> struct result_type_root< double,		double >		{ typedef double strongest; };

// --- From int to others
template<> struct result_type_root< float,		int >			{ typedef float root; };
template<> struct result_type_root< int,		float >			{ typedef float root; };

template<> struct result_type_root< double,		int >			{ typedef double root; };
template<> struct result_type_root< int,		double >		{ typedef double root; };

template<> struct result_type_root< int2_,		int >			{ typedef int	root; };
template<> struct result_type_root< int,		int2_ >			{ typedef int	root; };

template<> struct result_type_root< float2_,	int >			{ typedef float root; };
template<> struct result_type_root< int,		float2_ >		{ typedef float root; };

template<> struct result_type_root< double2_,	int >			{ typedef double root; };
template<> struct result_type_root< int,		double2_ >		{ typedef double root; };

// --- From float to others
template<> struct result_type_root< double,		float >			{ typedef double root; };
template<> struct result_type_root< float,		double >		{ typedef double root; };

template<> struct result_type_root< int2_,		float >			{ typedef float root; };
template<> struct result_type_root< float,		int2_ >			{ typedef float root; };

template<> struct result_type_root< float2_,	float >			{ typedef float root; };
template<> struct result_type_root< float,		float2_ >		{ typedef float root; };

template<> struct result_type_root< double2_,	float >			{ typedef double root; };
template<> struct result_type_root< float,		double2_ >		{ typedef double root; };

// --- From double to others
template<> struct result_type_root< int2_,		double >		{ typedef double root; };
template<> struct result_type_root< double,		int2_ >			{ typedef double root; };

template<> struct result_type_root< float2_,	double >		{ typedef double root; };
template<> struct result_type_root< double,		float2_ >		{ typedef double root; };

template<> struct result_type_root< double2_,	double >		{ typedef double root; };
template<> struct result_type_root< double,		double2_ >		{ typedef double root; };

// --- From int2_ to others
template<> struct result_type_root< int2_,		int2_ >			{ typedef int root; };

template<> struct result_type_root< float2_,	int2_ >			{ typedef float root; };
template<> struct result_type_root< int2_,		float2_ >		{ typedef float root; };

template<> struct result_type_root< double2_,	int2_ >			{ typedef double root; };
template<> struct result_type_root< int2_,		double2_ >		{ typedef double root; };

// --- From float2_ to others
template<> struct result_type_root< float2_,	float2_ >		{ typedef float root; };

template<> struct result_type_root< double2_,	float2_ >		{ typedef double root; };
template<> struct result_type_root< float2_,	double2_ >		{ typedef double root; };
	
// --- From double2_ to others
template<> struct result_type_root< double2_,	double2_ >		{ typedef double root; };


/****************/
/* ROOT REDUCED */
/****************/

template <typename> struct result_type_root_reduced;

template<> struct result_type_root_reduced<int>			{ typedef int root_reduced; };
template<> struct result_type_root_reduced<float>		{ typedef float root_reduced; };
template<> struct result_type_root_reduced<double>		{ typedef double root_reduced; };
template<> struct result_type_root_reduced<int2_>		{ typedef int root_reduced; };
template<> struct result_type_root_reduced<float2_>		{ typedef float root_reduced; };
template<> struct result_type_root_reduced<double2_>	{ typedef double root_reduced; };

/******************/
/* ROOT AUGMENTED */
/******************/

template <typename> struct result_type_root_augmented;

template<> struct result_type_root_augmented<int>		{ typedef float2_ root_augmented; };
template<> struct result_type_root_augmented<float>		{ typedef float2_ root_augmented; };
template<> struct result_type_root_augmented<double>	{ typedef double2_ root_augmented; };
template<> struct result_type_root_augmented<int2_>		{ typedef int2_ root_augmented; };
template<> struct result_type_root_augmented<float2_>	{ typedef float2_ root_augmented; };
template<> struct result_type_root_augmented<double2_>	{ typedef double2_ root_augmented; };

/*************/
/* FUNCTIONS */
/*************/

template <typename> struct result_type_root_functions;

template<> struct result_type_root_functions<int>		{ typedef float root_functions; };
template<> struct result_type_root_functions<float>		{ typedef float root_functions; };
template<> struct result_type_root_functions<double>	{ typedef double root_functions; };
template<> struct result_type_root_functions<int2_>		{ typedef float2_ root_functions; };
template<> struct result_type_root_functions<float2_>	{ typedef float2_ root_functions; };
template<> struct result_type_root_functions<double2_>	{ typedef double2_ root_functions; };

/*********************/
/* FUNCTIONS REDUCED */
/*********************/

template <typename> struct result_type_root_functions_reduced;

template<> struct result_type_root_functions_reduced<int>		{ typedef float root_functions_reduced; };
template<> struct result_type_root_functions_reduced<float>		{ typedef float root_functions_reduced; };
template<> struct result_type_root_functions_reduced<double>	{ typedef double root_functions_reduced; };
template<> struct result_type_root_functions_reduced<int2_>		{ typedef float root_functions_reduced; };
template<> struct result_type_root_functions_reduced<float2_>	{ typedef float root_functions_reduced; };
template<> struct result_type_root_functions_reduced<double2_>	{ typedef double root_functions_reduced; };

#endif
