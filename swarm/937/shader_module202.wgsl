struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec4<f32>(550f, 132f, -518f, 1407f), 160f, 20386u), Struct_1(vec4<f32>(-586f, -433f, -285f, -350f), -646f, 4294967295u), Struct_1(vec4<f32>(1000f, 579f, -219f, -2305f), -404f, 49535u), Struct_1(vec4<f32>(1229f, 249f, -351f, -1545f), -158f, 1u), Struct_1(vec4<f32>(1000f, -635f, -946f, 1710f), 375f, 1u), Struct_1(vec4<f32>(-467f, -308f, -590f, -309f), 522f, 0u), Struct_1(vec4<f32>(420f, -1224f, 614f, -659f), 121f, 77788u), Struct_1(vec4<f32>(-1408f, 1459f, 733f, -412f), 887f, 26974u), Struct_1(vec4<f32>(377f, 327f, -169f, 1158f), 1105f, 69334u), Struct_1(vec4<f32>(600f, 107f, 1662f, 281f), -1000f, 1u), Struct_1(vec4<f32>(528f, -913f, 2275f, 1350f), 1792f, 1u), Struct_1(vec4<f32>(-374f, -1202f, -851f, 1000f), -923f, 27578u), Struct_1(vec4<f32>(1000f, 156f, -500f, 1116f), 1843f, 70048u), Struct_1(vec4<f32>(-1000f, -996f, 146f, 744f), -197f, 43867u), Struct_1(vec4<f32>(1350f, 2017f, -813f, 1313f), -455f, 1u), Struct_1(vec4<f32>(-2004f, 1604f, -1532f, -1583f), 1411f, 22685u), Struct_1(vec4<f32>(1613f, -1199f, -105f, 648f), -711f, 32492u), Struct_1(vec4<f32>(-1791f, -130f, 1251f, -201f), 1011f, 109354u), Struct_1(vec4<f32>(-724f, -485f, 2954f, 1000f), -1144f, 16453u), Struct_1(vec4<f32>(125f, 901f, -262f, -535f), 177f, 83429u), Struct_1(vec4<f32>(-1751f, -1960f, -1226f, 1000f), 1455f, 0u), Struct_1(vec4<f32>(609f, 1336f, 940f, 368f), -571f, 53349u), Struct_1(vec4<f32>(1133f, -710f, 739f, 687f), 454f, 4294967295u), Struct_1(vec4<f32>(-869f, 2144f, 952f, 228f), -100f, 11290u), Struct_1(vec4<f32>(662f, -473f, -341f, 224f), -1000f, 4294967295u), Struct_1(vec4<f32>(-1080f, 461f, -1000f, -1319f), 1868f, 1u), Struct_1(vec4<f32>(-811f, -249f, 633f, 798f), -316f, 1u), Struct_1(vec4<f32>(-1335f, 665f, -206f, -1000f), -949f, 9759u));

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-919f, _wgslsmith_f_op_f32(118f - _wgslsmith_f_op_f32(-global1.a.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global1.a.yz))));
    let var_1 = global1.a.zyx;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -1164f, 644f, 129f), vec4<f32>(269f, 1096f, -983f, -1000f))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(-var_1.x), 1741f, _wgslsmith_f_op_f32(f32(-1f) * -324f))))), _wgslsmith_f_op_f32(trunc(var_0.x)), 57989u);
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-359f))))), _wgslsmith_f_op_f32(sign(global1.a.x)));
    global0 = array<Struct_1, 28>();
    return countOneBits(var_2.c);
}

