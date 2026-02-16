#define Create_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
notice=0
image_speed=0.2

de_settings()
#define Step_0
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (instance_place(x,y,Player)) {
    notice=!cutscene
    //this is to prevent things like jumping when you initiate a dialog sequence
    //only necessary if you use inputs to initiate dialog sequences
    input_disable(de_input_advance)
    if (script_execute(de_input_advance,vi_pressed)) event_trigger(tr_npctalk)
} else {
    //re-enable the input
    input_enable(de_input_advance)
}
#define Trigger_Draw End
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
if (notice) {
    text=script_execute(de_input_advance,vi_name)+lang("presstotalk")
    draw_sign_text(mean(bbox_left,bbox_right),bbox_top-10,fntSignpost,$ffffff,text,false)
    notice=false
}
#define Trigger_NPC Interact
/*"/*'/**//* YYD ACTION
lib_id=1
action_id=603
applies_to=self
*/
//change this to de_begin your custom dialog in a child of NPCParent

de_begin(dialog_example)
