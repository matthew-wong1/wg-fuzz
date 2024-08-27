struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: vec4<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec3<f32>) -> vec2<u32> {
    global1 = ~vec4<u32>(abs(global1.x), global1.x, ~global1.x, max((global1.x >> (61370u % 32u)) << (1u % 32u), global1.x));
    global0 = array<f32, 13>();
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_1 + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(582f + 341f)), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(~6017u, 13u)], _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 13u)] - arg_1.x))))));
    let var_1 = firstLeadingBit(min(~_wgslsmith_div_vec4_u32(vec4<u32>(10447u, global1.x, global1.x, 20751u), select(vec4<u32>(57644u, 0u, 0u, 0u), vec4<u32>(0u, 21559u, 71533u, 0u), false)), ~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(39740u, 27009u, 0u, global1.x)), vec4<u32>(1u, 1u, 28779u, global1.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f + var_0.x)))), _wgslsmith_f_op_f32(min(-550f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(627f * arg_3.x)))), arg_3.x) * vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_3.x)), _wgslsmith_f_op_f32(arg_1.x - arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1233f)) + _wgslsmith_f_op_f32(var_0.x * arg_1.x))), arg_2.a));
    return _wgslsmith_mod_vec2_u32(global1.zw, vec2<u32>(80164u, _wgslsmith_add_u32(abs(global1.x), firstLeadingBit(reverseBits(987u)))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_u32(~global1.xw, ~func_3(_wgslsmith_add_vec4_i32(vec4<i32>(-38451i, u_input.a.x, 40242i, u_input.a.x) >> (vec4<u32>(global1.x, global1.x, global1.x, global1.x) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(u_input.a.x, 2147483647i, -32514i, 40824i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(61418u, 13u)]), vec2<f32>(global0[_wgslsmith_index_u32(89359u, 13u)], -1049f)))), Struct_2(-668f, u_input.a.x, countOneBits(vec2<i32>(-567i, u_input.a.x))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(global1.x, 13u)], 235f), vec3<f32>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(26516u, 13u)], 1192f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-766f, global0[_wgslsmith_index_u32(0u, 13u)], 909f) * vec3<f32>(global0[_wgslsmith_index_u32(global1.x, 13u)], 819f, global0[_wgslsmith_index_u32(global1.x, 13u)]))))));
    let var_1 = ~25472u >> (~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 65719u, global1.x, 5496u), _wgslsmith_add_vec4_u32(vec4<u32>(global1.x, var_0.x, 28270u, global1.x), vec4<u32>(global1.x, 35866u, global1.x, 36353u))) ^ abs(~21927u)) % 32u);
    let var_2 = global0[_wgslsmith_index_u32(global1.x ^ var_1, 13u)];
    global1 = vec4<u32>(abs(0u) | func_3(firstTrailingBit(max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 42372i, 20158i))), vec2<f32>(_wgslsmith_f_op_f32(-1860f + global0[_wgslsmith_index_u32(4294967295u, 13u)]), _wgslsmith_f_op_f32(floor(738f))), Struct_2(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(39806u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], true)), _wgslsmith_mult_i32(u_input.a.x, 2147483647i), firstTrailingBit(vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(172f, -1211f, global0[_wgslsmith_index_u32(22832u, 13u)])))).x, 36702u, 61001u | (~abs(var_0.x) & _wgslsmith_add_u32(var_0.x, var_1)), 1u);
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1463f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1537f * global0[_wgslsmith_index_u32(var_1, 13u)]), -1147f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_1, 13u)])), -233f))), global0[_wgslsmith_index_u32(var_1, 13u)]));
    return Struct_2(-780f, u_input.a.x, -vec2<i32>(u_input.a.x, u_input.a.x));
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_mod_i32(-((abs(-1i) | u_input.a.x) >> (_wgslsmith_mod_u32(global1.x, ~15698u) % 32u)), u_input.a.x);
    var var_1 = ~30162i;
    let var_2 = abs(countOneBits(~global1.yww));
    let var_3 = func_2(false);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_mult_u32(116795u, 36259u), ~4294967295u), 13u)])), arg_0, vec2<i32>(~var_3.b, arg_0));
    return 81117u;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(35399u, 13u)], -2085f, -151f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(global1.x, 13u)], global0[_wgslsmith_index_u32(102469u, 13u)], global0[_wgslsmith_index_u32(arg_0.x, 13u)]), vec3<f32>(global0[_wgslsmith_index_u32(42203u, 13u)], global0[_wgslsmith_index_u32(arg_0.x, 13u)], 412f), true)))))));
    global1 = ~firstLeadingBit(vec4<u32>(firstTrailingBit(~arg_0.x), _wgslsmith_mult_u32(abs(arg_0.x), _wgslsmith_div_u32(arg_0.x, 86907u)), 2714u, _wgslsmith_div_u32(global1.x >> (1u % 32u), func_1(u_input.a.x))));
    let var_1 = Struct_1(-1244f, vec3<f32>(-1139f, 634f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1150f, -617f) - -363f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-816f * _wgslsmith_f_op_f32(min(arg_1.a, var_0.x))), _wgslsmith_div_f32(1865f, _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-1733f * arg_1.a)), _wgslsmith_f_op_f32(exp2(arg_1.a))))), global1.xw, 1u ^ abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(77629u, arg_0.x, 0u, 3753u), arg_0)));
    global0 = array<f32, 13>();
    global1 = arg_0;
    return ~func_3(vec4<i32>(-1i) * -vec4<i32>(arg_1.b, 14927i, 2147483647i, u_input.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xz) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -1298f)))), arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c.wyz)))).x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, func_4((vec4<u32>(4294967295u, global1.x, 11327u, 1u) & vec4<u32>(76758u, 4294967295u, global1.x, global1.x)) >> ((vec4<u32>(26934u, global1.x, global1.x, 4294967295u) << (vec4<u32>(global1.x, global1.x, global1.x, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_2(global0[_wgslsmith_index_u32(func_1(-1i), 13u)], ~u_input.a.x, vec2<i32>(-8832i, u_input.a.x))) ^ ~(~select(1u, 91098u, false)));
}

