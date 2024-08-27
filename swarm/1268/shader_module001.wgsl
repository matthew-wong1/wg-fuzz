struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1052f, -1254f, 718f, -655f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec4<f32> {
    let var_0 = ~vec3<u32>(4294967295u, u_input.a.x << (~62246u % 32u), u_input.a.x);
    global0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, _wgslsmith_f_op_f32(-1022f + -2398f), _wgslsmith_f_op_f32(-global0.x), 644f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 1446f))), _wgslsmith_f_op_f32(max(2320f, global0.x)) == _wgslsmith_f_op_f32(-global0.x)))))));
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 389f, global0.x, 165f) * vec4<f32>(2304f, global0.x, -824f, global0.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-767f, -1000f, global0.x, global0.x))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 448f))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1218f, 505f), global0.x, -1000f, global0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, 1042f, -444f, global0.x), vec4<f32>(-1276f, global0.x, 584f, -1247f))) - vec4<f32>(global0.x, -187f, global0.x, 2781f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-717f, global0.x, 1381f, 1042f) + vec4<f32>(global0.x, 143f, global0.x, -562f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, 1286f, -1463f))), vec4<f32>(_wgslsmith_div_f32(global0.x, -1317f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x * global0.x))), global0.x, _wgslsmith_f_op_f32(floor(global0.x))))));
    global0 = vec4<f32>(715f, -1225f, global0.x, -511f);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-603f, _wgslsmith_f_op_f32(f32(-1f) * -869f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(309f)))), -1904f)), global0.x, 2767f, _wgslsmith_f_op_f32(abs(global0.x)));
    return _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))), global0.x)), global0.x, -646f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * -1975f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, global0.x, false)) - global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.x))), -413f, global0.x))));
}

fn func_2() -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2016f, global0.x, global0.x, 514f), vec4<f32>(global0.x, global0.x, global0.x, global0.x))))))));
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x * -746f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -155f)))), _wgslsmith_f_op_f32(-global0.x), 1000f, _wgslsmith_f_op_f32(round(global0.x))), Struct_1(~u_input.a.xyy, max(-(vec4<i32>(u_input.d, 1i, u_input.d, u_input.d) ^ vec4<i32>(u_input.d, u_input.d, 22793i, u_input.d)), min(~vec4<i32>(22757i, u_input.d, u_input.d, u_input.d), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, 39829i), vec4<i32>(u_input.d, u_input.d, u_input.d, 10247i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(708f)), _wgslsmith_f_op_f32(f32(-1f) * -672f), 605f, -1916f)), vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), true, !any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(round(global0.x))), u_input.b.x);
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b.c - _wgslsmith_f_op_vec4_f32(vec4<f32>(-791f, var_0.b.e, var_0.a.x, global0.x) * vec4<f32>(1f, 1f, 1f, 1f))) - var_0.a));
    var var_1 = !var_0.b.d.x;
    global0 = var_0.a;
    return _wgslsmith_f_op_f32(-313f + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-380f * _wgslsmith_f_op_f32(-global0.x))))));
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: Struct_3, arg_3: Struct_2) -> bool {
    global0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(281f - arg_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c.e)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.b.c.x)), _wgslsmith_f_op_f32(-arg_1.a.x))) - arg_3.c.c)));
    let var_0 = _wgslsmith_f_op_f32(sign(arg_3.c.c.x));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.b.c), _wgslsmith_div_vec4_f32(arg_1.a, arg_1.a));
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3()).x)), arg_3.c.e, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(select(arg_2.a.x, global0.x, false))) + -1274f), -1450f));
    let var_1 = Struct_2(vec3<u32>(0u, arg_0, ~u_input.c.x ^ _wgslsmith_add_u32(arg_0 >> (arg_3.c.a.x % 32u), firstTrailingBit(0u))), ~u_input.b, arg_3.c, -reverseBits(select(arg_3.d, _wgslsmith_div_i32(arg_3.d, 0i), false)), !(!(!(!arg_1.b.d.x))));
    return (_wgslsmith_clamp_i32(arg_3.d, i32(-1i) * -2147483647i, _wgslsmith_div_i32(arg_2.c, arg_3.d) ^ -arg_3.d) << (26797u % 32u)) <= countOneBits(-(_wgslsmith_clamp_i32(arg_3.c.b.x, 11447i, arg_2.c) & reverseBits(arg_2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(select(vec3<bool>(18254u > u_input.c.x, true, select(false, true, false)), vec3<bool>(func_1(11799u, Struct_4(vec4<f32>(-934f, global0.x, global0.x, global0.x), Struct_1(u_input.a.wwz, vec4<i32>(0i, u_input.d, -30040i, -2147483647i), vec4<f32>(global0.x, 748f, global0.x, 1479f), vec3<bool>(true, false, false), global0.x), 22436u), Struct_3(vec3<f32>(-1709f, 413f, 198f), vec2<f32>(1188f, 1756f), u_input.d), Struct_2(vec3<u32>(1u, u_input.c.x, u_input.e), vec2<u32>(u_input.a.x, u_input.b.x), Struct_1(u_input.a.yyw, vec4<i32>(u_input.d, 0i, 51447i, u_input.d), vec4<f32>(252f, -255f, global0.x, 1984f), vec3<bool>(true, false, false), 1073f), u_input.d, true)), true, true), true), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true)))));
    let var_1 = Struct_1(~vec3<u32>(u_input.b.x, 0u, _wgslsmith_dot_vec4_u32(countOneBits(u_input.a), ~vec4<u32>(1u, 11533u, u_input.c.x, u_input.a.x))), ~firstTrailingBit(vec4<i32>(0i, min(u_input.d, u_input.d), _wgslsmith_clamp_i32(1i, 0i, 2147483647i), _wgslsmith_mod_i32(50056i, -28375i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, global0.x, -166f), vec4<f32>(523f, global0.x, global0.x, global0.x), vec4<bool>(var_0, false, var_0, false))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 321f, 1049f) + vec4<f32>(764f, -307f, 1000f, global0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 212f, global0.x, 630f), vec4<f32>(global0.x, -317f, -836f, global0.x), vec4<bool>(false, true, var_0, true))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -1000f, global0.x, global0.x))), select(vec3<bool>(!any(vec2<bool>(false, var_0)), any(vec3<bool>(var_0, var_0, var_0)), var_0 | var_0), select(vec3<bool>(!var_0, var_0, var_0), select(vec3<bool>(true, true, true), !vec3<bool>(true, var_0, false), true), select(!vec3<bool>(false, true, var_0), select(vec3<bool>(true, var_0, false), vec3<bool>(true, var_0, var_0), false), !vec3<bool>(var_0, var_0, true))), !(!var_0)), 1836f);
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_1.c))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(-var_1.e), global0.x, -2764f)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(467f + var_1.c.x) + _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(224f, 1671f), _wgslsmith_f_op_f32(503f * var_1.c.x))), global0.x)));
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(var_1.c, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(3341f, global0.x, -1089f, -862f) - _wgslsmith_f_op_vec4_f32(-var_1.c)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-855f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(862f)), _wgslsmith_f_op_f32(abs(var_1.c.x)), true))))));
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())), vec4<f32>(-515f, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) - _wgslsmith_f_op_f32(var_1.c.x - global0.x))), -433f, _wgslsmith_f_op_f32(355f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_1.e)))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.d), _wgslsmith_add_i32(abs(u_input.d), var_1.b.x), u_input.e, vec2<u32>(countOneBits(u_input.e), firstTrailingBit(1u) >> (~abs(u_input.c.x) % 32u)));
}

