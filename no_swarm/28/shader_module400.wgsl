struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(Struct_2(-46571i, 1370f, 1000f, Struct_1(-32135i, 2332f, vec3<u32>(0u, 7084u, 28424u), -18048i), true), false), Struct_4(Struct_2(-86905i, 2060f, 1463f, Struct_1(0i, 2040f, vec3<u32>(67411u, 4294967295u, 17635u), 17807i), false), false), Struct_4(Struct_2(-51767i, -2095f, 239f, Struct_1(13061i, 1739f, vec3<u32>(23207u, 1u, 1u), -702i), false), false), Struct_4(Struct_2(24055i, -328f, -1000f, Struct_1(1i, 2226f, vec3<u32>(0u, 29448u, 1u), -33007i), false), false), Struct_4(Struct_2(-34978i, 213f, 1047f, Struct_1(2147483647i, 115f, vec3<u32>(9515u, 0u, 4294967295u), 28292i), false), true), Struct_4(Struct_2(0i, 1340f, -978f, Struct_1(-35506i, -659f, vec3<u32>(2872u, 1u, 15917u), 19575i), true), false), Struct_4(Struct_2(i32(-2147483648), -336f, 270f, Struct_1(55693i, 1265f, vec3<u32>(46536u, 0u, 80491u), 17171i), false), true), Struct_4(Struct_2(38392i, -515f, 1000f, Struct_1(33098i, 414f, vec3<u32>(28634u, 4294967295u, 0u), 1i), false), false), Struct_4(Struct_2(-58346i, -586f, -272f, Struct_1(2147483647i, -311f, vec3<u32>(96343u, 4294967295u, 20187u), 9495i), true), false), Struct_4(Struct_2(-1i, -1261f, 769f, Struct_1(-1i, -387f, vec3<u32>(4294967295u, 4144u, 0u), 0i), false), false), Struct_4(Struct_2(0i, -267f, 370f, Struct_1(0i, 415f, vec3<u32>(23449u, 0u, 1u), -17592i), true), false), Struct_4(Struct_2(-1i, -1067f, -134f, Struct_1(9147i, -1453f, vec3<u32>(1u, 33919u, 0u), -37490i), true), true), Struct_4(Struct_2(-1i, 812f, 353f, Struct_1(i32(-2147483648), -740f, vec3<u32>(92272u, 23448u, 4294967295u), -41485i), false), false), Struct_4(Struct_2(0i, 229f, -687f, Struct_1(0i, 861f, vec3<u32>(0u, 1u, 59030u), 53069i), false), false), Struct_4(Struct_2(1i, -883f, 1000f, Struct_1(i32(-2147483648), -440f, vec3<u32>(24959u, 18750u, 45923u), 29838i), false), false), Struct_4(Struct_2(-1i, 785f, 2648f, Struct_1(1i, 419f, vec3<u32>(4294967295u, 1u, 0u), 1i), true), false), Struct_4(Struct_2(3941i, -764f, 262f, Struct_1(-82240i, -1000f, vec3<u32>(46727u, 0u, 4294967295u), 0i), false), true), Struct_4(Struct_2(-6963i, -2033f, 1706f, Struct_1(i32(-2147483648), 1000f, vec3<u32>(4294967295u, 68102u, 0u), 15286i), false), true), Struct_4(Struct_2(25861i, -2697f, 1026f, Struct_1(34736i, 1708f, vec3<u32>(1u, 59751u, 0u), -22405i), true), true), Struct_4(Struct_2(49805i, 962f, -127f, Struct_1(1i, -540f, vec3<u32>(53955u, 1206u, 73814u), 2147483647i), false), true), Struct_4(Struct_2(-15013i, -1253f, -1000f, Struct_1(2147483647i, 188f, vec3<u32>(4294967295u, 56486u, 68959u), -1i), false), false), Struct_4(Struct_2(52878i, 243f, -1953f, Struct_1(-35242i, 1233f, vec3<u32>(4294967295u, 4294967295u, 2675u), i32(-2147483648)), true), false), Struct_4(Struct_2(7083i, 1000f, -1880f, Struct_1(-26244i, 714f, vec3<u32>(0u, 7208u, 0u), -35898i), false), true), Struct_4(Struct_2(-35362i, 1107f, -1484f, Struct_1(-38793i, 257f, vec3<u32>(8944u, 4294967295u, 0u), -1i), false), false), Struct_4(Struct_2(-31125i, -877f, -541f, Struct_1(-1i, -670f, vec3<u32>(4294967295u, 12770u, 51868u), -1i), true), false), Struct_4(Struct_2(-1i, -170f, -332f, Struct_1(14942i, 2200f, vec3<u32>(4294967295u, 0u, 32104u), 0i), false), false), Struct_4(Struct_2(-8909i, 1094f, 401f, Struct_1(42860i, -505f, vec3<u32>(0u, 1514u, 1u), -1i), false), false), Struct_4(Struct_2(4981i, -1018f, -787f, Struct_1(1i, -223f, vec3<u32>(112806u, 1u, 1u), 0i), true), false), Struct_4(Struct_2(-1i, -2583f, 497f, Struct_1(1743i, -619f, vec3<u32>(18656u, 4294967295u, 1u), i32(-2147483648)), false), false), Struct_4(Struct_2(-1i, -269f, -1315f, Struct_1(44640i, 217f, vec3<u32>(0u, 72406u, 27963u), 14003i), true), false), Struct_4(Struct_2(i32(-2147483648), -253f, -562f, Struct_1(i32(-2147483648), 283f, vec3<u32>(1u, 46946u, 0u), -18654i), false), false), Struct_4(Struct_2(2147483647i, -718f, -1248f, Struct_1(25197i, 595f, vec3<u32>(4294967295u, 35753u, 27034u), 0i), true), false));

