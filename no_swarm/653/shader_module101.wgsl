struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<bool>,
    d: vec2<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<i32>(i32(-2147483648), -1i, -10177i, 20730i), vec2<i32>(-1i, 2147483647i), vec2<bool>(false, false), vec2<u32>(7758u, 0u), vec4<f32>(-1517f, 1132f, -453f, -1814f)), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, i32(-2147483648)), vec2<i32>(29561i, 1i), vec2<bool>(false, false), vec2<u32>(4294967295u, 1u), vec4<f32>(-1000f, 720f, 1529f, 1429f)), Struct_1(vec4<i32>(-24836i, 1i, 25692i, i32(-2147483648)), vec2<i32>(1i, 0i), vec2<bool>(false, false), vec2<u32>(18214u, 1u), vec4<f32>(497f, -248f, 788f, 1237f)), Struct_1(vec4<i32>(1i, -2864i, -43866i, 2147483647i), vec2<i32>(3074i, 1i), vec2<bool>(false, true), vec2<u32>(6962u, 4294967295u), vec4<f32>(-1584f, 105f, 406f, -660f)), Struct_1(vec4<i32>(i32(-2147483648), 1i, 15144i, -16986i), vec2<i32>(35667i, -1i), vec2<bool>(false, false), vec2<u32>(0u, 1u), vec4<f32>(1954f, 857f, 714f, 536f)), Struct_1(vec4<i32>(1i, 1i, 18373i, 1i), vec2<i32>(822i, 2147483647i), vec2<bool>(true, true), vec2<u32>(13279u, 27455u), vec4<f32>(-264f, -1967f, -1369f, 322f)), Struct_1(vec4<i32>(63215i, 20362i, 2147483647i, 1i), vec2<i32>(2147483647i, -4301i), vec2<bool>(false, true), vec2<u32>(37887u, 4294967295u), vec4<f32>(383f, -541f, -1165f, 628f)), Struct_1(vec4<i32>(-6971i, i32(-2147483648), 0i, 1i), vec2<i32>(-28546i, -1i), vec2<bool>(true, true), vec2<u32>(4294967295u, 14166u), vec4<f32>(993f, 1503f, 1000f, -356f)), Struct_1(vec4<i32>(31221i, -50061i, 236i, i32(-2147483648)), vec2<i32>(1i, -29774i), vec2<bool>(false, false), vec2<u32>(0u, 4294967295u), vec4<f32>(339f, -1494f, 1000f, 1264f)), Struct_1(vec4<i32>(2147483647i, 1i, 1i, 0i), vec2<i32>(1i, -1i), vec2<bool>(false, true), vec2<u32>(0u, 21245u), vec4<f32>(1105f, -1000f, 594f, 262f)), Struct_1(vec4<i32>(i32(-2147483648), -75619i, 2147483647i, 0i), vec2<i32>(-52868i, -14948i), vec2<bool>(false, false), vec2<u32>(4294967295u, 0u), vec4<f32>(503f, -497f, 435f, -1180f)), Struct_1(vec4<i32>(32032i, 2147483647i, 0i, 11112i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<bool>(true, true), vec2<u32>(1u, 39627u), vec4<f32>(1000f, -428f, -999f, 300f)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 29292i, 29476i), vec2<i32>(0i, 2147483647i), vec2<bool>(false, true), vec2<u32>(39450u, 0u), vec4<f32>(369f, 1813f, -281f, 614f)), Struct_1(vec4<i32>(4026i, -1i, 0i, -83179i), vec2<i32>(83243i, 1i), vec2<bool>(true, true), vec2<u32>(4294967295u, 18927u), vec4<f32>(-151f, 1443f, 1000f, -1000f)), Struct_1(vec4<i32>(-930i, 33689i, 2147483647i, -38629i), vec2<i32>(i32(-2147483648), -2986i), vec2<bool>(true, true), vec2<u32>(17063u, 1u), vec4<f32>(1328f, 393f, -1607f, 1806f)), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 28651i), vec2<i32>(56910i, 13243i), vec2<bool>(false, false), vec2<u32>(0u, 1u), vec4<f32>(295f, 3433f, 169f, -323f)), Struct_1(vec4<i32>(-57397i, 16118i, -1i, 22929i), vec2<i32>(-4743i, -1i), vec2<bool>(true, false), vec2<u32>(14214u, 30228u), vec4<f32>(-1196f, 755f, 2435f, -1000f)), Struct_1(vec4<i32>(-4249i, i32(-2147483648), 9185i, 0i), vec2<i32>(18867i, -21483i), vec2<bool>(true, true), vec2<u32>(4294967295u, 4294967295u), vec4<f32>(-1429f, 900f, -1177f, -1282f)), Struct_1(vec4<i32>(-45312i, -10893i, i32(-2147483648), 33919i), vec2<i32>(2147483647i, 17346i), vec2<bool>(false, false), vec2<u32>(53301u, 4294967295u), vec4<f32>(237f, 1214f, -1654f, 362f)), Struct_1(vec4<i32>(-15052i, 1i, 8952i, 1i), vec2<i32>(-22883i, -20564i), vec2<bool>(false, false), vec2<u32>(30218u, 39448u), vec4<f32>(-389f, 1625f, 174f, -837f)), Struct_1(vec4<i32>(2147483647i, 1i, 54818i, -13304i), vec2<i32>(-1i, 45486i), vec2<bool>(true, false), vec2<u32>(1113u, 0u), vec4<f32>(-2538f, 1000f, -1512f, -483f)), Struct_1(vec4<i32>(6727i, 2147483647i, i32(-2147483648), 2147483647i), vec2<i32>(-6079i, 1i), vec2<bool>(true, false), vec2<u32>(4294967295u, 133u), vec4<f32>(-969f, 471f, 521f, -546f)), Struct_1(vec4<i32>(-37078i, 92551i, 2147483647i, 0i), vec2<i32>(0i, 35912i), vec2<bool>(true, true), vec2<u32>(41591u, 21494u), vec4<f32>(1152f, -316f, -121f, 1000f)), Struct_1(vec4<i32>(0i, -33137i, 1i, 13332i), vec2<i32>(-71041i, 1i), vec2<bool>(true, false), vec2<u32>(1u, 119303u), vec4<f32>(-2118f, -392f, -242f, -725f)), Struct_1(vec4<i32>(2147483647i, -33038i, 1i, i32(-2147483648)), vec2<i32>(-43077i, -62077i), vec2<bool>(true, false), vec2<u32>(42311u, 6137u), vec4<f32>(826f, 332f, 194f, 226f)), Struct_1(vec4<i32>(69053i, 2147483647i, -14861i, 2147483647i), vec2<i32>(-1i, 4841i), vec2<bool>(false, true), vec2<u32>(43164u, 25022u), vec4<f32>(667f, -1658f, 1661f, -807f)), Struct_1(vec4<i32>(-22451i, 2147483647i, -52216i, 1i), vec2<i32>(45658i, -1i), vec2<bool>(false, false), vec2<u32>(49103u, 4448u), vec4<f32>(-694f, 1023f, -350f, 770f)), Struct_1(vec4<i32>(1068i, 1i, -25764i, -3889i), vec2<i32>(-37081i, 2147483647i), vec2<bool>(false, true), vec2<u32>(26793u, 1179u), vec4<f32>(779f, -1151f, -1000f, -822f)), Struct_1(vec4<i32>(i32(-2147483648), 44451i, -26743i, -1i), vec2<i32>(-66015i, 1i), vec2<bool>(true, false), vec2<u32>(8310u, 0u), vec4<f32>(-587f, 204f, -847f, 919f)), Struct_1(vec4<i32>(-1i, 0i, 0i, 21728i), vec2<i32>(22290i, 5432i), vec2<bool>(false, false), vec2<u32>(77527u, 4294967295u), vec4<f32>(1000f, 1251f, -108f, -1250f)));

