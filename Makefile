#######################################################################
#  Look at end of file for a brief guide to the compile-time options. #
#######################################################################

#--------------------------------------- Basic operation mode of code
OPT	+=  -DPERIODIC
#OPT	+=  -DCOOLING
#OPT	+=  -DSFR
#OPT	+=  -DSINKS
#OPT	+=  -DUNEQUALSOFTENINGS
#OPT	+=  -DNUM_THREADS=2


#--------------------------------------- TreePM Options
OPT	+=  -DPMGRID=128
#OPT	+=  -DGRIDBOOST=2
#OPT	+=  -DASMTH=1.25
#OPT	+=  -DRCUT=4.5
#OPT	+=  -DPLACEHIGHRESREGION=55
#OPT	+=  -DENLARGEREGION=1.1


#--------------------------------------- Multi-Domain and Top-Level Tree options
OPT	+=  -DMULTIPLEDOMAINS=32
OPT	+=  -DTOPNODEFACTOR=5


#--------------------------------------- Things that are always recommended
OPT	+=  -DPEANOHILBERT
OPT	+=  -DWALLCLOCK
OPT	+=  -DMYSORT
#OPT	+=  -DCPUSPEEDADJUSTMENT
#OPT	+=  -DHYDRO_COST_FACTOR=1000
#OPT	+=  -DAUTO_SWAP_ENDIAN_READIC        # Enables automatic ENDIAN swapping for reading ICs
#OPT	+=  -DPERMUTATAION_OPTIMIZATION


#---------------------------------------- Single/Double Precision
#OPT	+=  -DDOUBLEPRECISION
#OPT	+=  -DDOUBLEPRECISION_FFTW
#OPT	+=  -DOUTPUT_IN_DOUBLEPRECISION # snapshot files will be written in double precision
#OPT	+=  -DINPUT_IN_DOUBLEPRECISION


#---------------------------------------- Invariance Test
#OPT	+=  -DINVARIANCETEST
#OPT	+=  -DINVARIANCETEST_SIZE1=2
#OPT	+=  -DINVARIANCETEST_SIZE2=6
#OPT	+=  -DFLTROUNDOFFREDUCTION      # enables (expensive!) `double-double' round-off reduction in particle sums
#OPT	+=  -DSOFTDOUBLEDOUBLE          # needs to be set if a C++ software implementation of 128bit double-double precision should be used


#---------------------------------------- On the fly FOF groupfinder 
OPT	+=  -DFOF                                # enable FoF output
OPT	+=  -DFOF_PRIMARY_LINK_TYPES=2           # 2^type for the primary dark matter type
OPT	+=  -DFOF_SECONDARY_LINK_TYPES=49	     # 2^type for the types linked to nearest primaries
OPT 	+=  -DFOF_GROUP_MIN_LEN=32               # default is 32
OPT	+=  -DSUBFIND                            # enables substructure finder
#OPT    +=  -DDENSITY_SPLIT_BY_TYPE=1+2+16    # 2^type for whch the densities should be calculated seperately  
#OPT    +=  -DMAX_NGB_CHECK=3                    # Max numbers of neighbours for sattlepoint detection (default = 2)
#OPT     +=  -DSAVE_MASS_TAB                      # Saves the an additional array with the masses of the different components
#OPT    +=  -DSUBFIND_SAVE_PARTICLELISTS         # Saves also phase-space and type variables parallel to IDs
#OPT	+=  -DSO_VEL_DISPERSIONS                 # computes velocity dispersions for as part of FOF SO-properties
#OPT	+=  -DORDER_SNAPSHOTS_BY_ID
#OPT	+=  -DSAVE_HSML_IN_IC_ORDER              # will store the hsml-values in the order of the particles in the IC file
#OPT	+=  -DONLY_PRODUCE_HSML_FILES            # only carries out density estimate
#OPT	+=  -DKEEP_DM_HSML_AS_GUESS              # uses hsml from last time as guess for actual subfind
#OPT	+=  -DLINKLENGTH=0.16                    # Linkinglength for FoF (default=0.2)
#OPT	+=  -DSUBFIND_READ_FOF
#OPT	+=  -DSUBFIND_COLLECTIVE_STAGE1
#OPT	+=  -DSUBFIND_COLLECTIVE_STAGE2
#OPT	+=  -DSUBFIND_ALTERNATIVE_COLLECTIVE
#OPT	+=  -DSUBFIND_RESHUFFLE_CATALOGUE
#OPT	+=  -DSUBFIND_RESHUFFLE_CATALOGUE_WITH_VORONOI
#OPT    +=  -DSUBFIND_RESHUFFLE_AND_POTENTIAL    #needs -DSUBFIND_RESHUFFLE_CATALOGUE and COMPUTE_POTENTIAL_ENERGY
#OPT    +=  -DSUBFIND_DENSITY_AND_POTENTIAL       #only calculated density and potential and write them into snapshot 

#--------------------------------------- SFR/feedback model
#OPT	+=  -DSOFTEREQS
#OPT	+=  -DMOREPARAMS
#OPT	+=  -DMETALS
#OPT	+=  -DSTELLARAGE
#OPT	+=  -DWINDS
#OPT	+=  -DQUICK_LYALPHA
#OPT	+=  -DISOTROPICWINDS
#OPT	+=  -DMHM
#OPT    +=  -DMODIFIED_SFR


#-------------------------------------- AGN stuff
#OPT	+=  -DBLACK_HOLES             # enables Black-Holes (master switch)
#OPT	+=  -DBONDI                   # Bondi-Hoyle style accretion model
#OPT	+=  -DENFORCE_EDDINGTON_LIMIT # put a hard limit on the maximum accretion rate
#OPT	+=  -DBH_THERMALFEEDBACK      # couple a fraction of the BH luminosity into surrounding gas
#OPT	+=  -DBH_DRAG                 # Drag on black-holes due to accretion
#OPT	+=  -DSWALLOWGAS              # Enables stochastic accretion of gas particles consistent with growth rate of hole
#OPT	+=  -DEVALPOTENTIAL           # computes gravitational potential
#OPT	+=  -DREPOSITION_ON_POTMIN    # repositions hole on potential minimum (requires EVALPOTENTIAL)
#OPT	+=  -DBH_COUNTPROGS	      # carries a counter for each BH that gives the total number of seeds that merged into it
#OPT	+=  -DBH_USE_GASVEL_IN_BONDI  # only when this is enabled, the surrounding gas velocity is used in addition to the sounds speed in the Bondi rate 


#-------------------------------------- AGN-Bubble feedback
#OPT	+=  -DBUBBLES                 # generation of hot bubbles in an isolated halo or the the biggest halo in the run
#OPT	+=  -DMULTI_BUBBLES 	      # hot bubbles in all haloes above certain mass threshold (works only with FOF and without BUBBLES)
#OPT	+=  -DEBUB_PROPTO_BHAR        # Energy content of the bubbles with cosmic time evolves as an integrated BHAR(z) over a Salpeter time (Di Matteo 2003 eq. [11])

#OPT    +=  -DBH_BUBBLES              # calculate bubble energy directly from
                                      # the black hole accretion rate

#OPT    +=  -DUNIFIED_FEEDBACK        # activates BH_THERMALFEEDBACK at high
                                      # Mdot and BH_BUBBLES FEEDBACK al low Mdot

#------------------------------------ # [options from LT and DF]
#OPT	+= -DLT_BH
#OPT    += -DLT_BH_CUT_KERNEL
#OPT    += -DLT_BH_USETOPHAT_KERNEL
#OPT    += -DLT_BH_DONOT_USEDENSITY_IN_KERNEL
#OPT	+= -DLT_BH_ACCRETE_SLICES

#OPT    += -DLT_BH_LOG

#OPT 	+= -DLT_DF_BH
##OPT 	+= -DLT_DF_BH_MASS_SWITCH	# switch feedback mode by BH mass
#OPT	+= -DLT_DF_BH_BHAR_SWITCH 	# switch feedback by BHAR
##OPT	+= -DLT_DF_BH_ONLY_RADIOMODE_KERNEL	# use the selected kernel only in radio mode


#-------------------------------------- Viscous gas treatment 
#OPT	+=  -DNAVIERSTOKES            # Braginskii-Spitzer parametrization of the shear viscosity: mu = f x T^{5/2}
#OPT	+=  -DNAVIERSTOKES_CONSTANT   # Shear viscosity set constant for all gas particles
#OPT	+=  -DNAVIERSTOKES_BULK       # Bulk viscosity set constant for all gas particles. To run with bulk visocity only one has to set shear viscosity to zero in the parameterfile.
#OPT	+=  -DVISCOSITY_SATURATION    # Both shear and bulk viscosities are saturated, so that unphysical accelerations and entropy increases are avoided. Relevant for the cosmological simulations.
#OPT	+=  -DNS_TIMESTEP             # Enables timestep criterion based on entropy increase due to internal friction forces
#OPT	+=  -DOUTPUTSTRESS            # Outputs diagonal and offdiagonal components of viscous shear stress tensor
#OPT	+=  -DOUTPUTBULKSTRESS        # Outputs viscous bulk stress tensor
#OPT	+=  -DOUTPUTSHEARCOEFF        # Outputs variable shear viscosity coefficient in internal code units


