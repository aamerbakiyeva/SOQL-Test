import { LightningElement } from 'lwc';

export default class Lwc2 extends LightningElement {
    name="Aida";

    changeHandler(event){
        this.name = event.targer.value
    }
}