#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "ppport.h"

#ifndef aTHX_
#define aTHX_
#endif

#include <SDL.h>

MODULE = SDL::CDTrack 	PACKAGE = SDL::CDTrack    PREFIX = cdt_

Uint8
cdt_id( track )
	SDL_CDtrack *track
	CODE:
		RETVAL = track->id;
	OUTPUT:
		RETVAL

Uint8
cdt_type( track )
	SDL_CDtrack *track
	CODE:
		RETVAL = track->type;
	OUTPUT:
		RETVAL

Uint16
cdt_length( track )
	SDL_CDtrack *track
	CODE:
		RETVAL = track->length;
	OUTPUT:
		RETVAL

Uint32
cdt_offset( track )
	SDL_CDtrack *track
	CODE:
		RETVAL = track->offset;
	OUTPUT: 
		RETVAL