#-------------------------------------------- Things for special behaviour
#OPT	+=  -DPOWERSPEC_ON_OUTPUT
#OPT	+=  -DPOWERSPEC_ON_OUTPUT_EACH_TYPE
#OPT	+=  -DTRADITIONAL_SPH_FORMULATION
#OPT	+=  -DNOTEST_FOR_IDUNIQUENESS
#OPT	+=  -DSNIA_HEATING
#OPT    +=  -DRADIAL_TREE                   #make tree forces exact radial (only implemented in tree, not TreePM)
#OPT	+=  -DFIXEDTIMEINFIRSTPHASE=1000.0
OPT	+=  -DNO_ISEND_IRECV_IN_DOMAIN
OPT	+=  -DFIX_PATHSCALE_MPI_STATUS_IGNORE_BUG
#OPT	+=  -DMPISENDRECV_SIZELIMIT=100
#OPT	+=  -DMPISENDRECV_CHECKSUM
#OPT	+=  -DNOGRAVITY
#OPT	+=  -DNOACCEL
#OPT	+=  -DNOISMPRESSURE
#OPT	+=  -DNOVISCOSITYLIMITER
#OPT	+=  -DNOTREERND
#OPT	+=  -DNOTYPEPREFIX_FFTW
#OPT	+=  -DNO_TREEDATA_IN_RESTART
#OPT	+=  -DISOTHERM=200                  # adds potential of an isothermal sphere
#OPT	+=  -DCOMPUTE_POTENTIAL_ENERGY
#OPT	+=  -DALLOWEXTRAPARAMS
#OPT	+=  -DLONGIDS
#OPT	+=  -DASSIGN_NEW_IDS
#OPT	+=  -DINHOMOG_GASDISTR_HINT         # if the gas is distributed very different from collisionless particles, this can helps to avoid problems in the domain decomposition
#OPT	+=  -DLONG_X=140
#OPT	+=  -DLONG_Y=1
#OPT	+=  -DLONG_Z=1
#OPT	+=  -DTWODIMS
#OPT	+=  -DONEDIM
#OPT	+=  -DSPH_BND_PARTICLES
#OPT	+=  -DNEW_RATES                     # switches in updated cooling rates from Naoki
#OPT	+=  -DRADIATIVE_RATES               # used in non-equilibrium chemistry model
#OPT	+=  -DREAD_HSML                     # reads hsml from IC file
#OPT   	+=  -DADAPTIVE_GRAVSOFT_FORGAS      # allows variable softening length for gas particles (requires UNEQUALSOFTENINGLENGTH)
#OPT	+=  -DADAPTIVE_GRAVSOFT_FORGAS_HSML # this sets the gravitational softening for SPH particles equal to the SPH smoothing (requires ADAPTIVE_GRAVSOFT_FORGAS)
#OPT	+=  -DGENERATE_GAS_IN_ICS
#OPT	+=  -DSPLIT_PARTICLE_TYPE=4+8
#OPT    +=  -DNEUTRINOS                     # Option for special integration of light neutrino species 
#OPT    +=  -DOMIT_NEUTRINOS_IN_SNAPS
#OPT	+=  -DKSPACE_NEUTRINOS
#OPT	+=  -DSTART_WITH_EXTRA_NGBDEV        # Uses special MaxNumNgbDeviation for starting
#OPT	+=  -DVOLUME_CORRECTION=1.75
#OPT	+=  -DISOTHERM_EQS                  # isothermal equation of state
#OPT	+=  -DNO_UTHERM_IN_IC_FILE
#OPT	+=  -DSPECIAL_GAS_TREATMENT_IN_HIGHRESREGION
OPT	+=  -DDONOTUSENODELIST

#--------------------------------------- Time integration options
#OPT	+=  -DALTERNATIVE_VISCOUS_TIMESTEP
#OPT	+=  -DNOSTOP_WHEN_BELOW_MINTIMESTEP
#OPT	+=  -DNOWINDTIMESTEPPING            # Disable wind reducing timestep (not recommended)
#OPT	+=  -DNOPMSTEPADJUSTMENT
#OPT	+=  -DFORCE_EQUAL_TIMESTEPS

#--------------------------------------- Output/Input options
OPT	+=  -DOUTPUTPOTENTIAL
#OPT	+=  -DRECOMPUTE_POTENTIAL_ON_OUTPUT # update potential every output even it EVALPOTENTIAL is set
#OPT	+=  -DOUTPUTACCELERATION
#OPT	+=  -DOUTPUTCHANGEOFENTROPY
#OPT	+=  -DOUTPUTTIMESTEP
#OPT	+=  -DOUTPUTCOOLRATE                # outputs cooling rate, and conduction rate if enabled
#OPT	+=  -DHAVE_HDF5                     # needed when HDF5 I/O support is desired
#OPT	+=  -DOUTPUTBSMOOTH
#OPT	+=  -DOUTPUTDENSNORM
#OPT	+=  -DXXLINFO                       # Enables additional output for viscosityand bfield
#OPT	+=  -DOUTPUTLINEOFSIGHT             # enables on-the-fly output of Ly-alpha absorption spectra
#OPT	+=  -DOUTPUTLINEOFSIGHT_SPECTRUM
#OPT	+=  -DOUTPUTLINEOFSIGHT_PARTICLES

#--------------------------------------- Testing and Debugging options
#OPT	+=  -DFORCETEST=0.1
#OPT	+=  -DDEBUG                     # enables core-dumps and FPU exceptions
#OPT	+=  -DPARTICLE_DEBUG            # auxiliary communication of IDs
#OPT	+=  -DVERBOSE


#--------------------------------------- Static NFW Potential
#OPT	+=  -DSTATICNFW
#OPT	+=  -DNFW_C=12
#OPT	+=  -DNFW_M200=100.0
#OPT	+=  -DNFW_Eps=0.01
#OPT	+=  -DNFW_DARKFRACTION=0.87

#--------------------------------------- Static unit Plummer sphere (G=M=a=1)
#OPT    +=  -DSTATICPLUMMER   

#--------------------------------------- Static Hernquist Potential
#OPT	+=  -DSTATICHQ
#OPT	+=  -DHQ_M200=186.015773
#OPT	+=  -DHQ_C=10.0
#OPT	+=  -DHQ_DARKFRACTION=0.9

#--------------------------------------- Static Logarithmic Potential with Core
#OPT	+=  -DSTATICLP
#OPT	+=  -DLP_V02=10000.0
#OPT	+=  -DLP_RC2=1.0
#OPT	+=  -DLP_Q2=1.0
#OPT	+=  -DLP_P2=1.0

#--------------------------------------- Static Brandt Potential
#OPT   +=  -DSTATICBRANDT
#OPT   +=  -DBRANDT_OmegaBr=0.5
#OPT   +=  -DBRANDT_R0=2.0

#--------------------------------------- Static "Sikivie 1" potential for inner caustic study  (see Natarajan&Sikivie,2006)
#OPT    +=  -DSTATICSM
#OPT    +=  -DSM_V02=100.0
#OPT    +=  -DSM_a=0.285 

#--------------------------------------- Options for simplified halo formation process in an Einstei-De Sitter (Newtonian) Universe
#OPT	+= -DSHELL_CODE=200              #activate shell code, the value corresponds to the smoothing length for dM/dr calclulation
                                         #the core softening length equals the halo particle softening length from parameterfile 
                                         #this option replaces the GADGET Poisson solver by a simple 1D integration  
#OPT	+= -DSIM_ADAPTIVE_SOFT=0.667     #set softening for shell code/Tree as fraction of current turnaround radius -> softened SIM
                                         #the halo softening length value is used as the fraction value, e.g. 0.1 -> 10% of turnaround
                                         #the epsilon value of the density perturbation needs to be specified for turnaround radius calc
#OPT	+= -DPHYS_COMOVING_SOFT          #set softening for Tree as fixed fraction in comoving coordinates
#OPT	+= -DREINIT_AT_TURNAROUND=0.667  #reinit phase-space distortion tensor when particles crosses the turnaround radius. 
                                         #the epsilon value of the density perturbation needs to be specified to calculate
					 #correct initial sheet orientation and initial stream density
#OPT    += -DREINIT_AT_TURNAROUND_CMS    #calculate centre of mass within REINIT_AT_TURNAROUND_CMS fraction of turnaround radius
#OPT	+= -DANALYTIC_TURNAROUND         #use analytic turnaround radius instead of the numerical one

#--------------------------------------- Thermal conduction
#OPT	+=  -DCONDUCTION
#OPT	+=  -DCONDUCTION_CONSTANT
#OPT	+=  -DCONDUCTION_SATURATION


#--------------------------------------- Dark energy
#OPT	+=  -DDARKENERGY # Enables Dark Energy
#OPT	+=  -DTIMEDEPDE  # read w(z) from a DE file
#OPT	+=  -DRESCALEVINI # rescale v_ini in read_ic / read_ic_cluster
#OPT    +=  -DEXTERNALHUBBLE # reads the hubble function from the DE file
#OPT    +=  -DTIMEDEPGRAV # resacles H and G according to DE model
#OPT    +=  -DDARKENERGY_DEBUG # enable writing of drift/kick table


#--------------------------------------- Long-range scalar field
#OPT	+=  -DSCALARFIELD


#--------------------------------------- Real Cosmic Rays
#OPT    +=  -DJD_VTURB
#OPT    +=  -DBP_REAL_CRs=10             # Number of energy bins for CRs

#--------------------------------------- SPH viscosity options
#OPT	+=  -DCONVENTIONAL_VISCOSITY     # enables the old viscosity
#OPT	+=  -DTIME_DEP_ART_VISC          # Enables time dependend viscosity
#OPT	+=  -DNO_SHEAR_VISCOSITY_LIMITER # Turns of the shear viscosity supression
#OPT	+=  -DHIGH_ART_VISC_START        # Start with high rather than low viscosity
#OPT	+=  -DALTVISCOSITY               # enables alternative viscosity based on div(v)


#--------------------------------------- Magnetic Field options
#OPT	+=  -DMAGNETIC                   # Turns on B Field (including induction eqn) 
#OPT    +=  -DEULERPOTENTIALS            # Evolves alpha,betha instead of B
#OPT	+=  -DMAGFORCE                   # Turns on B force
#OPT	+=  -DMAGNETIC_SIGNALVEL         # Extend definition of signal velocity 
                                         # by the magneto sonic waves
#OPT	+=  -DALFVEN_VEL_LIMITER=10      # Limits the contribution of the Alfven waves
                                         # to the singal velocity 

#....................................... Induction equation stuff
#OPT	+=  -DDIVBINDUCTION              # Turns on divB term in induction eq. (REMOVED)
#OPT	+=  -DCORRECTDB                  # Turns on dW/dh correction in induction eq.

#....................................... Force equation stuff
#OPT	+=  -DMU0_UNITY                  # Sets \mu_0 to unity
#OPT	+=  -DARTBPRES                   # Anti clumping term ala Morris (REMOVED)
#OPT	+=  -DDIVBFORCE                  # Subtract div(B) force from M-tensor
#OPT	+=  -DCORRECTBFRC                # Turns on dW/dh correction for B force 

#....................................... Smoothing Options
#OPT	+=  -DBSMOOTH                    # Turns on B field smoothing

