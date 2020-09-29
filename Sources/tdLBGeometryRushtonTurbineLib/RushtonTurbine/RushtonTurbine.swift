// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let rushtonTurbine = try RushtonTurbine(json)
//
//https://app.quicktype.io?share=a4Hldp81TGUIEjNVrBRX
import Foundation


//TODO Create func to save the object to json, with string keys for impeller
extension RushtonTurbine {
    func saveAsJson(to url: URL) throws {
        print("Saving to:" + url.absoluteString)
    }
}



// MARK: - RushtonTurbine
public final class RushtonTurbine: ObservableObject, Codable {
    @Published public var tankDiameter: Int
    @Published public var tankHeight: Int
    @Published public var impellerStartAngle: Double
    @Published public var shaft: Shaft
    @Published public var gridx: Int
    @Published public var impellerStartupStepsUntilNormalSpeed: Int
    @Published public var baffles: Baffles
    @Published public var startingStep: Int
    @Published public var name: String
    @Published public var resolution: Double
    @Published public var impellers: [String: Impeller]
    
    enum CodingKeys: String, CodingKey {
        case tankDiameter, tankHeight
        case impellerStartAngle = "impeller_start_angle"
        case shaft, impellers, gridx
        case impellerStartupStepsUntilNormalSpeed = "impeller_startup_steps_until_normal_speed"
        case baffles
        case startingStep = "starting_step"
        case name, resolution
    }

    public init(){
        self.tankDiameter = 300
        self.tankHeight = 300
        self.impellerStartAngle = 0
        self.shaft = Shaft(radius: 10)
        self.impellers = [
            "0": Impeller(blades: Blades(innerRadius: 50, top: 60, thickness: 5, outerRadius: 110, bottom: 130), uav: 0.7, bladeTipAngularVelW0: 0.1, impellerPosition: 75, disk: Disk(top: 90, bottom: 110, radius: 100), numBlades: 6, firstBladeOffset: 0, hub: Disk(top: 80, bottom: 120, radius: 60)),
            "1": Impeller(blades: Blades(innerRadius: 50, top: 60, thickness: 5, outerRadius: 110, bottom: 130), uav: 0.7, bladeTipAngularVelW0: 0.1, impellerPosition: 150, disk: Disk(top: 90, bottom: 110, radius: 100), numBlades: 6, firstBladeOffset: 0, hub: Disk(top: 80, bottom: 120, radius: 60)),
            "2": Impeller(blades: Blades(innerRadius: 50, top: 60, thickness: 5, outerRadius: 110, bottom: 130), uav: 0.7, bladeTipAngularVelW0: 0.1, impellerPosition: 225, disk: Disk(top: 90, bottom: 110, radius: 100), numBlades: 6, firstBladeOffset: 0, hub: Disk(top: 80, bottom: 120, radius: 60))
        ]
        self.gridx = 100
        self.impellerStartupStepsUntilNormalSpeed = 100
        self.baffles = Baffles(firstBaffleOffset: 0, innerRadius: 130, thickness: 5, numBaffles: 6, outerRadius: 150)
        self.startingStep = 0
        self.name = "Default"
        self.resolution = 0.7
    }
    
    public init(
        tankDiameter: Int,
        tankHeight: Int,
        impellerStartAngle: Double,
        shaft: Shaft,
        impeller: [String: Impeller],
        gridx: Int,
        impellerStartupStepsUntilNormalSpeed: Int,
        baffles: Baffles,
        startingStep: Int,
        name: String,
        resolution: Double){

        self.tankDiameter = tankDiameter
        self.tankHeight = tankHeight
        self.impellerStartAngle = impellerStartAngle
        self.shaft = shaft
        self.impellers = impeller
        self.gridx = gridx
        self.impellerStartupStepsUntilNormalSpeed = impellerStartupStepsUntilNormalSpeed
        self.baffles = baffles
        self.startingStep = startingStep
        self.name = name
        self.resolution = resolution
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        tankDiameter = try container.decode(Int.self, forKey: .tankDiameter)
        tankHeight = try container.decode(Int.self, forKey: .tankHeight)
        impellerStartAngle = try container.decode(Double.self, forKey: .impellerStartAngle)
        shaft = try container.decode(Shaft.self, forKey: .shaft)

        impellers = try container.decode([String: Impeller].self, forKey: .impellers)
        
        gridx = try container.decode(Int.self, forKey: .gridx)
        impellerStartupStepsUntilNormalSpeed = try container.decode(Int.self,
                                                                    forKey: .impellerStartupStepsUntilNormalSpeed)
        baffles = try container.decode(Baffles.self, forKey: .baffles)
        startingStep = try container.decode(Int.self, forKey: .startingStep)
        name = try container.decode(String.self, forKey: .name)
        resolution = try container.decode(Double.self, forKey: .resolution)
    }



    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(tankDiameter, forKey: .tankDiameter)
        try container.encode(tankHeight, forKey: .tankHeight)
        try container.encode(impellerStartAngle, forKey: .impellerStartAngle)
        try container.encode(shaft, forKey: .shaft)

