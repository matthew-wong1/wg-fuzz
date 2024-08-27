struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 20>;

var<private> global1: f32 = 1296f;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_3) -> Struct_3 {
    return Struct_3(46310u, arg_2.b, arg_2.c);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: i32) -> vec4<f32> {
    let var_0 = -(~0i);
    let var_1 = select(vec3<bool>(all(vec2<bool>(arg_0.a, u_input.a.x == -1i)), any(vec3<bool>(false, true, true)), all(!(!vec3<bool>(arg_2.c, false, arg_2.c)))), !vec3<bool>(all(vec2<bool>(arg_0.a, arg_0.a)), arg_0.a && true, false | (arg_3 >= arg_0.b)), arg_0.a);
    let var_2 = vec4<bool>(all(var_1.zz), arg_2.c, !arg_2.c, true);
    global0 = array<vec3<u32>, 20>();
    let var_3 = arg_0;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(ceil(2133f)), _wgslsmith_f_op_f32(step(-1000f, arg_1.x)), _wgslsmith_f_op_f32(sign(1320f))))));
}

fn func_1() -> vec3<i32> {
    var var_0 = Struct_2(~u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(true, 42656i), vec2<f32>(1165f, 1073f), func_2(vec2<f32>(-1130f, 358f), vec2<f32>(751f, 1000f), Struct_3(u_input.c, -307f, true)), 1i))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1260f, -1426f, -473f, 1000f) * vec4<f32>(-292f, -823f, 2001f, 451f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1391f, 907f, -2996f, -1049f) + vec4<f32>(1000f, 429f, -158f, -1558f))))));
    var var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-330f, _wgslsmith_f_op_f32(-var_0.b.x), !(14636i != u_input.a.x))) * _wgslsmith_f_op_f32(f32(-1f) * -311f)) - var_0.b.x);
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-730f * _wgslsmith_f_op_f32(-var_0.b.x))));
    var_2 = 510f;
    return ~(_wgslsmith_sub_vec3_i32(~abs(vec3<i32>(1698i, u_input.a.x, u_input.a.x)), firstLeadingBit(~vec3<i32>(u_input.a.x, 9384i, u_input.a.x))) ^ ~(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(u_input.a.x, 7782i, select(-21020i, reverseBits(_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)))));
    let var_1 = -_wgslsmith_dot_vec3_i32(-reverseBits(func_1()), vec3<i32>(countOneBits(u_input.a.x), min(max(-1i, 1i), 2147483647i >> (u_input.b % 32u)), 0i));
    var var_2 = Struct_2(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, 1u, 36321u, 0u)), ~vec4<u32>(abs(0u), 4294967295u, 1u, 55324u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-882f + -1371f) - -116f), _wgslsmith_f_op_f32(-355f - _wgslsmith_f_op_f32(f32(-1f) * -223f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-427f + 1000f) - -668f), _wgslsmith_f_op_f32(1053f + -131f))));
    let var_3 = !select(vec2<bool>(!(var_1 < -1i), all(vec2<bool>(false, false))), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true));
    global0 = array<vec3<u32>, 20>();
    var var_4 = ~vec4<u32>(1u, 50395u, ~(56123u >> (reverseBits(u_input.c) % 32u)), 38057u);
    var var_5 = Struct_1(any(select(!select(vec3<bool>(var_3.x, false, true), vec3<bool>(false, var_3.x, var_3.x), var_3.x), vec3<bool>(true, !var_3.x, var_3.x || false), true)), var_1 & -19667i);
    global0 = array<vec3<u32>, 20>();
    let var_6 = vec2<bool>(!(any(vec4<bool>(false, var_5.a, var_3.x, var_5.a)) && true), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec2_f32(var_2.b.xx * _wgslsmith_f_op_vec2_f32(vec2<f32>(915f, var_2.b.x) * vec2<f32>(-533f, -1083f))), vec2<f32>(_wgslsmith_f_op_f32(-var_2.b.x), -1910f), Struct_3(4294967295u, -1174f, true)).b), var_2.a);
}

