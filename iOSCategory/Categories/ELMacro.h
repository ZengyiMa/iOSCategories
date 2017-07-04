//
//  ELMacro.h
//  iOSCategory
//
//  Created by famulei on 04/07/2017.
//  Copyright © 2017 famulei. All rights reserved.
//

#ifndef ELMacro_h
#define ELMacro_h


#ifndef getter
#define getter(type, name, code)  \
- (type)name   \
{   \
if (!_##name) {   \
code;   \
}   \
return _##name;   \
}
#endif

#endif /* ELMacro_h */