#....................................... Artificial magnetic dissipation options
#OPT	+=  -DMAGNETIC_DISSIPATION       # Turns on artificial magnetic dissipation 
#OPT	+=  -DMAGDISSIPATION_PERPEN      # Uses only the perpendicular magnetic 
                                         # field component for dissipation (REMOVED)
#OPT	+=  -DTIME_DEP_MAGN_DISP         # Enables time dependent coefficients
#OPT	+=  -DHIGH_MAGN_DISP_START       # Starts from high coefficient
#OPT	+=  -DROT_IN_MAG_DIS             # Adds the RotB term in dissipation 

#....................................... DivB cleaning options
#OPT	+=  -DDIVBCLEANING_DEDNER        # Turns on hyp/par cleaning (Dedner 2002)
#OPT	+=  -DSMOOTH_PHI                 # Turns on smoothing of Phi

# DivBcleaningParabolicSigma = 2
# DivBcleaningHyperbolicSigma = 1
# DivBcleaningQ = 0.5

#....................................... magnetic diffusion options
#OPT	+=  -DMAGNETIC_DIFFUSION         # Turns on magnetic diffusion
#OPT	+=  -DMAGNETIC_DIFFUSION_HEAT    # Converts diffuesd B field into internal energy
#OPT	+=  -DSMOOTH_ROTB                # Turns on smoothing of rot(B)

#....................................... Bebugging stuff
#OPT	+=  -DTRACEDIVB                  # Writes div(B) into snapshot
#OPT	+=  -DDBOUTPUT                   # Writes dB/dt into snapshot
#OPT	+=  -DOUTPUT_ROTB                # Writes rotB into snapshot
#OPT	+=  -DOUTPUT_SROTB               # Writes smoothed rotB into snapshot

#....................................... Initil condition stuff
#OPT	+=  -DBINISET                    # Allows to set Bx,By,Bz in parameter file
#OPT	+=  -DBFROMROTA                  # Allows to five vector potential instead of
                                         # B within the IC file
#OPT	+=  -DIGNORE_PERIODIC_IN_ROTA    # Don't use the periodic mapping when 
                                         # calculating rot(A)
                                         # Note A might not be periodic even if B is. 
#OPT	+=  -DBRIOWU                     # Extrapolate A outside simulation in case 
                                         # of Brio & Wu test problem
#....................................... Healpix stuff
#OPT    +=  -DHEALPIX=1.05		 # Generates a healpix map, to retain particles in the 
					 # HiRes region. It should be a tolerance value.
#OPT    +=  -DHEALPIX_INNERBOUND=2
#OPT    +=  -DHEALPIX_OUTERBOUND=4

#--------------------------------------- Glass making/ 2nd-order initial conditions
#OPT	+=  -DMAKEGLASS

#--------------------------------------- Raditive Transfer
#OPT	+=  -DRADTRANSFER
#OPT	+=  -DCG
#OPT	+=  -DRADTRANSFER_FLUXLIMITER
#OPT	+=  -DRADTRANSFER_MODIFY_EDDINGTON_TENSOR
#OPT	+=  -DRT_COOLING_PHOTOHEATING
#OPT	+=  -DRT_RAD_PRESSURE
#OPT    +=  -DEDDINGTON_TENSOR_GAS
#OPT	+=  -DEDDINGTON_TENSOR_STARS
#OPT	+=  -DEDDINGTON_TENSOR_SFR
#OPT    +=  -DEDDINGTON_TENSOR_BH
#OPT	+=  -DRT_OUTPUT_ET

#--------------------------------------- Fine-grained phase space structure analysis 
#OPT	+=  -DDISTORTIONTENSORPS           #main switch: integrate phase-space distortion tensor 
#OPT    +=  -DOUTPUT_DISTORTIONTENSORPS    #write phase-space distortion tensor to snapshot 
#OPT	+=  -DOUTPUT_TIDALTENSORPS         #write configuration-space tidal tensor to snapshot 
#OPT	+=  -DCAUSTIC_FINDER=2+4+8+16+32   #find caustics (only 2^type particles) and write caustic info to caustics_#.txt
#OPT	+=  -DOUTPUT_LAST_CAUSTIC          #write info on last passed caustic to snapshot (needs CAUSTIC_FINDER to be set)
#OPT    +=  -DDISTORTION_READALL           #read in all GDE relavant information from ICs  
#OPT    +=  -DCOMOVING_DISTORTION=1000.0   #cosmological simulation; for turnaround calculation the final comoving r_ta is given
#OPT    +=  -DCOMOVING_READIC              #read sheet orientatio/initial density from IC instead of setting linear regime values
#OPT    +=  -DGDE_DEBUG                    #debug mode for GDE

#---------------------------------------- nonequilibrium proimodal chemisitry
#OPT	+=  -DNONEQUILIBRIUM
#OPT	+=  -DCHEMISTRY
#OPT	+=  -DCMB
#OPT	+=  -DRADIATION


#---------------------------------------- Cosmic Rays (Martin)
#OPT	+=  -DCOSMIC_RAYS               # Cosmic Rays Master Switch
#OPT    +=  -DNUMCRPOP=5                # Number of CR populations: Max is 6
#OPT	+=  -DCR_IC                     # IC files contain CR information
#OPT	+=  -DCR_IC_PHYSICAL
#OPT	+=  -DCR_DISSIPATION            # Catastrophic losses
#OPT	+=  -DCR_THERMALIZATION         # Coulomb cooling
#OPT	+=  -DCR_SHOCK=2                # Shock energy is directed into CR
			                # 2 = Mach-Number dependent shocks, Mach-number derived for thermal gas/CR composite
			                # 3 = Mach-Number dependent shocks, Mach-number derived for thermal gas
#OPT	+=  -DCR_DIFFUSION              # Cosmic Ray diffusion
#OPT	+=  -DCR_DIFFUSION_GREEN        # alternative diffusion model
#OPT	+=  -DUPDATE_PARANOIA=1         # 1 = Update on every predict, 2 = Update on every energy injection and on every predict
#OPT	+=  -DCR_OUTPUT_INJECTION       # Output energy injection rate in snapshots
#OPT	+=  -DCR_NO_CHANGE              # Compute changes to CR, but do not execute them, useful for estimating the size of effects
#OPT	+=  -DCOSMIC_RAY_TEST           # starts a test routine instead of the simulation
#OPT	+=  -DCR_NOPRESSURE             # computes CRs as usual, but ignores the pressure in the dynamics
#OPT	+=  -DCR_SN_INJECTION           # switches on CRs due to SNe 
#OPT	+=  -DCR_BUBBLES                # CRs in the AGN bubbles
#OPT    +=  -DCR_OUTPUT_TIMESCALES      # returns output from CR_ThermalizationTime and CR_DissipationTime
#OPT    +=  -DCR_OUTPUT_THERMO_VARIABLES # returns output from CR_P0, CR_E0, and CR_n0

#---------------------------------------- Mach number finder (Christoph)
#OPT	+=  -DMACHNUM                   # Mach number Master Switch
#OPT	+=  -DMACHSTATISTIC             # Dissipated thermal energy at shocks
#OPT	+=  -DCR_OUTPUT_JUMP_CONDITIONS # CR: density and thermal energy jump at shocks
#OPT	+=  -DOUTPUT_PRESHOCK_CSND	# Output pre-shock sound speed and pre-shock physical density

#--------------------------------------- Cecilia 's model
#OPT	+=  -DCS_MODEL      
#OPT	+=  -DCS_FEEDBACK
#OPT	+=  -DCS_SNI
#OPT	+=  -DCS_SNII
#OPT	+=  -DCS_ENRICH
#OPT	+=  -DCS_TESTS

#--------------------------------------- Voronoi based SPH
#OPT	+=  -DVORONOI
#OPT 	+=  -DEXTENDED_GHOST_SEARCH           # This extends the ghost search to the full 3x3 domain instead of the principal domain
#OPT 	+=  -DALTERNATIVE_GHOST_SEARCH        # This switches on the "old" routines that find the ghost neighbours
#OPT	+=  -DVORONOI_MESHOUTPUT
#OPT	+=  -DGAMMA=5.0/3.0
#OPT 	+=  -DVORONOI_SHAPESCHEME
#OPT	+=  -DVORONOI_MESHRELAX
#OPT	+=  -DVORONOI_MESHRELAX_KEEPRESSURE
#OPT	+=  -DMESHRELAX_DENSITY_IN_INPUT
#OPT	+=  -DVORONOI_TIME_DEP_ART_VISC
#OPT	+=  -DVORONOI_CFL_COND
#OPT	+=  -DVORONOI_BALSARA
#OPT	+=  -DVORONOI_RELAX_VIA_VISC
#OPT	+=  -DVORONOI_CENTERING
#OPT	+=  -DGRAVITY_CENTROID
#OPT	+=  -DGRAVITY_NOT_PERIODIC

#--------------------------------------- degenerate equation of state
#OPT	+=  -DEOS_DEGENERATE
#OPT	+=  -DEOS_COULOMB_CORRECTIONS
#OPT	+=  -DEOS_NSPECIES=3
#OPT	+=  -DWAKEUP=4.1           /* allows 2 timestep bins within kernel */
#OPT	+=  -DRELAXOBJECT

#--------------------------------------- nuclear network
#OPT +=  -DNUCLEAR_NETWORK
#OPT +=  -DFIXED_TEMPERATURE
#OPT +=  -DNEGLECT_DTDY_TERMS
#OPT +=  -DNETWORK_OUTPUT
#OPT +=  -DNETWORK_OUTPUT_BINARY


#--------------------------------------- Luca's model

#OPT  += -DLT_METAL_COOLING           # METAL COOLING option
#OPT  += -DLT_METALCOOLING_on_SMOOTH_Z
#OPT  += -DLT_DAMP_METALCOOLING=5.1

#OPT  += -DLT_SMOOTH_Z
#OPT  += -DLT_SMOOTHZ_DETAILS
#OPT  += -DLT_SMOOTH_SIZE
#OPT  += -DLT_SMOOTH_NGB
#OPT  += -DLT_MEAN_Z_ESTIMATE

#OPT  += -DLT_SMOOTHZ_IN_IMF_SWITCH

#OPT  += -DLT_SMOOTH_XCLD

#....................................

#OPT  += -DLT_STARBURSTS

