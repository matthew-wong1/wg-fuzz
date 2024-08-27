struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec4<f32>(-471f, 1062f, -125f, -1233f), vec4<bool>(true, false, true, true), -250f, -1i, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1234u)), Struct_1(vec4<f32>(-1399f, -105f, 1553f, -788f), vec4<bool>(true, false, true, true), 1169f, 43379i, vec4<u32>(4294967295u, 71290u, 1u, 1u)), Struct_1(vec4<f32>(383f, -566f, -1000f, -1284f), vec4<bool>(false, true, true, true), 791f, 26081i, vec4<u32>(22209u, 4294967295u, 22919u, 1615u)), Struct_1(vec4<f32>(448f, 1712f, -463f, -685f), vec4<bool>(true, false, false, true), -1728f, -34199i, vec4<u32>(0u, 49266u, 4294967295u, 3377u)), Struct_1(vec4<f32>(-966f, -781f, 1000f, -1000f), vec4<bool>(false, true, true, true), 799f, -45181i, vec4<u32>(31437u, 47971u, 19254u, 0u)), Struct_1(vec4<f32>(-1000f, 193f, -1000f, -358f), vec4<bool>(false, true, false, true), 947f, 0i, vec4<u32>(0u, 21509u, 56706u, 46471u)), Struct_1(vec4<f32>(-601f, -253f, 875f, -1695f), vec4<bool>(true, true, false, false), -850f, 74960i, vec4<u32>(58118u, 0u, 4294967295u, 4158u)), Struct_1(vec4<f32>(2443f, -122f, -1868f, -503f), vec4<bool>(false, false, true, false), -1000f, -5479i, vec4<u32>(9602u, 0u, 1u, 27282u)), Struct_1(vec4<f32>(-579f, 374f, -546f, -1784f), vec4<bool>(true, true, false, true), -1579f, -1i, vec4<u32>(28727u, 1u, 37808u, 50198u)), Struct_1(vec4<f32>(-1127f, -993f, -1329f, 894f), vec4<bool>(true, true, false, true), 1762f, i32(-2147483648), vec4<u32>(1u, 4294967295u, 9347u, 44575u)), Struct_1(vec4<f32>(-1085f, -584f, 1006f, 146f), vec4<bool>(true, true, true, true), 154f, 5762i, vec4<u32>(0u, 4294967295u, 30074u, 4294967295u)), Struct_1(vec4<f32>(572f, 701f, -657f, 1000f), vec4<bool>(true, true, false, false), 157f, 0i, vec4<u32>(4294967295u, 0u, 1832u, 32048u)), Struct_1(vec4<f32>(178f, 944f, 1891f, 128f), vec4<bool>(true, false, false, false), -109f, 1i, vec4<u32>(8512u, 36155u, 29326u, 69069u)), Struct_1(vec4<f32>(1331f, 981f, 524f, -1344f), vec4<bool>(false, true, true, true), 1000f, -36027i, vec4<u32>(1u, 0u, 0u, 1u)), Struct_1(vec4<f32>(-137f, 147f, -1289f, 1060f), vec4<bool>(true, false, false, false), 2308f, 1i, vec4<u32>(4294967295u, 4252u, 1u, 36004u)), Struct_1(vec4<f32>(658f, -1375f, 1528f, -491f), vec4<bool>(true, false, true, false), 1147f, i32(-2147483648), vec4<u32>(0u, 0u, 78814u, 35642u)), Struct_1(vec4<f32>(1458f, -1000f, -341f, -592f), vec4<bool>(true, true, true, true), 583f, -5921i, vec4<u32>(0u, 0u, 17902u, 75093u)), Struct_1(vec4<f32>(1790f, 666f, -1639f, -388f), vec4<bool>(true, true, false, false), -1077f, 27083i, vec4<u32>(0u, 4294967295u, 0u, 0u)), Struct_1(vec4<f32>(1821f, -1776f, -868f, -2011f), vec4<bool>(false, false, false, false), 837f, 1i, vec4<u32>(0u, 23227u, 4294967295u, 0u)), Struct_1(vec4<f32>(-2017f, 2430f, -637f, -298f), vec4<bool>(false, true, true, true), -1449f, 2147483647i, vec4<u32>(0u, 36165u, 1u, 1u)), Struct_1(vec4<f32>(241f, -1013f, 877f, -229f), vec4<bool>(true, true, true, true), 314f, 2147483647i, vec4<u32>(8040u, 4294967295u, 1u, 4294967295u)), Struct_1(vec4<f32>(437f, -950f, -1162f, -138f), vec4<bool>(true, false, true, true), -1000f, -14454i, vec4<u32>(41309u, 0u, 57503u, 4294967295u)), Struct_1(vec4<f32>(-1470f, 427f, -536f, 504f), vec4<bool>(false, true, true, false), 1213f, 0i, vec4<u32>(4294967295u, 1u, 38964u, 72907u)), Struct_1(vec4<f32>(920f, 974f, 253f, 2553f), vec4<bool>(false, false, false, true), 1432f, 1i, vec4<u32>(4294967295u, 408u, 4294967295u, 61440u)), Struct_1(vec4<f32>(-261f, 701f, -2920f, 168f), vec4<bool>(true, true, false, false), -426f, 81808i, vec4<u32>(46229u, 62495u, 4294967295u, 0u)), Struct_1(vec4<f32>(-176f, -898f, -858f, -955f), vec4<bool>(false, false, true, false), 1000f, i32(-2147483648), vec4<u32>(449u, 5448u, 1u, 34684u)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2() -> bool {
    var var_0 = any(vec3<bool>(true, true, true));
    global0 = array<Struct_1, 26>();
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-722f, -3053f, -840f), vec3<f32>(-1000f, -400f, 1636f))) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(712f, -527f, -364f), _wgslsmith_div_vec3_f32(vec3<f32>(-1344f, 264f, 2041f), vec3<f32>(1000f, -335f, 261f))))))));
    let var_2 = Struct_3(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(-var_1.x))) - var_1.yz), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -195f, 867f))));
    let var_3 = vec3<u32>(93604u, var_2.a.e.x, countOneBits(~_wgslsmith_mult_u32(countOneBits(var_2.a.e.x), 1u)));
    return all(!vec3<bool>(true, select(var_2.a.b.x, !var_2.a.b.x, var_2.a.b.x), true));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec2<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(1f)), arg_1.b.x));
    var var_1 = ~vec2<i32>(16418i, 27340i);
    let var_2 = 1i != _wgslsmith_dot_vec4_i32(-abs(vec4<i32>(var_1.x, 0i, arg_0.x, 0i)), arg_0);
    var_1 = vec2<i32>(~arg_0.x, 53935i);
    let var_3 = global0[_wgslsmith_index_u32(~arg_3.x, 26u)];
    return vec4<u32>(~(~4294967295u), 39279u, arg_3.x << (arg_1.a.e.x % 32u), countOneBits(arg_1.a.e.x));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.a + vec4<f32>(110f, arg_2.c.a.x, arg_3.a.x, 1950f)) + arg_0.a), vec4<f32>(_wgslsmith_f_op_f32(1000f + arg_2.b.x), arg_1.a.x, _wgslsmith_f_op_f32(max(arg_0.a.x, arg_0.c)), _wgslsmith_f_op_f32(-arg_3.a.x)), vec4<bool>(835i <= arg_0.d, false || arg_3.b.x, any(vec4<bool>(arg_2.a.b.x, arg_3.b.x, false, arg_3.b.x)), all(vec2<bool>(true, arg_0.b.x))))), vec4<bool>(!arg_2.a.b.x, func_2(), _wgslsmith_f_op_f32(exp2(arg_1.a.x)) != arg_0.a.x, arg_2.a.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.a.x, arg_0.c))))), arg_3.d, min(func_3(vec4<i32>(53431i, arg_3.d, -1i, 1i), arg_2, vec2<bool>(arg_3.b.x, arg_0.b.x), ~arg_3.e.xz), reverseBits(arg_3.e))), arg_2.b, Struct_2(vec4<f32>(_wgslsmith_f_op_f32(sign(-314f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(601f))), _wgslsmith_f_op_f32(ceil(944f)), arg_0.c)));
    global0 = array<Struct_1, 26>();
    var var_1 = ~abs(~(20128u << (func_3(vec4<i32>(-13776i, -29483i, arg_2.a.d, -12112i), Struct_3(Struct_1(var_0.c.a, arg_0.b, var_0.a.a.x, arg_2.a.d, arg_3.e), vec2<f32>(-810f, arg_0.a.x), var_0.c), vec2<bool>(arg_2.a.b.x, false), vec2<u32>(arg_0.e.x, u_input.c.x)).x % 32u)));
    var var_2 = abs(~(~reverseBits(countOneBits(vec2<i32>(-38766i, u_input.b)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_0.a.a.yz))) + _wgslsmith_f_op_vec2_f32(arg_3.a.yz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_0.a.zx))))) + vec2<f32>(243f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2.a.c, -360f)))));
    return arg_2.c.a.zy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_4(Struct_3(global0[_wgslsmith_index_u32(~72733u, 26u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-141f, 310f) - vec2<f32>(-372f, 2283f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1169f, 151f))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec4<f32>(662f, -759f, -1157f, 1071f), vec4<bool>(true, false, false, false), -1000f, u_input.b, vec4<u32>(36909u, 1290u, 61238u, 1u)), Struct_2(vec4<f32>(510f, 918f, 763f, 1500f)), Struct_3(Struct_1(vec4<f32>(-1525f, 1474f, 1341f, -112f), vec4<bool>(true, true, true, false), 270f, u_input.b, vec4<u32>(0u, u_input.d, 9817u, u_input.d)), vec2<f32>(-1000f, 593f), Struct_2(vec4<f32>(711f, -392f, 2549f, -1000f))), Struct_1(vec4<f32>(-430f, 1727f, -1379f, 2122f), vec4<bool>(false, false, true, true), -1000f, 21150i, vec4<u32>(u_input.d, u_input.c.x, u_input.d, u_input.c.x))))))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(181f + 1666f), -403f, 1469f, _wgslsmith_f_op_vec2_f32(func_1(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], Struct_2(vec4<f32>(330f, -1381f, -2259f, -681f)), Struct_3(Struct_1(vec4<f32>(-961f, 1000f, 100f, 781f), vec4<bool>(true, true, true, false), -198f, 12937i, vec4<u32>(55593u, u_input.c.x, 1u, u_input.d)), vec2<f32>(-1000f, 1409f), Struct_2(vec4<f32>(1000f, 2293f, -108f, -1515f))), global0[_wgslsmith_index_u32(u_input.c.x, 26u)])).x))), Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(23083u, u_input.d >> (53563u % 32u), 0u << (1u % 32u)), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.d, 22769u, u_input.c.x)), u_input.c), u_input.c.x), 26u)], _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-691f, _wgslsmith_f_op_f32(ceil(-547f))))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-457f, -140f, -845f, 620f)))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-559f - -517f), _wgslsmith_f_op_f32(ceil(434f)), _wgslsmith_f_op_f32(min(-1304f, 170f))))), Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 323f, -1267f, 140f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-375f, 329f, 1000f, 854f), vec4<f32>(102f, -503f, 941f, -1428f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(668f, 740f, -1094f, -183f))))));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 0i, var_1.a.a.d), firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(var_1.b.a.d, var_1.a.a.d, u_input.b))), -1i);
    let var_3 = max(abs(-vec4<i32>(0i, -24184i, ~var_2, var_1.a.a.d)), _wgslsmith_div_vec4_i32(vec4<i32>(~var_2, -1i, 0i, 18550i) & _wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(var_1.a.a.d, -52730i, u_input.a, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(-78766i, var_1.a.a.d, 26646i, 2147483647i), vec4<i32>(var_1.b.a.d, -2691i, 2279i, 2147483647i))), reverseBits(vec4<i32>(_wgslsmith_sub_i32(var_1.b.a.d, 2147483647i), -1i, _wgslsmith_div_i32(var_1.a.a.d, var_1.a.a.d), ~7894i))));
    let var_4 = 1f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~abs(4294967295u)), _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(~var_1.b.a.e, vec4<u32>(1u, 4294967295u, u_input.c.x, 1u))), ~_wgslsmith_clamp_u32(firstLeadingBit(var_1.a.a.e.x), 26517u, firstTrailingBit(u_input.d)), 18796u), var_1.d.a.x, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.a.e.x, var_1.a.a.e.x, u_input.d, var_1.b.a.e.x >> (u_input.c.x % 32u)), var_1.b.a.e)), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(abs(u_input.a), ~(-2147483647i)), firstLeadingBit(firstLeadingBit(5865i))), _wgslsmith_div_i32(0i, ~(-17111i)), _wgslsmith_dot_vec4_i32(var_3, var_3)));
}

