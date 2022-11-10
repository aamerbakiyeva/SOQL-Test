import { LightningElement, api } from 'lwc';

export default class Lwc14 extends LightningElement {
    @api fieldValue = "";
    @api fieldLabel;
    
    changeHandler (event){
        this.fieldvalue = event.target.value;
    }


}
