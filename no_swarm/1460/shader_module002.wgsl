struct Struct_1 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: bool,
    c: vec3<bool>,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool;

var<private> global2: bool = true;

var<private> global3: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(Struct_1(vec4<i32>(-18958i, 0i, -53338i, 18536i), 1113f), true, Struct_1(vec4<i32>(1i, 29770i, 0i, -15685i), 434f), 1073f), Struct_4(Struct_1(vec4<i32>(1i, -41759i, -1i, 2147483647i), -577f), true, Struct_1(vec4<i32>(0i, 1i, -1i, -38140i), 382f), 180f), Struct_4(Struct_1(vec4<i32>(-1i, -8317i, 2147483647i, 0i), -2410f), true, Struct_1(vec4<i32>(17098i, 31062i, 0i, 2147483647i), -1874f), -1000f), Struct_4(Struct_1(vec4<i32>(-1i, -6517i, 0i, -6832i), 1238f), true, Struct_1(vec4<i32>(-50019i, 26855i, 57529i, 2147483647i), -288f), -386f), Struct_4(Struct_1(vec4<i32>(-53520i, 1i, 32561i, -4219i), 182f), true, Struct_1(vec4<i32>(-35757i, -1901i, -59272i, -1i), -321f), -780f), Struct_4(Struct_1(vec4<i32>(-57028i, -5365i, 2147483647i, 24737i), -844f), false, Struct_1(vec4<i32>(25110i, -1i, 0i, -23111i), 190f), 1189f), Struct_4(Struct_1(vec4<i32>(106i, 8907i, i32(-2147483648), i32(-2147483648)), 1000f), true, Struct_1(vec4<i32>(1i, 23058i, 21273i, 6055i), 175f), -503f), Struct_4(Struct_1(vec4<i32>(-14688i, -23878i, 52848i, 43285i), -456f), true, Struct_1(vec4<i32>(5203i, -1i, -7832i, -2421i), -472f), 115f), Struct_4(Struct_1(vec4<i32>(11242i, 2147483647i, 2147483647i, 2147483647i), -1694f), true, Struct_1(vec4<i32>(-1i, 1i, -73329i, 0i), 141f), 838f), Struct_4(Struct_1(vec4<i32>(-52519i, -24338i, 51063i, 2147483647i), -138f), false, Struct_1(vec4<i32>(3308i, -1i, 9835i, 1i), 237f), 1000f), Struct_4(Struct_1(vec4<i32>(14249i, 2147483647i, i32(-2147483648), 1i), 1147f), true, Struct_1(vec4<i32>(0i, 2147483647i, 21118i, -17011i), -1000f), 1713f), Struct_4(Struct_1(vec4<i32>(-18550i, -1i, i32(-2147483648), 2147483647i), -471f), true, Struct_1(vec4<i32>(1i, -55967i, -10835i, 2147483647i), 783f), 543f), Struct_4(Struct_1(vec4<i32>(2147483647i, 2147483647i, 2147483647i, 1i), -561f), false, Struct_1(vec4<i32>(1i, -1i, 2147483647i, -1i), -1166f), 999f), Struct_4(Struct_1(vec4<i32>(35599i, -22284i, 149i, 1i), -617f), false, Struct_1(vec4<i32>(-17982i, 22276i, 29444i, 25384i), 203f), 536f), Struct_4(Struct_1(vec4<i32>(38761i, i32(-2147483648), 11109i, -4094i), -593f), false, Struct_1(vec4<i32>(2147483647i, -1i, -40878i, 2147483647i), 1995f), -1227f), Struct_4(Struct_1(vec4<i32>(-13984i, 644i, 0i, -138i), 648f), true, Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -20515i, 25954i), -122f), 1378f), Struct_4(Struct_1(vec4<i32>(2147483647i, 5596i, 0i, -37354i), -1000f), true, Struct_1(vec4<i32>(1i, 0i, -1i, -1i), -1555f), 665f), Struct_4(Struct_1(vec4<i32>(-1i, 2147483647i, -76189i, 29778i), -1003f), true, Struct_1(vec4<i32>(-1i, -1i, 30538i, -1740i), -1051f), -165f), Struct_4(Struct_1(vec4<i32>(-42916i, -28110i, 1i, -8763i), 780f), false, Struct_1(vec4<i32>(-40915i, 37269i, 30259i, i32(-2147483648)), -189f), -817f), Struct_4(Struct_1(vec4<i32>(-13580i, 13480i, 19073i, 0i), 591f), false, Struct_1(vec4<i32>(1i, -65665i, -10698i, -27602i), 646f), 723f), Struct_4(Struct_1(vec4<i32>(-8039i, -1i, -60357i, 33020i), 213f), true, Struct_1(vec4<i32>(-29888i, 53887i, i32(-2147483648), 1i), 379f), 1000f), Struct_4(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 2494i, 2147483647i), 822f), false, Struct_1(vec4<i32>(-11235i, i32(-2147483648), -547i, i32(-2147483648)), 1000f), 666f), Struct_4(Struct_1(vec4<i32>(-9388i, 11545i, i32(-2147483648), 2147483647i), -1217f), false, Struct_1(vec4<i32>(32686i, -1i, 1i, -3448i), 195f), 134f), Struct_4(Struct_1(vec4<i32>(-19839i, i32(-2147483648), 1i, -1i), 1000f), true, Struct_1(vec4<i32>(-1i, 2147483647i, 25256i, -38726i), -1000f), 697f), Struct_4(Struct_1(vec4<i32>(i32(-2147483648), 18508i, -41071i, 13272i), 1526f), true, Struct_1(vec4<i32>(0i, 7152i, 21381i, 3783i), 422f), 468f), Struct_4(Struct_1(vec4<i32>(20379i, -30628i, i32(-2147483648), -17399i), -1344f), true, Struct_1(vec4<i32>(-68120i, 3942i, 0i, -1i), -131f), 262f), Struct_4(Struct_1(vec4<i32>(i32(-2147483648), -37893i, -12916i, -1i), 128f), true, Struct_1(vec4<i32>(1i, -1i, i32(-2147483648), -24244i), -410f), -233f), Struct_4(Struct_1(vec4<i32>(i32(-2147483648), 1i, 1i, -32524i), -1351f), false, Struct_1(vec4<i32>(i32(-2147483648), -1i, 45901i, -467i), 1000f), 546f), Struct_4(Struct_1(vec4<i32>(1i, -4899i, -1i, 0i), 804f), false, Struct_1(vec4<i32>(2147483647i, 46285i, 45354i, -23726i), -1698f), 356f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(u_input.e.x << (firstTrailingBit(abs(4294967295u | u_input.a)) % 32u));
    let var_1 = Struct_1(u_input.e, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(284f - _wgslsmith_f_op_f32(step(110f, 2159f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-203f + _wgslsmith_f_op_f32(f32(-1f) * -230f)), -1137f, !any(vec4<bool>(false, false, false, true))))));
    var var_2 = u_input.c;
    global2 = true;
    var var_3 = Struct_2(u_input.c.x, 34806u, !select(true && any(vec2<bool>(true, true)), true, !any(vec4<bool>(true, true, true, false))));
    global3 = array<Struct_4, 29>();
    let var_4 = vec4<bool>(var_3.c, any(vec4<bool>(false, ~u_input.b.x >= firstLeadingBit(u_input.a), (var_3.c || false) == var_3.c, true)), false, var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(~(var_2.x ^ 18635u))), firstTrailingBit(_wgslsmith_div_u32(var_3.b, _wgslsmith_mod_u32(0u, 1u) & ~var_3.b)), var_1.b, ~_wgslsmith_div_u32(min(var_3.b, 49756u), var_2.x << (0u % 32u)) & 14077u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.b, var_1.b)) - _wgslsmith_f_op_f32(max(-551f, 195f)))))));
}

