struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_4,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 3>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> bool {
    global0 = array<Struct_5, 3>();
    var var_0 = _wgslsmith_f_op_f32(-1369f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1336f, -1708f) - _wgslsmith_f_op_f32(-240f - 1444f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1160f, -386f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-572f, 918f) - _wgslsmith_f_op_f32(step(1000f, 113f))) * _wgslsmith_f_op_f32(select(-927f, _wgslsmith_f_op_f32(select(-886f, -279f, arg_1)), arg_1)))));
    global0 = array<Struct_5, 3>();
    let var_1 = ~18442u ^ (min(1u, 1u) >> (arg_0.a.x % 32u));
    let var_2 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(-abs(-u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, ~u_input.b.x), countOneBits(~vec3<i32>(u_input.a, u_input.b.x, 0i)))), ~(-u_input.b));
    return arg_1;
}

fn func_2(arg_0: u32, arg_1: Struct_5) -> vec4<bool> {
    global0 = array<Struct_5, 3>();
    var var_0 = true;
    var var_1 = arg_1.d;
    let var_2 = _wgslsmith_f_op_f32(arg_1.c.b.x * var_1.a.x);
    var_1 = arg_1.d;
    return vec4<bool>(arg_1.d.b, ~(~(~12965u)) == (15595u >> (arg_1.d.e % 32u)), arg_1.d.b, select((_wgslsmith_div_u32(77780u, 109744u) >= var_1.e) && !(!var_1.b), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1.d.c, 11957i), vec3<i32>(-12115i, 565i, -1i)), _wgslsmith_mod_i32(19105i, -23452i)) < -var_1.c, func_3(Struct_3(vec2<u32>(4294967295u, 4294967295u)), !var_1.d)));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(0u, 0u, 20346u, 54664u) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), vec4<u32>(~_wgslsmith_mult_u32(61583u, 1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(56048u, 0u, 70177u, 45219u), vec4<u32>(14109u, 0u, 1u, 1u)), 0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, 1u, 4294967295u), abs(vec4<u32>(8658u, 0u, 28177u, 43579u))))));
    var_0 = select(~firstTrailingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.x, 19805u, 1u, var_0.x), min(vec4<u32>(13219u, 1u, 17939u, 4472u), vec4<u32>(40246u, 9289u, 42006u, var_0.x)), vec4<u32>(var_0.x, var_0.x, 4294967295u, 0u))), ~(vec4<u32>(abs(81757u), reverseBits(var_0.x), 4294967295u, countOneBits(var_0.x)) | _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(33103u, var_0.x, 0u, 6913u), vec4<u32>(var_0.x, 4294967295u, var_0.x, 44329u)), max(vec4<u32>(var_0.x, var_0.x, 18723u, var_0.x), vec4<u32>(9348u, 1u, var_0.x, var_0.x)))), !arg_0.x);
    return Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(0u, var_0.x), _wgslsmith_mod_vec2_u32(~countOneBits(var_0.yw), reverseBits(var_0.xz))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: u32) -> Struct_3 {
    let var_0 = global0[_wgslsmith_index_u32(~arg_2, 3u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-var_0.d.a.xx), var_0.c.b.xy));
    var var_2 = func_4(!select(select(!vec4<bool>(false, true, var_0.d.b, var_0.d.d), vec4<bool>(false, true, true, var_0.d.d), var_0.d.d), select(select(vec4<bool>(true, var_0.d.b, var_0.d.d, var_0.d.b), vec4<bool>(var_0.d.d, true, true, var_0.d.b), vec4<bool>(true, true, true, false)), select(vec4<bool>(var_0.d.d, true, var_0.d.d, var_0.d.b), vec4<bool>(var_0.d.b, true, var_0.d.d, var_0.d.b), var_0.d.d), func_2(61428u, global0[_wgslsmith_index_u32(4294967295u, 3u)])), var_0.d.d), select(!func_2(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 5487u), vec2<u32>(arg_2, arg_2)), Struct_5(vec4<i32>(-12853i, var_0.a.x, -18538i, 2147483647i), vec2<u32>(var_0.b.x, 0u), Struct_4(var_0.c.a, vec4<f32>(var_0.c.b.x, var_1.x, var_0.c.b.x, arg_1)), var_0.d)).wz, func_2(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 16025u, var_0.b.x, 9904u), vec4<u32>(0u, 27389u, 54989u, var_0.d.e))), global0[_wgslsmith_index_u32(arg_2, 3u)]).xx, false));
    var var_3 = min(19910u, abs(26716u));
    var var_4 = 71457u;
    return Struct_3(vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(min(vec2<u32>(1u, arg_2), vec2<u32>(1u, 0u)), vec2<u32>(var_0.b.x, arg_2)), ~(~vec2<u32>(var_2.a.x, arg_2))), _wgslsmith_sub_u32(4294967295u, var_0.d.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(countOneBits(2147483647i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -917f), 268f)), 29150u);
    let var_1 = Struct_4(Struct_2(vec4<i32>(u_input.a, -1068i, 0i, -10550i)), vec4<f32>(2339f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1023f * 1923f)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-203f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -715f) + -1354f), -563f));
    let var_2 = Struct_2(var_1.a.a);
    var_0 = Struct_3(var_0.a);
    let var_3 = func_1(-8772i, _wgslsmith_f_op_f32(-1156f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), -557f)), _wgslsmith_mod_u32(~(~(~var_0.a.x)), ~var_0.a.x ^ min(0u << (var_0.a.x % 32u), 1u)));
    var var_4 = ~(-var_1.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1138f), 1i, _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.a.x, var_2.a.x), var_1.a.a.wz), 21754i), vec3<u32>(~var_0.a.x, func_1(-reverseBits(25003i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_1.b.x)), -1185f)), var_3.a.x).a.x, 21046u), vec3<u32>(~4294967295u, select(func_1(select(var_4.x, 2147483647i, false), -508f, 1u).a.x, ~1u, true), select(var_0.a.x, ~var_3.a.x, false)));
}

