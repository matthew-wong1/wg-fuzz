struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 29>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: i32) -> i32 {
    global0 = array<vec2<u32>, 29>();
    let var_0 = -50132i;
    let var_1 = ~(~(~4294967295u));
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_1.xx, vec2<f32>(_wgslsmith_f_op_f32(-833f - arg_1.x), arg_1.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(arg_1.yy, arg_1.yz, !vec2<bool>(arg_0, false))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(arg_1.yx))))))));
    global0 = array<vec2<u32>, 29>();
    return var_0 << (var_1 % 32u);
}

fn func_2() -> u32 {
    var var_0 = vec3<bool>(u_input.d < abs(u_input.d), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-167f - 501f) * _wgslsmith_f_op_f32(ceil(-1553f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-591f + -218f)), func_3(false, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(426f, -963f, 269f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-414f, -872f, -113f)))), u_input.d) > ~(i32(-1i) * -265i));
    var_0 = !(!select(!(!vec3<bool>(var_0.x, true, true)), !(!vec3<bool>(false, var_0.x, var_0.x)), var_0.x));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1920f, -586f), vec2<f32>(172f, 2066f))))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-719f, -560f))))))), _wgslsmith_div_vec2_i32(-min(abs(vec2<i32>(u_input.d, u_input.d)), vec2<i32>(-2147483647i, u_input.d)), firstTrailingBit(-vec2<i32>(u_input.d, u_input.d) | vec2<i32>(u_input.d, -9784i))));
    var_1 = Struct_1(vec2<f32>(1114f, 1f), min(-var_1.b, vec2<i32>(~(-1i), ~1i >> (_wgslsmith_mod_u32(84191u, u_input.c.x) % 32u))));
    global0 = array<vec2<u32>, 29>();
    return 88388u;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = true;
    global0 = array<vec2<u32>, 29>();
    global0 = array<vec2<u32>, 29>();
    let var_1 = ~global0[_wgslsmith_index_u32(1u, 29u)];
    var var_2 = vec3<u32>(_wgslsmith_mult_u32(~(~(~u_input.c.x)), var_1.x), _wgslsmith_mult_u32(func_2(), ~u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.a, ~(~(~vec3<u32>(var_1.x, 42911u, 27570u)))));
    return arg_0.d.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<f32>(-401f, 256f), vec2<i32>(u_input.d, 6438i));
    let var_1 = -(~_wgslsmith_mod_i32(var_0.b.x, -select(-1i, u_input.d, false)));
    var var_2 = -2147483647i;
    global0 = array<vec2<u32>, 29>();
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(var_0.a, vec2<i32>(var_0.b.x, 1i)), Struct_1(vec2<f32>(var_0.a.x, 316f), var_0.b), true, Struct_1(var_0.a, vec2<i32>(-1i, -37852i)), true), Struct_1(var_0.a, vec2<i32>(1405i, var_0.b.x)), Struct_1(vec2<f32>(1170f, -979f), var_0.b))), -757f))), -633f), _wgslsmith_mult_vec2_i32(var_0.b, var_0.b));
    let var_4 = -var_0.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -11470i, vec2<f32>(_wgslsmith_f_op_f32(sign(var_3.a.x)), var_3.a.x), firstLeadingBit(reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(-22960i, var_0.b.x, u_input.d), vec3<i32>(var_1, 19763i, 48210i)) | vec3<i32>(var_4, 0i, 0i))), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.a.x, var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_0.a.x, var_3.a.x)), _wgslsmith_f_op_f32(step(994f, var_3.a.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_3.a.x, var_0.a.x, var_0.a.x, var_0.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1097f, var_0.a.x, var_3.a.x, 1707f) + vec4<f32>(1017f, 1183f, 1223f, var_0.a.x))))));
}

