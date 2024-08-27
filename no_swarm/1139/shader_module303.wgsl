struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: f32,
    d: vec2<bool>,
    e: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 23> = array<Struct_5, 23>(Struct_5(true, vec2<u32>(1u, 4294967295u), 1000f, vec2<bool>(true, true), Struct_4(Struct_3(1445f, vec3<u32>(1u, 1u, 35944u), 2147483647i, 25290i, vec4<u32>(41574u, 29834u, 1u, 1u)), Struct_2(vec3<i32>(-9522i, -118551i, -18098i), vec2<i32>(1413i, -457i), vec4<u32>(4294967295u, 0u, 14007u, 4294967295u), vec2<i32>(-30850i, -6586i), 1u), Struct_2(vec3<i32>(-46086i, 0i, 1i), vec2<i32>(1i, 0i), vec4<u32>(4294967295u, 86063u, 67266u, 46300u), vec2<i32>(2147483647i, -7399i), 0u), -1619f, Struct_2(vec3<i32>(-50234i, 6678i, 1i), vec2<i32>(24300i, 13449i), vec4<u32>(4294967295u, 59142u, 684u, 0u), vec2<i32>(0i, 36202i), 15370u))), Struct_5(true, vec2<u32>(0u, 0u), -1000f, vec2<bool>(false, false), Struct_4(Struct_3(588f, vec3<u32>(54262u, 1u, 0u), 29560i, 0i, vec4<u32>(4294967295u, 1u, 21834u, 1u)), Struct_2(vec3<i32>(25819i, -18102i, i32(-2147483648)), vec2<i32>(0i, 53887i), vec4<u32>(84164u, 368u, 0u, 1u), vec2<i32>(0i, -6880i), 2228u), Struct_2(vec3<i32>(42824i, 76299i, 0i), vec2<i32>(52546i, -1i), vec4<u32>(1u, 4294967295u, 34269u, 4294967295u), vec2<i32>(-804i, -17895i), 1u), -417f, Struct_2(vec3<i32>(21134i, -1i, 0i), vec2<i32>(29500i, -25860i), vec4<u32>(59845u, 0u, 4294967295u, 0u), vec2<i32>(i32(-2147483648), 0i), 0u))), Struct_5(false, vec2<u32>(73361u, 15266u), 397f, vec2<bool>(false, true), Struct_4(Struct_3(-568f, vec3<u32>(4294967295u, 33647u, 75588u), 1715i, -48543i, vec4<u32>(4294967295u, 28434u, 90639u, 31012u)), Struct_2(vec3<i32>(12776i, -1i, -1i), vec2<i32>(-3829i, i32(-2147483648)), vec4<u32>(2693u, 17688u, 30896u, 1u), vec2<i32>(i32(-2147483648), -835i), 0u), Struct_2(vec3<i32>(-39404i, 10714i, -7767i), vec2<i32>(-1i, -17067i), vec4<u32>(1u, 8374u, 9187u, 54907u), vec2<i32>(0i, i32(-2147483648)), 24849u), -580f, Struct_2(vec3<i32>(33557i, -22548i, 2147483647i), vec2<i32>(0i, 0i), vec4<u32>(1u, 13422u, 105793u, 4294967295u), vec2<i32>(i32(-2147483648), 2147483647i), 25034u))), Struct_5(true, vec2<u32>(28582u, 33346u), 314f, vec2<bool>(true, true), Struct_4(Struct_3(-2310f, vec3<u32>(4294967295u, 4294967295u, 9585u), 2147483647i, i32(-2147483648), vec4<u32>(65562u, 1u, 1u, 0u)), Struct_2(vec3<i32>(17591i, i32(-2147483648), 6076i), vec2<i32>(2147483647i, -19462i), vec4<u32>(76144u, 28154u, 70564u, 1u), vec2<i32>(2147483647i, 2147483647i), 17769u), Struct_2(vec3<i32>(28186i, 2147483647i, 12875i), vec2<i32>(i32(-2147483648), 42704i), vec4<u32>(4294967295u, 26815u, 50248u, 1u), vec2<i32>(-41775i, -70981i), 0u), -824f, Struct_2(vec3<i32>(-1i, 1i, 2147483647i), vec2<i32>(67398i, 2147483647i), vec4<u32>(1u, 1u, 1u, 4294967295u), vec2<i32>(22082i, 2147483647i), 4294967295u))), Struct_5(true, vec2<u32>(9686u, 0u), 554f, vec2<bool>(false, false), Struct_4(Struct_3(-190f, vec3<u32>(0u, 7143u, 24729u), -22958i, 2147483647i, vec4<u32>(4294967295u, 4294967295u, 0u, 15398u)), Struct_2(vec3<i32>(-11654i, 10941i, 41057i), vec2<i32>(1i, -26635i), vec4<u32>(13991u, 1445u, 0u, 42266u), vec2<i32>(2147483647i, -20688i), 63240u), Struct_2(vec3<i32>(68061i, 64105i, 15818i), vec2<i32>(28151i, 1i), vec4<u32>(13575u, 59966u, 1u, 0u), vec2<i32>(-58192i, -1i), 0u), 1711f, Struct_2(vec3<i32>(i32(-2147483648), 2147483647i, -2305i), vec2<i32>(10304i, 1i), vec4<u32>(4294967295u, 19029u, 9318u, 67402u), vec2<i32>(0i, 2147483647i), 61231u))), Struct_5(false, vec2<u32>(1u, 36775u), 940f, vec2<bool>(true, true), Struct_4(Struct_3(-2975f, vec3<u32>(0u, 31735u, 1u), 40039i, -38568i, vec4<u32>(39984u, 0u, 84923u, 80616u)), Struct_2(vec3<i32>(2147483647i, -6572i, -6423i), vec2<i32>(1837i, 38317i), vec4<u32>(36777u, 51419u, 10572u, 4294967295u), vec2<i32>(-38639i, 5272i), 22158u), Struct_2(vec3<i32>(1i, 6673i, 0i), vec2<i32>(-64107i, -1i), vec4<u32>(3022u, 101032u, 10635u, 4294967295u), vec2<i32>(-25161i, -1i), 0u), -1000f, Struct_2(vec3<i32>(23190i, i32(-2147483648), -1i), vec2<i32>(0i, -1i), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec2<i32>(-11281i, 0i), 20480u))), Struct_5(false, vec2<u32>(152563u, 4294967295u), 331f, vec2<bool>(false, true), Struct_4(Struct_3(1961f, vec3<u32>(1u, 2028u, 36079u), 44304i, i32(-2147483648), vec4<u32>(59914u, 1u, 0u, 39953u)), Struct_2(vec3<i32>(i32(-2147483648), 70566i, -8016i), vec2<i32>(0i, 2147483647i), vec4<u32>(21390u, 4294967295u, 13380u, 15622u), vec2<i32>(-12031i, -10214i), 0u), Struct_2(vec3<i32>(-31249i, 2147483647i, 32238i), vec2<i32>(1i, 1i), vec4<u32>(4614u, 0u, 0u, 2461u), vec2<i32>(i32(-2147483648), 0i), 1u), -1000f, Struct_2(vec3<i32>(-1i, -47639i, i32(-2147483648)), vec2<i32>(-1i, -23228i), vec4<u32>(0u, 14365u, 41312u, 70676u), vec2<i32>(1i, -42239i), 18011u))), Struct_5(false, vec2<u32>(48123u, 4294967295u), -197f, vec2<bool>(true, true), Struct_4(Struct_3(-391f, vec3<u32>(19629u, 16247u, 0u), 1i, -1i, vec4<u32>(2443u, 35387u, 1u, 1u)), Struct_2(vec3<i32>(-1i, -1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 0i), vec4<u32>(4294967295u, 22499u, 5898u, 1u), vec2<i32>(-30692i, -1798i), 8253u), Struct_2(vec3<i32>(25460i, -9799i, -1i), vec2<i32>(-1i, 1i), vec4<u32>(1u, 63750u, 10698u, 6309u), vec2<i32>(-1i, -31117i), 100400u), 1236f, Struct_2(vec3<i32>(i32(-2147483648), 0i, 2607i), vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(7219u, 50565u, 27142u, 31876u), vec2<i32>(-12902i, 1i), 0u))), Struct_5(true, vec2<u32>(4294967295u, 1u), -551f, vec2<bool>(false, false), Struct_4(Struct_3(-1317f, vec3<u32>(22908u, 6049u, 22668u), -11413i, -62211i, vec4<u32>(2491u, 1u, 76896u, 4294967295u)), Struct_2(vec3<i32>(9787i, -30063i, 69635i), vec2<i32>(1i, -1i), vec4<u32>(0u, 0u, 66492u, 31578u), vec2<i32>(-31487i, -13354i), 4294967295u), Struct_2(vec3<i32>(0i, 2147483647i, -1i), vec2<i32>(3558i, -35450i), vec4<u32>(0u, 1u, 46061u, 70057u), vec2<i32>(2147483647i, -34954i), 0u), 1359f, Struct_2(vec3<i32>(6110i, -6462i, 9395i), vec2<i32>(33805i, 4206i), vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec2<i32>(43789i, -1i), 1u))), Struct_5(false, vec2<u32>(30302u, 19100u), 1385f, vec2<bool>(true, true), Struct_4(Struct_3(1290f, vec3<u32>(0u, 4294967295u, 23340u), -51461i, -8144i, vec4<u32>(4294967295u, 4294967295u, 19818u, 0u)), Struct_2(vec3<i32>(-19449i, -1i, -1i), vec2<i32>(68783i, i32(-2147483648)), vec4<u32>(4294967295u, 1u, 1u, 45233u), vec2<i32>(1404i, 0i), 1u), Struct_2(vec3<i32>(2147483647i, -1i, 6571i), vec2<i32>(1i, 0i), vec4<u32>(47681u, 0u, 4294967295u, 1u), vec2<i32>(24656i, 10657i), 4294967295u), 234f, Struct_2(vec3<i32>(1i, -1i, -1i), vec2<i32>(0i, -1i), vec4<u32>(4294967295u, 73019u, 4165u, 8269u), vec2<i32>(0i, 0i), 71301u))), Struct_5(false, vec2<u32>(15002u, 1u), 1008f, vec2<bool>(true, false), Struct_4(Struct_3(-1439f, vec3<u32>(54071u, 6219u, 1u), i32(-2147483648), 0i, vec4<u32>(1u, 4294967295u, 13434u, 51080u)), Struct_2(vec3<i32>(i32(-2147483648), i32(-2147483648), -21066i), vec2<i32>(18529i, 10013i), vec4<u32>(67390u, 77994u, 2666u, 3904u), vec2<i32>(9570i, 1i), 4294967295u), Struct_2(vec3<i32>(45900i, 0i, i32(-2147483648)), vec2<i32>(1i, 34255i), vec4<u32>(4294967295u, 1u, 88488u, 2034u), vec2<i32>(7121i, 11070i), 8850u), -867f, Struct_2(vec3<i32>(i32(-2147483648), 66659i, 1i), vec2<i32>(-53366i, -44401i), vec4<u32>(1u, 4294967295u, 118288u, 80690u), vec2<i32>(1i, 11084i), 36119u))), Struct_5(false, vec2<u32>(3477u, 10108u), -1000f, vec2<bool>(false, true), Struct_4(Struct_3(-419f, vec3<u32>(1u, 1u, 0u), 1i, 42444i, vec4<u32>(12780u, 16995u, 0u, 0u)), Struct_2(vec3<i32>(1i, -29353i, i32(-2147483648)), vec2<i32>(5936i, 1i), vec4<u32>(12070u, 27056u, 1622u, 1u), vec2<i32>(0i, -14170i), 0u), Struct_2(vec3<i32>(-10575i, 1i, -8920i), vec2<i32>(1i, -3446i), vec4<u32>(10785u, 44386u, 43828u, 0u), vec2<i32>(-52406i, 14115i), 30190u), 1819f, Struct_2(vec3<i32>(-45497i, 3191i, -24564i), vec2<i32>(15612i, i32(-2147483648)), vec4<u32>(127618u, 1u, 1u, 0u), vec2<i32>(1i, 0i), 0u))), Struct_5(true, vec2<u32>(79664u, 0u), -111f, vec2<bool>(true, false), Struct_4(Struct_3(285f, vec3<u32>(0u, 106190u, 1281u), i32(-2147483648), -2532i, vec4<u32>(4294967295u, 0u, 0u, 80486u)), Struct_2(vec3<i32>(310i, 2147483647i, 2147483647i), vec2<i32>(2147483647i, 13887i), vec4<u32>(4294967295u, 74820u, 25354u, 7037u), vec2<i32>(2147483647i, 0i), 12481u), Struct_2(vec3<i32>(-1i, -67035i, -1i), vec2<i32>(4487i, 1i), vec4<u32>(0u, 23130u, 69220u, 5477u), vec2<i32>(1i, 28043i), 1u), 2358f, Struct_2(vec3<i32>(0i, 0i, -17603i), vec2<i32>(i32(-2147483648), 2147483647i), vec4<u32>(60245u, 4294967295u, 18303u, 31759u), vec2<i32>(2147483647i, 41695i), 4294967295u))), Struct_5(true, vec2<u32>(4294967295u, 0u), 1152f, vec2<bool>(true, false), Struct_4(Struct_3(646f, vec3<u32>(4294967295u, 4294967295u, 25108u), 0i, -1i, vec4<u32>(84285u, 55332u, 0u, 47383u)), Struct_2(vec3<i32>(2147483647i, 1i, 1i), vec2<i32>(-1i, -1i), vec4<u32>(1u, 0u, 18964u, 1u), vec2<i32>(-1i, 2147483647i), 33222u), Struct_2(vec3<i32>(19026i, 18199i, 0i), vec2<i32>(-41422i, 43809i), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 106048u), vec2<i32>(-75822i, 10546i), 47644u), -589f, Struct_2(vec3<i32>(i32(-2147483648), -33296i, 19811i), vec2<i32>(2147483647i, 2147483647i), vec4<u32>(40246u, 16664u, 49698u, 4294967295u), vec2<i32>(0i, 2147483647i), 8481u))), Struct_5(true, vec2<u32>(4294967295u, 4294967295u), -927f, vec2<bool>(false, true), Struct_4(Struct_3(1016f, vec3<u32>(4294967295u, 37128u, 12255u), -1i, i32(-2147483648), vec4<u32>(1u, 4294967295u, 1u, 21777u)), Struct_2(vec3<i32>(i32(-2147483648), -1i, -33503i), vec2<i32>(-26625i, 57820i), vec4<u32>(0u, 2460u, 4294967295u, 11641u), vec2<i32>(-1i, 0i), 27531u), Struct_2(vec3<i32>(35837i, -2483i, 31672i), vec2<i32>(2147483647i, 1i), vec4<u32>(4294967295u, 0u, 0u, 12707u), vec2<i32>(-1i, 0i), 1u), -636f, Struct_2(vec3<i32>(1i, -1342i, -30074i), vec2<i32>(-10186i, 2147483647i), vec4<u32>(9011u, 15709u, 37377u, 31537u), vec2<i32>(2147483647i, 36197i), 0u))), Struct_5(false, vec2<u32>(45064u, 62047u), 316f, vec2<bool>(false, true), Struct_4(Struct_3(637f, vec3<u32>(31881u, 82723u, 55143u), -1i, -19503i, vec4<u32>(23729u, 1u, 4294967295u, 33473u)), Struct_2(vec3<i32>(i32(-2147483648), 1i, 11419i), vec2<i32>(1i, -18237i), vec4<u32>(0u, 4294967295u, 1u, 0u), vec2<i32>(-1i, 26486i), 1u), Struct_2(vec3<i32>(0i, 1i, -1i), vec2<i32>(9029i, 10475i), vec4<u32>(66130u, 67998u, 38434u, 43131u), vec2<i32>(-64036i, 759i), 4294967295u), 1000f, Struct_2(vec3<i32>(13404i, -1i, i32(-2147483648)), vec2<i32>(-23650i, 44043i), vec4<u32>(51742u, 25769u, 4294967295u, 11363u), vec2<i32>(-60092i, 6980i), 12246u))), Struct_5(true, vec2<u32>(32884u, 61778u), -178f, vec2<bool>(false, false), Struct_4(Struct_3(-1000f, vec3<u32>(14969u, 41918u, 17033u), -86164i, 0i, vec4<u32>(1u, 98152u, 16316u, 9825u)), Struct_2(vec3<i32>(2147483647i, -8137i, -47690i), vec2<i32>(1i, 0i), vec4<u32>(4294967295u, 1u, 1u, 78234u), vec2<i32>(2147483647i, 14959i), 87739u), Struct_2(vec3<i32>(0i, 0i, -35489i), vec2<i32>(i32(-2147483648), 12040i), vec4<u32>(4294967295u, 1u, 4294967295u, 81498u), vec2<i32>(-8406i, -29087i), 35139u), 953f, Struct_2(vec3<i32>(0i, -1i, 1i), vec2<i32>(-7123i, 48304i), vec4<u32>(1u, 0u, 44615u, 60927u), vec2<i32>(-22558i, -24250i), 1u))), Struct_5(false, vec2<u32>(4294967295u, 1u), 1000f, vec2<bool>(true, false), Struct_4(Struct_3(2289f, vec3<u32>(50517u, 0u, 42117u), -17095i, -1i, vec4<u32>(4294967295u, 4294967295u, 0u, 0u)), Struct_2(vec3<i32>(-1i, 2607i, 31731i), vec2<i32>(i32(-2147483648), -3100i), vec4<u32>(1u, 30762u, 4294967295u, 1u), vec2<i32>(-23932i, 1i), 3220u), Struct_2(vec3<i32>(23330i, 0i, 29354i), vec2<i32>(-1i, 27132i), vec4<u32>(32981u, 0u, 27445u, 1u), vec2<i32>(28352i, 0i), 0u), 159f, Struct_2(vec3<i32>(-7267i, 1i, 17094i), vec2<i32>(0i, -31616i), vec4<u32>(64215u, 20175u, 2105u, 1u), vec2<i32>(55747i, 1i), 0u))), Struct_5(true, vec2<u32>(1u, 34857u), -1608f, vec2<bool>(true, false), Struct_4(Struct_3(507f, vec3<u32>(4294967295u, 30373u, 0u), 54386i, 2147483647i, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)), Struct_2(vec3<i32>(-1i, 2147483647i, 1i), vec2<i32>(-20969i, 0i), vec4<u32>(41950u, 4294967295u, 1u, 4606u), vec2<i32>(i32(-2147483648), 1i), 0u), Struct_2(vec3<i32>(60153i, 1i, 1i), vec2<i32>(i32(-2147483648), -7609i), vec4<u32>(59124u, 28670u, 1u, 41356u), vec2<i32>(-17726i, 2147483647i), 37779u), -1110f, Struct_2(vec3<i32>(1i, 57699i, -1i), vec2<i32>(33i, i32(-2147483648)), vec4<u32>(18091u, 0u, 0u, 1u), vec2<i32>(33229i, 0i), 49406u))), Struct_5(true, vec2<u32>(4294967295u, 0u), -1340f, vec2<bool>(true, false), Struct_4(Struct_3(-1299f, vec3<u32>(4790u, 4294967295u, 11258u), 2147483647i, -1i, vec4<u32>(0u, 27266u, 36683u, 1u)), Struct_2(vec3<i32>(2147483647i, 1i, 1i), vec2<i32>(1i, -17219i), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u), vec2<i32>(53565i, 64826i), 4294967295u), Struct_2(vec3<i32>(15406i, 0i, i32(-2147483648)), vec2<i32>(22066i, 2147483647i), vec4<u32>(7658u, 1u, 38745u, 1u), vec2<i32>(0i, -4391i), 58688u), -1249f, Struct_2(vec3<i32>(0i, -20053i, 20974i), vec2<i32>(-59408i, 0i), vec4<u32>(5527u, 6347u, 4294967295u, 14636u), vec2<i32>(39851i, 12534i), 0u))), Struct_5(false, vec2<u32>(63618u, 22382u), 733f, vec2<bool>(true, false), Struct_4(Struct_3(-3091f, vec3<u32>(0u, 5215u, 1u), 0i, 36032i, vec4<u32>(0u, 22004u, 16299u, 30733u)), Struct_2(vec3<i32>(37046i, -1i, 1i), vec2<i32>(1i, -12888i), vec4<u32>(22368u, 1u, 8575u, 10548u), vec2<i32>(i32(-2147483648), 0i), 45089u), Struct_2(vec3<i32>(-7767i, 0i, 8672i), vec2<i32>(6448i, -1i), vec4<u32>(61081u, 1u, 0u, 1u), vec2<i32>(-12161i, 12347i), 35425u), 1000f, Struct_2(vec3<i32>(-25329i, 1i, 1i), vec2<i32>(1i, 1i), vec4<u32>(32010u, 62978u, 105808u, 1u), vec2<i32>(i32(-2147483648), 9657i), 64960u))), Struct_5(true, vec2<u32>(0u, 14509u), -710f, vec2<bool>(true, false), Struct_4(Struct_3(2193f, vec3<u32>(0u, 0u, 35411u), 29961i, 2147483647i, vec4<u32>(0u, 12933u, 29534u, 63292u)), Struct_2(vec3<i32>(0i, 1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 59765i), vec4<u32>(1u, 13099u, 1u, 44709u), vec2<i32>(-1752i, i32(-2147483648)), 0u), Struct_2(vec3<i32>(2147483647i, 31549i, i32(-2147483648)), vec2<i32>(21877i, 14986i), vec4<u32>(3503u, 1u, 5152u, 17613u), vec2<i32>(i32(-2147483648), -33348i), 1206u), 635f, Struct_2(vec3<i32>(-31413i, 49447i, -24420i), vec2<i32>(-18939i, 61037i), vec4<u32>(4294967295u, 1u, 1u, 19992u), vec2<i32>(i32(-2147483648), 0i), 0u))), Struct_5(false, vec2<u32>(16565u, 0u), 1205f, vec2<bool>(false, false), Struct_4(Struct_3(1768f, vec3<u32>(46107u, 26691u, 50442u), i32(-2147483648), -57098i, vec4<u32>(4294967295u, 4294967295u, 6271u, 7323u)), Struct_2(vec3<i32>(0i, -14203i, -1i), vec2<i32>(-26746i, 27040i), vec4<u32>(54791u, 9341u, 1u, 63684u), vec2<i32>(-2387i, 20984i), 1u), Struct_2(vec3<i32>(0i, -1i, 27270i), vec2<i32>(-45555i, 9698i), vec4<u32>(15231u, 0u, 0u, 24709u), vec2<i32>(1i, 61868i), 0u), -303f, Struct_2(vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec2<i32>(2147483647i, -6872i), vec4<u32>(43981u, 175u, 1u, 34436u), vec2<i32>(-64757i, 43355i), 9590u))));

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(-428f, vec3<i32>(1i, 53638i, 3781i), vec2<bool>(true, false), 4294967295u), Struct_1(-173f, vec3<i32>(0i, -1i, 12165i), vec2<bool>(false, false), 4294967295u), Struct_1(-985f, vec3<i32>(i32(-2147483648), 28627i, 2044i), vec2<bool>(false, true), 41917u), Struct_1(-570f, vec3<i32>(0i, 16576i, 40595i), vec2<bool>(true, false), 32741u), Struct_1(-1393f, vec3<i32>(23958i, 14031i, 26377i), vec2<bool>(false, false), 4294967295u), Struct_1(1130f, vec3<i32>(1i, -828i, 1i), vec2<bool>(true, false), 12161u), Struct_1(-316f, vec3<i32>(24631i, i32(-2147483648), 6534i), vec2<bool>(true, true), 7354u), Struct_1(1405f, vec3<i32>(-15712i, 68591i, -7212i), vec2<bool>(false, false), 15309u), Struct_1(-751f, vec3<i32>(1i, 20553i, 24174i), vec2<bool>(true, true), 1u), Struct_1(-161f, vec3<i32>(-25975i, 11246i, -1i), vec2<bool>(true, true), 4294967295u), Struct_1(-218f, vec3<i32>(1i, 0i, i32(-2147483648)), vec2<bool>(true, false), 65814u), Struct_1(-789f, vec3<i32>(0i, 1i, -16631i), vec2<bool>(false, true), 82074u), Struct_1(-563f, vec3<i32>(0i, -525i, -1i), vec2<bool>(false, true), 15599u), Struct_1(-393f, vec3<i32>(i32(-2147483648), -36631i, 36754i), vec2<bool>(true, true), 40242u), Struct_1(-2104f, vec3<i32>(36180i, i32(-2147483648), 6570i), vec2<bool>(false, true), 1u), Struct_1(-1000f, vec3<i32>(1i, 0i, i32(-2147483648)), vec2<bool>(true, true), 23541u), Struct_1(-1880f, vec3<i32>(-1i, -10387i, -74228i), vec2<bool>(false, false), 137953u), Struct_1(256f, vec3<i32>(2258i, i32(-2147483648), 1i), vec2<bool>(true, true), 4294967295u), Struct_1(2913f, vec3<i32>(1i, 2552i, -24019i), vec2<bool>(false, false), 32982u), Struct_1(-1413f, vec3<i32>(-14302i, 1i, -29247i), vec2<bool>(false, true), 60234u), Struct_1(-186f, vec3<i32>(22967i, -39418i, 1i), vec2<bool>(true, false), 33593u), Struct_1(-142f, vec3<i32>(-2454i, 0i, -7153i), vec2<bool>(true, true), 1u), Struct_1(858f, vec3<i32>(17368i, 2147483647i, i32(-2147483648)), vec2<bool>(false, true), 51849u), Struct_1(-256f, vec3<i32>(-1i, 2147483647i, 2147483647i), vec2<bool>(false, false), 65314u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<u32>) -> f32 {
    let var_0 = vec4<i32>(i32(-1i) * -abs(-73084i), _wgslsmith_mult_i32(abs(-16906i & u_input.a), reverseBits(u_input.c.x)), ~(60550i << (arg_0.e % 32u)) >> ((~u_input.b.x >> (40764u % 32u)) % 32u), abs(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_0.d.x, 24382i, -2147483647i, -1i)), vec4<i32>(u_input.a, u_input.a, 1i, u_input.d) ^ vec4<i32>(arg_0.a.x, u_input.c.x, 61825i, -1i)))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, -12254i, 2147483647i, -(~u_input.d)), _wgslsmith_clamp_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, 1i, -12790i, 1i), vec4<i32>(u_input.d, arg_0.d.x, 1i, -14567i), vec4<i32>(0i, -45561i, arg_0.b.x, -38135i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.b.x, 0i, arg_0.b.x, u_input.a), vec4<i32>(-14198i, 0i, u_input.d, arg_0.b.x)), true), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, arg_0.a.x, -1i, u_input.c.x), countOneBits(vec4<i32>(-4965i, arg_0.a.x, arg_0.d.x, arg_0.b.x))), -firstTrailingBit(vec4<i32>(u_input.c.x, u_input.c.x, u_input.a, u_input.c.x))));
    global0 = array<Struct_5, 23>();
    let var_1 = Struct_5(arg_1.x, u_input.b.wz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1444f, 1431f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), arg_1.x))), arg_1, Struct_4(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(357f, 1000f)), vec3<u32>(arg_0.e, 0u, arg_2.x) & (u_input.b.yyx | vec3<u32>(21664u, arg_2.x, 1u)), reverseBits(arg_0.d.x ^ 36307i), _wgslsmith_mod_i32(0i, min(-12857i, arg_0.d.x)), max(vec4<u32>(1u, 1u, u_input.b.x, 1u), _wgslsmith_sub_vec4_u32(u_input.b, vec4<u32>(arg_2.x, 32648u, 4294967295u, arg_2.x)))), arg_0, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(1f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1869f)))), Struct_2(var_0.wxw, u_input.c.zz, _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(44717u, 1u, u_input.b.x, 1u)), ~vec4<u32>(1061u, 1u, u_input.b.x, 15752u)), abs(~u_input.c.zy), ~(~u_input.b.x))));
    var var_2 = ~(vec2<u32>(arg_0.e, ~(arg_0.c.x << (arg_2.x % 32u))) ^ max(arg_2.xy, reverseBits(u_input.b.xz)));
    let var_3 = -_wgslsmith_dot_vec2_i32(arg_0.a.xz, arg_0.a.xz);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1017f, 485f))) + var_1.e.d);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> i32 {
    var var_0 = false;
    global0 = array<Struct_5, 23>();
    let var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0, vec2<bool>(arg_1.x, false), vec4<u32>(arg_0.e, u_input.b.x, 18585u, 59359u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -459f) + 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -908f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(min(-451f, -1736f))), 789f, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -191f) - 617f) - _wgslsmith_f_op_f32(-1131f * _wgslsmith_f_op_f32(1378f + 696f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(553f + _wgslsmith_f_op_f32(f32(-1f) * -759f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 119f, -1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2605f, var_1.x, var_1.x)))), var_1.yyy, !(!(!arg_1.xzy))))));
    global0 = array<Struct_5, 23>();
    return ~(~(-6804i));
}

