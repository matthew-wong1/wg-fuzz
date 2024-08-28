struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-45581i, i32(-2147483648), 0i, -11163i);

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> i32 {
    return ~(-select(min(1i, 7052i), -global0.x, true)) | _wgslsmith_dot_vec2_i32(u_input.a.zx, _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global0.x, 0i), global0.zz) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zw, global0.yw), vec2<i32>(u_input.c, arg_0))));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec2_i32(u_input.a.wz, -(~u_input.a.xw));
    var var_1 = _wgslsmith_clamp_i32(var_0, ~global0.x, -25464i);
    return Struct_3(Struct_1(-181f, ~func_3(4731i)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-950f + -1000f)) * 582f), -(~u_input.c) ^ ~_wgslsmith_mult_i32(-9824i, var_0)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(-u_input.a.xz, vec2<i32>(-814i, var_0)), _wgslsmith_mult_i32(global0.x, u_input.b)), global0.yy));
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = func_2();
    var_0 = Struct_3(arg_2, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1567f + -874f))), countOneBits(-1i)), countOneBits(-global0.x & _wgslsmith_sub_i32(_wgslsmith_mod_i32(arg_2.b, global0.x), 1i)));
    global0 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-3892i, u_input.b, min(global0.x, global0.x)), _wgslsmith_div_i32(27725i, global0.x)) ^ (u_input.c ^ u_input.c), -6219i, 31523i, arg_2.b);
    var_0 = Struct_3(var_0.b, func_2().b, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(25665i, u_input.b), u_input.a.x, ~arg_2.b), 16141i)));
    var var_1 = Struct_5(vec2<u32>(max(~_wgslsmith_div_u32(0u, 4294967295u), abs(~14080u)), min(~(~23568u), 1u)), global0.x, _wgslsmith_clamp_u32(~(~12349u), ~0u, 4294967295u) ^ 1u, ~(~(select(vec4<u32>(71608u, 1u, 1u, 1u), vec4<u32>(68395u, 22139u, 34552u, 0u), vec4<bool>(false, false, arg_1, arg_1)) & vec4<u32>(0u, 1u, 25704u, 30555u))));
    return vec4<i32>(_wgslsmith_mod_i32(-1i, max(1i, ~_wgslsmith_dot_vec4_i32(u_input.a, u_input.a))), 4244i, -38985i, -var_0.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2516f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1858f)) - _wgslsmith_f_op_f32(trunc(-1000f)))), true, Struct_1(293f, global0.x)) | u_input.a;
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-116f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1364f))))));
    let var_2 = 1u;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1061f, var_1, 535f, 373f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-370f, var_1, -1161f, -456f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(932f, -420f, var_1, var_1) + vec4<f32>(var_1, 674f, var_1, var_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(216f, var_1, 697f, 467f), vec4<f32>(var_1, -946f, var_1, var_1)))))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, vec2<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2, var_2, firstLeadingBit(52832u)), ~countOneBits(vec3<u32>(1u, 0u, var_2)))));
}

