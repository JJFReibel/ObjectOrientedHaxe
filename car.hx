/*
MIT License
Copyright (c) 2020 Jean-Jacques François Reibel
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*/

class MainClass {
    static function main() {
        trace("Creating car.");
        var subaru = new Car(4, 4, 4);
        subaru.printInfo();
        trace("Adding wheel directly to car object.");
        ++subaru.wheels;
        subaru.printInfo();
        trace("Removing wheel using object method.");
	subaru.deleteWheels(1);
        subaru.printInfo();
    }
}

class Car {
	public var wheels:Int;
	public var doors:Int;
        public var cylinders:Int;

	public function new(wheels, doors, cylinders) {
	    this.wheels = wheels;
	    this.doors = doors;
            this.cylinders = cylinders;
	}

	public function addWheels(wheelsIn) {
	    this.wheels += wheelsIn;
	}
    
        public function addDoors(doorsIn) {
	    this.doors += doorsIn;
	}
    
        public function addCylinders(cylindersIn) {
	    this.cylinders += cylindersIn;
	}
    
        public function deleteWheels(wheelsIn) {
	    this.wheels -= wheelsIn;
	}
    
        public function deleteDoors(doorsIn) {
	    this.doors -= doorsIn;
	}
    
        public function deleteCylinders(cylindersIn) {
	    this.cylinders -= cylindersIn;
	}
    
        public function printInfo() {
	    trace("Wheel check: " + this.wheels);
            trace("Door check: " + this.doors);
            trace("Cylinder check: " + this.cylinders);
            trace("");
	}
}