fn func_1() -> bool {
    let var_0 = u_input.c;
    let var_1 = -select(countOneBits(vec4<i32>(-2147483647i, var_0.x, func_2(Struct_2(var_0, var_0.zx, vec4<u32>(1u, u_input.b.x, u_input.b.x, 12779u), u_input.c.yz, 1u), vec4<bool>(true, true, false, false)), -793i)), ~(vec4<i32>(var_0.x, u_input.a, var_0.x, var_0.x) >> (u_input.b % vec4<u32>(32u))), select(true, select(true, u_input.b.x != 0u, all(vec3<bool>(true, false, true))), all(select(vec2<bool>(true, true), vec2<bool>(false, false), true))));
    global0 = array<Struct_5, 23>();
    let var_2 = !(!select(!select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true), vec2<bool>(true, true)));
    global1 = array<Struct_1, 24>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 24>();
    let var_0 = !all(select(vec3<bool>(true, any(vec2<bool>(true, true)), false), vec3<bool>(1i <= u_input.c.x, all(vec4<bool>(true, true, false, false)), false), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), func_1())));
    var var_1 = Struct_4(Struct_3(1603f, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 8693u, u_input.b.x) & vec3<u32>(u_input.b.x, 0u, u_input.b.x), u_input.b.xwx & vec3<u32>(0u, u_input.b.x, 69389u)) | ~firstLeadingBit(u_input.b.zww), -_wgslsmith_sub_i32(-11531i, u_input.c.x) ^ select(u_input.a, u_input.a, !var_0), _wgslsmith_dot_vec3_i32(-min(u_input.c, vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x)), -vec3<i32>(-1i, -31403i, -1i)), ~reverseBits(~vec4<u32>(4294967295u, u_input.b.x, 4294967295u, u_input.b.x))), Struct_2(abs(~vec3<i32>(-9332i, u_input.a, u_input.d)), vec2<i32>(_wgslsmith_clamp_i32(u_input.a, -u_input.c.x, u_input.c.x), ~(~u_input.d)), _wgslsmith_mult_vec4_u32(u_input.b, u_input.b), countOneBits(-_wgslsmith_sub_vec2_i32(u_input.c.xy, vec2<i32>(u_input.a, u_input.c.x))), ~_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b.x, 59783u), 4294967295u)), Struct_2(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c.x, reverseBits(u_input.d), max(u_input.c.x, -2147483647i)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.d, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, 18340i)), _wgslsmith_div_vec3_i32(u_input.c, u_input.c))), vec2<i32>(firstLeadingBit(0i >> (0u % 32u)), countOneBits(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.a, 37337i, u_input.a)))), countOneBits(~(~u_input.b)), -vec2<i32>(1i, u_input.c.x), u_input.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(~vec3<i32>(1i, u_input.a, 36144i), u_input.c.yx << (u_input.b.zx % vec2<u32>(32u)), select(vec4<u32>(4294967295u, u_input.b.x, 1u, 74027u), u_input.b, vec4<bool>(var_0, var_0, false, var_0)), vec2<i32>(0i, u_input.d), ~u_input.b.x), !select(vec2<bool>(true, true), vec2<bool>(var_0, var_0), false), ~vec4<u32>(u_input.b.x, 4294967295u, 46364u, u_input.b.x))), 607f), Struct_2(vec3<i32>(-u_input.d, u_input.d >> (4682u % 32u), u_input.a) >> (~(~u_input.b.zxy) % vec3<u32>(32u)), u_input.c.zy, ~u_input.b, select(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, -2147483647i), ~2147483647i), reverseBits(reverseBits(u_input.c.yz)), vec2<bool>(true, true)), u_input.b.x));
    var var_2 = vec3<bool>(all(!(!(!vec2<bool>(var_0, var_0)))), var_0, var_1.d > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(var_1.b, select(vec2<bool>(false, var_0), vec2<bool>(true, var_0), true), vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x))))));
    let var_3 = -178f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d)))));
}