#....................................# STELLAR EVOLUTION options
#OPT  += -DLT_STELLAREVOLUTION        # enable stellar evolution
#OPT  += -DLT_NMet=9                  # number of species

#OPT  += -DLT_SNII                    # enable snII
#OPT  += -DLT_SNIa                    # enable SnIa
#OPT  += -DLT_AGB                     # enable low mass stars

#OPT  += -DLT_PM_LIFETIMES            # use Padovani&matteucci 1993 lifetimes
#OPT  += -DLT_MM_LIFETIMES           # use Maeder&Menet 1989 lifetimes

#OPT  +=  LT_STOCHASTIC_IRA

#OPT  += -DLT_LOCAL_IRA
#OPT  += -DLT_AVOID_SELFENRICHMENT
#OPT  += -DLT_AVOID_ENRICH_SFGAS

#OPT  += -DLT_TEMP_THRESH_FOR_MULTIPHASE

#OPT  += -DLT_WIND_VELOCITY=500.0   # set the winds' velocity in km/s
#OPT  += -DLT_HYDROWINDS
#OPT  += -DLT_DECOUPLE_POSTWINDS_FROM_SF

#OPT  += -DLT_EJECTA_IN_HOTPHASE
#OPT  += -DLT_SNegy_IN_HOTPHASE
#OPT  += -DLT_HOT_EJECTA
#OPT  += -DLT_HOT_WINDS

#OPT  += -DLT_CharT                  # extra conditions on SF:
#                                      #  cooling time < sound cross time
#                                      #  ffall time < sound cross time

#.....................................# Other physics options
#OPT  += -DLT_WINDS_EXT               # EXTRA WINDS options
#OPT  += -DLT_WINDS_EXT_NOSF_BRANCH
#OPT  += -DLT_TRACK_WINDS

#OPT  += -DLT_USE_TOP_HAT_WEIGHT
#OPT  += -DLT_USE_TOP_HAT_WEIGHT_STRICT
#OPT  += -DLT_USE_SOLIDANGLE_WEIGHT

#OPT  += -DLT_DONTUSE_DENSITY_in_WEIGHT

#.....................................#

#OPT   += -DLT_ZAGE
#OPT   += -DLT_ZAGE_LLV

#.....................................# logging/debug options
#OPT  += -DLT_SEv_INFO                 # infos about enrichment
#OPT  += -DLT_SEv_INFO_DETAILS_onSPREAD
#OPT  += -DLT_SEv_INFO_DETAILS
#OPT  += -DLT_EXTEGY_INFO              # infos about energy
#OPT  += -DLT_CharT_INFO               # infos about cooling time,
#                                       #  sound crossing time,
#                                       #  free fall time
#OPT  += -DLT_SEvDbg
#OPT  += -DLT_TRACK_CONTRIBUTES
#OPT  += -DLT_Nbits=8
#OPT  += -DLT_power10_Nbits=2
#.....................................#
#OPT  += -DLT_COST_SE                 # account for cost of Sn in
#                                       #  domain dec.

#---------------------------------------------

#OPT   +=  -DUM_CHEMISTRY        #<<<<<<< enable met/HD non-eq. chemistry

#OPT   +=  -DUM_METAL_COOLING    #<<<<<<< enable met cooling only
#OPT   +=  -DUM_H_MET_IMPACTS
#OPT   +=  -DUM_e_MET_IMPACTS
#OPT   +=  -DUM_ENABLE_CII_COOLING
#OPT   +=  -DUM_ENABLE_SiII_COOLING
#OPT   +=  -DUM_ENABLE_OI_COOLING
#OPT   +=  -DUM_ENABLE_FeII_COOLING
#OPT   +=  -DUM_WIND_DELAYTIME
#OPT   +=  -DUM_CONTINUE
#OPT   +=  -DUM_CUT_MOLECULES

#NB:
# switch off UM_CHEMISTRY (for non-eq cooling) and use
# UM_METAL_COOLING + UM_MET_IN_LT_COOLING if you want to include low T met. cooling in Luca's  part only and neglect the non-eq options.

#OPT   +=  -DUM_MET_NONEQ_CORRECTIONS
#OPT   +=  -DUM_MET_IN_NONEQ_COOLING
#OPT   +=  -DUM_MET_IN_LT_COOLING
#OPT   +=  -DUM_HD_COOLING
#OPT   +=  -DUM_NEW_RATES
#OPT   +=  -DUM_NEW_RATES_HG97
#OPT   +=  -DUM_CHEMISTRY_INISET  ## Use this with UM_READ_METALS_FROM_IC off

##Some other possibilities to initialize the metals..
#OPT   +=  -DUM_READ_METALS_FROM_IC
#OPT   +=  -DUM_CHECK
#
#	UM_CHEMISTRY: is the main opt; 
#	enables um_chemistry when CHEMISTRY is not defined
#	UM_METAL_COOLING:
#	enables low T metal cooling in cooling.c/um_metal_cooling.c
#	(use with && UM_MET/NONEQ_LT_COOLING and/or UM_MET_IN_NONEQ_COOLING)
#	UM_H_MET_IMPACTS:
#	enables line cooling due to H-impact excitations with metals.
#	UM_e_MET_IMPACTS:
#	enables line cooling due to e-impact excitations with metals.
#	Enable different kind of cooling with:
#            UM_ENABLE_CII_COOLING
#            UM_ENABLE_SiII_COOLING
#            UM_ENABLE_OI_COOLING
#            UM_ENABLE_FeII_COOLING
# 	UM_MET_IN_LT_COOLING:
#	adds low T metal cooling fct in cooling.c
#       UM_MET_IN_NONEQ_COOLING:
# 	adds low T metal cooling in um_chemistry_noneq.c
#       UM_MET_NONEQ_CORRECTIONS:
#	performs corrections in the non-equilibrium stuff
#	when coupled with metals (UM_MET_IN_NONEQ_COOLING + LT_METAL_COOLING)
#	UM_HD_COOLING
#	enable HD cooling
#	UM_H2plus_COOLING
#	enable H2+ cooling
#	UM_NEW_RATES
#	updated rates
#	UM_NEW_RATES_HG97
#	enable Hui&Gnedin case B recombination rates (for high density gas)
#	UM_CHEMISTRY_SETIN
#	set up chemical composition when specified in the parameter file
#	UM_CHECK:
#	just to make some check on the run

#--------------------------------------- TG's options
#OPT	+=  -DCHEMCOOL

#OPT	+=  -DEND_TIME_DYN_BASED

#OPT	+=  -DSNAP_SET_TG
#OPT	+=  -DNSTEPS_BASED_SNAPS
#OPT	+=  -DDENSITY_BASED_SNAPS
#OPT	+=  -DDYN_TIME_BASED_SNAPS


#--------------------------------------- Select target Computer

#SYSTYPE="OpenSuse"
#SYSTYPE="OpenSuse64"
#SYSTYPE="Genius"
#SYSTYPE="Solaris_amd64"
#SYSTYPE="HLRB2"
#SYSTYPE="SUNNYVALE"
#SYSTYPE="McKenzie"
#SYSTYPE="CITA"
#SYSTYPE="Stella"
#SYSTYPE="Sauron"
#SYSTYPE="Sauron-gcc"
#SYSTYPE="Mako"
#SYSTYPE="MPA"
#SYSTYPE="Regatta"
#SYSTYPE="VIP"
#SYSTYPE="CINECA32"
#SYSTYPE="CINECA64"
#SYSTYPE="DEI32"
#SYSTYPE="Ingeld_LinuxCluster"
#SYSTYPE="Zijl"
#SYSTYPE="hpcf"
#SYSTYPE="opus"
#SYSTYPE="OpteronMPA-Gnu"
#SYSTYPE="OpteronMPA-Intel"

# module load mvapich2-1.2-sdr-intel/11.0
#SYSTYPE="OPA-Cluster64-Intel"

# module load mvapich2-1.2-sdr-gnu/4.1.2
#SYSTYPE="OPA-Cluster64-Gnu"
SYSTYPE="Cori_intel"
#SYSTYPE="Kraken"
#SYSTYPE="Kraken_FFTW3"
#SYSTYPE="Hopper"
#SYSTYPE="Carver"


CC       = mpicc        # sets the C-compiler (default)

FC 	 = mpif90

OPTIMIZE = -Wall  -g   # optimization and warning flags (default)

MPICHLIB = -lmpich

ifeq (SOFTDOUBLEDOUBLE,$(findstring SOFTDOUBLEDOUBLE,$(OPT)))
CC       =   mpiCC     # default C++ compiler
OPTIMIZE =   -g 
OPT     +=  -DX86FIX   # only needed for 32-bit intel/amd systems
endif

ifeq (VORONOI,$(findstring VORONOI,$(OPT)))
GMPLIB   =  -lgmp
endif


ifeq ($(SYSTYPE),"Cori_intel")
CC       =  mpiicc
OPTIMIZE =  -O3 -Wall
GSL_INCL =  -I/usr/common/software/gsl/1.16/intel/include
GSL_LIBS =  -L/usr/common/software/gsl/1.16/intel/lib -Wl,-rpath,/usr/common/software/gsl/1.16/intel/lib
FFTW_INCL=  -I/opt/cray/fftw/2.1.5.9/include
FFTW_LIBS=  -L/opt/cray/fftw/2.1.5.9/lib -Wl,-rpath,/opt/cray/fftw/2.1.5.9/lib
MPICHLIB =
HDF5INCL =
HDF5LIB  =
endif


ifeq ($(SYSTYPE),"Solaris_amd64")
CC       = /opt/SUNWhpc/bin/mpicc
OPTIMIZE = -xO4 -xchip=native -xarch=amd64a
#OPTIMIZE =   -g -xarch=amd64a
GSL_INCL = $(GSL64INCL)
GSL_LIBS = $(GSL64LIB)
FFTW_INCL= $(FFTW64INCL)
FFTW_LIBS= $(FFTW64LIB)
FFTW_LIB = $(FFTW_LIBS) -ldrfftw_mpi -ldfftw_mpi -ldrfftw -ldfftw
R_PATH   = $(R64LIB)
CFLAGS   = $(OPTIONS) $(GSL_INCL) $(FFTW_INCL)  $(GSL_LIBS)
HDF5INCL =
HDF5LIB  =
LIBS     =   -lm  $(GSL_LIBS) -lgsl -lgslcblas $(FFTW_LIB) $(R64LIB)
endif


