struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, false, true, true, true, true, false, true, true, true, false, false);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> f32 {
    var var_0 = arg_2.d.c;
    global0 = array<bool, 12>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_2.a.x, -1555f)), _wgslsmith_f_op_f32(-arg_2.a.x));
    var_0 = ~(-_wgslsmith_add_i32(u_input.a & -5325i, u_input.a));
    let var_2 = _wgslsmith_mod_i32(u_input.a, arg_0.c);
    return _wgslsmith_f_op_f32(-560f + -2293f);
}

fn func_2() -> vec3<u32> {
    global0 = array<bool, 12>();
    let var_0 = 46416u;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1214f, -454f, 1845f, 230f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-690f)) - 2237f), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-171f - 137f)), _wgslsmith_f_op_f32(func_3(Struct_1(false, false, u_input.a, vec4<bool>(false, true, true, true)), -682f, Struct_2(vec4<f32>(1000f, 1000f, 1081f, -489f), vec2<u32>(28375u, var_0), Struct_1(true, global0[_wgslsmith_index_u32(1u, 12u)], u_input.a, vec4<bool>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], false, global0[_wgslsmith_index_u32(14453u, 12u)])), Struct_1(global0[_wgslsmith_index_u32(var_0, 12u)], global0[_wgslsmith_index_u32(70053u, 12u)], -1i, vec4<bool>(false, false, global0[_wgslsmith_index_u32(67340u, 12u)], global0[_wgslsmith_index_u32(var_0, 12u)]))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f))))), u_input.c.xz, Struct_1(true, global0[_wgslsmith_index_u32(~var_0, 12u)], _wgslsmith_clamp_i32(reverseBits(-1i), _wgslsmith_clamp_i32(-u_input.a, -6997i, _wgslsmith_dot_vec3_i32(vec3<i32>(-13091i, 2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, 0i))), firstTrailingBit(~u_input.a)), !select(vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 12u)], false, false), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 12u)], false, global0[_wgslsmith_index_u32(1764u, 12u)], true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 12u)], true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(0u, 12u)], false, true)), !vec4<bool>(global0[_wgslsmith_index_u32(792u, 12u)], false, true, true))), Struct_1(false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.xz, max(_wgslsmith_clamp_vec2_u32(u_input.c.zz, vec2<u32>(4294967295u, u_input.d), vec2<u32>(0u, var_0)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, var_0), vec2<u32>(u_input.d, 4294967295u)))), 12u)], ~(-_wgslsmith_div_i32(u_input.a, 1i)), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(87507u, 12u)], global0[_wgslsmith_index_u32(var_0, 12u)], false, global0[_wgslsmith_index_u32(0u, 12u)]), vec4<bool>(global0[_wgslsmith_index_u32(1u, 12u)], false, true, false), global0[_wgslsmith_index_u32(u_input.b, 12u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(31763u, 12u)], false, global0[_wgslsmith_index_u32(u_input.b, 12u)]), global0[_wgslsmith_index_u32(u_input.c.x >> (u_input.d % 32u), 12u)]), !vec4<bool>(global0[_wgslsmith_index_u32(var_0, 12u)], false, false, global0[_wgslsmith_index_u32(var_0, 12u)]), false == (12483u != var_0))));
    global0 = array<bool, 12>();
    global0 = array<bool, 12>();
    return u_input.c;
}

fn func_1() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(4294967295u, u_input.b, 19496u)), max(u_input.b, u_input.b), firstTrailingBit(u_input.b)), func_2(), countOneBits(~vec3<u32>(u_input.b, 1u, 102657u))), u_input.c), 12u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -120f), _wgslsmith_f_op_f32(max(-304f, 319f)), 884f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1435f, -2070f, -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1145f, -102f, 2023f)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, -527f) * vec3<f32>(-490f, -214f, var_1.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-729f + var_1.x) - _wgslsmith_f_op_f32(-507f - var_1.x))), var_1.x, 246f));
    let var_3 = any(select(vec2<bool>(false, u_input.a < reverseBits(-44454i)), select(select(!vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(9197u, 12u)], global0[_wgslsmith_index_u32(73092u, 12u)]), global0[_wgslsmith_index_u32(0u, 12u)]), select(!vec2<bool>(global0[_wgslsmith_index_u32(47075u, 12u)], false), !vec2<bool>(global0[_wgslsmith_index_u32(0u, 12u)], true), vec2<bool>(global0[_wgslsmith_index_u32(44870u, 12u)], global0[_wgslsmith_index_u32(u_input.c.x, 12u)])), ~1u < min(u_input.b, u_input.d)), select(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(30157u, 12u)]), select(vec2<bool>(false, global0[_wgslsmith_index_u32(2486u, 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], global0[_wgslsmith_index_u32(u_input.c.x, 12u)]), true), vec2<bool>(false, global0[_wgslsmith_index_u32(~4294967295u, 12u)]))));
    global0 = array<bool, 12>();
    return -6914i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 12>();
    let var_0 = vec3<i32>(-12537i, func_1(), ~(-14230i));
    var var_1 = select(vec2<bool>(global0[_wgslsmith_index_u32(~(~27569u), 12u)], global0[_wgslsmith_index_u32(abs(~u_input.d) >> (abs(abs(u_input.b)) % 32u), 12u)]), select(select(select(vec2<bool>(true, false), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 12u)]), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(u_input.d, 12u)]))), vec2<bool>(true, true), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d, 12u)])), vec2<bool>(global0[_wgslsmith_index_u32(~62137u, 12u)], global0[_wgslsmith_index_u32(~1u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(71040u, u_input.d, 38300u, u_input.d), vec4<u32>(1u, u_input.c.x, 1u, 8956u)), 12u)]), vec2<bool>(global0[_wgslsmith_index_u32(6649u, 12u)], true)), select(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(70120u, 12u)]), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.c.x, 12u)]), select(vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 12u)]), vec2<bool>(true, false))), vec2<bool>(true, true), true));
    global0 = array<bool, 12>();
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1650f, -105f, -415f, 178f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1228f, -206f, 184f, -158f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(704f, -131f, 1628f, 667f)))))))), ~u_input.c.zy, Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 4294967295u), ~vec3<u32>(u_input.b, 9870u, u_input.d)) < ~u_input.d, true, -30778i >> (select(_wgslsmith_mult_u32(4294967295u, u_input.c.x), 42683u, global0[_wgslsmith_index_u32(4294967295u << (0u % 32u), 12u)]) % 32u), select(select(!vec4<bool>(false, false, var_1.x, false), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(56949u, 12u)], var_1.x, false), vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 12u)], var_1.x), vec4<bool>(global0[_wgslsmith_index_u32(18889u, 12u)], global0[_wgslsmith_index_u32(u_input.d, 12u)], false, var_1.x)), vec4<bool>(true, false, false, true)), select(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], var_1.x, false, var_1.x), select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 12u)], global0[_wgslsmith_index_u32(9798u, 12u)], false), true), select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], var_1.x), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(4294967295u, 12u)], true), true)), !vec4<bool>(false, false, false, global0[_wgslsmith_index_u32(0u, 12u)]))), Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(u_input.c.x, 0u), func_2().x), u_input.c), 12u)], !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.c.x, u_input.b), vec3<u32>(u_input.b, u_input.c.x, 50397u)), 12u)], 16005i, vec4<bool>(true, u_input.a < (11555i >> (1u % 32u)), false, false)));
    var_1 = vec2<bool>(true, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a.x))), -1307f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(687f, 1435f, var_2.a.x)))))), -785f);
}

