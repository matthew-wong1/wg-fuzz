struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true));

var<private> global1: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(56643u, 53831u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 59068u), vec2<u32>(25139u, 18550u), vec2<u32>(65381u, 102209u), vec2<u32>(75352u, 31212u), vec2<u32>(1431u, 45559u));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = -1727f;
    let var_1 = _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(select(arg_0.b, reverseBits(~75696u), true) | ~1637u, 7u)], ~countOneBits(_wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(0u, 7u)], global1[_wgslsmith_index_u32(0u, 7u)]) & firstTrailingBit(global1[_wgslsmith_index_u32(arg_2.b, 7u)])));
    global1 = array<vec2<u32>, 7>();
    var var_2 = -u_input.a | -(vec4<i32>(-1i) * -vec4<i32>(-3633i, -1i, 34314i, -11353i));
    global0 = array<vec4<bool>, 9>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(356f, _wgslsmith_f_op_f32(arg_1.d.x * _wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(arg_0.d.x + arg_2.d.x))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> i32 {
    global1 = array<vec2<u32>, 7>();
    var var_0 = !arg_0.c;
    var var_1 = vec3<bool>((arg_2.a << (abs(arg_2.b) % 32u)) <= 1i, !arg_1.x, arg_1.x);
    var var_2 = arg_2.c;
    let var_3 = _wgslsmith_clamp_vec3_i32(select(vec3<i32>(min(arg_2.a, _wgslsmith_div_i32(2194i, -1i)), -10123i, arg_0.a << (min(arg_2.b, 1u) % 32u)), u_input.c, arg_1.yxz), u_input.c, -u_input.c);
    return ~var_3.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(-18456i ^ func_3(arg_0, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(global1[_wgslsmith_index_u32(0u, 7u)]), select(vec2<u32>(4294967295u, 9691u), global1[_wgslsmith_index_u32(arg_0.b, 7u)], vec2<bool>(arg_0.c, true))), 9u)], Struct_1(-33085i, arg_0.b, false, vec4<f32>(-740f, 977f, arg_0.d.x, arg_0.d.x))), arg_0.b, false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1122f, -1119f, arg_0.d.x, arg_0.d.x)) + _wgslsmith_div_vec4_f32(arg_0.d, vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.d.x))))));
    var var_1 = arg_0;
    var var_2 = u_input.c.x;
    var var_3 = arg_0;
    let var_4 = var_0;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 9>();
    var var_0 = 139f;
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -538f);
    global1 = array<vec2<u32>, 7>();
    var var_1 = func_2(Struct_1(_wgslsmith_mod_i32(2147483647i, ~u_input.b), 63946u, true, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1232f + 588f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_1(2147483647i, 9927u, false, vec4<f32>(1000f, -330f, -1546f, 508f)), Struct_1(u_input.c.x, 112514u, false, vec4<f32>(-736f, -589f, -557f, -1000f)), Struct_1(0i, 22640u, true, vec4<f32>(579f, -468f, 216f, 1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(457f, -1704f))), _wgslsmith_f_op_f32(select(-101f, _wgslsmith_f_op_f32(f32(-1f) * -480f), any(global0[_wgslsmith_index_u32(41515u, 9u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(~242u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-628f, 1094f, 640f, var_1.d.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(909f, var_1.d.x, var_1.d.x, var_1.d.x)))) - _wgslsmith_div_vec4_f32(var_1.d, _wgslsmith_f_op_vec4_f32(ceil(var_1.d)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-539f, -1222f, var_1.d.x, var_1.d.x)) * vec4<f32>(481f, var_1.d.x, var_1.d.x, 1031f))))), abs(_wgslsmith_div_i32(_wgslsmith_add_i32(~u_input.c.x, _wgslsmith_add_i32(u_input.b, u_input.b)), 2147483647i)), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_1.b, 36718u, 4294967295u), vec4<u32>(var_1.b, var_1.b, var_1.b, 52847u)), var_1.b, reverseBits(~var_1.b), ~abs(4294967295u)), ~(vec4<u32>(var_1.b, 0u, 31816u, var_1.b) | (vec4<u32>(var_1.b, var_1.b, var_1.b, 4294967295u) | vec4<u32>(23679u, 1u, var_1.b, 42734u)))), ~(select(_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_1.b, var_1.b), vec3<u32>(var_1.b, var_1.b, 4294967295u)), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.b, 4294967295u, var_1.b), vec3<u32>(var_1.b, var_1.b, 81870u)), var_1.b < var_1.b) << (~(~vec3<u32>(var_1.b, 18291u, var_1.b)) % vec3<u32>(32u))));
}

