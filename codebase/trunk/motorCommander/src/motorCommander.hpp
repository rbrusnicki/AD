#ifndef MOTORCOMMANDER_H
#define MOTORCOMMANDER_H

#include "../../framework/framework.hpp"
#include "../../framework/paramsMotorCommander.hpp"

#include <stdio.h>
#include <stdlib.h>
#include <sys/ioctl.h>
#include <fcntl.h>
#include <termios.h>
#include <math.h>
#include <string>
#include <unistd.h>



class motorCommander_t : public podBase_t
{

public:

    //Pod-specific members to store received messages
    agile::controlMode_t       controlMode;
    agile::powerAdjust_t       powerAdjust;

    agile::motorsWsRef_t       motorsWsRefPDOrient;
    agile::motorsWsRef_t       motorsWsRefPDPose;

    bool isWriteToArduino;	//flag is motorcommander tries to write to arduino or not

    std::string usbPortname;		//arduino portname
    int fd;	    		// file descriptor to write to arduino
    int writeToArdStatus;	    	// return value of write process to arduino


    //constructor
    motorCommander_t (string podName, int64_t callInterval) : podBase_t(podName, callInterval)
    {
        //Pod-specific initialization
        //...
        this->fd = 0;
        this->writeToArdStatus = 0;
        this->isWriteToArduino = false;

        this->motorsPwms.pwms[0] = 1000;
	this->motorsPwms.pwms[1] = 1000;
        this->motorsPwms.pwms[2] = 1000;
        this->motorsPwms.pwms[3] = 1000;

	this->powerAdjust.powerGain = 0.0;
    }

    //Pod-specifc members and functions for computations and storing results over more than 1 function cycle call
    agile::motorsPwms_t   motorsPwms;
    agile::motorsWsRef_t*  motorsWsRefControlerToUse;

    bool updateStatus() override;
    bool doComputations() override;
};








#endif