        try container.encode(impellers, forKey: .impellers)

        try container.encode(gridx, forKey: .gridx)
        try container.encode(impellerStartupStepsUntilNormalSpeed, forKey: .impellerStartupStepsUntilNormalSpeed)

        try container.encode(baffles, forKey: .baffles)
        try container.encode(startingStep, forKey: .startingStep)
        try container.encode(name, forKey: .name)
        try container.encode(resolution, forKey: .resolution)
    }

}




// MARK: RushtonTurbine convenience initializers and mutators

extension RushtonTurbine {

    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(RushtonTurbine.self, from: data)
        self.init(
            tankDiameter: me.tankDiameter,
            tankHeight: me.tankHeight,
            impellerStartAngle: me.impellerStartAngle,
            shaft: me.shaft,

            impeller: me.impellers,

            gridx: me.gridx,
            impellerStartupStepsUntilNormalSpeed: me.impellerStartupStepsUntilNormalSpeed,
            baffles: me.baffles,
            startingStep: me.startingStep,
            name: me.name,
            resolution: me.resolution
        )
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }

    func writeJSON(to url: URL){
        let j = try! jsonString()
        try! j!.write(to: url, atomically: true, encoding: .utf8)
    }

    func with(
        tankDiameter: Int? = nil,
        tankHeight: Int? = nil,
        impellerStartAngle: Double? = nil,
        shaft: Shaft? = nil,
        impeller: [String: Impeller]? = nil,
        gridx: Int? = nil,
        impellerStartupStepsUntilNormalSpeed: Int? = nil,
        baffles: Baffles? = nil,
        startingStep: Int? = nil,
        name: String? = nil,
        resolution: Double? = nil
    ) -> RushtonTurbine {
        return RushtonTurbine(
            tankDiameter: tankDiameter ?? self.tankDiameter,
            tankHeight: tankHeight ?? self.tankHeight,
            impellerStartAngle: impellerStartAngle ?? self.impellerStartAngle,
            shaft: shaft ?? self.shaft,
            impeller: impeller ?? self.impellers,
            gridx: gridx ?? self.gridx,
            impellerStartupStepsUntilNormalSpeed: impellerStartupStepsUntilNormalSpeed ?? self.impellerStartupStepsUntilNormalSpeed,
            baffles: baffles ?? self.baffles,
            startingStep: startingStep ?? self.startingStep,
            name: name ?? self.name,
            resolution: resolution ?? self.resolution
        )
    }
}

// MARK: - Baffles
public class Baffles: Codable, ObservableObject {
    @Published public var firstBaffleOffset: Double
    @Published public var innerRadius: Int
    @Published public var thickness: Int
    @Published public var numBaffles: Int
    @Published public var outerRadius: Int

    enum CodingKeys: String, CodingKey {
        case firstBaffleOffset
        case innerRadius, thickness, numBaffles, outerRadius
    }

    public init(
        firstBaffleOffset: Double,
        innerRadius: Int,
        thickness: Int,
        numBaffles: Int,
        outerRadius: Int
    ){
        self.firstBaffleOffset = firstBaffleOffset
        self.innerRadius = innerRadius
        self.thickness = thickness
        self.numBaffles = numBaffles
        self.outerRadius = outerRadius
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        firstBaffleOffset = try container.decode(Double.self, forKey: .firstBaffleOffset)
        innerRadius = try container.decode(Int.self, forKey: .innerRadius)
        thickness = try container.decode(Int.self, forKey: .thickness)
        numBaffles = try container.decode(Int.self, forKey: .numBaffles)
        outerRadius = try container.decode(Int.self, forKey: .outerRadius)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(firstBaffleOffset, forKey: .firstBaffleOffset)
        try container.encode(innerRadius, forKey: .innerRadius)
        try container.encode(thickness, forKey: .thickness)
        try container.encode(numBaffles, forKey: .numBaffles)
        try container.encode(outerRadius, forKey: .outerRadius)
    }
}

// MARK: Baffles convenience initializers and mutators

