

!Fortran 2003 bindings for xraylib
!By Tom Schoonjans (Tom.Schoonjans@UGent.be)

!Warning: can ony be compiled with Intel Fortran 10 or later, GFortran 4.3.0 or later and G95




      


MODULE xraylib

USE, INTRINSIC :: ISO_C_BINDING
IMPLICIT NONE

!Constants


INTEGER (KIND=C_INT),PARAMETER ::  F1_TRANS   = 0
INTEGER (KIND=C_INT),PARAMETER ::  F12_TRANS  = 1
INTEGER (KIND=C_INT),PARAMETER ::  F13_TRANS  = 2
INTEGER (KIND=C_INT),PARAMETER ::  FP13_TRANS = 3
INTEGER (KIND=C_INT),PARAMETER ::  F23_TRANS  = 4

INTEGER (KIND=C_INT),PARAMETER ::  KA_LINE = 0
INTEGER (KIND=C_INT),PARAMETER ::  KB_LINE = 1
INTEGER (KIND=C_INT),PARAMETER ::  LA_LINE = 2
INTEGER (KIND=C_INT),PARAMETER ::  LB_LINE = 3
INTEGER (KIND=C_INT),PARAMETER ::  KL1_LINE = -1
INTEGER (KIND=C_INT),PARAMETER ::  KL2_LINE = -2
INTEGER (KIND=C_INT),PARAMETER ::  KL3_LINE = -3
INTEGER (KIND=C_INT),PARAMETER ::  KM1_LINE = -4
INTEGER (KIND=C_INT),PARAMETER ::  KM2_LINE = -5
INTEGER (KIND=C_INT),PARAMETER ::  KM3_LINE = -6
INTEGER (KIND=C_INT),PARAMETER ::  KM4_LINE = -7
INTEGER (KIND=C_INT),PARAMETER ::  KM5_LINE = -8
INTEGER (KIND=C_INT),PARAMETER ::  KN1_LINE = -9
INTEGER (KIND=C_INT),PARAMETER ::  KN2_LINE = -10
INTEGER (KIND=C_INT),PARAMETER ::  KN3_LINE = -11
INTEGER (KIND=C_INT),PARAMETER ::  KN4_LINE = -12
INTEGER (KIND=C_INT),PARAMETER ::  KN5_LINE = -13
INTEGER (KIND=C_INT),PARAMETER ::  L1M1_LINE = -14
INTEGER (KIND=C_INT),PARAMETER ::  L1M2_LINE = -15
INTEGER (KIND=C_INT),PARAMETER ::  L1M3_LINE = -16
INTEGER (KIND=C_INT),PARAMETER ::  L1M4_LINE = -17
INTEGER (KIND=C_INT),PARAMETER ::  L1M5_LINE = -18
INTEGER (KIND=C_INT),PARAMETER ::  L1N1_LINE = -19
INTEGER (KIND=C_INT),PARAMETER ::  L1N2_LINE = -20
INTEGER (KIND=C_INT),PARAMETER ::  L1N3_LINE = -21
INTEGER (KIND=C_INT),PARAMETER ::  L1N4_LINE = -22
INTEGER (KIND=C_INT),PARAMETER ::  L1N5_LINE = -23
INTEGER (KIND=C_INT),PARAMETER ::  L1N6_LINE = -24
INTEGER (KIND=C_INT),PARAMETER ::  L1N7_LINE = -25
INTEGER (KIND=C_INT),PARAMETER ::  L2M1_LINE = -26
INTEGER (KIND=C_INT),PARAMETER ::  L2M2_LINE = -27
INTEGER (KIND=C_INT),PARAMETER ::  L2M3_LINE = -28
INTEGER (KIND=C_INT),PARAMETER ::  L2M4_LINE = -29
INTEGER (KIND=C_INT),PARAMETER ::  L2M5_LINE = -30
INTEGER (KIND=C_INT),PARAMETER ::  L2N1_LINE = -31
INTEGER (KIND=C_INT),PARAMETER ::  L2N2_LINE = -32
INTEGER (KIND=C_INT),PARAMETER ::  L2N3_LINE = -33
INTEGER (KIND=C_INT),PARAMETER ::  L2N4_LINE = -34
INTEGER (KIND=C_INT),PARAMETER ::  L2N5_LINE = -35
INTEGER (KIND=C_INT),PARAMETER ::  L2N6_LINE = -36
INTEGER (KIND=C_INT),PARAMETER ::  L2N7_LINE = -37
INTEGER (KIND=C_INT),PARAMETER ::  L3M1_LINE = -38
INTEGER (KIND=C_INT),PARAMETER ::  L3M2_LINE = -39
INTEGER (KIND=C_INT),PARAMETER ::  L3M3_LINE = -40
INTEGER (KIND=C_INT),PARAMETER ::  L3M4_LINE = -41
INTEGER (KIND=C_INT),PARAMETER ::  L3M5_LINE = -42
INTEGER (KIND=C_INT),PARAMETER ::  L3N1_LINE = -43
INTEGER (KIND=C_INT),PARAMETER ::  L3N2_LINE = -44
INTEGER (KIND=C_INT),PARAMETER ::  L3N3_LINE = -45
INTEGER (KIND=C_INT),PARAMETER ::  L3N4_LINE = -46
INTEGER (KIND=C_INT),PARAMETER ::  L3N5_LINE = -47
INTEGER (KIND=C_INT),PARAMETER ::  L3N6_LINE = -48
INTEGER (KIND=C_INT),PARAMETER ::  L3N7_LINE = -49

