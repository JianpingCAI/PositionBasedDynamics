#ifndef __TimeStepTriangleModel_h__
#define __TimeStepTriangleModel_h__

#include "Demos/Utils/Config.h"
#include "TriangleModel.h"

namespace PBD
{
	class TimeStepTriangleModel 
	{
	protected:
		unsigned int m_simulationMethod;
		unsigned int m_bendingMethod;

		void clearAccelerations(TriangleModel &model);
		void semiImplicitEulerStep(TriangleModel &model, const float h);
		void constraintProjection(TriangleModel &model);

	public:
		TimeStepTriangleModel();
		virtual ~TimeStepTriangleModel(void);

		void step(TriangleModel &model);
		void reset(TriangleModel &model);	

		unsigned int getSimulationMethod() const { return m_simulationMethod; }
		void setSimulationMethod(unsigned int val) { m_simulationMethod = val; }
		unsigned int getBendingMethod() const { return m_bendingMethod; }
		void setBendingMethod(unsigned int val) { m_bendingMethod = val; }
	};
}

#endif
