struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<f32>(876f, -1035f, 1067f, -740f), 15538u, vec3<u32>(37109u, 0u, 50796u), -270f), Struct_1(vec4<f32>(-1000f, 522f, -166f, -927f), 4294967295u, vec3<u32>(0u, 17156u, 1u), -613f), Struct_1(vec4<f32>(-1049f, -1845f, -490f, 253f), 1u, vec3<u32>(4294967295u, 27065u, 4294967295u), 1292f), Struct_1(vec4<f32>(1814f, 1247f, -207f, -1129f), 3870u, vec3<u32>(6824u, 23560u, 15350u), 1000f), Struct_1(vec4<f32>(-361f, 1083f, 658f, 202f), 4294967295u, vec3<u32>(84410u, 4294967295u, 4294967295u), -990f), Struct_1(vec4<f32>(1632f, -1054f, 295f, 861f), 0u, vec3<u32>(3247u, 1u, 94704u), 834f), Struct_1(vec4<f32>(-1204f, 701f, 1000f, 181f), 65061u, vec3<u32>(1u, 1u, 62201u), -1396f), Struct_1(vec4<f32>(-856f, 187f, -1328f, -820f), 46983u, vec3<u32>(32993u, 4294967295u, 28928u), 753f), Struct_1(vec4<f32>(-859f, 544f, 221f, 889f), 4294967295u, vec3<u32>(13187u, 35286u, 9874u), -876f), Struct_1(vec4<f32>(627f, -1000f, -943f, -1000f), 83110u, vec3<u32>(0u, 1u, 66044u), -639f), Struct_1(vec4<f32>(303f, 1007f, -1218f, -1000f), 0u, vec3<u32>(78986u, 1633u, 4294967295u), -253f), Struct_1(vec4<f32>(-669f, 391f, -467f, 1743f), 4294967295u, vec3<u32>(0u, 0u, 65695u), -952f), Struct_1(vec4<f32>(-1379f, -1333f, 652f, 1000f), 36713u, vec3<u32>(4294967295u, 24658u, 93288u), -868f), Struct_1(vec4<f32>(-1000f, -506f, -164f, -1517f), 17280u, vec3<u32>(41067u, 49072u, 4294967295u), -1047f), Struct_1(vec4<f32>(-904f, 430f, -448f, -1000f), 4294967295u, vec3<u32>(0u, 2265u, 13729u), 306f), Struct_1(vec4<f32>(-986f, 884f, -945f, -100f), 4294967295u, vec3<u32>(14839u, 38034u, 32508u), -685f), Struct_1(vec4<f32>(1924f, -334f, -1774f, -114f), 9568u, vec3<u32>(52511u, 64325u, 1u), -500f), Struct_1(vec4<f32>(-505f, 417f, -1903f, 1000f), 14881u, vec3<u32>(41238u, 1u, 1u), -1000f), Struct_1(vec4<f32>(844f, -162f, 870f, -287f), 4294967295u, vec3<u32>(13368u, 8197u, 29375u), 777f), Struct_1(vec4<f32>(-1000f, 1198f, -295f, 519f), 1u, vec3<u32>(0u, 0u, 103674u), -924f), Struct_1(vec4<f32>(-401f, 1502f, -1427f, 168f), 19510u, vec3<u32>(25759u, 1u, 4294967295u), 837f), Struct_1(vec4<f32>(-2235f, -360f, -1566f, 457f), 1u, vec3<u32>(42208u, 2332u, 18121u), -1156f), Struct_1(vec4<f32>(524f, -986f, 473f, -785f), 4294967295u, vec3<u32>(0u, 70142u, 4294967295u), 632f));

var<private> global1: Struct_1 = Struct_1(vec4<f32>(-1000f, -1371f, -183f, 427f), 56747u, vec3<u32>(7099u, 15574u, 39958u), -844f);