extension Baffles {

    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Baffles.self, from: data)
        self.init(
            firstBaffleOffset: me.firstBaffleOffset,
            innerRadius: me.innerRadius,
            thickness: me.thickness,
            numBaffles: me.numBaffles,
            outerRadius: me.outerRadius
        )
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }


    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }

    func writeJSON(to url: URL){
        let j = try! jsonString()
        try! j!.write(to: url, atomically: true, encoding: .utf8)
    }



    func with(
        firstBaffleOffset: Double? = nil,
        innerRadius: Int? = nil,
        thickness: Int? = nil,
        numBaffles: Int? = nil,
        outerRadius: Int? = nil
    ) -> Baffles {
        return Baffles(
            firstBaffleOffset: firstBaffleOffset ?? self.firstBaffleOffset,
            innerRadius: innerRadius ?? self.innerRadius,
            thickness: thickness ?? self.thickness,
            numBaffles: numBaffles ?? self.numBaffles,
            outerRadius: outerRadius ?? self.outerRadius
        )
    }
}

// MARK: - Impeller
public class Impeller: Codable, ObservableObject, Equatable {
    public static func == (lhs: Impeller, rhs: Impeller) -> Bool {
        lhs === rhs
    }
    
    @Published public var blades: Blades
    @Published public var uav: Double
    @Published public var bladeTipAngularVelW0: Double
    @Published public var impellerPosition: Int
    @Published public var disk: Disk
    @Published public var numBlades: Int
    @Published public var firstBladeOffset: Int
    @Published public var hub: Disk

    enum CodingKeys: String, CodingKey {
        case blades, uav
        case bladeTipAngularVelW0 = "blade_tip_angular_vel_w0"
        case impellerPosition = "impeller_position"
        case disk, numBlades, firstBladeOffset, hub
    }

    public init(
        blades: Blades,
        uav: Double,
        bladeTipAngularVelW0: Double,
        impellerPosition: Int,
        disk: Disk,
        numBlades: Int,
        firstBladeOffset: Int,
        hub: Disk
    ){
        self.blades = blades
        self.uav = uav
        self.bladeTipAngularVelW0 = bladeTipAngularVelW0
        self.impellerPosition = impellerPosition
        self.disk = disk
        self.numBlades = numBlades
        self.firstBladeOffset = firstBladeOffset
        self.hub = hub
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        blades = try container.decode(Blades.self, forKey: .blades)
        uav = try container.decode(Double.self, forKey: .uav)
        bladeTipAngularVelW0 = try container.decode(Double.self, forKey: .bladeTipAngularVelW0)
        impellerPosition = try container.decode(Int.self, forKey: .impellerPosition)
        disk = try container.decode(Disk.self, forKey: .disk)
        numBlades = try container.decode(Int.self, forKey: .numBlades)
        firstBladeOffset = try container.decode(Int.self, forKey: .firstBladeOffset)
        hub = try container.decode(Disk.self, forKey: .hub)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(blades, forKey: .blades)
        try container.encode(uav, forKey: .uav)
        try container.encode(bladeTipAngularVelW0, forKey: .bladeTipAngularVelW0)
        try container.encode(impellerPosition, forKey: .impellerPosition)
        try container.encode(disk, forKey: .disk)
        try container.encode(numBlades, forKey: .numBlades)
        try container.encode(firstBladeOffset, forKey: .firstBladeOffset)
        try container.encode(hub, forKey: .hub)
    }
}

// MARK: Impeller convenience initializers and mutators

extension Impeller {

    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Impeller.self, from: data)
        self.init(
            blades: me.blades,
            uav: me.uav,
            bladeTipAngularVelW0: me.bladeTipAngularVelW0,
            impellerPosition: me.impellerPosition,
            disk: me.disk,
            numBlades: me.numBlades,
            firstBladeOffset: me.firstBladeOffset,
            hub: me.hub
        )
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }


    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }

    func writeJSON(to url: URL){
        let j = try! jsonString()
        try! j!.write(to: url, atomically: true, encoding: .utf8)
    }

    func with(
        blades: Blades? = nil,
        uav: Double? = nil,
        bladeTipAngularVelW0: Double? = nil,
        impellerPosition: Int? = nil,
        disk: Disk? = nil,
        numBlades: Int? = nil,
        firstBladeOffset: Int? = nil,
        hub: Disk? = nil
    ) -> Impeller {
        return Impeller(
            blades: blades ?? self.blades,
            uav: uav ?? self.uav,
            bladeTipAngularVelW0: bladeTipAngularVelW0 ?? self.bladeTipAngularVelW0,
            impellerPosition: impellerPosition ?? self.impellerPosition,
            disk: disk ?? self.disk,
            numBlades: numBlades ?? self.numBlades,
            firstBladeOffset: firstBladeOffset ?? self.firstBladeOffset,
            hub: hub ?? self.hub
        )
    }
}