INTEGER (KIND=C_INT),PARAMETER ::  K_SHELL = 0
INTEGER (KIND=C_INT),PARAMETER ::  L1_SHELL = 1
INTEGER (KIND=C_INT),PARAMETER ::  L2_SHELL = 2
INTEGER (KIND=C_INT),PARAMETER ::  L3_SHELL = 3
INTEGER (KIND=C_INT),PARAMETER ::  M1_SHELL = 4
INTEGER (KIND=C_INT),PARAMETER ::  M2_SHELL = 5
INTEGER (KIND=C_INT),PARAMETER ::  M3_SHELL = 6
INTEGER (KIND=C_INT),PARAMETER ::  M4_SHELL = 7
INTEGER (KIND=C_INT),PARAMETER ::  M5_SHELL = 8
INTEGER (KIND=C_INT),PARAMETER ::  N1_SHELL = 9
INTEGER (KIND=C_INT),PARAMETER ::  N2_SHELL = 10
INTEGER (KIND=C_INT),PARAMETER ::  N3_SHELL = 11
INTEGER (KIND=C_INT),PARAMETER ::  N4_SHELL = 12
INTEGER (KIND=C_INT),PARAMETER ::  N5_SHELL = 13
INTEGER (KIND=C_INT),PARAMETER ::  N6_SHELL = 14
INTEGER (KIND=C_INT),PARAMETER ::  N7_SHELL = 15
INTEGER (KIND=C_INT),PARAMETER ::  O1_SHELL = 16
INTEGER (KIND=C_INT),PARAMETER ::  O2_SHELL = 17
INTEGER (KIND=C_INT),PARAMETER ::  O3_SHELL = 18
INTEGER (KIND=C_INT),PARAMETER ::  O4_SHELL = 19
INTEGER (KIND=C_INT),PARAMETER ::  O5_SHELL = 20
INTEGER (KIND=C_INT),PARAMETER ::  O6_SHELL = 21
INTEGER (KIND=C_INT),PARAMETER ::  O7_SHELL = 22
INTEGER (KIND=C_INT),PARAMETER ::  P1_SHELL = 23
INTEGER (KIND=C_INT),PARAMETER ::  P2_SHELL = 24
INTEGER (KIND=C_INT),PARAMETER ::  P3_SHELL = 25
INTEGER (KIND=C_INT),PARAMETER ::  P4_SHELL = 26
INTEGER (KIND=C_INT),PARAMETER ::  P5_SHELL = 27
INTEGER (KIND=C_INT),PARAMETER ::  Q1_SHELL = 28
INTEGER (KIND=C_INT),PARAMETER ::  Q2_SHELL = 29
INTEGER (KIND=C_INT),PARAMETER ::  Q3_SHELL = 30