ifeq ($(SYSTYPE),"HLRB2")
CC       =  icc   # sets the C-compiler
OPTIMIZE =  -g -O3 -ipo  -mtune=itanium2 -mcpu=itanium2 -mp
GSL_INCL = -I/home/hlrb2/h1091/h1091aa/Libs/include
GSL_LIBS = -L/home/hlrb2/h1091/h1091aa/Libs/lib -Xlinker -R -Xlinker /home/hlrb2/h1091/h1091aa/Libs/lib
FFTW_INCL= -I/home/hlrb2/h1091/h1091aa/Libs/include
FFTW_LIBS= -L/home/hlrb2/h1091/h1091aa/Libs/lib -Xlinker -R -Xlinker /home/hlrb2/h1091/h1091aa/Libs/lib
MPICHLIB = -lmpi
HDF5INCL = 
HDF5LIB  = 
endif

ifeq ($(SYSTYPE),"OpenSuse")
CC       =  mpicc
OPTIMIZE =  
GSL_INCL =  
GSL_LIBS =  
FFTW_INCL=  
FFTW_LIBS=
MPICHLIB = -L/usr/lib/mpi/gcc/openmpi/lib -Xlinker -R -Xlinker /usr/lib/mpi/gcc/openmpi/lib -lmpi 
HDF5INCL =
HDF5LIB  =
endif


ifeq ($(SYSTYPE),"OpenSuse64")
CC       =  mpicc
OPTIMIZE =  
GSL_INCL =  
GSL_LIBS =  
FFTW_INCL=  
FFTW_LIBS=  
MPICHLIB = -L/usr/lib64/mpi/gcc/openmpi/lib64 -Xlinker -R -Xlinker /usr/lib64/mpi/gcc/openmpi/lib64 -lmpi 
HDF5INCL =
HDF5LIB  =
endif


ifeq ($(SYSTYPE),"SUNNYVALE")
CC       =  mpicc   # sets the C-compiler
OPTIMIZE =  -g -O3 #-Wall
GSL_INCL = -I/usr/include
GSL_LIBS = -L/usr/lib64
FFTW_INCL= -I${MCKENZIE_FFTW_INC_PATH}
FFTW_LIBS= -L${MCKENZIE_FFTW_LIB_PATH}
MPICHLIB =  -L/opt/lam-7.1.2-intel/lib -lmpi
HDF5INCL = -I${MCKENZIE_HDF_INC_PATH}
HDF5LIB  = -L${MCKENZIE_HDF_LIB_PATH} -lhdf5 -lz
endif

ifeq ($(SYSTYPE),"McKenzie")
CC       =  mpicc   # sets the C-compiler
OPTIMIZE =  -g -O3 #-Wall
GSL_INCL = -I/usr/include
GSL_LIBS = -L/usr/lib
FFTW_INCL= -I/opt/fftw/intel_8.1/2.1.5/include
FFTW_LIBS= -L/opt/fftw/intel_8.1/2.1.5/lib #-ldrfftw_mpi
MPICHLIB = -L/opt/lam-7.1.2b24-g77/lib -lmpi
HDF5INCL = -I/opt/hdf5-oscar-1.6.4/include
HDF5LIB  = -L/opt/hdf5-oscar-1.6.4/lib -lhdf5 -lz
endif

ifeq ($(SYSTYPE),"CITA")
CC       =  mpicc
OPTIMIZE =  -O3 -Wall
GSL_INCL =  -I/usr/include/gsl
GSL_LIBS =  -L/usr/lib/libgsl
FFTW_INCL=  -I/opt/fftw-2.1.5/include
FFTW_LIBS=  -L/opt/fftw-2.1.5/lib
MPICHLIB =  -L/usr/lib/libmpi
HDF5INCL =  -I/usr/include
HDF5LIB  =  -L/usr/lib/libhdf5 -static -lhdf5 -lz
endif 



ifeq ($(SYSTYPE),"Stella")
CC       =  mpicc
OPTIMIZE =  -O3 -Wall
GSL_INCL =  -I/home/schaye/libs/include
GSL_LIBS =  -L/home/schaye/libs/lib -static
FFTW_INCL=  -I/home/schaye/libs/include
FFTW_LIBS=  -L/home/schaye/libs/lib
MPICHLIB =
HDF5INCL =
HDF5LIB  =
OPT      +=  -DNOCALLSOFSYSTEM
endif




ifeq ($(SYSTYPE),"OPA-Cluster64-Intel")  # module load mvapich2-1.2-sdr-intel/11.0
CC       =   mpicc
ifeq (SOFTDOUBLEDOUBLE,$(findstring SOFTDOUBLEDOUBLE,$(OPT))) 
CC       =   mpicxx
endif
OPTIMIZE =  -O3 -g -Wall -m64
GSL_INCL =  -I/afs/rzg/home/v/vrs/Libs/opteron64/mvapich2-1.2-sdr-intel-11.0/include
GSL_LIBS =  -L/afs/rzg/home/v/vrs/Libs/opteron64/mvapich2-1.2-sdr-intel-11.0/lib  -Xlinker -R -Xlinker /afs/rzg/home/v/vrs/Libs/opteron64/mvapich2-1.2-sdr-intel-11.0/lib
FFTW_INCL=  -I/afs/rzg/home/v/vrs/Libs/opteron64/mvapich2-1.2-sdr-intel-11.0/include
FFTW_LIBS=  -L/afs/rzg/home/v/vrs/Libs/opteron64/mvapich2-1.2-sdr-intel-11.0/lib
MPICHLIB =
HDF5INCL =  -I/afs/rzg/home/v/vrs/Libs/opteron64/mvapich2-1.2-sdr-intel-11.0/include
HDF5LIB  =  -L/afs/rzg/home/v/vrs/Libs/opteron64/mvapich2-1.2-sdr-intel-11.0/lib  -lhdf5 -lz 
OPT      +=  -DNOCALLSOFSYSTEM
endif


ifeq ($(SYSTYPE),"OPA-Cluster64-Gnu")  # module load mvapich2-1.2-sdr-gnu/4.1.2
CC       =   mpicc
ifeq (SOFTDOUBLEDOUBLE,$(findstring SOFTDOUBLEDOUBLE,$(OPT))) 
CC       =   mpicxx
endif
OPT	 += -DRANGER
FOPT	 += -DRANGER
OPTIMIZE =  -O3 -g -Wall -m64
GSL_INCL =  -I/afs/rzg/home/v/vrs/Libs/opteron64/mvapich2-1.2-sdr-gnu-4.1.2/include
GSL_LIBS =  -L/afs/rzg/home/v/vrs/Libs/opteron64/mvapich2-1.2-sdr-gnu-4.1.2/lib  -Xlinker -R -Xlinker /afs/rzg/home/v/vrs/Libs/opteron64/mvapich2-1.2-sdr-gnu-4.1.2/lib
FFTW_INCL=  -I/afs/rzg/home/v/vrs/Libs/opteron64/mvapich2-1.2-sdr-gnu-4.1.2/include
FFTW_LIBS=  -L/afs/rzg/home/v/vrs/Libs/opteron64/mvapich2-1.2-sdr-gnu-4.1.2/lib
MPICHLIB =
HDF5INCL =  -I/afs/rzg/home/v/vrs/Libs/opteron64/mvapich2-1.2-sdr-gnu-4.1.2/include
HDF5LIB  =  -L/afs/rzg/home/v/vrs/Libs/opteron64/mvapich2-1.2-sdr-gnu-4.1.2/lib  -lhdf5 -lz 
OPT      +=  -DNOCALLSOFSYSTEM
endif




ifeq ($(SYSTYPE),"opus")
CC       =   mpicc
ifeq (SOFTDOUBLEDOUBLE,$(findstring SOFTDOUBLEDOUBLE,$(OPT))) 
CC       =   mpicxx
endif
OPTIMIZE =  -O3 -g -Wall -m64
GSL_INCL =  -I/snfs1/cgwork/dgad0043/include
GSL_LIBS =  -L/snfs1/cgwork/dgad0043/lib
FFTW_INCL=  -I/snfs1/cgwork/dgad0043/include
FFTW_LIBS=  -L/snfs1/cgwork/dgad0043/lib
MPICHLIB =
HDF5INCL =  
HDF5LIB  =  
OPT      +=  -DNOCALLSOFSYSTEM
endif


ifeq ($(SYSTYPE),"Sauron-gcc")
CC       =   mpicc.gcc   # sets the C-compiler
OPTIMIZE =   -O3 -funroll-loops -march=k8 -msse2 -static
GSL_INCL =   -I/usr/local/gsl.gcc/include
GSL_LIBS =   -L/usr/local/gsl.gcc/lib -static -lgsl -lgslcblas
FFTW_INCL=   -I/usr/local/fftw.gcc/include
FFTW_LIBS=   -L/usr/local/fftw.gcc/lib -static -lrfftw_mpi -lfftw_mpi -lrfftw -lfftw
MPICHLIB =
endif


ifeq ($(SYSTYPE),"Sauron")
CC       =  mpicc  -m64 # sets the C-compiler
ifeq (SOFTDOUBLEDOUBLE,$(findstring SOFTDOUBLEDOUBLE,$(OPT)))
CC       =  mpiCC  -m64
endif
OPTIMIZE =   -g
GSL_INCL =
GSL_LIBS =
FFTW_INCL=
FFTW_LIBS=
MPICHLIB =
endif


ifeq ($(SYSTYPE),"OpteronMPA-Intel")
CC       =  /usr/local/appl/openmpi-intel/bin/mpicc  -m64 # sets the C-compiler
ifeq (SOFTDOUBLEDOUBLE,$(findstring SOFTDOUBLEDOUBLE,$(OPT)))
CC       =  /usr/local/appl/openmpi-intel/bin/mpiCC  -m64
endif
OPTIMIZE =   -O3 -Wall
FFTW_INCL=  -I/afs/mpa/home/volker/Libs/include
FFTW_LIBS=  -L/afs/mpa/home/volker/Libs/lib -Xlinker -R -Xlinker /afs/mpa/home/volker/Libs/lib
MPICHLIB =
HDF5INCL =  -I/afs/mpa/home/volker/Libs/include
HDF5LIB  =  -L/afs/mpa/home/volker/Libs/lib -Xlinker -R -Xlinker /afs/mpa/home/volker/Libs/lib -lhdf5 -lz
endif

