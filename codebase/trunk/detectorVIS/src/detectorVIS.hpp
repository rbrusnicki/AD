#ifndef DETECTORVIS_H
#define DETECTORVIS_H

#include "../../framework/framework.hpp"

//Detector/camera parameters
#include "../../framework/paramsDetectorVIS.hpp"

// April tag include
#include "opencv2/opencv.hpp"	// @TODO: Check if this meshes with Jetson built in opencv
#include "AprilTags/TagDetector.h"
#include "AprilTags/Tag16h5.h"

#ifndef PI
const double PI = 3.14159265358979323846;
#endif
const double TWOPI = 2.0*PI;


/**
 * Normalize angle to be within the interval [-pi,pi].
 */
inline double standardRad(double t) {
    if (t >= 0.) {
	t = fmod(t+PI, TWOPI) - PI;
    } else {
	t = fmod(t-PI, -TWOPI) + PI;
    }
    return t;
}

/**
 * Convert rotation matrix to Euler angles
 */
void wRo_to_euler(const Eigen::Matrix3d& wRo, double& yaw, double& pitch, double& roll) {
    yaw = standardRad(atan2(wRo(1,0), wRo(0,0)));
    double c = cos(yaw);
    double s = sin(yaw);
    pitch = standardRad(atan2(-wRo(2,0), wRo(0,0)*c + wRo(1,0)*s));
    roll  = standardRad(atan2(wRo(0,2)*s - wRo(1,2)*c, -wRo(0,1)*s + wRo(1,1)*c));
}

// void initEnvironment(const std::string& environment, AprilTags::TagCodes& m_tagCodes) {
void initEnvironment(const int& environment, AprilTags::TagCodes& m_tagCodes) {
    if (environment==0) {
	m_tagCodes = AprilTags::tagCodes16h5;
    } else {
	std::cout << "Invalid environment" << std::endl;
	std::exit(1);
    }
}

class detectorVIS_t : public podBase_t
{

public:

    //Pod-specific members to store received messages of channels that this POD is subscribed to (Note that every pod is auto-subscribed to statusWatchdog and has a member to store this (see base class constructor))
    // April tag parameters
    AprilTags::TagDetector *m_tagDetector;
    // double m_tagSize;

    // // Video loading parameters
    // cv::VideoCapture m_cap;
    // int m_deviceId;

    // // Initialize environment
    const int environment = 0;
    
    //constructor
    detectorVIS_t (string podName, int64_t callInterval) : podBase_t(podName, callInterval)
    {
        //Pod-specific initialization
	
    }


    //Pod-specifc members for storing values (if some values in the computation-cycle or statusUpdate-cycle are needed over more than 1 function call)
    agile::tags_t       features;
    agile::statusDrone_t statusDrone;
    AprilTags::TagCodes m_tagCodes = AprilTags::tagCodes16h5;


    //Pod-specific member functions
    bool updateStatus() override;
    bool doComputations() override;
};








#endif