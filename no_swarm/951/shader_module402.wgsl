struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32>;

var<private> global1: array<f32, 11> = array<f32, 11>(-926f, 1405f, -204f, -755f, -2295f, 1726f, -1290f, 663f, 560f, 354f, 356f);

var<private> global2: Struct_1 = Struct_1(806f);

var<private> global3: Struct_1 = Struct_1(389f);

var<private> global4: array<Struct_1, 26>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = 0u;
    var var_1 = 73767i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(max(var_0, 92963u), 36567u, 15157u), 1u, _wgslsmith_add_u32(u_input.a.x, ~7996u)), u_input.a | _wgslsmith_div_vec3_u32(u_input.c.wzx, u_input.c.zww & vec3<u32>(var_0, u_input.b, 42015u))) % 32u);
    return 66427u;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: f32, arg_3: vec3<i32>) -> vec2<u32> {
    var var_0 = 22306i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(593f)));
    let var_2 = false;
    global0 = array<vec4<bool>, 32>();
    var var_3 = Struct_1(global1[_wgslsmith_index_u32(~min(max(u_input.b & 15375u, u_input.c.x ^ 30618u), ~(1u << (u_input.b % 32u))), 11u)]);
    return u_input.c.xz;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<bool>) -> vec2<u32> {
    global0 = array<vec4<bool>, 32>();
    var var_0 = global4[_wgslsmith_index_u32(~(~u_input.c.x) >> ((u_input.a.x | firstLeadingBit(~(u_input.b & u_input.a.x))) % 32u), 26u)];
    var_0 = global4[_wgslsmith_index_u32(u_input.c.x, 26u)];
    global4 = array<Struct_1, 26>();
    let var_1 = _wgslsmith_f_op_f32(floor(arg_0.x));
    return ~u_input.a.xy;
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: u32) -> Struct_1 {
    global4 = array<Struct_1, 26>();
    let var_0 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, u_input.b), ~(~func_2(vec4<f32>(arg_0.x, 605f, global1[_wgslsmith_index_u32(u_input.b, 11u)], 860f), vec2<i32>(-1i, 22886i), global2.a, vec3<i32>(31672i, -2147483647i, -2147483647i))));
    let var_1 = global4[_wgslsmith_index_u32(~1u, 26u)];
    let var_2 = _wgslsmith_f_op_f32(round(-1000f));
    var var_3 = !(!(!vec3<bool>(true, false, any(vec3<bool>(true, false, true)))));
    return Struct_1(_wgslsmith_div_f32(-768f, _wgslsmith_f_op_f32(round(-318f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(u_input.a.x, ~func_1(global4[_wgslsmith_index_u32(u_input.c.x, 26u)], 1u))), 26u)];
    global3 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(1226f, var_0.a), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 11u)] - -1309f), _wgslsmith_f_op_f32(round(184f)))))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x, 44357u), func_2(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 11u)], -1211f, -1368f, var_0.a), vec2<i32>(2147483647i, 15134i), -434f, vec3<i32>(1i, -1i, 14449i))) ^ func_3(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(249f, var_0.a, global1[_wgslsmith_index_u32(u_input.b, 11u)], -1000f))), global0[_wgslsmith_index_u32(u_input.c.x << (98795u % 32u), 32u)]), abs(vec2<u32>(~31877u, u_input.a.x))), 32658u & (~u_input.a.x & _wgslsmith_mod_u32(~u_input.b, 1u)));
    let var_1 = !vec2<bool>(false, all(vec2<bool>(true, u_input.a.x > u_input.a.x)));
    var var_2 = vec2<i32>(_wgslsmith_add_i32(1i, firstTrailingBit(1i)), _wgslsmith_clamp_i32(-1i, min(reverseBits(~(-12736i)), 1i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(min(-2559i, 15543i), _wgslsmith_sub_i32(18187i, 1i)), select(min(-51311i, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, 15532i, 1i), vec4<i32>(2147483647i, 50112i, -1i, -39082i)), any(vec4<bool>(false, var_1.x, false, var_1.x))))));
    global4 = array<Struct_1, 26>();
    global4 = array<Struct_1, 26>();
    global0 = array<vec4<bool>, 32>();
    let var_3 = -139f;
    global0 = array<vec4<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-2147483647i, ~var_2.x, -33944i, select(var_2.x, 59980i, var_1.x) << (0u % 32u)) ^ vec4<i32>(0i << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, 35794u, 0u), u_input.c) % 32u), -(16863i >> (u_input.b % 32u)), _wgslsmith_mod_i32(2147483647i << (0u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, 2147483647i), vec2<i32>(-2147483647i, 29701i))), _wgslsmith_dot_vec3_i32(vec3<i32>(2405i, var_2.x, 43498i) ^ vec3<i32>(var_2.x, 18523i, var_2.x), -vec3<i32>(-1i, var_2.x, -1156i))));
}