// MARK: - Blades
public class Blades: Codable, ObservableObject {
    @Published public var innerRadius: Int
    @Published public var top: Int
    @Published public var thickness: Int
    @Published public var outerRadius: Int
    @Published public var bottom: Int

    enum CodingKeys: String, CodingKey {
        case innerRadius, top
        case thickness = "bladeThickness"
        case outerRadius, bottom
    }

    public init(
        innerRadius: Int,
        top: Int,
        thickness: Int,
        outerRadius: Int,
        bottom: Int
    ){
        self.innerRadius = innerRadius
        self.top = top
        self.thickness = thickness
        self.outerRadius = outerRadius
        self.bottom = bottom
    }
    
    public var height: Int {
        bottom - top
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        innerRadius = try container.decode(Int.self, forKey: .innerRadius)
        top = try container.decode(Int.self, forKey: .top)
        thickness = try container.decode(Int.self, forKey: .thickness)
        outerRadius = try container.decode(Int.self, forKey: .outerRadius)
        bottom = try container.decode(Int.self, forKey: .bottom)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(innerRadius, forKey: .innerRadius)
        try container.encode(top, forKey: .top)
        try container.encode(thickness, forKey: .thickness)
        try container.encode(outerRadius, forKey: .outerRadius)
        try container.encode(bottom, forKey: .bottom)
    }

}

// MARK: Blades convenience initializers and mutators

extension Blades {

    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Blades.self, from: data)
        self.init(
            innerRadius: me.innerRadius,
            top: me.top,
            thickness: me.thickness,
            outerRadius: me.outerRadius,
            bottom: me.bottom
        )
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }


    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }

    func writeJSON(to url: URL){
        let j = try! jsonString()
        try! j!.write(to: url, atomically: true, encoding: .utf8)
    }

    func with(
        innerRadius: Int? = nil,
        top: Int? = nil,
        bladeThickness: Int? = nil,
        outerRadius: Int? = nil,
        bottom: Int? = nil
    ) -> Blades {
        return Blades(
            innerRadius: innerRadius ?? self.innerRadius,
            top: top ?? self.top,
            thickness: bladeThickness ?? self.thickness,
            outerRadius: outerRadius ?? self.outerRadius,
            bottom: bottom ?? self.bottom
        )
    }
}

// MARK: - Disk
public class Disk: Codable, ObservableObject {
    @Published public var top: Int
    @Published public var bottom: Int
    @Published public var radius: Int

    enum CodingKeys: String, CodingKey {
        case top, bottom, radius
    }

    public init(
        top: Int,
        bottom: Int,
        radius: Int
    ){
        self.top = top
        self.bottom = bottom
        self.radius = radius
    }
    
    public var height: Int {
        bottom - top
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        top = try container.decode(Int.self, forKey: .top)
        bottom = try container.decode(Int.self, forKey: .bottom)
        radius = try container.decode(Int.self, forKey: .radius)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(top, forKey: .top)
        try container.encode(bottom, forKey: .bottom)
        try container.encode(radius, forKey: .radius)
    }
}

// MARK: Disk convenience initializers and mutators

extension Disk {

    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Disk.self, from: data)
        self.init(
            top: me.top,
            bottom: me.bottom,
            radius: me.radius
        )
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }


    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }

    func writeJSON(to url: URL){
        let j = try! jsonString()
        try! j!.write(to: url, atomically: true, encoding: .utf8)
    }

    func with(
        top: Int? = nil,
        bottom: Int? = nil,
        radius: Int? = nil
    ) -> Disk {
        return Disk(
            top: top ?? self.top,
            bottom: bottom ?? self.bottom,
            radius: radius ?? self.radius
        )
    }
}

// MARK: - Shaft
public class Shaft: Codable, ObservableObject {
    @Published public var radius: Int

    enum CodingKeys: String, CodingKey {
        case radius
    }

    public init(
        radius: Int
    ){
        self.radius = radius
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        radius = try container.decode(Int.self, forKey: .radius)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        try container.encode(radius, forKey: .radius)
    }
}

// MARK: Shaft convenience initializers and mutators

extension Shaft {

    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Shaft.self, from: data)
        self.init(radius: me.radius)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }


    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }

    func writeJSON(to url: URL){
        let j = try! jsonString()
        try! j!.write(to: url, atomically: true, encoding: .utf8)
    }


    func with(
        radius: Int? = nil
    ) -> Shaft {
        return Shaft(
            radius: radius ?? self.radius
        )
    }
}

// MARK: - Helper functions for creating encoders and decoders

fileprivate func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

fileprivate func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}
