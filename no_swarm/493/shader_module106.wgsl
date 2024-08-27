struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: Struct_2,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28>;

var<private> global1: vec4<u32> = vec4<u32>(1u, 4294967295u, 19819u, 42493u);

var<private> global2: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: vec2<i32>) -> i32 {
    global2 = array<vec4<bool>, 8>();
    global0 = array<vec2<i32>, 28>();
    global0 = array<vec2<i32>, 28>();
    global0 = array<vec2<i32>, 28>();
    var var_0 = arg_0;
    return -2147483647i;
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = 26549i;
    global2 = array<vec4<bool>, 8>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -798f, -1264f, 1502f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -358f, 1366f, -858f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 374f, -759f, 621f), vec4<f32>(667f, 1210f, 322f, -779f), global2[_wgslsmith_index_u32(global1.x, 8u)]))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1000f, 281f, -445f, -111f)))))), true)));
    global2 = array<vec4<bool>, 8>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(trunc(var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -462f)));
    return (firstLeadingBit(~17277u) << (~u_input.c.x % 32u)) >= ~select(_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(40104u, 1u)), 1u, -1393f <= var_2.x);
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_2(vec4<i32>(-46574i, _wgslsmith_dot_vec2_i32(u_input.e.ww, _wgslsmith_mult_vec2_i32(-vec2<i32>(1i, 7954i), vec2<i32>(-13303i, -1i))), 26277i, func_2(false, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 47429u), vec2<u32>(4294967295u, 1u)), vec2<bool>(true, true), -vec2<i32>(31635i, u_input.a) ^ vec2<i32>(u_input.e.x, u_input.d.x))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -117f) - _wgslsmith_div_f32(614f, 1333f)), _wgslsmith_f_op_f32(floor(893f)), func_3(_wgslsmith_clamp_i32(-2147483647i, u_input.e.x, u_input.a))))), _wgslsmith_dot_vec3_u32(~vec3<u32>(~8630u, 41104u, global1.x), abs(global1.zyy)));
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.d, 16106u & (_wgslsmith_div_u32(global1.x, var_0.d) & 86051u), _wgslsmith_dot_vec4_u32(firstLeadingBit(~vec4<u32>(0u, var_0.d, global1.x, var_0.d)), vec4<u32>(22339u, u_input.c.x, 32281u, ~0u))), ~u_input.b);
    var var_2 = ~_wgslsmith_sub_vec4_u32(~max(vec4<u32>(var_0.d, global1.x, 0u, u_input.c.x), vec4<u32>(global1.x, 28724u, 59421u, 4294967295u)) | ~select(vec4<u32>(u_input.b, var_0.d, u_input.b, 1u), vec4<u32>(94274u, 4294967295u, 0u, 18406u), vec4<bool>(true, true, false, true)), ~max(select(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, var_0.d), vec4<u32>(var_0.d, global1.x, u_input.c.x, global1.x), vec4<bool>(false, true, true, true)), vec4<u32>(1u, 96369u, 1u, var_0.d) & vec4<u32>(global1.x, 61413u, 8696u, 1u)));
    var var_3 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(~var_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, 1u, 70537u), vec4<u32>(21878u, 4294967295u, var_0.d, var_2.x)), ~4294967295u, ~4294967295u), vec4<u32>(var_0.d, _wgslsmith_mult_u32(~var_2.x, abs(80573u)), ~global1.x, u_input.b));
    var_1 = ~abs(10347u);
    return Struct_4(Struct_3(120168u), var_0.a.xxy, Struct_2(-vec4<i32>(firstLeadingBit(1i), var_0.a.x, max(2147483647i, -75534i), min(var_0.b, -38615i)), _wgslsmith_sub_i32(~u_input.d.x, ~_wgslsmith_sub_i32(-41316i, 0i)), -1210f, _wgslsmith_add_u32(4294967295u, var_3.x)), ~(-_wgslsmith_add_vec3_i32(u_input.d.wwy, var_0.a.xxz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_4(func_1().a, ~(-u_input.d.wyw), var_0.c, ~abs(u_input.d.wxw));
    global2 = array<vec4<bool>, 8>();
    let var_2 = ~1u;
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-918f, var_0.c.c) * _wgslsmith_f_op_f32(-var_0.c.c)))), -(~var_0.c.a.xx), ~u_input.c);
}

