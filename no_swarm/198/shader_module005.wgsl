struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec2<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec4<u32>, 20>;

var<private> global2: array<i32, 12>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: vec4<f32>) -> u32 {
    return 29397u;
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: vec4<i32>, arg_3: vec2<f32>) -> u32 {
    let var_0 = Struct_4(any(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(true, 18610u < u_input.c), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))), countOneBits((firstLeadingBit(vec4<i32>(1i, -15113i, 1i, arg_2.x)) << ((global1[_wgslsmith_index_u32(19398u, 20u)] >> (vec4<u32>(0u, u_input.e, 4294967295u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))) << (global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(u_input.d.x), 0u), 20u)] % vec4<u32>(32u))), ~vec2<i32>(_wgslsmith_mod_i32(1i >> (0u % 32u), global2[_wgslsmith_index_u32(~u_input.d.x, 12u)]), 41361i));
    global1 = array<vec4<u32>, 20>();
    let var_1 = 4294967295u;
    let var_2 = !(!(!select(select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(false, true, true), vec3<bool>(var_0.a, true, true)), select(vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, false, var_0.a)), var_0.a)));
    var var_3 = all(vec2<bool>(var_2.x, false));
    return 1u;
}

fn func_1(arg_0: i32, arg_1: bool) -> f32 {
    var var_0 = Struct_2(min(~(func_2(Struct_3(false, global2[_wgslsmith_index_u32(0u, 12u)], vec2<u32>(7680u, u_input.e)), vec3<u32>(0u, 4294967295u, 4294967295u), vec4<f32>(1580f, -338f, -1321f, global0.x)) ^ func_3(u_input.b, -834f, vec4<i32>(270i, 20237i, -2147483647i, -14172i), global0.xx)), abs(u_input.d.x)), reverseBits(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.d.x), vec3<u32>(u_input.a, 1u, u_input.a)), _wgslsmith_sub_u32(u_input.e, 25021u), u_input.d.x ^ 1u, ~30466u)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(round(128f)), global0.x))))), _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_f32(f32(-1f) * -469f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + global0.xzy))));
    var var_1 = vec4<i32>(select(arg_0, _wgslsmith_clamp_i32(~u_input.b, i32(-1i) * -24984i, 0i), false), arg_0, _wgslsmith_div_i32(0i, _wgslsmith_clamp_i32(max(select(-49854i, global2[_wgslsmith_index_u32(u_input.a, 12u)], true), arg_0), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(0i, u_input.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, global2[_wgslsmith_index_u32(33980u, 12u)]), vec2<i32>(36246i, u_input.b), vec2<i32>(1i, global2[_wgslsmith_index_u32(0u, 12u)]))), _wgslsmith_add_i32(~arg_0, global2[_wgslsmith_index_u32(var_0.a, 12u)] | 26244i))), -(~(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(4294967295u, 12u)], -2147483647i) & -global2[_wgslsmith_index_u32(var_0.a, 12u)])));
    let var_2 = Struct_4(select(any(vec2<bool>(false, !arg_1)), !(!arg_1), arg_1), -(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-11615i, var_1.x, var_1.x, 2147483647i), vec4<i32>(2147483647i, 1i, arg_0, -2813i), vec4<i32>(-2147483647i, u_input.b, 40632i, 0i)) << ((var_0.b | _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, 12103u, var_0.a, u_input.c), global1[_wgslsmith_index_u32(1035u, 20u)])) % vec4<u32>(32u))), firstTrailingBit(_wgslsmith_add_vec2_i32((vec2<i32>(1i, var_1.x) >> (u_input.d % vec2<u32>(32u))) & var_1.yz, ~(var_1.yy << (vec2<u32>(11688u, 8846u) % vec2<u32>(32u))))));
    global1 = array<vec4<u32>, 20>();
    let var_3 = _wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(var_0.b.x, 20u)] | vec4<u32>(288u, u_input.a, 11399u, 0u), min(global1[_wgslsmith_index_u32(2390u, 20u)], var_0.b), ~vec4<u32>(4294967295u, u_input.a, u_input.c, 4294967295u)) & global1[_wgslsmith_index_u32(57934u << (1u % 32u), 20u)], vec4<u32>(select(~reverseBits(var_0.a), ~(~var_0.b.x), ~2147483647i == _wgslsmith_dot_vec2_i32(vec2<i32>(30432i, arg_0), var_1.xx)), ~(~24151u), 12621u, 0u));
    return -2574f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global0.x >= 823f, ~(-1i), max(vec2<u32>(_wgslsmith_add_u32(4294967295u << (u_input.e % 32u), 4294967295u), ~(66060u ^ u_input.d.x)), vec2<u32>(64114u, u_input.a) ^ vec2<u32>(u_input.e, u_input.e)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -553f)) - _wgslsmith_f_op_f32(-235f * _wgslsmith_f_op_f32(-1856f - global0.x)))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.x + -1346f), -1091f))))) - -537f);
    var var_3 = 4294967295u;
    var_2 = -1174f;
    var var_4 = u_input.b;
    global1 = array<vec4<u32>, 20>();
    global0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) - _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(func_1(-36053i, var_0.a)))), -1194f, global0.x, global0.x)));
    let var_5 = _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.c.x, var_0.c.x, u_input.c), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.c.x, var_0.c.x, var_0.c.x), vec3<u32>(u_input.c, u_input.d.x, var_0.c.x)))), vec3<u32>(26441u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c.x, u_input.d.x), vec2<u32>(var_0.c.x, u_input.c)) % 32u), _wgslsmith_div_u32(~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.c.x, 4294967295u, 33475u), global1[_wgslsmith_index_u32(u_input.d.x, 20u)])), 4294967295u)), vec3<u32>(_wgslsmith_mod_u32(select(u_input.c ^ var_0.c.x, _wgslsmith_mult_u32(var_0.c.x, 17181u), all(vec2<bool>(var_0.a, false))), 4294967295u | min(20504u, u_input.a)), 47920u, firstLeadingBit(var_0.c.x) << (~(var_0.c.x & u_input.e) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.xx) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, -555f), global0.zz) * _wgslsmith_f_op_vec2_f32(trunc(global0.ww))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global0.yy), _wgslsmith_f_op_vec2_f32(global0.zw - global0.zz))))), u_input.d, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 400f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - -305f), _wgslsmith_f_op_f32(func_1(-29198i, false)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -468f)), global0.x, -1948f)));
}

