struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    var var_0 = ~(_wgslsmith_sub_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, -40367i, 0i), vec4<i32>(u_input.a.x, u_input.a.x, -23626i, 1i))), min(~vec4<i32>(u_input.a.x, -4581i, -1i, 1377i), vec4<i32>(u_input.a.x, u_input.a.x, arg_0, u_input.a.x) ^ vec4<i32>(39296i, arg_0, -7270i, -1i))) >> (countOneBits(vec4<u32>(1u, ~82917u, 8898u << (1u % 32u), 1u)) % vec4<u32>(32u)));
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-3407f, 486f))))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) - _wgslsmith_f_op_f32(-839f - 1000f)), _wgslsmith_f_op_f32(trunc(776f)))));
    var var_1 = ~vec2<u32>(select(max(39733u, 14459u) << (0u % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(16115u, 0u, 1u), vec3<u32>(50728u, 1u, 0u)), false), _wgslsmith_mod_u32(1u, 15361u));
    let var_2 = Struct_2(Struct_1(-_wgslsmith_add_i32(arg_0, u_input.a.x) != ~(~(-2147483647i))), var_0.x, var_1.x, 10721u);
    let var_3 = Struct_3(var_2);
    return vec4<i32>(arg_0, ~arg_0, 0i ^ ~(~firstTrailingBit(-33992i)), u_input.a.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: f32, arg_3: vec2<u32>) -> u32 {
    var var_0 = ~(~(~_wgslsmith_div_u32(42780u, arg_3.x)));
    var_0 = 0u;
    let var_1 = func_3(-2147483647i);
    let var_2 = 40941u ^ arg_3.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, arg_0.x, arg_0.x)))))))));
    return arg_3.x;
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> vec3<u32> {
    let var_0 = select(~(~1u), 1u, all(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), global0.a)));
    return _wgslsmith_mult_vec3_u32(~vec3<u32>(firstLeadingBit(func_2(vec2<f32>(arg_1.x, -1215f), vec4<i32>(-25153i, arg_0, arg_0, -10368i), -1057f, vec2<u32>(var_0, var_0))), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0), vec2<u32>(4381u, 4294967295u)), _wgslsmith_mult_u32(var_0, _wgslsmith_mod_u32(1u, 27627u))), ~vec3<u32>(0u, 4294967295u, func_2(_wgslsmith_div_vec2_f32(arg_1, arg_1), countOneBits(vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, -19305i)), _wgslsmith_f_op_f32(f32(-1f) * -206f), ~vec2<u32>(0u, var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(false);
    let var_0 = vec3<i32>(u_input.a.x, u_input.a.x, 0i);
    var var_1 = (vec3<u32>(~countOneBits(3649u), 0u, _wgslsmith_mod_u32(0u, 8953u)) << (~vec3<u32>(countOneBits(49190u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 20375u, 1u), vec4<u32>(1u, 74603u, 0u, 4294967295u)), 1u) % vec3<u32>(32u))) & func_1(var_0.x, vec2<f32>(1f, 1647f));
    let var_2 = Struct_3(Struct_2(Struct_1(!all(vec2<bool>(global0.a, false))), firstTrailingBit(_wgslsmith_div_i32(37592i, firstTrailingBit(-1i))), select(var_1.x, ~(~25747u), true), ~(~select(var_1.x, 0u, true))));
    let var_3 = vec4<bool>(false, !var_2.a.a.a, !(!any(vec4<bool>(global0.a, global0.a, var_2.a.a.a, false))) & true, var_2.a.a.a);
    global0 = Struct_1(true);
    global0 = Struct_1(true);
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(var_0));
}

