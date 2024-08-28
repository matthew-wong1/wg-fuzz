struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> u32 {
    return u_input.d.x;
}

fn func_3() -> i32 {
    var var_0 = -1277f;
    let var_1 = 0u;
    let var_2 = all(vec4<bool>(true, true, true, !(!any(vec2<bool>(false, false)))));
    var var_3 = u_input.a.x;
    let var_4 = Struct_2(33338u);
    return 0i;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<u32>) -> u32 {
    var var_0 = firstLeadingBit(_wgslsmith_sub_i32(select(-14198i, func_3(), true), 1i));
    var var_1 = u_input.d;
    let var_2 = vec4<bool>(arg_0, arg_0, arg_0, !arg_0 && !select(arg_0, true, true | arg_0));
    let var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))));
    var var_4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_3, arg_1, 629f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, -271f))), vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(1117f * 231f))))));
    return 46513u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~4294967295u);
    let var_1 = 116653u;
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(59140u, func_1(), 54400u, _wgslsmith_div_u32(_wgslsmith_mod_u32(2951u, 13022u) ^ func_2(true, -380f, vec2<u32>(u_input.d.x, 34403u)), u_input.d.x)), firstTrailingBit(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(0u, var_0.a, u_input.d.x, u_input.d.x), vec4<u32>(var_1, var_1, 0u, 31039u), true) | (vec4<u32>(16367u, 4294967295u, 0u, 4294967295u) << (vec4<u32>(var_1, 32371u, u_input.d.x, var_1) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.d.x, 4294967295u, 71560u, 0u), select(vec4<u32>(59069u, var_1, u_input.c.x, 45945u), vec4<u32>(u_input.c.x, 36124u, 0u, var_0.a), vec4<bool>(true, false, true, true))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(38876u, 1u, var_0.a, var_1), vec4<u32>(u_input.d.x, 31504u, var_1, var_0.a)), vec4<u32>(4294967295u, 0u, 34309u, 32289u) | vec4<u32>(1u, var_0.a, u_input.d.x, var_1), abs(vec4<u32>(u_input.c.x, var_1, var_0.a, var_0.a))))));
    let var_3 = 48136u ^ var_0.a;
    var var_4 = ~_wgslsmith_div_u32(~(~var_1), ~(select(26261u, 6347u, true) >> (_wgslsmith_mult_u32(1u, 0u) % 32u)));
    var_4 = 34445u;
    let var_5 = _wgslsmith_dot_vec3_u32(var_2.wwx, var_2.zwx & ~min(u_input.d, u_input.d >> (vec3<u32>(var_0.a, var_0.a, u_input.c.x) % vec3<u32>(32u))));
    let var_6 = var_0;
    var_4 = 1595u;
    let x = u_input.a;
    s_output = StorageBuffer(-9300i);
}

