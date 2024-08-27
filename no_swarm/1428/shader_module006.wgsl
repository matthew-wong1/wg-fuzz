struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> vec2<f32> {
    global1 = u_input.c;
    global1 = u_input.b;
    return vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1459f, _wgslsmith_f_op_f32(abs(-800f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(677f + 925f)));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_sub_i32(-1i, i32(-1i) * -8391i);
    global1 = abs(arg_0);
    let var_1 = arg_1;
    let var_2 = any(vec2<bool>(true, true));
    global0 = array<bool, 3>();
    return arg_1.a;
}

fn func_3() -> i32 {
    global0 = array<bool, 3>();
    let var_0 = u_input.d;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1007f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-327f)) + _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(2235f - 1244f), global0[_wgslsmith_index_u32(~u_input.b, 3u)])))));
    return _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(-u_input.a.x, _wgslsmith_sub_i32(u_input.d, firstLeadingBit(1i))), abs(-2147483647i)), ~u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(firstTrailingBit(~(~(vec3<u32>(6171u, u_input.c, u_input.c) ^ vec3<u32>(60183u, u_input.c, u_input.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(698f, -778f), vec2<f32>(1784f, 1387f))), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 804f), vec2<f32>(-540f, 1929f)))) + _wgslsmith_f_op_vec2_f32(func_1())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(209f + _wgslsmith_f_op_f32(floor(106f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-431f, -1399f) - _wgslsmith_f_op_f32(f32(-1f) * -966f)))), vec2<u32>(~_wgslsmith_dot_vec3_u32(func_2(80521u, Struct_2(vec3<u32>(u_input.b, u_input.c, 0u), vec2<f32>(233f, 489f), 169f, vec2<u32>(4294967295u, u_input.b))), ~vec3<u32>(4294967295u, 0u, u_input.c)), u_input.c));
    global1 = 1u;
    global1 = u_input.b;
    global1 = 0u | var_0.d.x;
    var var_1 = !vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 3u)] == true, _wgslsmith_div_i32(func_3(), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)) == u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.d, 1i), u_input.d), -1i), reverseBits(u_input.a.yy), -2147483647i, firstLeadingBit(vec4<u32>(var_0.a.x, ~(~67668u), var_0.d.x, (u_input.b & u_input.b) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 28464u, var_0.a.x, u_input.c), vec4<u32>(4294967295u, u_input.b, 62598u, u_input.c)))));
}