ifeq ($(SYSTYPE),"OpteronMPA-Gnu")
CC       =  /usr/local/appl/openmpi-gnu/bin/mpicc  -m64 # sets the C-compiler
ifeq (SOFTDOUBLEDOUBLE,$(findstring SOFTDOUBLEDOUBLE,$(OPT)))
CC       =  /usr/local/appl/openmpi-gnu/bin/mpiCC  -m64
endif
OPTIMIZE =   -O3 -Wall
GSL_INCL =  
GSL_LIBS =  
FFTW_INCL=  -I/afs/mpa/home/volker/Libs/include
FFTW_LIBS=  -L/afs/mpa/home/volker/Libs/lib -Xlinker -R -Xlinker /afs/mpa/home/volker/Libs/lib
MPICHLIB =
HDF5INCL =  -I/afs/mpa/home/volker/Libs/include
HDF5LIB  =  -L/afs/mpa/home/volker/Libs/lib -Xlinker -R -Xlinker /afs/mpa/home/volker/Libs/lib -lhdf5 -lz
endif


ifeq ($(SYSTYPE),"MPA")
CC       =  mpicc   # sets the C-compiler
ifeq (SOFTDOUBLEDOUBLE,$(findstring SOFTDOUBLEDOUBLE,$(OPT)))
CC       =  mpiCC
OPT     +=  -DX86FIX
endif
OPTIMIZE =   -g -Wall 
# GSL_INCL =  -I/usr/common/pdsoft/include
# GSL_LIBS =  -L/usr/common/pdsoft/lib
GSL_INCL =  -I/afs/mpa/home/volker/Libs/include
GSL_LIBS =  -L/afs/mpa/home/volker/Libs/lib
FFTW_INCL=  -I/afs/mpa/home/volker/Libs/include
FFTW_LIBS=  -L/afs/mpa/home/volker/Libs/lib -Xlinker -R -Xlinker /afs/mpa/home/volker/Libs/lib
MPICHLIB =
HDF5INCL =  -I/afs/mpa/home/volker/Libs/include
HDF5LIB  =  -L/afs/mpa/home/volker/Libs/lib -lhdf5 -lz 
endif


ifeq ($(SYSTYPE),"Mako")
CC       =  mpicc   # sets the C-compiler
ifeq (SOFTDOUBLEDOUBLE,$(findstring SOFTDOUBLEDOUBLE,$(OPT)))
CC       =  mpiCC
OPT     +=  -DX86FIX
endif
OPTIMIZE =   -O3 -march=athlon-mp  -mfpmath=sse
GSL_INCL =
GSL_LIBS =
FFTW_INCL=
FFTW_LIBS=
MPICHLIB =
endif


ifeq ($(SYSTYPE),"Regatta")
CC       =  mpcc_r -g # -qflttrap=enable:zerodivide:nanq # sets the C-compiler
ifeq (FLTROUNDOFFREDUCTION,$(findstring FLTROUNDOFFREDUCTION,$(OPT)))
CC       =  mpcc_r  -qldbl128 -lC128_r  # sets the C-compiler
#            (this compiler has native support for 128bit long double, SOFTDOUBLEDOUBLE not needed)
endif
OPTIMIZE =  -qstrict -q64 -qcpluscmt  #-O3 -qipa
GSL_INCL = -I/afs/rzg/u/vrs/gsl_psi64/include
GSL_LIBS = -L/afs/rzg/u/vrs/gsl_psi64/lib
FFTW_INCL= -I/afs/rzg/u/vrs/fftw_psi64/include
FFTW_LIBS= -L/afs/rzg/u/vrs/fftw_psi64/lib  -q64 # -qipa
MPICHLIB =
HDF5INCL = -I/afs/rzg/u/vrs/hdf5_psi64/include
HDF5LIB  = -L/afs/rzg/u/vrs/hdf5_psi64/lib  -lhdf5 -lz
endif


ifeq ($(SYSTYPE),"VIP")
CC       =  mpcc_r -g -qcpluscmt # -qflttrap=enable:zerodivide:nanq # sets the C-compiler
FC	 =  mpxlf_r
ifeq (FLTROUNDOFFREDUCTION,$(findstring FLTROUNDOFFREDUCTION,$(OPT)))
CC       =  mpcc_r  -qldbl128 -lC128_r  -qcpluscmt # sets the C-compiler
#            (this compiler has native support for 128bit long double, SOFTDOUBLEDOUBLE n\
ot needed)
endif
OPT	 += -DVIP
FOPT	 += -WF,-DVIP
OPTIMIZE =  -q64 -O3 -qarch=auto -qtune=auto -qinline -qstrict -qcpluscmt -qipa # -qhot -qipa=level=2 -qfloat=hdflt
GSL_INCL = -I/afs/rzg/u/kud/include
GSL_LIBS = -L/afs/rzg/u/kud/lib -bstackpsize:64k -bdatapsize:64k -btextpsize:64k
FFTW_INCL= -I/afs/rzg/u/kud/include
FFTW_LIBS= -L/afs/rzg/u/kud/lib
MPICHLIB =
HDF5INCL =
HDF5LIB  =
OPT     +=   -DPOWER6 -DALT_QSORT -DPAD_STRUCTURES
endif


ifeq ($(SYSTYPE),"CINECA32")
CC       =  mpcc_r   # sets the C-compiler
OPTIMIZE =  -O5 -qstrict -qipa -bmaxdata:500000000
GSL_INCL = -I/sfs/sanfs/home/userinaf/inapd006/include
GSL_LIBS = -L/sfs/sanfs/home/userinaf/inapd006/lib32
FFTW_INCL= -I/sfs/sanfs/home/userinaf/inapd006/include
FFTW_LIBS= -L/sfs/sanfs/home/userinaf/inapd006/lib32 -bmaxdata:500000000 -qipa
MPICHLIB =
endif

ifeq ($(SYSTYPE),"CINECA64")
CC       =   mpcc_r   # sets the C-compiler
OPTIMIZE =   -O5 -qstrict -qipa -q64
GSL_INCL = -I/sfs/sanfs/home/userinaf/inats004/include
GSL_LIBS = -L/sfs/sanfs/home/userinaf/inats004/lib
FFTW_INCL= -I/sfs/sanfs/home/userinaf/inats004/include
FFTW_LIBS= -L/sfs/sanfs/home/userinaf/inats004/lib -q64 -qipa
MPICHLIB =
endif


ifeq ($(SYSTYPE),"DEI32")
CC       =  mpcc   # sets the C-compiler
OPTIMIZE =  -O3 -qarch=pwr3 -qtune=pwr3 -qstrict -bmaxdata:1000000000
GSL_INCL = -I/home/kdolag/include
GSL_LIBS = -L/home/kdolag/lib
FFTW_INCL= -I/home/kdolag/include
FFTW_LIBS= -L/home/kdolag/lib -bmaxdata:1000000000
MPICHLIB =
endif


ifeq ($(SYSTYPE),"Ingeld_LinuxCluster")
CC       =   mpicc  # sets the C-compiler
OPTIMIZE =   -O3 -Wall

GSL_INCL = -I/home/patricia/my-gsl/include
GSL_LIBS = -L/home/patricia/my-gsl/lib -static
FFTW_INCL= -I/home/patricia/my-fftw/include
FFTW_LIBS= -L/home/patricia/my-fftw/lib
endif

ifeq ($(SYSTYPE),"hpcf")
CC       =   mpicc  # sets the C-compiler
OPT     +=  -DFIX_PATHSCALE_MPI_STATUS_IGNORE_BUG
OPTIMIZE =  -O3
GSL_INCL = -I/home/gadget/Libs/include
GSL_LIBS = -L/home/gadget/Libs/lib
FFTW_INCL= -I/home/gadget/Libs/include
FFTW_LIBS= -L/home/gadget/Libs/lib
endif


ifeq ($(SYSTYPE),"Warp")
CC       =   /opt/intel/impi/3.1/bin64/mpiicc
OPTIMIZE =  -xW
GSL_INCL = -I/opt/gsl/impi/include/gsl
GSL_LIBS = -L/opt/gsl/impi/lib64 -Wl,-rpath,/opt/gsl/impi/lib64
FFTW_INCL= -I/opt/fftw/impi_intel-3.1/include
FFTW_LIBS= -L/opt/fftw/impi_intel-3.1/lib64 -Wl,-rpath,/opt/fftw/impi_intel-3.1/lib64
MPICHLIB = -L/opt/intel/impi/3.1/lib64 -Wl,-rpath,/opt/intel/impi/3.1/lib64
endif

ifeq ($(SYSTYPE),"Carver")
OPT     +=   -DNOCALLSOFSYSTEM
CC       =   mpicc # sets the C-compiler
OPTIMIZE =   -fast
GSL_INCL = -I/usr/common/usg/gsl/1.14/include
GSL_LIBS = -L/usr/common/usg/gsl/1.14/lib
FFTW_INCL=  -I/opt/fftw/2.1.5.3/include
FFTW_LIBS=  -L/opt/fftw/2.1.5.3/lib
MPICHLIB =
HDF5INCL =
HDF5LIB  =
endif


ifeq ($(SYSTYPE),"Hopper")
OPT     +=   -DNOCALLSOFSYSTEM
CC       =   cc # sets the C-compiler
OPTIMIZE =   -fast
GSL_INCL = -I/usr/common/usg/gsl/1.14/include
GSL_LIBS = -L/usr/common/usg/gsl/1.14/lib
FFTW_INCL=  -I/opt/fftw/2.1.5.3/include
FFTW_LIBS=  -L/opt/fftw/2.1.5.3/lib
MPICHLIB =
HDF5INCL =
HDF5LIB  =
endif


