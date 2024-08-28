struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-11137i, i32(-2147483648));

var<private> global1: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(i32(-2147483648), 2493i, i32(-2147483648)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    return !vec4<bool>(-1549f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -1133f)), true, select(!(u_input.b.x > 0u), true, all(vec3<bool>(true, true, true))), 1194f == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-222f, -457f, false)))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(!(!vec4<bool>(false, true, true, u_input.a > 10065u)));
    var var_1 = var_0.a.x;
    var var_2 = -13505i;
    var_1 = false;
    var_2 = global0.x;
    return _wgslsmith_f_op_f32(select(172f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1000f, -1906f, !var_0.a.x))))), false));
}

fn func_2(arg_0: u32, arg_1: i32) -> StorageBuffer {
    let var_0 = ~vec3<u32>(countOneBits(23873u), 29446u, 36531u >> (_wgslsmith_div_u32(arg_0, arg_0) % 32u)) | _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u & arg_0, 4294967295u, _wgslsmith_mult_u32(~u_input.b.x, _wgslsmith_add_u32(4294967295u, 0u))), vec3<u32>(4294967295u, _wgslsmith_add_u32(arg_0, arg_0), ~_wgslsmith_add_u32(0u, 5083u)));
    var var_1 = Struct_2(Struct_1(vec4<bool>(false, all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), !any(vec4<bool>(false, false, false, false)), true)));
    var_1 = Struct_2(Struct_1(vec4<bool>(var_1.a.a.x, true, var_1.a.a.x, var_1.a.a.x)));
    let var_2 = true;
    global0 = vec2<i32>(global0.x, ~_wgslsmith_mult_i32(_wgslsmith_mod_i32(26983i, global0.x), arg_1));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -586f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(252f)) - _wgslsmith_f_op_f32(func_3()))) + 968f), vec4<u32>(~u_input.b.x, ~60302u, _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(var_0, vec3<u32>(1u, arg_0, 80087u)), min(~var_0, _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 96749u, 49897u), var_0))), var_0.x), 0i, _wgslsmith_div_i32(2147483647i, 29382i), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 1>();
    let var_0 = all(vec4<bool>(true, true, true, true));
    global0 = ~_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(countOneBits(vec2<i32>(30544i, -2147483647i)), vec2<i32>(_wgslsmith_sub_i32(9996i, 2147483647i), -global0.x)), vec2<i32>(-2147483647i, ~(-global0.x)));
    var var_1 = Struct_2(Struct_1(select(select(func_1(-1000f), vec4<bool>(true, true, true, true), !vec4<bool>(var_0, false, false, var_0)), vec4<bool>(false, var_0, true, true), !(!vec4<bool>(var_0, false, true, true)))));
    global1 = array<vec3<i32>, 1>();
    global1 = array<vec3<i32>, 1>();
    let var_2 = -1i;
    let var_3 = var_1.a.a.x;
    let x = u_input.a;
    s_output = func_2(countOneBits(~(~1u)), (var_2 ^ var_2) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(9340u, 0u, u_input.a, u_input.b.x) >> (vec4<u32>(4294967295u, 67759u, u_input.b.x, u_input.a) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 63891u, 0u, 38607u), vec4<u32>(u_input.a, u_input.b.x, 0u, 0u)), vec4<u32>(60337u, 0u, u_input.a, 19918u))) % 32u));
}