fn func_2(arg_0: i32) -> vec4<bool> {
    global1 = Struct_1(vec4<f32>(-817f, 958f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(trunc(global1.a.x)), true)))), global1.b), global1.b, u_input.e);
    let var_0 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(arg_0, 5133i)) & select(vec2<i32>(u_input.c, 12826i), vec2<i32>(u_input.a, -42224i), vec2<bool>(true, false)), countOneBits(~vec2<i32>(u_input.b, -1i))), vec2<i32>(-_wgslsmith_div_i32(-25179i, arg_0), -u_input.a));
    var var_1 = all(vec2<bool>(true, !all(vec3<bool>(false, true, false))));
    let var_2 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(-402f)), global1.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -750f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.b, -374f, true)) + global1.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global1.a.x)), _wgslsmith_f_op_f32(1496f + global1.a.x))), countOneBits(func_3(vec3<bool>(false, all(vec2<bool>(true, false)), true), true)));
    let var_3 = vec2<bool>(true, false);
    return !select(select(!vec4<bool>(var_3.x, true, var_3.x, true), select(vec4<bool>(var_3.x, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(var_3.x, true, var_3.x, false), vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), false)), false), vec4<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(var_3.x, false, true), var_3.x)), any(vec3<bool>(true, true, true)), select(var_3.x, any(vec4<bool>(true, true, false, var_3.x)), select(true, false, true)), !any(var_3)), select(select(select(vec4<bool>(var_3.x, var_3.x, false, false), vec4<bool>(false, var_3.x, false, true), vec4<bool>(var_3.x, true, var_3.x, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(var_3.x, var_3.x, true, false), var_3.x), !vec4<bool>(false, false, var_3.x, var_3.x)), select(!vec4<bool>(var_3.x, var_3.x, var_3.x, false), vec4<bool>(false, true, false, var_3.x), vec4<bool>(false, false, false, true)), vec4<bool>(true, !var_3.x, var_3.x, 49980u >= var_2.c)));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    let var_0 = arg_2;
    global1 = Struct_1(arg_2.a, arg_2.a.x, ~(~var_0.c));
    return !select(!vec4<bool>(all(vec3<bool>(false, false, true)), arg_1.x <= arg_1.x, u_input.c <= arg_3, true), vec4<bool>(all(vec2<bool>(true, true)) && true, (u_input.d > arg_1.x) && any(vec3<bool>(false, true, false)), countOneBits(0u) != ~global1.c, _wgslsmith_clamp_i32(-1i, arg_3, arg_3) >= arg_3), !select(func_2(1i), vec4<bool>(true, false, true, false), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, true, true);
    var_0 = select(select(vec4<bool>(select(true, true, true), false, true, var_0.x && true), vec4<bool>(true, all(vec3<bool>(var_0.x, var_0.x, var_0.x)), all(var_0.yw), var_0.x), select(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, true), true), func_1(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(33424u, global1.c), 28u)], _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, global1.c), vec3<u32>(u_input.d, 0u, 23674u)), global0[_wgslsmith_index_u32(~1u, 28u)], u_input.c), select(!vec4<bool>(var_0.x, false, var_0.x, var_0.x), func_2(u_input.c), func_2(-22821i)))), !(!select(func_1(global0[_wgslsmith_index_u32(52189u, 28u)], vec3<u32>(global1.c, global1.c, u_input.e), global0[_wgslsmith_index_u32(61951u, 28u)], u_input.c), vec4<bool>(false, var_0.x, var_0.x, var_0.x), false)), vec4<bool>(!(!var_0.x) || var_0.x, var_0.x, var_0.x, any(vec4<bool>(!var_0.x, var_0.x, true, any(var_0.wx)))));
    var var_1 = select(~firstTrailingBit(u_input.d), ~u_input.d, var_0.x);
    global0 = array<Struct_1, 28>();
    let var_2 = all(!select(vec4<bool>(var_0.x & var_0.x, global1.b <= global1.b, true, true), vec4<bool>(var_0.x, true, !var_0.x, u_input.a < u_input.c), func_1(global0[_wgslsmith_index_u32(global1.c, 28u)], vec3<u32>(global1.c, global1.c, 0u), Struct_1(global1.a, -1002f, global1.c), u_input.a).x && func_1(global0[_wgslsmith_index_u32(83526u, 28u)], vec3<u32>(4294967295u, u_input.d, global1.c), Struct_1(vec4<f32>(-1350f, global1.a.x, global1.a.x, global1.b), global1.a.x, 23812u), u_input.a).x));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.yyz, vec4<u32>(global1.c, ~firstTrailingBit(13275u), _wgslsmith_mod_u32(u_input.e, countOneBits(global1.c) << (24101u % 32u)), ~countOneBits(u_input.d)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(832f, global1.a.x)), _wgslsmith_div_f32(global1.b, 742f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global1.b)))))))), global1.b, _wgslsmith_mult_u32(countOneBits(global1.c), func_3(vec3<bool>(var_2, false, false), true)) & func_3(vec3<bool>(var_0.x, true, var_2), true));
}

