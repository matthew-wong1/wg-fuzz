struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-180f, vec4<i32>(3275i, -25342i, i32(-2147483648), 0i), 61990i, vec4<i32>(-1i, 6426i, 2147483647i, -31346i), 99150u);

var<private> global1: array<vec3<i32>, 9>;

var<private> global2: array<vec2<f32>, 23>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = Struct_2(abs(4942u), ~(-u_input.b), Struct_1(_wgslsmith_f_op_f32(-447f - _wgslsmith_f_op_f32(select(335f, arg_1.c.a, arg_0.x))), vec4<i32>(0i, 17638i, -(~(-23484i)), -_wgslsmith_add_i32(-2147483647i, u_input.b)), -select(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b, global0.b.x), arg_1.c.b.wx), -68967i, any(vec2<bool>(arg_0.x, false))), vec4<i32>(-5095i, _wgslsmith_mult_i32(abs(1i), 2147483647i), 1i, u_input.b), 11556u));
    global2 = array<vec2<f32>, 23>();
    global1 = array<vec3<i32>, 9>();
    global1 = array<vec3<i32>, 9>();
    var var_1 = ~(~u_input.a);
    return !arg_0.zxw;
}

fn func_2(arg_0: i32, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - -914f)), _wgslsmith_f_op_f32(-353f - global0.a), global0.a)));
    return true;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * -535f), arg_1.b.a, _wgslsmith_f_op_f32(abs(global0.a)));
    global1 = array<vec3<i32>, 9>();
    var var_1 = Struct_2(u_input.a, -_wgslsmith_add_i32(44542i, -16616i), Struct_1(var_0.x, arg_1.b.b, arg_0.x, global0.d, global0.e));
    let var_2 = arg_1.c.yyy;
    global2 = array<vec2<f32>, 23>();
    return abs(global0.c) >> (1u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 23>();
    let var_0 = !vec4<bool>(true, true && all(vec3<bool>(true, true, false)), all(!func_1(vec4<bool>(true, false, false, false), Struct_2(u_input.d, u_input.b, Struct_1(global0.a, vec4<i32>(7028i, -3774i, 14166i, u_input.b), -2147483647i, vec4<i32>(47475i, global0.d.x, 2147483647i, 40293i), 36850u)))), func_2(u_input.b, false));
    var var_1 = _wgslsmith_dot_vec3_i32(-abs(global0.d.yzw), vec3<i32>(_wgslsmith_mod_i32(u_input.b, -64029i >> ((u_input.c.x << (u_input.a % 32u)) % 32u)), -929i, ~global0.b.x));
    var_1 = abs(12854i);
    var var_2 = Struct_3(vec2<u32>(u_input.a, global0.e), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(824f - -359f))), global0.b, ~(u_input.b | global0.c) << (u_input.c.x % 32u), _wgslsmith_add_vec4_i32(vec4<i32>(global0.b.x, global0.d.x, global0.c, 2147483647i), global0.d) & global0.d, _wgslsmith_sub_u32(~u_input.c.x ^ (global0.e >> (global0.e % 32u)), 1864u)), !vec4<bool>(!var_0.x, var_0.x, false, func_2(_wgslsmith_add_i32(15686i, u_input.b), var_0.x)));
    let var_3 = -1466f;
    var var_4 = max(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(~(-20409i), countOneBits(var_2.b.d.x), global0.d.x), _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, -36595i), func_3(var_2.b.b.xw, Struct_3(u_input.c.xy, var_2.b, vec4<bool>(var_0.x, var_0.x, var_0.x, false)))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global0.b.x), global0.d.ww)), select(~global0.d.ywz, global0.b.wxz ^ vec3<i32>(-2054i, 0i, 27499i), all(var_2.c)) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, global0.c, 0i) | vec3<i32>(72322i, var_2.b.d.x, var_2.b.b.x), select(vec3<i32>(523i, global0.d.x, global0.b.x), global0.b.zyz, var_2.c.xxz))), -reverseBits(var_2.b.b.yww));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.yx, _wgslsmith_f_op_f32(1034f * global0.a), _wgslsmith_mod_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(~vec4<u32>(var_2.a.x, 0u, 4294967295u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 54701u, u_input.c.x, 83836u), vec4<u32>(global0.e, 1u, u_input.a, 4294967295u)))), min((vec4<u32>(global0.e, 1u, u_input.c.x, 41339u) >> (vec4<u32>(4294967295u, 1u, 35931u, 60966u) % vec4<u32>(32u))) >> (abs(vec4<u32>(0u, u_input.a, var_2.b.e, 32398u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.e, global0.e, 0u, 114895u), vec4<u32>(4294967295u, 20417u, 59254u, 4294967295u)), firstLeadingBit(vec4<u32>(u_input.d, var_2.b.e, u_input.c.x, 88496u)), ~vec4<u32>(14426u, var_2.b.e, u_input.d, u_input.c.x)))), vec4<u32>(countOneBits(~abs(46779u)), global0.e, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.e, 33145u, var_2.b.e), _wgslsmith_clamp_vec3_u32(vec3<u32>(32958u, var_2.a.x, 50340u), u_input.c, u_input.c))), reverseBits(~var_2.a.x)));
}

