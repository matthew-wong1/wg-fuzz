struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = -_wgslsmith_add_i32(abs(0i), -73785i);
    global1 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))), vec2<i32>(abs(-1i), select(global0.x, _wgslsmith_add_i32(firstTrailingBit(var_0), ~4002i), true)), arg_0.a.x);
    global1 = false;
    global0 = _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(~max(var_0, var_0), 2147483647i, -23101i)), -vec3<i32>(var_1.b.x | -var_0, ~var_0, var_1.b.x >> (u_input.a.x % 32u)));
    return arg_0.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: vec2<f32>, arg_3: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-368f, _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a + -2021f))), -1285f, arg_2.x) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c)) - 1124f), _wgslsmith_f_op_f32(step(949f, _wgslsmith_f_op_f32(func_3(Struct_3(vec2<f32>(arg_2.x, -746f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a)), 946f));
    var var_1 = vec2<i32>(firstTrailingBit(~_wgslsmith_mult_i32(firstTrailingBit(global0.x), global0.x << (0u % 32u))), 18890i);
    var var_2 = true;
    var_2 = !(false && any(vec4<bool>(true, true, true, true)));
    global1 = any(vec3<bool>(true, !all(vec2<bool>(true, true)), true));
    return any(select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec2<bool>(true, true)), true || (0u < arg_3), false, any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true))), true));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = !(arg_0 <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1033f), 547f, func_2(Struct_2(Struct_1(-307f, global0.xx, arg_0), vec2<i32>(28506i, -80611i)), global0.x, vec2<f32>(arg_0, 756f), 23600u))))));
    let var_1 = vec2<bool>(false & ((all(vec2<bool>(false, false)) & (25767u > u_input.a.x)) & true), !(!all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)))));
    var var_2 = !select(var_1.x, true, !(var_1.x && func_2(Struct_2(Struct_1(arg_0, vec2<i32>(global0.x, global0.x), arg_0), global0.xz), global0.x, vec2<f32>(-780f, -637f), 16878u)));
    let var_3 = Struct_1(arg_0, vec2<i32>(_wgslsmith_clamp_i32(-1i, 24217i, firstLeadingBit(_wgslsmith_mod_i32(global0.x, global0.x))), _wgslsmith_mod_i32(global0.x, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -808f) * arg_0) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_3(vec2<f32>(arg_0, arg_0)))), -580f) + _wgslsmith_f_op_f32(f32(-1f) * -486f))));
    var_0 = !all(!select(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, false, false), var_1.x), select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, var_1.x, false), var_1.x), vec3<bool>(var_1.x, true, true)));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(696f, 1829f) * vec2<f32>(1000f, -1000f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1956f, 1301f), vec2<f32>(-808f, -875f), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-553f, -1617f)))), true)));
    var var_1 = func_1(-906f);
    var_1 = Struct_1(-660f, global0.xy, var_0.a.x);
    var_0 = Struct_3(var_0.a);
    global1 = !all(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, false)), select(true, true, true), true), vec3<bool>(true, any(vec4<bool>(true, false, false, false)), true)));
    let var_2 = 34086u;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~u_input.a.x, 0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 1707f, var_0.a.x, -1381f))))))), max(vec2<u32>(~4294967295u, 62582u), firstTrailingBit(vec2<u32>(39932u, 0u) & _wgslsmith_mult_vec2_u32(u_input.a.xy, vec2<u32>(1u, 0u)))), vec3<u32>(abs(var_2) & u_input.a.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(abs(1u), 0u), u_input.a.x), _wgslsmith_dot_vec2_u32(u_input.a.zw, u_input.a.zz)));
}

