struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_4,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 12>;

var<private> global1: array<vec4<i32>, 8>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, true), vec2<u32>(1286u, 51405u), vec2<i32>(-1i, -12369i));

var<private> global3: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(vec4<f32>(510f, 789f, -350f, -735f), vec4<u32>(35346u, 1u, 0u, 0u), Struct_1(vec2<bool>(true, false), vec2<u32>(0u, 0u), vec2<i32>(0i, i32(-2147483648))), true), Struct_4(vec4<f32>(373f, 869f, 480f, -383f), vec4<u32>(4294967295u, 12726u, 8771u, 1u), Struct_1(vec2<bool>(true, true), vec2<u32>(0u, 0u), vec2<i32>(26627i, 62321i)), false), Struct_4(vec4<f32>(-194f, 916f, -270f, -887f), vec4<u32>(40882u, 4294967295u, 0u, 99178u), Struct_1(vec2<bool>(false, true), vec2<u32>(0u, 22136u), vec2<i32>(-3235i, i32(-2147483648))), true), Struct_4(vec4<f32>(531f, -1140f, 356f, -1912f), vec4<u32>(43275u, 4294967295u, 0u, 63565u), Struct_1(vec2<bool>(true, false), vec2<u32>(0u, 78362u), vec2<i32>(2147483647i, -21660i)), true), Struct_4(vec4<f32>(326f, -816f, 187f, -663f), vec4<u32>(0u, 0u, 4294967295u, 2836u), Struct_1(vec2<bool>(true, true), vec2<u32>(4294967295u, 4294967295u), vec2<i32>(i32(-2147483648), -31164i)), false), Struct_4(vec4<f32>(859f, 1002f, -631f, 2695f), vec4<u32>(4294967295u, 0u, 18557u, 78010u), Struct_1(vec2<bool>(true, true), vec2<u32>(1u, 9788u), vec2<i32>(-1i, 2147483647i)), false), Struct_4(vec4<f32>(-1000f, -1682f, 282f, -824f), vec4<u32>(0u, 1u, 24176u, 1u), Struct_1(vec2<bool>(true, false), vec2<u32>(31902u, 4294967295u), vec2<i32>(-1i, 1i)), true), Struct_4(vec4<f32>(-1937f, -1291f, 724f, 181f), vec4<u32>(0u, 24729u, 5963u, 73978u), Struct_1(vec2<bool>(true, false), vec2<u32>(47967u, 140529u), vec2<i32>(-1i, -18133i)), true), Struct_4(vec4<f32>(994f, -894f, -193f, -1193f), vec4<u32>(1u, 4294967295u, 1u, 4213u), Struct_1(vec2<bool>(true, false), vec2<u32>(43808u, 17911u), vec2<i32>(-1i, 2147483647i)), false), Struct_4(vec4<f32>(-405f, -1076f, -159f, -1244f), vec4<u32>(40300u, 55272u, 2495u, 1u), Struct_1(vec2<bool>(true, false), vec2<u32>(1u, 1u), vec2<i32>(1i, 2147483647i)), true), Struct_4(vec4<f32>(-1000f, -1000f, 887f, -770f), vec4<u32>(36704u, 16391u, 4294967295u, 14223u), Struct_1(vec2<bool>(false, false), vec2<u32>(60820u, 1u), vec2<i32>(i32(-2147483648), 71541i)), false), Struct_4(vec4<f32>(-1703f, 105f, 1111f, 1597f), vec4<u32>(1u, 26886u, 29628u, 1u), Struct_1(vec2<bool>(true, false), vec2<u32>(1u, 25822u), vec2<i32>(-29660i, 46152i)), false), Struct_4(vec4<f32>(588f, -741f, -318f, 164f), vec4<u32>(84152u, 0u, 0u, 43034u), Struct_1(vec2<bool>(true, true), vec2<u32>(22400u, 38522u), vec2<i32>(-15517i, 66225i)), true), Struct_4(vec4<f32>(-543f, 1000f, 706f, 587f), vec4<u32>(14324u, 4294967295u, 16994u, 8795u), Struct_1(vec2<bool>(false, true), vec2<u32>(24618u, 8914u), vec2<i32>(8453i, i32(-2147483648))), false), Struct_4(vec4<f32>(1522f, 166f, -1000f, -1917f), vec4<u32>(17759u, 4294967295u, 4294967295u, 13921u), Struct_1(vec2<bool>(false, true), vec2<u32>(0u, 44122u), vec2<i32>(29930i, i32(-2147483648))), false), Struct_4(vec4<f32>(402f, -243f, -448f, -224f), vec4<u32>(99030u, 81449u, 12154u, 0u), Struct_1(vec2<bool>(false, false), vec2<u32>(32548u, 4294967295u), vec2<i32>(-38140i, i32(-2147483648))), false), Struct_4(vec4<f32>(-476f, 427f, 986f, -1009f), vec4<u32>(22775u, 32224u, 16614u, 4294967295u), Struct_1(vec2<bool>(false, false), vec2<u32>(11732u, 3418u), vec2<i32>(1i, 2982i)), true), Struct_4(vec4<f32>(1000f, -713f, 592f, -1000f), vec4<u32>(0u, 0u, 0u, 17133u), Struct_1(vec2<bool>(false, false), vec2<u32>(0u, 14561u), vec2<i32>(i32(-2147483648), -1i)), false), Struct_4(vec4<f32>(-679f, -2136f, -269f, 1109f), vec4<u32>(39031u, 16279u, 4294967295u, 1u), Struct_1(vec2<bool>(false, true), vec2<u32>(36265u, 2370u), vec2<i32>(0i, 40213i)), true), Struct_4(vec4<f32>(215f, 802f, 1000f, 1000f), vec4<u32>(63045u, 4294967295u, 27874u, 4294967295u), Struct_1(vec2<bool>(true, false), vec2<u32>(4294967295u, 18534u), vec2<i32>(i32(-2147483648), -18813i)), false), Struct_4(vec4<f32>(318f, 1525f, 1177f, 420f), vec4<u32>(39851u, 24104u, 1u, 52891u), Struct_1(vec2<bool>(false, true), vec2<u32>(0u, 1u), vec2<i32>(-1i, 57126i)), true), Struct_4(vec4<f32>(163f, 1000f, -1159f, -4127f), vec4<u32>(4294967295u, 35984u, 1u, 1u), Struct_1(vec2<bool>(true, true), vec2<u32>(1u, 7713u), vec2<i32>(10856i, 7056i)), true), Struct_4(vec4<f32>(1000f, -1367f, 678f, -216f), vec4<u32>(42887u, 2115u, 35487u, 47508u), Struct_1(vec2<bool>(false, false), vec2<u32>(4294967295u, 5309u), vec2<i32>(2147483647i, 0i)), true), Struct_4(vec4<f32>(1795f, -372f, 395f, 538f), vec4<u32>(6882u, 1u, 44514u, 45720u), Struct_1(vec2<bool>(true, false), vec2<u32>(0u, 0u), vec2<i32>(1i, i32(-2147483648))), true), Struct_4(vec4<f32>(1000f, -965f, -616f, -711f), vec4<u32>(50825u, 4294967295u, 0u, 1u), Struct_1(vec2<bool>(false, false), vec2<u32>(6289u, 1u), vec2<i32>(63419i, 5000i)), false), Struct_4(vec4<f32>(-1080f, 563f, 2598f, -2314f), vec4<u32>(0u, 4294967295u, 43581u, 50985u), Struct_1(vec2<bool>(false, true), vec2<u32>(0u, 1u), vec2<i32>(-62307i, -13166i)), true), Struct_4(vec4<f32>(259f, 130f, -1189f, 942f), vec4<u32>(4294967295u, 54962u, 43763u, 0u), Struct_1(vec2<bool>(false, false), vec2<u32>(0u, 4294967295u), vec2<i32>(-38985i, -4842i)), false), Struct_4(vec4<f32>(852f, -1019f, -683f, -397f), vec4<u32>(66145u, 60469u, 141048u, 1u), Struct_1(vec2<bool>(true, false), vec2<u32>(543u, 4294967295u), vec2<i32>(1i, 28118i)), false), Struct_4(vec4<f32>(1126f, 1118f, -956f, -248f), vec4<u32>(19810u, 28654u, 0u, 1u), Struct_1(vec2<bool>(true, false), vec2<u32>(23109u, 27066u), vec2<i32>(-3220i, 0i)), true), Struct_4(vec4<f32>(-140f, 732f, -795f, -471f), vec4<u32>(1u, 5191u, 1u, 15122u), Struct_1(vec2<bool>(false, true), vec2<u32>(11256u, 74523u), vec2<i32>(0i, -33202i)), true), Struct_4(vec4<f32>(657f, -1000f, -660f, 1592f), vec4<u32>(1u, 31655u, 30243u, 18951u), Struct_1(vec2<bool>(false, true), vec2<u32>(46752u, 4294967295u), vec2<i32>(15828i, 2147483647i)), true));

var<private> global4: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(global2.b.x);
    let var_1 = 1i;
    global0 = array<vec4<f32>, 12>();
    let var_2 = Struct_1(!(!global4.a), (vec2<u32>(~45525u, _wgslsmith_div_u32(4294967295u, 44900u)) ^ _wgslsmith_clamp_vec2_u32(global4.b & vec2<u32>(global2.b.x, global2.b.x), vec2<u32>(var_0, var_0), select(vec2<u32>(1u, 4294967295u), global4.b, global4.a.x))) ^ countOneBits(abs(max(global2.b, global4.b))), global4.c);
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(max(global2.b.x, ~_wgslsmith_div_u32(global2.b.x, var_0)), ~var_2.b.x | countOneBits(global4.b.x)), ~1u, 1165f);
}

