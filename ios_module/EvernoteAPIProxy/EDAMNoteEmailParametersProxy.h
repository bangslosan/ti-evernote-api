#import "TiProxy.h"
#import "NoteStore.h"

@interface EDAMNoteEmailParametersProxy : TiProxy {
@private
    EDAMNoteEmailParameters* object;
}
@property (nonatomic, retain) EDAMNoteEmailParameters* object;

- (id)initWithObject:(EDAMNoteEmailParameters*)object_;
@end