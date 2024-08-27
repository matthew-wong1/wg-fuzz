struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<vec4<bool>, 5>;

var<private> global1: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_2(arg_0.wxy);
    global0 = array<vec4<bool>, 5>();
    global1 = array<vec3<bool>, 10>();
    global0 = array<vec4<bool>, 5>();
    global1 = array<vec3<bool>, 10>();
    return -u_input.a.x;
}

fn func_3(arg_0: Struct_2) -> f32 {
    global1 = array<vec3<bool>, 10>();
    global1 = array<vec3<bool>, 10>();
    let var_0 = 1556f;
    global1 = array<vec3<bool>, 10>();
    let var_1 = vec2<u32>(~(~(~1u)), _wgslsmith_mod_u32(29338u, 1u));
    return arg_0.a.x;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3) -> vec4<i32> {
    global1 = array<vec3<bool>, 10>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x * 275f)))))), ((~79590u << (firstTrailingBit(4294967295u) % 32u)) <= arg_1) && false, vec2<bool>(!(20891u <= ~arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(arg_0.b))) - _wgslsmith_f_op_f32(f32(-1f) * -548f)) > 1284f), _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_add_u32(0u, arg_1)), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_1, 0u, arg_1, 1u), vec4<u32>(arg_1, arg_1, 4294967295u, arg_1)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 30863u, 1u, arg_1), vec4<u32>(4294967295u, 9438u, arg_1, 884u))), ~select(vec3<u32>(1u, arg_1, arg_1), ~vec3<u32>(4294967295u, 0u, arg_1), any(vec3<bool>(true, true, false)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, arg_0.b.x, 1215f, var_0.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(833f, arg_2.b.x, var_0.a, var_0.a)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.a))), arg_2.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-848f)), _wgslsmith_f_op_f32(f32(-1f) * -634f)), arg_0.c.x)));
    global0 = array<vec4<bool>, 5>();
    global0 = array<vec4<bool>, 5>();
    return countOneBits(~vec4<i32>(countOneBits(u_input.a.x), ~u_input.a.x, min(u_input.a.x, countOneBits(u_input.a.x)), 55212i));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<i32>, arg_3: vec4<bool>) -> vec4<f32> {
    let var_0 = 36446i;
    global0 = array<vec4<bool>, 5>();
    global1 = array<vec3<bool>, 10>();
    global1 = array<vec3<bool>, 10>();
    var var_1 = _wgslsmith_div_u32(select(reverseBits(341u), 1u, true) | min(~_wgslsmith_mod_u32(0u, 37288u), 4294967295u), _wgslsmith_add_u32(~63645u, 50306u));
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.b.x, _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -518f)), arg_0.c.x, arg_0.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 5>();
    var var_0 = true;
    let var_1 = 1532f;
    global1 = array<vec3<bool>, 10>();
    var var_2 = _wgslsmith_f_op_f32(select(var_1, var_1, false));
    var var_3 = true;
    global0 = array<vec4<bool>, 5>();
    var_0 = any(!vec3<bool>(any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), any(vec4<bool>(true, true, false, true)), true));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2657f, 168f, -2422f, var_1)))) - vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1 + -354f), -884f)), var_1, -807f, -527f)) * _wgslsmith_f_op_vec4_f32(func_4(Struct_3(465f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-558f, 275f, var_1)))), vec2<f32>(-145f, _wgslsmith_f_op_f32(var_1 - var_1))), _wgslsmith_div_i32(~func_1(vec4<f32>(-865f, 546f, 744f, var_1), vec4<f32>(-308f, var_1, var_1, 1000f), Struct_1(-112f, true, vec2<bool>(false, true), 1145u)), abs(u_input.a.x) >> (~70890u % 32u)), -func_2(Struct_3(var_1, vec3<f32>(var_1, -130f, -1096f), vec2<f32>(-907f, var_1)), ~17728u, Struct_3(var_1, vec3<f32>(-257f, var_1, 790f), vec2<f32>(1076f, var_1))), vec4<bool>(true, true, true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(-10954i)));
}

