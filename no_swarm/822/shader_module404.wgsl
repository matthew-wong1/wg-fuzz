struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: vec3<f32>) -> vec4<i32> {
    let var_0 = vec4<u32>(u_input.a ^ ~(~abs(u_input.e.x)), ~u_input.d, _wgslsmith_div_u32(u_input.d, 4294967295u), _wgslsmith_add_u32(~1u >> (_wgslsmith_sub_u32(917u << (u_input.a % 32u), abs(1u)) % 32u), 4294967295u));
    var var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), 2050f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -272f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) - arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 1000f) - _wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_f32(-arg_0.x))));
    var var_2 = Struct_5(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.x, 4294967295u, u_input.d, u_input.e.x)), select(var_0, var_0, vec4<bool>(true, false, false, true)) & var_0));
    var_2 = Struct_5(~var_2.a);
    var var_3 = u_input.e.x;
    return vec4<i32>(~u_input.c, ~select(~u_input.b.x, ~u_input.c, true) | -abs(-2147483647i), u_input.b.x, ~_wgslsmith_mod_i32(-countOneBits(-1i), i32(-1i) * -u_input.b.x));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_5) -> bool {
    let var_0 = arg_2;
    var var_1 = -1129f;
    var var_2 = !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1120f)), _wgslsmith_f_op_f32(abs(-289f)), arg_0)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(673f, -527f)))));
    let var_3 = Struct_5(0u);
    var var_4 = !select(!vec3<bool>(true, true, any(vec2<bool>(arg_0, false))), vec3<bool>(!arg_0, false, all(vec2<bool>(true, true)) || (arg_1.x > -11705i)), !vec3<bool>(false, arg_0, true));
    return true;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_5, arg_3: u32) -> f32 {
    let var_0 = vec4<bool>(!(any(vec4<bool>(true, true, true, true)) | any(vec4<bool>(true, true, true, true))), any(vec2<bool>(true, true)), func_3(true, ~func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -178f, 987f) - vec3<f32>(1797f, 3157f, -959f))), arg_2), true);
    var var_1 = (true | var_0.x) | true;
    var_1 = arg_0 == _wgslsmith_mod_i32(~_wgslsmith_mult_i32(arg_1 ^ arg_0, 1i), arg_1);
    var_1 = abs(-6797i) != arg_0;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(-466f + -1085f), 1556f), vec3<f32>(1000f, -781f, _wgslsmith_f_op_f32(func_1(u_input.b.x, u_input.b.x, Struct_5(u_input.a), u_input.e.x)))))), min(~(_wgslsmith_clamp_i32(u_input.b.x, -2147483647i, u_input.c) | min(0i, u_input.b.x)), u_input.c));
}