INTERFACE
!All procedures are pure

	!Initialization
	SUBROUTINE XRayInit() BIND(C,NAME='XRayInit')
	ENDSUBROUTINE XRayInit

	!Error handling
	PURE SUBROUTINE SetHardExit(hard_exit) BIND(C,NAME='SetHardExit')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
		INTEGER (KIND=C_INT),INTENT(IN),VALUE :: hard_exit
	ENDSUBROUTINE SetHardExit

	PURE SUBROUTINE SetExitStatus(exit_status) BIND(C,NAME='SetExitStatus')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
		INTEGER (KIND=C_INT),INTENT(IN),VALUE :: exit_status
	ENDSUBROUTINE SetExitStatus

	PURE FUNCTION GetExitStatus() BIND(C,NAME='GetExitStatus')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
		INTEGER (KIND=C_INT) :: GetExitStatus
	ENDFUNCTION

	!Atomic Weights
        PURE FUNCTION AtomicWeight(Z) BIND(C,NAME='AtomicWeight')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: AtomicWeight
                INTEGER (KIND=C_INT),INTENT(IN),VALUE :: Z
        END FUNCTION AtomicWeight

	!Cross sections (cm2/g)
        PURE FUNCTION CS_Total(Z,E) BIND(C,NAME='CS_Total')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: CS_Total
                INTEGER (KIND=C_INT),INTENT(IN),VALUE :: Z
                REAL (KIND=C_FLOAT), INTENT(IN),VALUE :: E
        END FUNCTION CS_Total

        PURE FUNCTION CS_Photo(Z,E) BIND(C,NAME='CS_Photo')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: CS_Photo
                INTEGER (KIND=C_INT),INTENT(IN),VALUE :: Z
                REAL (C_FLOAT),INTENT(IN),VALUE :: E
        END FUNCTION CS_Photo

        PURE FUNCTION CS_Rayl(Z,E) BIND(C,NAME='CS_Rayl')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: CS_Rayl
                INTEGER (KIND=C_INT),INTENT(IN),VALUE :: Z
                REAL (KIND=C_FLOAT),INTENT(IN),VALUE :: E
        END FUNCTION CS_Rayl

        PURE FUNCTION CS_Compt(Z,E) BIND(C,NAME='CS_Compt')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: CS_Compt
                INTEGER (KIND=C_INT),INTENT(IN),VALUE :: Z
                REAL (KIND=C_FLOAT),INTENT(IN),VALUE :: E
        END FUNCTION CS_Compt

        PURE FUNCTION CS_KN(E) BIND(C,NAME='CS_KN')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: CS_KN
                REAL (KIND=C_FLOAT),INTENT(IN),VALUE :: E
        END FUNCTION CS_KN

	!Cross sections (barn/atom)
        PURE FUNCTION CSb_Total(Z,E) BIND(C,NAME='CSb_Total')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: CSb_Total
                INTEGER (KIND=C_INT),INTENT(IN),VALUE :: Z
                REAL (KIND=C_FLOAT), INTENT(IN),VALUE :: E
        END FUNCTION CSb_Total

        PURE FUNCTION CSb_Photo(Z,E) BIND(C,NAME='CSb_Photo')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: CSb_Photo
                INTEGER (KIND=C_INT),INTENT(IN),VALUE :: Z
                REAL (C_FLOAT),INTENT(IN),VALUE :: E
        END FUNCTION CSb_Photo

        PURE FUNCTION CSb_Rayl(Z,E) BIND(C,NAME='CSb_Rayl')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: CSb_Rayl
                INTEGER (KIND=C_INT),INTENT(IN),VALUE :: Z
                REAL (KIND=C_FLOAT),INTENT(IN),VALUE :: E
        END FUNCTION CSb_Rayl

        PURE FUNCTION CSb_Compt(Z,E) BIND(C,NAME='CSb_Compt')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: CSb_Compt
                INTEGER (KIND=C_INT),INTENT(IN),VALUE :: Z
                REAL (KIND=C_FLOAT),INTENT(IN),VALUE :: E
        END FUNCTION CSb_Compt

	!Unpolarized differential scattering cross sections
	PURE FUNCTION DCS_Thoms(theta) BIND(C,NAME='DCS_Thoms')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: DCS_Thoms
		REAL (KIND=C_FLOAT),INTENT(IN),VALUE :: theta
	ENDFUNCTION DCS_Thoms

	PURE FUNCTION DCS_KN(E ,theta) BIND(C,NAME='DCS_KN')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: DCS_KN
		REAL (KIND=C_FLOAT), INTENT(IN), VALUE :: E, theta
	ENDFUNCTION DCS_KN

	PURE FUNCTION DCS_Rayl(Z ,E ,theta) BIND(C,NAME='DCS_Rayl')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: DCS_Rayl
		INTEGER (KIND=C_INT), INTENT(IN),VALUE :: Z
		REAL (KIND=C_FLOAT), INTENT(IN),VALUE :: E,theta
	ENDFUNCTION DCS_Rayl

	PURE FUNCTION DCS_Compt(Z ,E ,theta) BIND(C,NAME='DCS_Compt')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: DCS_Compt
		INTEGER (KIND=C_INT), INTENT(IN),VALUE :: Z
		REAL (KIND=C_FLOAT), INTENT(IN),VALUE :: E,theta
	ENDFUNCTION DCS_Compt

	PURE FUNCTION DCSb_Rayl(Z ,E ,theta) BIND(C,NAME='DCSb_Rayl')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: DCSb_Rayl
		INTEGER (KIND=C_INT), INTENT(IN),VALUE :: Z
		REAL (KIND=C_FLOAT), INTENT(IN),VALUE :: E,theta
	ENDFUNCTION DCSb_Rayl

	PURE FUNCTION DCSb_Compt(Z ,E ,theta) BIND(C,NAME='DCSb_Compt')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: DCSb_Compt
		INTEGER (KIND=C_INT), INTENT(IN),VALUE :: Z
		REAL (KIND=C_FLOAT), INTENT(IN),VALUE :: E,theta
	ENDFUNCTION DCSb_Compt

	!Polarized differential scattering cross sections
	PURE FUNCTION DCSP_Thoms(theta, phi) BIND(C,NAME='DCSP_Thoms')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: DCSP_Thoms
		REAL (KIND=C_FLOAT), INTENT(IN),VALUE :: theta, phi
	ENDFUNCTION DCSP_Thoms

	PURE FUNCTION DCSP_KN(E, theta, phi) BIND(C,NAME='DCSP_KN')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: DCSP_KN
		REAL (KIND=C_FLOAT), INTENT(IN),VALUE :: E, theta, phi
	ENDFUNCTION DCSP_KN

	PURE FUNCTION DCSP_Rayl(Z, E, theta, phi) BIND(C,NAME='DCSP_Rayl')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: DCSP_Rayl
		INTEGER (KIND=C_INT), INTENT(IN),VALUE :: Z
		REAL (KIND=C_FLOAT), INTENT(IN),VALUE :: E, theta, phi
	ENDFUNCTION DCSP_Rayl

	PURE FUNCTION DCSP_Compt(Z, E, theta, phi) BIND(C,NAME='DCSP_Compt')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: DCSP_Compt
		INTEGER (KIND=C_INT), INTENT(IN),VALUE :: Z
		REAL (KIND=C_FLOAT), INTENT(IN),VALUE :: E, theta, phi
	ENDFUNCTION DCSP_Compt

	PURE FUNCTION DCSPb_Rayl(Z, E, theta, phi) BIND(C,NAME='DCSPb_Rayl')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: DCSPb_Rayl
		INTEGER (KIND=C_INT), INTENT(IN),VALUE :: Z
		REAL (KIND=C_FLOAT), INTENT(IN),VALUE :: E, theta, phi
	ENDFUNCTION DCSPb_Rayl

	PURE FUNCTION DCSPb_Compt(Z, E, theta, phi) BIND(C,NAME='DCSPb_Compt')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: DCSPb_Compt
		INTEGER (KIND=C_INT), INTENT(IN),VALUE :: Z
		REAL (KIND=C_FLOAT), INTENT(IN),VALUE :: E, theta, phi
	ENDFUNCTION DCSPb_Compt
	
	!Scattering factors
	PURE FUNCTION FF_Rayl(Z , q) BIND(C,NAME='FF_Rayl')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: FF_Rayl
		INTEGER (KIND=C_INT), INTENT(IN), VALUE :: Z
		REAL (KIND=C_FLOAT), INTENT(IN), VALUE :: q
	ENDFUNCTION FF_Rayl

	PURE FUNCTION SF_Compt(Z , q) BIND(C,NAME='SF_Compt')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: SF_Compt
		INTEGER (KIND=C_INT), INTENT(IN), VALUE :: Z
		REAL (KIND=C_FLOAT), INTENT(IN), VALUE :: q
	ENDFUNCTION SF_Compt

	PURE FUNCTION MomentTransf(E , theta) BIND(C,NAME='MomentTransf')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: MomentTransf
		REAL (KIND=C_FLOAT), INTENT(IN), VALUE :: E , theta
	ENDFUNCTION

	!X-ray fluorescent line energy
        PURE FUNCTION LineEnergy(Z,line) BIND(C,NAME='LineEnergy')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
		REAL (KIND=C_FLOAT) :: LineEnergy
                INTEGER (KIND=C_INT),INTENT(IN),VALUE :: Z,line
        END FUNCTION LineEnergy

	!Fluorescence yield
        PURE FUNCTION FluorYield(Z,shell) BIND(C,NAME='FluorYield')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: FluorYield
                INTEGER (KIND=C_INT),INTENT(IN),VALUE ::Z,shell
        END FUNCTION FluorYield

	!Coster-Kronig transition probability
        PURE FUNCTION CosKronTransProb(Z,trans) &
		BIND(C,NAME='CosKronTransProb')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: CosKronTransProb
                INTEGER (KIND=C_INT),INTENT(IN),VALUE ::Z,trans
        END FUNCTION CosKronTransProb

	!Absorption-edge energies
        PURE FUNCTION EdgeEnergy(Z,shell) BIND(C,NAME='EdgeEnergy')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: EdgeEnergy
                INTEGER (KIND=C_INT),INTENT(IN),VALUE ::Z,shell
        END FUNCTION EdgeEnergy

	!Jump ratios
        PURE FUNCTION JumpFactor(Z,shell) BIND(C,NAME='JumpFactor')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: JumpFactor
                INTEGER (KIND=C_INT),INTENT(IN),VALUE ::Z,shell
        END FUNCTION JumpFactor

	!Fluorescent-lines cross sections
        PURE FUNCTION CS_FluorLine(Z,line,E) BIND(C,NAME='CS_FluorLine')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: CS_FluorLine
                INTEGER (KIND=C_INT),INTENT(IN),VALUE :: Z,line
		REAL (KIND=C_FLOAT), INTENT(IN),VALUE :: E
        END FUNCTION CS_FluorLine

        PURE FUNCTION CSb_FluorLine(Z,line,E) &
		BIND(C,NAME='CSb_FluorLine')
                USE, INTRINSIC :: ISO_C_BINDING
                IMPLICIT NONE
                REAL (KIND=C_FLOAT) :: CSb_FluorLine
                INTEGER (KIND=C_INT),INTENT(IN),VALUE :: Z,line
		REAL (KIND=C_FLOAT), INTENT(IN),VALUE :: E
        END FUNCTION CSb_FluorLine

	!Fractional radiative rate	
	PURE FUNCTION RadRate(Z, line) BIND (C,NAME='RadRate')
                USE, INTRINSIC :: ISO_C_BINDING
		IMPLICIT NONE
		REAL (KIND=C_FLOAT) :: RadRate
		INTEGER (KIND=C_INT), INTENT(IN), VALUE :: Z , line
	ENDFUNCTION RadRate

	!Photon energy after Compton scattering
	PURE FUNCTION ComptonEnergy(E0 , theta) BIND(C,NAME='ComptonEnergy')
                USE, INTRINSIC :: ISO_C_BINDING
		IMPLICIT NONE
		REAL (KIND=C_FLOAT) :: ComptonEnergy
		REAL (KIND=C_FLOAT), INTENT(IN), VALUE :: E0 , theta
	ENDFUNCTION ComptonEnergy

	!Anomalous Scattering Factors
	PURE FUNCTION Fi (Z , E) BIND(C, NAME='Fi')
                USE, INTRINSIC :: ISO_C_BINDING
		IMPLICIT NONE
		REAL (KIND=C_FLOAT) :: Fi
		REAL (KIND=C_FLOAT), INTENT(IN), VALUE :: E
		INTEGER (KIND=C_INT),INTENT(IN), VALUE :: Z 
	ENDFUNCTION Fi

	PURE FUNCTION Fii (Z , E) BIND(C, NAME='Fii')
                USE, INTRINSIC :: ISO_C_BINDING
		IMPLICIT NONE
		REAL (KIND=C_FLOAT) :: Fii
		REAL (KIND=C_FLOAT), INTENT(IN), VALUE :: E
		INTEGER (KIND=C_INT),INTENT(IN), VALUE :: Z 
	ENDFUNCTION Fii

	!Kissel photoelectric cross sections
	PURE FUNCTION CS_Photo_Total (Z, E) BIND(C, NAME='CS_Photo_Total')
		USE, INTRINSIC :: ISO_C_BINDING
		IMPLICIT NONE
		REAL (KIND=C_FLOAT) :: CS_Photo_Total
		REAL (KIND=C_FLOAT), INTENT(IN), VALUE :: E
		INTEGER (KIND=C_INT),INTENT(IN), VALUE :: Z 
	ENDFUNCTION CS_Photo_Total

	PURE FUNCTION CSb_Photo_Total (Z, E) BIND(C, NAME='CSb_Photo_Total')
		USE, INTRINSIC :: ISO_C_BINDING
		IMPLICIT NONE
		REAL (KIND=C_FLOAT) :: CSb_Photo_Total
		REAL (KIND=C_FLOAT), INTENT(IN), VALUE :: E
		INTEGER (KIND=C_INT),INTENT(IN), VALUE :: Z 
	ENDFUNCTION CSb_Photo_Total

	PURE FUNCTION CS_Photo_Partial (Z,shell, E) &
		BIND(C, NAME='CS_Photo_Partial')
		USE, INTRINSIC :: ISO_C_BINDING
		IMPLICIT NONE
		REAL (KIND=C_FLOAT) :: CS_Photo_Partial
		INTEGER (KIND=C_INT), INTENT(IN), VALUE :: shell, Z
		REAL (KIND=C_FLOAT), INTENT(IN), VALUE :: E
	ENDFUNCTION CS_Photo_Partial

	PURE FUNCTION CSb_Photo_Partial (Z,shell, E) &
		BIND(C, NAME='CSb_Photo_Partial')
		USE, INTRINSIC :: ISO_C_BINDING
		IMPLICIT NONE
		REAL (KIND=C_FLOAT) :: CSb_Photo_Partial
		INTEGER (KIND=C_INT), INTENT(IN), VALUE :: Z, shell
		REAL (KIND=C_FLOAT), INTENT(IN), VALUE :: E
	ENDFUNCTION CSb_Photo_Partial

	!XRF cross sections using Kissel partial photoelectric cross sections
	PURE FUNCTION CS_FluorLine_Kissel (Z,line, E) &
		BIND(C, NAME='CS_FluorLine_Kissel')
		USE, INTRINSIC :: ISO_C_BINDING
		IMPLICIT NONE
		REAL (KIND=C_FLOAT) :: CS_FluorLine_Kissel
		INTEGER (KIND=C_INT), INTENT(IN), VALUE :: line, Z
		REAL (KIND=C_FLOAT), INTENT(IN), VALUE :: E
	ENDFUNCTION CS_FluorLine_Kissel

	PURE FUNCTION CSb_FluorLine_Kissel (Z,line, E) & 
		BIND(C, NAME='CSb_FluorLine_Kissel')
		USE, INTRINSIC :: ISO_C_BINDING
		IMPLICIT NONE
		REAL (KIND=C_FLOAT) :: CSb_FluorLine_Kissel
		INTEGER (KIND=C_INT), INTENT(IN), VALUE :: line, Z
		REAL (KIND=C_FLOAT), INTENT(IN), VALUE :: E
	ENDFUNCTION CSb_FluorLine_Kissel

	PURE FUNCTION CS_Total_Kissel (Z, E) BIND(C, NAME='CS_Total_Kissel')
		USE, INTRINSIC :: ISO_C_BINDING
		IMPLICIT NONE
		REAL (KIND=C_FLOAT) :: CS_Total_Kissel
		REAL (KIND=C_FLOAT), INTENT(IN), VALUE :: E
		INTEGER (KIND=C_INT),INTENT(IN), VALUE :: Z 
	ENDFUNCTION CS_Total_Kissel

	PURE FUNCTION CSb_Total_Kissel (Z, E) BIND(C, NAME='CSb_Total_Kissel')
		USE, INTRINSIC :: ISO_C_BINDING
		IMPLICIT NONE
		REAL (KIND=C_FLOAT) :: CSb_Total_Kissel
		REAL (KIND=C_FLOAT), INTENT(IN), VALUE :: E
		INTEGER (KIND=C_INT),INTENT(IN), VALUE :: Z 
	ENDFUNCTION CSb_Total_Kissel



ENDINTERFACE

ENDMODULE