var<private> global1: bool;

var<private> global2: array<u32, 14> = array<u32, 14>(1u, 35726u, 0u, 0u, 47580u, 1u, 39575u, 1u, 0u, 36814u, 4294967295u, 46947u, 44938u, 14659u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(14135u, 0u, global2[_wgslsmith_index_u32(4294967295u, 14u)]), ~global2[_wgslsmith_index_u32(4879u, 14u)]), 14u)], 14u)], global2[_wgslsmith_index_u32(1u, 14u)]), ~(~4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(12291u, 40380u, 1u, global2[_wgslsmith_index_u32(60228u, 14u)]), ~(~vec4<u32>(39899u, 99964u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4545u, 14u)], 14u)], 0u)))), 14u)];
    global1 = u_input.c.x != 2147483647i;
    let var_1 = Struct_2(1i);
    let var_2 = var_1;
    let var_3 = all(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), vec4<bool>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(86283u, 14u)], 14u)], 14u)] > 76562u, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false))));
    return Struct_2(abs(u_input.b.x));
}

fn func_1() -> bool {
    global2 = array<u32, 14>();
    var var_0 = func_2();
    global1 = all(!vec4<bool>(true, any(vec4<bool>(true, true, true, true)), false, all(vec2<bool>(true, true))));
    return false | select(false, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1000f;
    var var_1 = vec4<bool>(all(!vec4<bool>(all(vec4<bool>(false, false, false, true)), func_1(), global2[_wgslsmith_index_u32(13098u, 14u)] <= global2[_wgslsmith_index_u32(25401u, 14u)], any(vec3<bool>(false, true, true)))), func_1(), !(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(min(~global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(93925u, 14u)], 14u)]), 14u)], 14u)] <= _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(global2[_wgslsmith_index_u32(703u, 14u)], 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], global2[_wgslsmith_index_u32(0u, 14u)])), vec4<u32>(0u, 26855u, global2[_wgslsmith_index_u32(1u, 14u)], 4294967295u))), true);
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f + _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(696f - 1387f)))), _wgslsmith_div_f32(351f, _wgslsmith_div_f32(2146f, _wgslsmith_f_op_f32(ceil(-473f))))));
    global2 = array<u32, 14>();
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(~max(17557u, 17772u), ~vec2<u32>(500u, 1u));
}

