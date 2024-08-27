struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(-1007f), Struct_3(-950f), Struct_3(-774f), Struct_3(-1555f), Struct_3(-1123f), Struct_3(-467f), Struct_3(1552f), Struct_3(-1000f), Struct_3(353f), Struct_3(450f), Struct_3(2223f), Struct_3(-538f), Struct_3(-774f), Struct_3(-1000f), Struct_3(1000f), Struct_3(-321f), Struct_3(2000f), Struct_3(-820f), Struct_3(1170f), Struct_3(-150f), Struct_3(1000f), Struct_3(639f), Struct_3(-239f), Struct_3(137f), Struct_3(-468f), Struct_3(342f), Struct_3(1546f), Struct_3(190f), Struct_3(-1000f), Struct_3(-128f), Struct_3(-1000f), Struct_3(-1540f));

var<private> global1: u32;

var<private> global2: f32 = 1044f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: f32, arg_3: u32) -> u32 {
    let var_0 = arg_0.x;
    let var_1 = 74224i;
    let var_2 = _wgslsmith_clamp_u32(4294967295u, _wgslsmith_mult_u32(_wgslsmith_div_u32(35211u, 40381u), max(12635u, reverseBits(~1u))), arg_0.x);
    global1 = var_2;
    global1 = max(arg_0.x, ~31489u);
    return ~(var_2 & 44290u);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> f32 {
    global0 = array<Struct_3, 32>();
    let var_0 = -(abs((i32(-1i) * -1i) << (~u_input.a.x % 32u)) >> (u_input.a.x % 32u));
    global0 = array<Struct_3, 32>();
    global1 = 43923u;
    var var_1 = _wgslsmith_mod_vec3_i32(firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0, 0i, var_0), vec3<i32>(var_0, 1i, var_0), vec3<i32>(var_0, -2147483647i, var_0)))), min(abs(select(vec3<i32>(var_0, -42611i, 4183i), vec3<i32>(var_0, 1i, 2147483647i), true)), -vec3<i32>(var_0, 77840i, 22124i))) << (vec3<u32>(1u, 35678u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(59753u, u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 51208u), u_input.a.yx), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 1u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, 107505u))), u_input.a.x)) % vec3<u32>(32u));
    return 131f;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec4<bool>, arg_3: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(~43647u, 32u)], arg_2.x, global0[_wgslsmith_index_u32(func_3(vec3<u32>(arg_3.x, arg_0, 58582u), !vec2<bool>(arg_1, arg_2.x), -895f, countOneBits(arg_0)), 32u)])), 638f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(1039f, 965f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -839f) - -327f) - 1650f)));
    global1 = arg_0;
    var var_1 = vec2<i32>(abs((i32(-1i) * -20722i) << (~_wgslsmith_mult_u32(4294967295u, arg_0) % 32u)), firstTrailingBit(-(select(-2159i, 0i, arg_1) << ((1u >> (u_input.a.x % 32u)) % 32u))));
    let var_2 = vec2<bool>(arg_2.x, max(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(48151u, 129079u)), abs(arg_3.wx)), 1u) != _wgslsmith_mod_u32(arg_3.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(arg_3.x, arg_3.x, 0u), _wgslsmith_mult_u32(arg_3.x, arg_0))));
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 32u)];
    return var_1.x;
}

fn func_5(arg_0: vec2<i32>) -> u32 {
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(46334u, 6763u), u_input.a.x >> (4294967295u % 32u)), _wgslsmith_dot_vec2_u32(abs(u_input.a.zz), ~u_input.a.zx)), ~min(_wgslsmith_mult_vec2_u32(u_input.a.yz, ~vec2<u32>(4294967295u, 0u)), ~vec2<u32>(15277u, 0u)));
}

fn func_1(arg_0: vec2<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1604f, 2255f, -401f, -794f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-660f, -1347f, -1000f, -573f), vec4<f32>(-1879f, -1007f, 875f, -279f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-548f, 1854f, 203f, -535f)))));
    global1 = ~(~func_5(vec2<i32>(6799i, func_2(13239u, false, vec4<bool>(true, false, false, arg_0.x), vec4<u32>(42381u, 28979u, 1u, u_input.a.x)))));
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(6008u, abs(select(u_input.a.x, 54649u, arg_0.x)), ~u_input.a.x), u_input.a) | firstLeadingBit(vec3<u32>(firstLeadingBit(u_input.a.x) | (u_input.a.x | u_input.a.x), 4294967295u << (u_input.a.x % 32u), _wgslsmith_add_u32(~u_input.a.x, ~u_input.a.x)));
    var var_2 = vec4<bool>(true & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) != 956f), true, _wgslsmith_sub_i32(_wgslsmith_add_i32(i32(-1i) * -1i, 1i), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, 6929i, 40803i), vec4<i32>(-2147483647i, -15012i, -2147483647i, 2147483647i)))) <= min(1i, -1i), !arg_0.x);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(floor(var_0.x)));
    return 1u ^ u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 1f;
    let var_0 = ~(~u_input.a.x | u_input.a.x);
    global1 = func_1(select(vec2<bool>(all(vec4<bool>(true, false, false, true)), true), vec2<bool>(false, false | all(vec4<bool>(true, true, false, false))), true));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1328f, -942f)))))));
    let var_2 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_0, firstTrailingBit(_wgslsmith_div_u32(21936u, 23155u)), 4294967295u), u_input.a, _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 1u, 4294967295u) & (u_input.a >> (u_input.a % vec3<u32>(32u))), min(~u_input.a, ~u_input.a)), select(vec3<u32>(u_input.a.x, 0u, abs(1742u)), _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(4294967295u, var_0, u_input.a.x)), (-923f < var_1) | true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1550f, -191f, var_1, -1000f)) + vec4<f32>(var_1, var_1, 1245f, 1236f)))))), var_0);
}

