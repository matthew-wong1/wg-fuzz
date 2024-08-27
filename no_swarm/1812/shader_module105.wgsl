struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30>;

var<private> global1: bool = false;

var<private> global2: i32 = 0i;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = -1i;
    let var_1 = 0u;
    global1 = all(vec3<bool>(_wgslsmith_dot_vec2_i32(u_input.a.zz, select(u_input.d.yz, u_input.a.yy, true)) > ~_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(2147483647i, -47880i, 3267i, var_0)), u_input.a.x >= ~(-2147483647i), true));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1670f - _wgslsmith_f_op_f32(968f + 119f))) * _wgslsmith_f_op_f32(sign(-1430f))), _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(~u_input.b, ~vec4<u32>(62382u, 29977u, u_input.c, 1u)), _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(103849u, 30u)] ^ u_input.b.xy, global0[_wgslsmith_index_u32(var_1, 30u)]), var_1, ~u_input.b.x), vec4<u32>(_wgslsmith_clamp_u32(1u, ~60842u, 1u), 1u, ~0u, 6996u)), var_1, _wgslsmith_mult_i32(1i, 1i), true);
    global1 = !any(!select(vec4<bool>(var_2.e, false, false, true), select(vec4<bool>(var_2.e, false, var_2.e, true), vec4<bool>(var_2.e, false, var_2.e, var_2.e), vec4<bool>(var_2.e, false, var_2.e, var_2.e)), !vec4<bool>(var_2.e, true, var_2.e, false)));
    return ~(~(-14739i));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    global2 = _wgslsmith_dot_vec3_i32(u_input.a.yzy, vec3<i32>(reverseBits(arg_0), ~(-23995i), max((u_input.d.x & 33446i) & 2171i, arg_0)));
    var var_0 = abs(-vec4<i32>(func_3(), 1i, arg_0, 8573i));
    var var_1 = Struct_1(248f, u_input.b & _wgslsmith_div_vec4_u32(vec4<u32>(arg_2.x, 4294967295u, ~u_input.c, 0u), u_input.b), 0u, -(countOneBits(2147483647i) >> (max(_wgslsmith_mod_u32(u_input.c, u_input.c), 49347u >> (arg_2.x % 32u)) % 32u)), (false & (all(vec4<bool>(arg_1, true, false, arg_1)) & all(vec2<bool>(false, true)))) && select(!(var_0.x < arg_0), false, all(vec3<bool>(true, false, arg_1))));
    global1 = select(-4107i == min(-11453i, arg_0), all(!select(vec2<bool>(arg_1, var_1.e), vec2<bool>(false, arg_1), vec2<bool>(var_1.e, true))) & arg_1, any(vec3<bool>(!(u_input.d.x != u_input.a.x), !(var_1.c > var_1.c), false)));
    global2 = -var_1.d;
    return Struct_1(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_clamp_vec4_u32(~(~var_1.b) ^ vec4<u32>(~var_1.c, arg_2.x, var_1.c, ~1u), select(var_1.b, max(u_input.b, var_1.b), any(vec3<bool>(true, true, var_1.e))) & _wgslsmith_div_vec4_u32(u_input.b, ~vec4<u32>(106723u, 1u, var_1.c, 74809u)), u_input.b), _wgslsmith_sub_u32(~select(_wgslsmith_add_u32(0u, 0u), _wgslsmith_clamp_u32(var_1.b.x, u_input.c, arg_2.x), any(vec2<bool>(true, arg_1))), ~(~u_input.b.x) ^ _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 7417u << (1u % 32u))), -max(-_wgslsmith_add_i32(-2147483647i, 5591i), countOneBits(max(0i, 41442i))), false);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<f32>) -> f32 {
    let var_0 = func_2(abs(-firstTrailingBit(u_input.a.x) & 39887i), true, ~u_input.b.xz);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))) + 1000f);
    global2 = var_0.d;
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-603f + _wgslsmith_f_op_f32(abs(var_0.a))) + -939f)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.a, -1153f))) * _wgslsmith_f_op_f32(706f + var_3));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -431f), -225f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<bool>(false, false), vec4<f32>(-185f, 284f, -2630f, -778f))) * _wgslsmith_f_op_f32(-349f + -1359f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(293f + -1495f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(u_input.b.wxx, ~vec3<u32>(~u_input.b.x, _wgslsmith_div_u32(46377u, 74867u), u_input.b.x)), u_input.b, _wgslsmith_f_op_f32(max(1456f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-803f, 429f)) + -1396f))));
}