var<private> global1: Struct_4 = Struct_4(Struct_2(-1i, 461f, 427f, Struct_1(-629i, -327f, vec3<u32>(19616u, 4294967295u, 1u), 0i), true), true);

var<private> global2: array<Struct_2, 17>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: f32, arg_3: Struct_5) -> Struct_4 {
    return arg_1;
}

fn func_3(arg_0: vec2<f32>, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1121f, 621f, arg_0.x))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, arg_0.x, arg_0.x))))))));
    global1 = Struct_4(Struct_2(-_wgslsmith_mod_i32(-14535i, -1i), func_1(~global1.a.d.c, Struct_4(global1.a, arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -287f)), Struct_5(!vec2<bool>(arg_1, arg_1), global0[_wgslsmith_index_u32(0u, 32u)])).a.d.b, _wgslsmith_f_op_f32(min(-534f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1440f - var_0.x) + func_1(vec3<u32>(28630u, u_input.a, u_input.a), Struct_4(Struct_2(global1.a.d.d, -914f, -449f, Struct_1(-25646i, 235f, vec3<u32>(64070u, global1.a.d.c.x, 25660u), global1.a.a), global1.b), arg_1), 829f, Struct_5(vec2<bool>(global1.a.e, true), global0[_wgslsmith_index_u32(4294967295u, 32u)])).a.d.b))), func_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(4544u, 58237u, u_input.a), ~vec3<u32>(global1.a.d.c.x, 0u, 38239u), vec3<u32>(u_input.a, 17782u, global1.a.d.c.x)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.a.d.c.x, select(global1.a.d.c.x, u_input.a, arg_1)), 32u)], -109f, Struct_5(select(vec2<bool>(true, global1.a.e), vec2<bool>(arg_1, false), vec2<bool>(false, true)), Struct_4(Struct_2(-11242i, var_0.x, var_0.x, Struct_1(global1.a.a, 447f, vec3<u32>(1u, u_input.a, u_input.a), global1.a.a), arg_1), true))).a.d, any(!(!vec3<bool>(global1.a.e, true, global1.a.e)))), all(vec3<bool>(true, arg_1, !arg_1 | true)));
    global0 = array<Struct_4, 32>();
    let var_1 = vec4<bool>(func_1(select(~vec3<u32>(global1.a.d.c.x, global1.a.d.c.x, 1u), vec3<u32>(global1.a.d.c.x, global1.a.d.c.x, 63496u), vec3<bool>(false, true, false)), global0[_wgslsmith_index_u32(4294967295u, 32u)], var_0.x, Struct_5(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), false), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 32u)])).a.e | (func_1(~global1.a.d.c, func_1(vec3<u32>(4294967295u, global1.a.d.c.x, 0u), Struct_4(Struct_2(global1.a.d.a, global1.a.c, global1.a.c, global1.a.d, false), arg_1), 428f, Struct_5(vec2<bool>(arg_1, false), global0[_wgslsmith_index_u32(u_input.a, 32u)])), 2050f, Struct_5(vec2<bool>(true, global1.a.e), Struct_4(global2[_wgslsmith_index_u32(u_input.a, 17u)], true))).a.e || !(2147483647i != global1.a.d.a)), !any(!(!vec3<bool>(false, global1.b, global1.a.e))), global1.b, select(all(select(!vec4<bool>(arg_1, false, arg_1, arg_1), vec4<bool>(global1.a.e, global1.b, arg_1, false), any(vec4<bool>(false, false, true, arg_1)))), false & (_wgslsmith_f_op_f32(f32(-1f) * -212f) >= global1.a.c), arg_1));
    global1 = Struct_4(Struct_2(global1.a.d.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-156f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-2063f, global1.a.d.b)) - _wgslsmith_f_op_f32(min(1362f, arg_0.x)))), func_1(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(0u, u_input.a, 76852u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 8015u, global1.a.d.c.x), global1.a.d.c)), Struct_4(Struct_2(3888i, var_0.x, -323f, Struct_1(1i, arg_0.x, global1.a.d.c, global1.a.a), true), arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1887f * var_0.x)), Struct_5(vec2<bool>(true, true), Struct_4(global2[_wgslsmith_index_u32(u_input.a, 17u)], global1.b))).a.c, func_1(~vec3<u32>(0u, 1u, 1u), Struct_4(global1.a, true), 1743f, Struct_5(vec2<bool>(global1.b, var_1.x), global0[_wgslsmith_index_u32(~global1.a.d.c.x, 32u)])).a.d, true & global1.a.e), !(global1.a.a <= ~max(global1.a.d.d, global1.a.a)));
    return _wgslsmith_f_op_f32(step(arg_0.x, global1.a.c));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a.c), _wgslsmith_f_op_f32(-arg_0.a.d.b)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(429f, _wgslsmith_f_op_f32(f32(-1f) * -359f)), 1f)))));
    global2 = array<Struct_2, 17>();
    global2 = array<Struct_2, 17>();
    global1 = global0[_wgslsmith_index_u32(68453u, 32u)];
    var var_1 = global1.b;
    return _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-376f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 1000f), vec2<f32>(-829f, 459f)), false)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(func_1(abs(vec3<u32>(u_input.a, u_input.a, 60780u) | vec3<u32>(global1.a.d.c.x, u_input.a, 74250u)), global0[_wgslsmith_index_u32(global1.a.d.c.x, 32u)], 1087f, Struct_5(!vec2<bool>(global1.a.e, global1.a.e), Struct_4(Struct_2(-29629i, global1.a.d.b, 1042f, global1.a.d, true), global1.a.e))), ~(-(~vec3<i32>(global1.a.a, -21703i, global1.a.a))))) + vec2<f32>(global1.a.b, 327f));
    var var_1 = Struct_1(select(abs(global1.a.d.d), func_1(~vec3<u32>(u_input.a, 59093u, global1.a.d.c.x), func_1(vec3<u32>(4294967295u, 4294967295u, 2349u), global0[_wgslsmith_index_u32(u_input.a, 32u)], var_0.x, Struct_5(vec2<bool>(true, false), Struct_4(global1.a, true))), _wgslsmith_f_op_f32(step(-697f, global1.a.c)), Struct_5(vec2<bool>(true, global1.b), global0[_wgslsmith_index_u32(global1.a.d.c.x, 32u)])).a.d.a, !global1.a.e != func_1(vec3<u32>(4294967295u, u_input.a, 882u), global0[_wgslsmith_index_u32(global1.a.d.c.x, 32u)], var_0.x, Struct_5(vec2<bool>(global1.b, global1.b), global0[_wgslsmith_index_u32(global1.a.d.c.x, 32u)])).b) & -max(-2147483647i | global1.a.a, 1i), _wgslsmith_f_op_f32(f32(-1f) * -2409f), vec3<u32>(_wgslsmith_sub_u32(~global1.a.d.c.x, ~global1.a.d.c.x ^ firstLeadingBit(4294967295u)), ~(max(36426u, 1u) >> (~4294967295u % 32u)), 53236u), countOneBits(-(~(-19856i) << (~global1.a.d.c.x % 32u))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1175f) - global1.a.b)))) + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b - _wgslsmith_f_op_f32(-var_0.x)))));
    var var_3 = global0[_wgslsmith_index_u32(u_input.a, 32u)];
    let var_4 = ~vec4<u32>((23842u ^ global1.a.d.c.x) >> (var_1.c.x % 32u), global1.a.d.c.x ^ ~var_3.a.d.c.x, abs(1u ^ u_input.a), var_1.c.x) & vec4<u32>(reverseBits(u_input.a), abs(0u), ~func_1(max(vec3<u32>(var_3.a.d.c.x, global1.a.d.c.x, 46862u), vec3<u32>(44993u, u_input.a, var_3.a.d.c.x)), global0[_wgslsmith_index_u32(5044u, 32u)], _wgslsmith_f_op_f32(-global1.a.b), Struct_5(vec2<bool>(false, global1.a.e), Struct_4(global1.a, global1.b))).a.d.c.x, var_1.c.x);
    global2 = array<Struct_2, 17>();
    let var_5 = global1.a.d.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.yz);
}