ifeq ($(SYSTYPE),"Kraken")
OPT     +=   -DNOCALLSOFSYSTEM
CC       =   cc # sets the C-compiler
OPTIMIZE =   -fast
#GSL_INCL =  -I/sw/xt5/gsl/1.11/cnl2.1_pgi7.2.3/include
#GSL_LIBS =   -L/sw/xt5/gsl/1.11/cnl2.1_pgi7.2.3/lib
#GSL_INCL = -I/sw/xt/gsl/1.14/cnl2.2_pgi10.4.0/include
#GSL_LIBS = -L/sw/xt/gsl/1.14/cnl2.2_pgi10.4.0/lib
GSL_INCL = -I/sw/xt/gsl/1.14/cnl2.2_pgi11.4.0/include
GSL_LIBS = -L/sw/xt/gsl/1.14/cnl2.2_pgi11.4.0/lib
FFTW_INCL=  -I/opt/fftw/2.1.5/cnos/include
FFTW_LIBS=  -L/opt/fftw/2.1.5/cnos/lib
MPICHLIB =
HDF5INCL =
HDF5LIB  =
endif

ifeq ($(SYSTYPE),"Kraken_FFTW3")
OPT     +=   -DNOCALLSOFSYSTEM
CC       =   cc # sets the C-compiler
OPTIMIZE =   -fast
GSL_INCL =  -I/sw/xt5/gsl/1.11/cnl2.1_pgi7.2.3/include
GSL_LIBS =   -L/sw/xt5/gsl/1.11/cnl2.1_pgi7.2.3/lib
FFTW_INCL=  -I/sw/xt/fftw/3.3_alpha/cnl2.2_pgi9.0.3/include
FFTW_LIBS=  -L/sw/xt/fftw/3.3_alpha/cnl2.2_pgi9.0.3/lib
MPICHLIB =
HDF5INCL =
HDF5LIB  =
endif



ifneq (HAVE_HDF5,$(findstring HAVE_HDF5,$(OPT)))
HDF5INCL =
HDF5LIB  =
endif

ifeq (CHEMCOOL,$(findstring CHEMCOOL,$(OPT)))
FOPT	+=  -WF,-DCHEMCOOL
OPT	+=  -DCHEMISTRYNETWORK=1
FOPT	+=  -WF,-DCHEMISTRYNETWORK=1
endif


OPTIONS = $(OPTIMIZE) $(OPT) -DCOMPILETIMESETTINGS=\""$(OPT)"\"

FOPTIONS = $(OPTIMIZE) $(FOPT)

EXEC   = P-Gadget3

OBJS  =  voronoi.o mpz_extension.o voronoi_density.o voronoi_force.o voronoi_2d.o voronoi_3d.o voronoi_exchange.o \
	 twopoint.o voronoi_meshrelax.o snIa_heating.o kspace_neutrinos.o \
	 cs_metals.o cs_sfr.o  cs_enrichment.o cs_findhotngbs.o cs_update_weights.o cs_ngbfind.o \
	 cosmic_rays_diffusion.o conduction.o fof.o subfind.o subfind_vars.o subfind_collective.o subfind_serial.o subfind_so.o subfind_cont.o \
	 subfind_distribute.o subfind_findlinkngb.o subfind_nearesttwo.o subfind_loctree.o subfind_alternative_collective.o subfind_reshuffle.o \
	 compare_partitions.o domain.o allvars.o main.o greenf_diffusion.o  \
	 subfind_potential.o subfind_density.o lineofsight.o kinfb_mhm.o sfr_mhm.o blackhole.o \
	 run.o predict.o begrun.o endrun.o global.o chemistry_noneq.o \
	 timestep.o init.o restart.o io.o sfr_eff.o checksummed_sendrecv.o \
	 accel.o read_ic.o read_ic_cluster.o cooling.o ngb.o parallel_sort.o second_order.o \
	 system.o allocate.o density.o bubbles.o sizelimited_sendrecv.o rt_bh_lum.o rt_sfr_lum.o rt_cooling.o \
	 gravtree.o hydra.o rt_eddington.o rt_n.o rt_CGmethod.o rt_stars_lum.o rt_gas_lum.o  driftfac.o darkenergy.o \
	 potential.o  forcetree.o  peano.o gravtree_forcetest.o parallel_sort_special.o \
	 pm_periodic.o pm_nonperiodic.o longrange.o mymalloc.o \
	 cosmic_rays.o machfinder.o b_from_rot_a.o smooth_simple.o \
         phasespace.o phasespace_math.o eos.o healpix.o \
         network.o network_solver.o voronoi_ghost_search_alternative.o voronoi_ghost_search.o \
	 lt_sn.o lt_io.o lt_utils.o lt_sfr.o \
	 um_chemistry_noneq.o um_metal_cooling.o \
	 ImfLib/libimf.o ImfLib/libimf_vars.o \
	 sinks.o \

INCL   = cs_metals.h allvars.h proto.h forcetree.h cooling.h domain.h  cosmic_rays.h chemistry.h \
	 machfinder.h subfind.h dd.h fof.h voronoi.h eos.h myqsort.h network.h network_solver.h chemcool_consts.h Makefile \

ifeq (CHEMCOOL,$(findstring CHEMCOOL,$(OPT)))

OBJS  += chemcool.o raytrace.o \

INCL  += chemcool_consts.h \

FOBJS = calc_photo.o calc_temp.o cheminmo.o compute_heating.o compute_md_kappa.o const_rates.o cool_func.o \
	cool_util.o coolinmo.o dvode.o evolve_abundances.o jac.o photoinit_lowZ.o \
	rate_eq_primordial.o spline.o validate_rates.o \

FINCL = cool.h fs_data.h mol_data.h non_eq.h shield_data.h Makefile \

else
FC    = $(CC)
endif


CFLAGS = $(OPTIONS) $(GSL_INCL) $(FFTW_INCL) $(HDF5INCL) 

ifeq (VIP,$(findstring VIP,$(OPT)))
FFLAGS = $(FOPTIONS)
else
FFLAGS = $(OPTIONS)
endif

ifeq (NOTYPEPREFIX_FFTW,$(findstring NOTYPEPREFIX_FFTW,$(OPT)))    # fftw installed with type prefix?
ifeq ($(SYSTYPE), "Kraken_FFTW3")
  FFTW_LIB = $(FFTW_LIBS) -lfftw3_mpi -lfftw3_threads -lfftw3
else
  FFTW_LIB = $(FFTW_LIBS) -lrfftw_mpi -lfftw_mpi -lrfftw -lfftw
endif
else
ifeq (DOUBLEPRECISION_FFTW,$(findstring DOUBLEPRECISION_FFTW,$(OPT)))
ifeq ($(SYSTYPE), "Kraken_FFTW3")
  FFTW_LIB = $(FFTW_LIBS) -lfftw3_mpi -lfftw3_threads -lfftw3
else
  FFTW_LIB = $(FFTW_LIBS) -ldrfftw_mpi -ldfftw_mpi -ldrfftw -ldfftw
endif
else
ifeq ($(SYSTYPE), "Kraken_FFTW3")
  FFTW_LIB = $(FFTW_LIBS) -lfftw3f_mpi -lfftw3f_threads -lfftw3f
else
  FFTW_LIB = $(FFTW_LIBS) -lsrfftw_mpi -lsfftw_mpi -lsrfftw -lsfftw
endif 
endif
endif



#ifeq (NOTYPEPREFIX_FFTW,$(findstring NOTYPEPREFIX_FFTW,$(OPT)))    # fftw installed with type prefix?
#  FFTW_LIB = $(FFTW_LIBS) -lrfftw_mpi -lfftw_mpi -lrfftw -lfftw
#else
#ifeq (DOUBLEPRECISION_FFTW,$(findstring DOUBLEPRECISION_FFTW,$(OPT)))
#  FFTW_LIB = $(FFTW_LIBS) -ldrfftw_mpi -ldfftw_mpi -ldrfftw -ldfftw
#else
#  FFTW_LIB = $(FFTW_LIBS) -lsrfftw_mpi -lsfftw_mpi -lsrfftw -lsfftw
#endif
#endif


LIBS   = -lm $(HDF5LIB) -g $(MPICHLIB) $(GSL_LIBS) -lgsl -lgslcblas $(FFTW_LIB)

ifeq (NUM_THREADS,$(findstring NUM_THREADS,$(OPT))) 
LIBS   +=  -lpthread
endif

LIBS   +=  $(GMPLIB)


$(EXEC): $(OBJS) $(FOBJS)
	$(FC) $(OPTIMIZE) $(OBJS) $(FOBJS) $(LIBS) $(RLIBS) -o $(EXEC)

$(OBJS): $(INCL)

$(FOBJS): $(FINCL)

clean:
	rm -f $(OBJS) $(FOBJS) $(EXEC)




