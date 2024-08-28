struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<bool>,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: vec2<u32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: f32) -> vec2<bool> {
    let var_0 = true;
    return vec2<bool>(all(vec3<bool>(all(!vec2<bool>(var_0, var_0)), true, var_0)), true);
}

fn func_3() -> vec2<i32> {
    return _wgslsmith_sub_vec2_i32(u_input.b.xw, -select(vec2<i32>(global0[_wgslsmith_index_u32(1u, 6u)], u_input.b.x), u_input.b.xw, all(vec2<bool>(false, true))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: i32) -> StorageBuffer {
    global1 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(min(~1u, 4294967295u), 4294967295u), arg_0);
    let var_0 = Struct_1(~_wgslsmith_mult_vec2_i32(func_3(), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_2, global0[_wgslsmith_index_u32(4294967295u, 6u)]), vec2<i32>(arg_2, 20964i)))), -arg_2, !vec4<bool>(arg_1.x, true, all(vec3<bool>(arg_1.x, arg_1.x, true)) | arg_1.x, !all(arg_1)), arg_1.x);
    let var_1 = arg_1.x | !all(var_0.c);
    let var_2 = Struct_2(true);
    var var_3 = _wgslsmith_sub_u32(global1.x, _wgslsmith_sub_u32(17300u >> (select(1u, u_input.a, true) % 32u), _wgslsmith_mod_u32(15350u, select(~arg_0.x, u_input.a, all(vec4<bool>(var_2.a, true, var_0.c.x, false))))));
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -278f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1986f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-173f * _wgslsmith_f_op_f32(ceil(-216f)))), _wgslsmith_f_op_f32(sign(-1349f))), u_input.b, _wgslsmith_add_vec3_u32(~abs(vec3<u32>(17961u, 1u, global1.x)), ~vec3<u32>(arg_0.x, u_input.a, _wgslsmith_sub_u32(arg_0.x, 55446u))), func_3().x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true && (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 28155u, u_input.a), vec3<u32>(127317u, 11070u, u_input.a)) > (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 26298u), vec3<u32>(0u, global1.x, 1u)) | global1.x)));
    let x = u_input.a;
    s_output = func_2(~_wgslsmith_mult_vec2_u32(~(vec2<u32>(0u, u_input.a) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(~vec2<u32>(global1.x, global1.x), ~vec2<u32>(u_input.a, global1.x))), func_1(-1136f), ~(-15708i));
}

