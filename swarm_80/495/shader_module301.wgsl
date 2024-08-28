struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> vec2<u32> {
    global0 = arg_0.a;
    var var_0 = vec4<bool>(arg_0.a, -612f <= arg_1, firstLeadingBit(~5701u) >= u_input.d, select(true, all(!vec3<bool>(arg_0.a, false, arg_0.a)), arg_0.a | true));
    global0 = arg_0.a;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -1619f) >= _wgslsmith_f_op_f32(ceil(arg_1));
    let var_1 = Struct_1(arg_1);
    return ~(~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, u_input.d, 1494u), vec4<u32>(32718u, u_input.e.x, 4294967295u, 6858u)), ~4294967295u) >> (~u_input.c % vec2<u32>(32u)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> vec3<i32> {
    var var_0 = true;
    var var_1 = func_3(Struct_2(false), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, 527f) - _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))), arg_0.x)));
    global0 = true;
    global0 = arg_1.a;
    var var_2 = u_input.d;
    return firstLeadingBit(abs(abs(vec3<i32>(-27208i, i32(-1i) * -19620i, i32(-1i) * -6918i))));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-670f))), -1000f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1110f, -1991f, -248f), vec3<f32>(489f, 740f, -1536f)))))));
    let var_1 = -2147483647i;
    global0 = true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(269f - 462f));
    let var_3 = _wgslsmith_div_vec3_i32(abs(vec3<i32>(countOneBits(2147483647i & var_1), -1i >> (arg_0 % 32u), -2147483647i)), ~func_2(_wgslsmith_div_vec3_f32(var_0, var_0), Struct_2(all(vec2<bool>(false, true)))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(165f)) + _wgslsmith_f_op_f32(-200f * -196f)), _wgslsmith_f_op_f32(f32(-1f) * -952f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-774f, -1251f) - vec2<f32>(1107f, -2108f))))));
    let var_1 = ~min(vec2<i32>(1i, 31968i), vec2<i32>(countOneBits(113106i), 1i));
    let var_2 = Struct_2(true);
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1(~(~29580u))), var_0.x));
    var var_3 = Struct_1(-479f);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(-1i, -76714i, var_1.x), abs(max(~select(u_input.e, vec2<u32>(18618u, 1u), vec2<bool>(false, var_2.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, u_input.e.x), ~u_input.e))), _wgslsmith_div_vec4_u32(~vec4<u32>(~u_input.c.x, ~u_input.c.x, _wgslsmith_clamp_u32(u_input.c.x, u_input.e.x, 31597u), u_input.a << (11133u % 32u)), (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.d, 17353u, 40767u), vec4<u32>(u_input.d, u_input.c.x, 35795u, u_input.e.x)) | vec4<u32>(u_input.c.x, u_input.b, 0u, 129935u)) << (vec4<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.c.x, u_input.c.x), 35961u, 1u, ~18004u) % vec4<u32>(32u))));
}