###############################################################################
#
# at compile-time. From the list below, please activate/deactivate the
# options that apply to your run. If you modify any of these options,
# make sure that you recompile the whole code by typing "make clean;
# make".
#
# Main code options:
#
#     These affect the physical model that is simulated.
#
#     - PERIODIC:   Set this if you want to have periodic boundary conditions.
#     - COOLING:    This enables radiative cooling and heating. It also enables
#                   an external UV background which is read from a file.
#     - SFR:        This enables star formation using an effective multiphase
#                   models. This option requires cooling.
#     - METALS:     This model activates the tracking of enrichment in gas and
#                   stars. Note that metal-line cooling is not included yet.
#     - STELLARAGE: This stores the formation redshift of each star particle.
#     - WINDS:      This activates galactic winds. Requires star formation.
#     - ISOTROPICWINDS: This makes the wind isotropic. If not set the wind is
#                       spawned in an axial way. Requires winds to be activated.
#     - NOGRVITY:  This switches off gravity. Makes only sense for pure
#                   SPH simulations in non-expanding space.
#
# Options for SPH:
#
#     - NOFIXEDMASSINKERNEL:  If set, the number of SPH particles in the kernel
#                             is kept constant instead of the mass.
#     - NOGRADHSML:           If actived, an equation of motion without grad(h)
#                             terms is used.
#            Note: To have the default "entropy"-formulation of SPH (Springel &
#                  Hernquist), the switches NOFIXEDMASSINKERNEL and NOGRADHSML
#                  should *not* be set.
#     - NOVISCOSITYLIMITER:   If this is set, there is no explicit upper limit
#                             on the viscosity that tries to prevent particle
#                             'reflection' in case of poor timestepping.
#
# Numerical options:
#
#     - PMGRID:     This enables the TreePM method, i.e. the long-range force
#                   is computed with a PM-algoritthm, and the short range force
#                   with the tree. The parameter has to be set to the size of the
#                   mesh that should be used, (e.g. 64, 96, 128, etc). The mesh
#                   dimensions need not necessarily be a power of two.
#                   Note: If the simulation is not in a periodic box, then a FFT
#                   method for vacuum boundaries is employed, using a mesh with
#                   dimension twice that specified by PMGRID.
#     - PLACEHIGHRESREGION: If this option is set (will only work together
#                   with PMGRID), then the long range force is computed in two
#                   stages: One Fourier-grid is used to cover the whole simulation
#                   volume, allowing the computation of the large-scale force.
#                   A second Fourier mesh is placed on the region occupied by
#                   "high-resolution" particles, allowing the computation of an
#                   intermediate scale force. Finally, the force on very small
#                   scales is supplemented by the tree. This procedure can be useful
#                   for "zoom-simulations", where the majority of particles (the
#                   high-res particles) are occupying only a small fraction of the
#                   volume. To activate this option, the parameter needs to be set
#                   to an integer that encodes the particle types that represent the
#                   high-res particles in the form of a bit mask. For example, if
#                   types 0, 1, and 4 form the high-res particles, set the parameter
#                   to PLACEHIGHRESREGION=1+2+16. The spatial region covered by the
#                   high-res grid is determined automatically from the initial
#                   conditions. Note: If a periodic box is used, the high-res zone
#                   may not intersect the box boundaries.
#     - ENLARGEREGION: The spatial region covered by the high-res zone has a fixed
#                   size during the simulation, which initially is set to the
#                   smallest region that encompasses all high-res particles. Normally, the
#                   simulation will be interrupted, if high-res particles leave this
#                   region in the course of the run. However, by setting this parameter
#                   to a value larger than one, the high-res region can be expanded.
#                   For example, setting it to 1.4 will enlarge its side-length by
#                   40% (it remains centered on the high-res particles). Hence, with
#                   such a setting, the high-res region may expand or move by a
#                   limited amount. If in addition SYNCHRONIZATION is activated, then
#                   the code will be able to continue even if high-res particles
#                   leave the initial high-res grid. In this case, the code will
#                   update the size and position of the grid that is placed onto
#                   the high-resolution region automatically. To prevent that this
#                   potentially happens every single PM step, one should nevertheless
#                   assign a value slightly larger than 1 to ENLARGEREGION.
#     - DOUBLEPRECISION: This makes the code store and compute internal
#                        particle data in double precision. Note that output
#                        files are nevertheless written by converting to single
#                        precision.
#     - NOTREERND:       If this is not set, the tree construction will succeed
#                        even when there are a few particles at identical
#                        locations. This is done by `rerouting' particles once
#                        the node-size has fallen below 1.0e-3 of the softening
#                        length. When this option is activated, this will be
#                        surpressed and the tree construction will always fail
#                        if there are particles at extremely close coordinates.
#     - NOSTOP_WHEN_BELOW_MINTIMESTEP: If this is activated, the code will not
#                        terminate when the timestep falls below the value of
#                        MinSizeTimestep specified in the parameterfile. This
#                        is useful for runs where one wants to enforce a
#                        constant timestep for all particles. This can be done
#                        by activating this option, and by setting Min- and
#                        MaxSizeTimestep to an equal value.
#     - PSEUDOSYMMETRIC: When this option is set, the code will try to "anticipate"
#                        timestep changes by extrapolating the change of the
#                        acceleration into the future. This in general improves the
#                        long-term integration behaviour of periodic orbits.
#     - SYNCHRONIZATION: When this is set, particles may only increase their
#                        timestep if the new timestep will put them into
#                        synchronization with the higher time level. This typically
#                        means that only on half of the timesteps of a particle
#                        an increase of the step may occur.
#     - NOPMSTEPADJUSTMENT: When this is set, the long-range timestep for the
#                        PM force computation is always determined by MaxSizeTimeStep.
#                        Otherwise, it is set to the minimum of MaxSizeTimeStep and
#                        the timestep obtained for the maximum long-range force with
#                        an effective softening scale equal to the PM smoothing-scale.
# - LONG_X/Y/Z:
#     These options can be used together with PERIODIC and NOGRAVITY only.
#     When set, the options define numerical factors that can be used to
#     distorts the periodic simulation cube into a parallelepiped of
#     arbitrary aspect ratio. This can be useful for idealized SPH tests.
#
# - TWODIMS:
#     This effectively switches of one dimension in SPH, i.e. the code
#     follows only 2d hydrodynamics in the xy-, yz-, or xz-plane. This
#     only works with NOGRAVITY, and if all coordinates of the third
#     axis are exactly equal. Can be useful for idealized SPH tests.
#
# - SPH_BND_PARTICLES:
#     If this is set, particles with a particle-ID equal to zero do not
#     receive any SPH acceleration. This can be useful for idealized
#     SPH tests, where these particles represent fixed "walls".
#
#
# Architecture options:
#
#     - T3E:       The code assumes that sizeof(int)=4 holds. A few machines
#                  (like Cray T3E) have sizeof(int)=8. In this case, set the
#                  T3E flag.
#     - NOTYPEPREFIX_FFTW: If this is set, the fftw-header/libraries are accessed
#                  without type prefix (adopting whatever was chosen as default at compile
#                  of fftw). Otherwise, the type prefix 'd' for double is used.
#
# Input options:
#
#     - MOREPARAMS:  Activate this to allow a set of additional parameters in
#                    the parameterfile which control the star formation and
#                    feedback sector. This option must be activated when star
#                    formation is switched on.
#
# Output options:
#
#     - OUTPUTPOTENTIAL: This will force the code to compute gravitational
#                        potentials for all particles each time a snapshot file
#                        is generated. This values are then included in the
#                        snapshot file. Note that the computation of the
#                        values of the potential costs additional time.
#     - OUTPUTACCELERATION: This will include the physical acceleration of
#                        each particle in snapshot files.
#     - OUTPUTCHANGEOFENTROPY: This will include the rate of change of entropy
#                        of gas particles in snapshot files.
#     - OUTPUTTIMESTEP:  This will include an output of the timesteps actually
#                        taken by each particle.
#
# Miscellaneous options:
#
#     - PEANOHILBERT:    This is a tuning option. When set, the code will bring
#                        the particles after each domain decomposition into
#                        Peano-Hilbert order. This improves cache utilization
#                        and performance.
#     - WALLCLOCK:       If set, a wallclock timer is used by the code to
#                        measure internal time consumption (see cpu-log file).
#                        Otherwise a timer that measures consumed processor
#                        ticks is used.
#
# Debugging/testing options:
#
#     - FORCETEST:       This can be set to check the force accuracy of the
#                        code. The option needs to be set to a number between
#                        0 and 1 (e.g. 0.01), which is taken to specify a
#                        random fraction of particles for which at each
#                        timestep forces by direct summation are computed. The
#                        normal tree-forces and the "correct" direct summation
#                        forces are collected in a file. Note that the
#                        simulation itself is unaffected by this option, but it
#                        will of course run much(!) slower
#                        if FORCETEST*NumPart*NumPart >> NumPart. Note: Particle
#                        IDs must be set to numbers >=1 for this to work.
#
###############################################################################




# - FLTROUNDOFFREDUCTION     enables round off reduction in particle sums
#		             if DOUBLEPRECISION is set, these sums are done in 'long double'
#                            if single precision is used, they are done in 'double'
#                            This should in principle allow to make computations
#                            *exactly* invariant to different numbers of CPUs.
#
# - SOFTDOUBLEDOUBLE         when this is set, a software implementation of
#                            128bit double-double addition is used, implemented as a c++ class.
#                            Hence, this option requires compilation with a c++ compiler
#


#     - QUICK_LYALPHA:   This only works for cosmological simulations in periodic boxes
#                        with COOLING & SFR. (WINDS, METALS should be deselected).
#                        It will simply convert all gas particles above overdensity
#                        CritPhysOverdensity and with Temperature below 10^5 K to stars.
#                        This should still leave the Ly-Alpha forest largely unaffected,
#                        but should be faster. It is recommended to set GENERATIONS equal
#                        to 1 for maximum speed-up.
#
#     - TIDALTENSOR:     Calculates the tidal tensor for each particle. 

##################################################################################
#
#  Options for RT:
#
#  - RADTRANSFER        main switch; RT equation solved using the Jacobi iterative method
#
#  - CG                 RT equation solved with the Conjugate Gradient iterative method
#
#  - RADTRANSFER_FLUXLIMITER	intorduces a flux limiter, so that the Ifront speed does not exceed c
#
#  - RADTRANSFER_MODIFY_EDDINGTON_TENSOR	modifies the Eddingto tensor to the fully anisotropic version
#
#  - RT_PHOTOHEATING	includes photoheating
#
#  - RT_COOLING		includes cooling prcesses (only for tests)
#
#  - EDDINGTON_TENSOR_STARS	includes stars, but not sfr partices
#
#  - RT_COLLISIONAL_IONIZATION	includes collisional ionization
#
####################################################################################                 
#
#  Overview of options added for fine-grained phase-space analysis: (Mark)
#
#  * Static Logarithmic Potential with Core:
#   - STATICLP
#   - LP_V02
#   - LP_RC2
#   - LP_Q2
#   - LP_P2=1.0
#
#  * Static "Sikivie 1" potential for inner caustic study  (see Natarajan&Sikivie,2006)
#   - STATICSM
#   - SM_V02=100.0
#   - SM_a=0.285 
#
#  * Options for simplified halo formation process and related things
#   - SHELL_CODE=200 
#   - SIM_ADAPTIVE_SOFT     
#   - REINIT_AT_TURNAROUND=0.667  
#   - ANALYTIC_TURNAROUND
#   - NO_CENTER_ANNIHILATION    
#
#  * Things for special behaviour
#   - RADIAL_TREE
#
#  * Fine-grained phase space structure analysis 
#   - DISTORTIONTENSORPS        
#   - OUTPUT_DISTORTIONTENSORPS 
#   - OUTPUT_TIDALTENSORPS     
#   - CAUSTIC_FINDER=2+4+8+16+32 
#   - ANNIHILATION_RADIATION  
#   - OUTPUT_LAST_CAUSTIC  
####################################################################################