var<private> global2: Struct_1 = Struct_1(vec4<f32>(928f, 671f, 1363f, 1000f), 4294967295u, vec3<u32>(0u, 4294967295u, 20364u), 328f);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>) -> vec4<i32> {
    global0 = array<Struct_1, 23>();
    var var_0 = abs(~vec2<u32>(1u, ~global2.c.x)) | (~(abs(vec2<u32>(global2.c.x, 35223u)) ^ global2.c.xy) & vec2<u32>(abs(global2.b), 0u));
    let var_1 = vec4<i32>(u_input.a, ~u_input.a, -15279i, countOneBits(17903i));
    let var_2 = global1.a.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-168f)))), global1.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global2.d))))))));
    return var_1;
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: f32) -> f32 {
    global1 = global0[_wgslsmith_index_u32(~(~16650u) >> (~(~abs(1u)) % 32u), 23u)];
    let var_0 = _wgslsmith_mod_i32(u_input.b.x, max(arg_0.x, abs(~_wgslsmith_div_i32(arg_0.x, arg_0.x))));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1028f, global2.a.x, -2009f)))), 1u, abs(global2.c), 142f);
    global2 = Struct_1(vec4<f32>(-1529f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * global2.d), _wgslsmith_f_op_f32(sign(1000f)))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2, _wgslsmith_div_f32(-353f, global2.a.x)))), _wgslsmith_f_op_f32(-1699f * -623f)), 70143u, _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(29843u, global1.c.x, global1.c.x)), global2.c), ~(~vec3<u32>(0u, global2.b, 60989u)), global1.c) ^ firstLeadingBit(firstTrailingBit(global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1115f)));
    var var_1 = func_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a.zyy), _wgslsmith_f_op_vec3_f32(-global2.a.zxx)), global2.a.yyy)))).xy;
    return _wgslsmith_f_op_f32(-arg_2);
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(global1.a, arg_0, _wgslsmith_mod_vec3_u32(global2.c, _wgslsmith_sub_vec3_u32(global1.c, abs(firstTrailingBit(arg_2.c)))), -1136f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-322f - global2.a.x) - 801f), _wgslsmith_f_op_f32(abs(arg_2.a.x)), global2.d, arg_2.d))), arg_2.c.x, min(vec3<u32>(~min(global1.c.x, 34762u), 17773u, ~(~4294967295u)), var_0.c), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1.d)))));
    var var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(global2.c.x), 23u)];
    global0 = array<Struct_1, 23>();
    var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) - 946f), var_2.d, arg_2.a.x, global2.d), ~_wgslsmith_mod_u32(reverseBits(var_1.b), _wgslsmith_div_u32(firstLeadingBit(global2.b), 4294967295u)), var_1.c, _wgslsmith_f_op_f32(func_4(_wgslsmith_mod_vec4_i32(func_3(_wgslsmith_f_op_vec3_f32(arg_2.a.wyx + vec3<f32>(global1.a.x, -529f, 3339f))), select(~vec4<i32>(65834i, 29010i, 18470i, u_input.b.x), abs(vec4<i32>(u_input.a, 2147483647i, arg_1, 2147483647i)), vec4<bool>(true, false, false, true))), arg_2.c.x, 2112f)));
    return arg_2;
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    global2 = func_2(4294967295u, -_wgslsmith_mult_i32(-35884i, reverseBits(u_input.b.x) & ~arg_2), Struct_1(_wgslsmith_f_op_vec4_f32(-global1.a), global1.c.x, vec3<u32>(global1.b, _wgslsmith_div_u32(0u, global2.b >> (25168u % 32u)), _wgslsmith_mod_u32(30400u, select(global1.b, 47439u, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2190f)))));
    var var_0 = any(arg_1.wyy) || true;
    global1 = func_2(~67634u, -1i, func_2(~(~4294967295u), i32(-1i) * -arg_2, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(abs(-282f)), global2.d, _wgslsmith_f_op_f32(f32(-1f) * -1374f), -207f), global2.b, ~(global1.c ^ global2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1043f + arg_0)))));
    global0 = array<Struct_1, 23>();
    var var_1 = global0[_wgslsmith_index_u32(0u, 23u)];
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~78953u, global2.c.x), 23u)];
}

fn func_5(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> vec3<f32> {
    var var_0 = true;
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global1.a * global2.a))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_2.d), _wgslsmith_f_op_f32(select(global1.a.x, global1.d, true)), _wgslsmith_div_f32(global1.a.x, global2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1578f))))), 14594u, abs(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, global1.b), firstTrailingBit(vec3<u32>(58026u, 125609u, arg_3))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(trunc(-189f))))));
    global1 = func_1(arg_0.x, !select(vec4<bool>(all(vec2<bool>(false, false)), false, true, all(vec4<bool>(true, false, true, true))), vec4<bool>(true, true, true, 0u < global2.c.x), ~1u < arg_2.c.x), 1i);
    let var_1 = vec4<bool>(!((-133f == global2.a.x) & true), !((_wgslsmith_f_op_f32(768f * -1000f) > global1.a.x) | any(vec2<bool>(false, false))), true, true);
    var var_2 = arg_2;
    return _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-295f)) + _wgslsmith_f_op_f32(-global1.d))), -542f, _wgslsmith_f_op_f32(arg_2.d * -1203f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.a) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, 731f, global2.d, global1.d) + global2.a))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1231f, global1.d, _wgslsmith_f_op_f32(f32(-1f) * -1154f), _wgslsmith_f_op_f32(min(-610f, 1745f))) + global1.a)), ~(~(~(0u >> (global2.b % 32u)))), global1.c, _wgslsmith_f_op_f32(exp2(global1.a.x)));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec3_f32(sign(global1.a.yzw)), global2.b, func_1(-261f, vec4<bool>(true, true, true, true), 1i), global2.b & global1.b)));
    let var_1 = _wgslsmith_f_op_f32(-global2.a.x);
    var var_2 = _wgslsmith_f_op_f32(-global1.d);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-213f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -1166f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(808f, -396f)))));
    let var_4 = func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.d))), !select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, all(vec4<bool>(false, true, true, true)), global2.b < global2.b)), ~0i);
    let var_5 = vec2<i32>(u_input.a, -(i32(-1i) * -58034i));
    var var_6 = _wgslsmith_f_op_vec4_f32(global2.a * _wgslsmith_f_op_vec4_f32(-global1.a));
    var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_6.x, 654f, -574f, -783f)), vec4<f32>(517f, 256f, -1000f, var_3))) + _wgslsmith_f_op_vec4_f32(step(var_4.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_6.x, global1.a.x, 2014f, global2.a.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer((global2.b << (abs(~var_4.c.x) % 32u)) | 37576u, -u_input.b.x, _wgslsmith_mult_i32(-32778i, var_5.x));
}

