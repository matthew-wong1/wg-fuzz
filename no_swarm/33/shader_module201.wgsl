struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_3,
    e: vec3<u32>,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: f32 = 1257f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> vec4<f32> {
    global1 = 694f;
    var var_0 = arg_1;
    let var_1 = vec2<bool>(false, true);
    let var_2 = -2147483647i;
    var_0 = Struct_1(min(1u, ~4294967295u));
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -3060f, _wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3)))), _wgslsmith_f_op_f32(round(arg_3))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-554f, arg_3, arg_3, -216f)))));
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_1(u_input.b.x);
    let var_1 = Struct_2(var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1267f, 1021f, -2031f, -633f)) - vec4<f32>(-1000f, 565f, 788f, -327f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -955f, 1670f, 1000f)), _wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(u_input.a, u_input.a, u_input.a), var_0, u_input.b.x, -753f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1638f, -1740f, -1327f, -1000f))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1838f), _wgslsmith_f_op_f32(f32(-1f) * -135f), _wgslsmith_f_op_f32(-113f + 466f), _wgslsmith_f_op_f32(round(-288f))))), Struct_1(var_0.a), Struct_1(var_0.a & ~firstLeadingBit(var_0.a)));
    return 217f;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: f32) -> u32 {
    global0 = _wgslsmith_f_op_f32(func_2(!any(vec4<bool>(true, true, true, true))));
    global0 = arg_2;
    global0 = 749f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + arg_2) * arg_1);
    let var_0 = Struct_3(Struct_1(~u_input.b.x));
    return max(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, select(~50083u, firstTrailingBit(var_0.a.a), false), 54079u), ~u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = 50477u;
    global0 = _wgslsmith_f_op_f32(min(-872f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-941f + -796f)))))));
    global1 = 361f;
    let var_2 = -253f;
    var var_3 = ~((vec2<u32>(var_1 ^ 0u, func_1(u_input.b.zy, 174f, var_2)) >> (vec2<u32>(_wgslsmith_sub_u32(7114u, var_1), 42309u) % vec2<u32>(32u))) << (u_input.b.yy % vec2<u32>(32u)));
    var var_4 = ~(~vec2<i32>(u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(round(var_2)), var_2))), 1064f, var_4.x, ~(~select(u_input.b.x, _wgslsmith_add_u32(var_1, u_input.b.x), select(false, true, true))));
}

