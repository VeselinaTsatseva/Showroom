function createXMLDocument() {
    let documentImplementation = document.implementation;
    let doc = documentImplementation.createDocument(null, null);

    let root = doc.createElement('showroom');
    doc.appendChild(root);

    let car = doc.createElement('car');
    root.append(car);
    let brand = doc.createElement('brand');
    brand.textContent = "Peugeot";
    let model = doc.createElement('model');
    model.textContent = "Clio";
    let year = doc.createElement('year');
    year.textContent = "2016";
    let price = doc.createElement('price');
    price.textContent = "28444";
    price.setAttribute("currency", "евро");
    let picture = doc.createElement('picture');
    picture.textContent = "jjj";
    let color = doc.createElement('color');
    color.textContent = "Червен";
    let type = doc.createElement('type');
    type.textContent = "Купе";
    let seats = doc.createElement('seats');
    seats.textContent = "5";
    let doors = doc.createElement('doors');
    doors.textContent = "4";
    let weight = doc.createElement('weight');
    weight.textContent = "1860";

    let dimensions = doc.createElement("dimensions");
    let length = doc.createElement("length");
    length.textContent = "4988";
    let width = doc.createElement("width");
    width.textContent = "1890";
    let height = doc.createElement("height");
    height.textContent = "1435";
    dimensions.append(length, width, height);

    let engine = doc.createElement("engine");
    let size = doc.createElement("size");
    size.textContent = "1.7";
    size.setAttribute("unit", "см3");
    let power = doc.createElement("power");
    power.textContent = "140";
    power.setAttribute("unit", "hp");
    let cylinders = doc.createElement("cylinders");
    cylinders.textContent = "6";
    engine.append(size, power, cylinders);

    let euroClass = doc.createElement("euroClass");
    euroClass.textContent = "5";

    let transmission = doc.createElement("transmission");
    transmission.setAttribute("type", "ръчна");
    let gears = doc.createElement("gears");
    gears.textContent = "6";
    transmission.append(gears);

    let fuel = doc.createElement("fuel");
    let fuelConsumption = doc.createElement("fuelConsumption");
    fuelConsumption.textContent = "7";
    fuelConsumption.setAttribute("unit", "л/100км");
    let fuelType = doc.createElement("fuelType");
    fuelType.textContent = "Дизел";
    let tankCapacity = doc.createElement("tankCapacity");
    tankCapacity.textContent = "50";
    tankCapacity.setAttribute("unit", "литра");
    fuel.append(fuelConsumption, fuelType, tankCapacity);

    let features = doc.createElement("features");
    let AC = doc.createElement("AC");
    AC.textContent = "да";
    let ABS = doc.createElement("ABS");
    ABS.textContent = "да";
    let rearCamera = doc.createElement("rearCamera");
    rearCamera.textContent = "да";
    features.append(AC, ABS, rearCamera);

    let trunkCapacity = doc.createElement("trunkCapacity");
    trunkCapacity.textContent = "520";

    car.append(brand, model, year, price, color, type, seats, doors, weight, dimensions, engine, euroClass, transmission, fuel, features, trunkCapacity);

    return doc;
}
