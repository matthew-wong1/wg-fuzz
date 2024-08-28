struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
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

var<private> global0: array<f32, 21> = array<f32, 21>(262f, 178f, -570f, -1437f, 1738f, 3811f, 399f, -816f, 1993f, 184f, -573f, 3232f, 1000f, -1162f, 300f, 172f, -389f, 1736f, 1133f, -1625f, -640f);

var<private> global1: array<Struct_3, 19> = array<Struct_3, 19>(Struct_3(vec2<bool>(false, false), vec4<i32>(33737i, 8153i, 35571i, 7285i), Struct_2(vec2<u32>(4294967295u, 23552u), Struct_1(0u, 472f, -202f, vec3<u32>(4294967295u, 11704u, 57276u))), vec4<bool>(true, true, true, true), vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true), vec4<i32>(6511i, -1i, 49906i, i32(-2147483648)), Struct_2(vec2<u32>(10761u, 0u), Struct_1(4294967295u, -1787f, -1704f, vec3<u32>(4294967295u, 58436u, 16290u))), vec4<bool>(false, false, true, false), vec2<bool>(true, true)), Struct_3(vec2<bool>(true, true), vec4<i32>(i32(-2147483648), 3711i, 2147483647i, 27319i), Struct_2(vec2<u32>(42993u, 55638u), Struct_1(17548u, 914f, -314f, vec3<u32>(4294967295u, 33049u, 20906u))), vec4<bool>(true, false, true, false), vec2<bool>(true, false)), Struct_3(vec2<bool>(false, false), vec4<i32>(1i, 0i, 32122i, -1i), Struct_2(vec2<u32>(0u, 65417u), Struct_1(61387u, -762f, 1023f, vec3<u32>(65456u, 14423u, 4432u))), vec4<bool>(true, true, true, false), vec2<bool>(false, false)), Struct_3(vec2<bool>(false, false), vec4<i32>(-1i, -1i, i32(-2147483648), -38355i), Struct_2(vec2<u32>(56037u, 73170u), Struct_1(110988u, -2873f, 1937f, vec3<u32>(0u, 9300u, 2785u))), vec4<bool>(false, true, true, false), vec2<bool>(true, false)), Struct_3(vec2<bool>(true, false), vec4<i32>(i32(-2147483648), 45344i, -1i, -1i), Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(1u, 272f, 520f, vec3<u32>(0u, 4294967295u, 1u))), vec4<bool>(false, true, false, true), vec2<bool>(false, true)), Struct_3(vec2<bool>(false, true), vec4<i32>(1i, 28952i, 17291i, 2147483647i), Struct_2(vec2<u32>(0u, 43934u), Struct_1(7488u, 409f, -310f, vec3<u32>(61916u, 84470u, 23389u))), vec4<bool>(true, false, true, true), vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true), vec4<i32>(-10937i, 0i, -1i, 0i), Struct_2(vec2<u32>(27266u, 67367u), Struct_1(1u, -565f, 489f, vec3<u32>(0u, 12478u, 4294967295u))), vec4<bool>(true, true, false, true), vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false), vec4<i32>(0i, 22892i, 32408i, -11885i), Struct_2(vec2<u32>(16389u, 33538u), Struct_1(68469u, 192f, -948f, vec3<u32>(0u, 65974u, 4294967295u))), vec4<bool>(true, false, false, true), vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true), vec4<i32>(-7069i, i32(-2147483648), -1857i, -1i), Struct_2(vec2<u32>(4294967295u, 13108u), Struct_1(4294967295u, -515f, -650f, vec3<u32>(46192u, 4294967295u, 41093u))), vec4<bool>(true, true, true, true), vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true), vec4<i32>(-19645i, 0i, 2147483647i, 1i), Struct_2(vec2<u32>(32665u, 4294967295u), Struct_1(0u, -1656f, 1292f, vec3<u32>(48624u, 69254u, 51420u))), vec4<bool>(false, false, false, true), vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true), vec4<i32>(0i, 0i, 0i, 2147483647i), Struct_2(vec2<u32>(0u, 0u), Struct_1(18447u, 1077f, 396f, vec3<u32>(1u, 0u, 4294967295u))), vec4<bool>(true, true, false, true), vec2<bool>(false, false)), Struct_3(vec2<bool>(false, false), vec4<i32>(19687i, 57444i, -63370i, 9520i), Struct_2(vec2<u32>(0u, 0u), Struct_1(0u, 1976f, 1406f, vec3<u32>(30792u, 0u, 428u))), vec4<bool>(true, true, false, true), vec2<bool>(false, true)), Struct_3(vec2<bool>(false, true), vec4<i32>(2147483647i, 50930i, -46196i, -91007i), Struct_2(vec2<u32>(4294967295u, 54547u), Struct_1(24236u, 1000f, -750f, vec3<u32>(1u, 17928u, 4294967295u))), vec4<bool>(false, false, false, false), vec2<bool>(true, false)), Struct_3(vec2<bool>(true, false), vec4<i32>(56198i, 19883i, -1i, i32(-2147483648)), Struct_2(vec2<u32>(84823u, 65033u), Struct_1(21967u, -439f, 606f, vec3<u32>(22393u, 0u, 49534u))), vec4<bool>(false, false, true, false), vec2<bool>(false, false)), Struct_3(vec2<bool>(true, false), vec4<i32>(0i, 14770i, i32(-2147483648), 2147483647i), Struct_2(vec2<u32>(14953u, 49405u), Struct_1(36842u, 1754f, -511f, vec3<u32>(13083u, 23080u, 0u))), vec4<bool>(false, true, false, true), vec2<bool>(true, true)), Struct_3(vec2<bool>(true, false), vec4<i32>(i32(-2147483648), -16328i, 58899i, -21682i), Struct_2(vec2<u32>(9507u, 0u), Struct_1(1u, -194f, -187f, vec3<u32>(13105u, 37019u, 0u))), vec4<bool>(true, false, true, true), vec2<bool>(true, false)), Struct_3(vec2<bool>(false, true), vec4<i32>(60963i, 2147483647i, -56832i, 46711i), Struct_2(vec2<u32>(4833u, 14165u), Struct_1(1u, 212f, -1208f, vec3<u32>(67070u, 62544u, 0u))), vec4<bool>(true, false, false, true), vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true), vec4<i32>(-1i, -28711i, -28466i, i32(-2147483648)), Struct_2(vec2<u32>(57037u, 4294967295u), Struct_1(84396u, 176f, -284f, vec3<u32>(1u, 25002u, 63411u))), vec4<bool>(true, false, false, false), vec2<bool>(true, true)));

var<private> global2: array<vec2<bool>, 3>;

var<private> global3: array<bool, 5>;

var<private> global4: Struct_2 = Struct_2(vec2<u32>(54638u, 93334u), Struct_1(22958u, -1783f, -1692f, vec3<u32>(0u, 4294967295u, 76468u)));

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(-746f);
}

