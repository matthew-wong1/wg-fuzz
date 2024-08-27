struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<vec4<u32>, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec4<i32>) -> i32 {
    var var_0 = false;
    global0 = array<Struct_1, 31>();
    let var_1 = 320f;
    var var_2 = global0[_wgslsmith_index_u32(39381u, 31u)];
    var_2 = global0[_wgslsmith_index_u32(6839u, 31u)];
    return firstLeadingBit(min(16047i, ~arg_2.x ^ arg_2.x));
}

fn func_3() -> i32 {
    global0 = array<Struct_1, 31>();
    global1 = array<vec4<u32>, 23>();
    global1 = array<vec4<u32>, 23>();
    global0 = array<Struct_1, 31>();
    global1 = array<vec4<u32>, 23>();
    return _wgslsmith_add_i32(-(u_input.b ^ func_2(1000f, 30271i, vec4<i32>(1i, -44960i, 5468i, u_input.a.x))), u_input.b) ^ max(2147483647i, u_input.a.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-(~arg_0.x), -_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(0i, 20881i, u_input.a.x, arg_0.x)), func_2(1326f, arg_0.x, -arg_0), _wgslsmith_mod_i32(func_3(), -1i)) << (~(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 4294967295u), global1[_wgslsmith_index_u32(15084u, 23u)]), 23u)] ^ ~global1[_wgslsmith_index_u32(1u, 23u)]) % vec4<u32>(32u)), -arg_0);
    var var_1 = Struct_1(-143f, _wgslsmith_f_op_f32(min(-812f, _wgslsmith_f_op_f32(trunc(-175f)))), select(arg_1.c, true, true));
    var_1 = arg_2;
    let var_2 = arg_1;
    global1 = array<vec4<u32>, 23>();
    return true;
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    global0 = array<Struct_1, 31>();
    global1 = array<vec4<u32>, 23>();
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) - 1427f), _wgslsmith_div_f32(arg_2.b, arg_2.b)), _wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(-1294f - arg_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -345f))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.a, arg_2.b, -693f))), vec3<f32>(arg_2.a, arg_2.b, arg_2.a), arg_1))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1306f, 951f, 492f), vec3<f32>(351f, arg_2.a, arg_2.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1138f, -449f, -943f) * vec3<f32>(arg_2.a, arg_2.b, arg_2.b)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(928f, -1658f, arg_2.a))))))));
    return Struct_1(_wgslsmith_f_op_f32(-arg_2.b), 465f, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(2147483647i, select(vec3<bool>(true, true, true), select(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), vec3<bool>(-1i < u_input.a.x, func_1(vec4<i32>(-19507i, -8821i, u_input.a.x, u_input.b), Struct_1(623f, 414f, true), Struct_1(499f, 1882f, true)), select(false, false, true)), vec3<bool>(true, true, true)), false), global0[_wgslsmith_index_u32(1u, 31u)], abs(select(-reverseBits(vec4<i32>(30633i, -62626i, u_input.a.x, -5807i)), _wgslsmith_sub_vec4_i32(-vec4<i32>(33859i, u_input.a.x, u_input.b, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.a.x, 2147483647i, u_input.b), vec4<i32>(u_input.a.x, 2147483647i, 26651i, -1i))), true)));
    var var_1 = -941f;
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.a)) + -180f) + var_0.a), var_0.c))));
    var var_2 = ~(~abs(vec3<u32>(48308u, 0u, 4294967295u)) | vec3<u32>(~(~24685u), ~_wgslsmith_clamp_u32(38171u, 4294967295u, 4294967295u), 70642u));
    let var_3 = global0[_wgslsmith_index_u32(~var_2.x, 31u)];
    global1 = array<vec4<u32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(813f, vec3<u32>(countOneBits(~var_2.x), 51291u, var_2.x));
}

