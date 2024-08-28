struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_5 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32, arg_3: Struct_2) -> vec4<u32> {
    global0 = arg_3;
    global0 = arg_3;
    global0 = arg_3;
    global0 = Struct_2(global0.a, select(arg_3.b, select(vec3<bool>(true, true, arg_3.b.x), !select(vec3<bool>(true, false, arg_0.a), vec3<bool>(true, global0.b.x, false), false), min(u_input.b, arg_1.b.x) == ~u_input.b), true));
    global0 = Struct_2(global0.a, vec3<bool>(arg_3.b.x, (~arg_1.a.x | -7841i) >= ~(-2147483647i), true));
    return ~(~_wgslsmith_add_vec4_u32((vec4<u32>(17375u, 4294967295u, 10564u, 4294967295u) ^ vec4<u32>(u_input.b, 18412u, 1u, arg_1.b.x)) << ((arg_1.b ^ arg_1.b) % vec4<u32>(32u)), ~abs(vec4<u32>(arg_3.a.x, 4294967295u, global0.a.x, 0u))));
}

fn func_2() -> i32 {
    var var_0 = Struct_4(vec2<i32>(_wgslsmith_add_i32(~u_input.a.x, _wgslsmith_div_i32(~(-59447i), -27272i)), firstLeadingBit(0i)), func_3(Struct_1(global0.b.x), Struct_4(u_input.a.yx << ((global0.a ^ global0.a) % vec2<u32>(32u)), vec4<u32>(global0.a.x, 59534u, global0.a.x | u_input.b, _wgslsmith_add_u32(u_input.b, u_input.b)), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(177f + -1002f) - _wgslsmith_f_op_f32(select(614f, 983f, global0.b.x)))), Struct_2(global0.a, global0.b)), -51887i);
    let var_1 = global0.b.zy;
    var_0 = Struct_4(vec2<i32>(0i, 13072i), vec4<u32>(~49649u, ~_wgslsmith_mod_u32(u_input.b, var_0.b.x) ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, global0.a.x), var_0.b.xz), ~u_input.b | (~3810u << (global0.a.x % 32u)), _wgslsmith_add_u32(~min(1u, var_0.b.x), _wgslsmith_div_u32(~u_input.b, 51326u))), _wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_div_i32(-1i, var_0.c), var_0.a.x, 0i | var_0.a.x), vec3<i32>(-1i) * -vec3<i32>(0i, var_0.c, -50820i)));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(395f * 721f), _wgslsmith_f_op_f32(f32(-1f) * -1754f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -630f) * _wgslsmith_div_f32(-1427f, -587f))), -1075f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-106f)))) * 356f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -534f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -214f)), -1061f, -615f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1158f), _wgslsmith_f_op_f32(f32(-1f) * -204f), -1387f, _wgslsmith_f_op_f32(select(-1188f, 212f, global0.b.x)))))));
    global0 = Struct_2(vec2<u32>(global0.a.x, var_0.b.x), !vec3<bool>(!var_1.x | false, false, false));
    return ~(-2147483647i);
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> bool {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -347f)), _wgslsmith_f_op_f32(sign(-120f)));
    var var_1 = Struct_1(!(func_2() > u_input.a.x));
    var var_2 = var_1.a;
    global0 = Struct_2(_wgslsmith_div_vec2_u32(func_3(Struct_1(select(true, var_1.a, arg_1)), Struct_4(firstLeadingBit(vec2<i32>(u_input.a.x, 1i)), vec4<u32>(56878u, 0u, global0.a.x, u_input.b), _wgslsmith_dot_vec3_i32(arg_0.yyx, u_input.a.yxx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -601f)), Struct_2(global0.a, vec3<bool>(global0.b.x, var_1.a, false))).xz, global0.a), vec3<bool>(((u_input.b != 14600u) || (false & arg_1)) & !any(global0.b), _wgslsmith_sub_u32(global0.a.x, global0.a.x) != _wgslsmith_mod_u32(select(32760u, u_input.b, var_1.a), 17185u), any(vec4<bool>(true, arg_0.x == u_input.a.x, var_0 != var_0, true))));
    var var_3 = ~_wgslsmith_mod_i32(u_input.a.x, reverseBits(_wgslsmith_mod_i32(~u_input.a.x, 2147483647i)));
    return !(!(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_0, -1107f)))) < var_0));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: Struct_5) -> Struct_4 {
    global0 = Struct_2(vec2<u32>(arg_1, u_input.b), !(!global0.b));
    let var_0 = Struct_4(-vec2<i32>(u_input.a.x, arg_2), select(vec4<u32>(abs(_wgslsmith_sub_u32(4294967295u, 42542u)), ~arg_3.c, _wgslsmith_div_u32(arg_1, _wgslsmith_mod_u32(4294967295u, u_input.b)), _wgslsmith_div_u32(_wgslsmith_add_u32(36249u, arg_3.c), global0.a.x)), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, arg_3.c, global0.a.x, 4294967295u), vec4<u32>(18009u, arg_3.c, 59791u, 22390u))), true), arg_2);
    let var_1 = false;
    let var_2 = ~(~_wgslsmith_clamp_u32(~(~u_input.b), var_0.b.x, ~arg_1 << (4294967295u % 32u)));
    global0 = Struct_2((_wgslsmith_mod_vec2_u32(min(global0.a, var_0.b.xw), global0.a) | global0.a) ^ (var_0.b.zy ^ _wgslsmith_mod_vec2_u32(~vec2<u32>(47096u, 1u), firstLeadingBit(vec2<u32>(var_0.b.x, u_input.b)))), !vec3<bool>(false, false, !(u_input.a.x <= 3373i)));
    return var_0;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_div_f32(-1000f, -159f);
    return Struct_3(Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(global0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, u_input.b, arg_0.b.x), vec3<u32>(1u, u_input.b, 336u))), vec2<u32>(arg_0.b.x, arg_0.b.x)), !(!(!global0.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(global0.a.x, 50041u, abs(28082u) >> (u_input.b % 32u)) & select(~vec3<u32>(34319u & global0.a.x, 47456u, 34448u), _wgslsmith_sub_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(16326u, 0u, global0.a.x), vec3<u32>(1u, u_input.b, 59760u)), max(~vec3<u32>(global0.a.x, global0.a.x, u_input.b), ~vec3<u32>(0u, 1u, global0.a.x))), global0.b.x);
    let var_1 = func_5(func_4(!(func_1(vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.a.x), global0.b.x) && select(global0.b.x, global0.b.x, true)), 29599u, _wgslsmith_dot_vec4_i32(~min(u_input.a, u_input.a), -u_input.a), Struct_5(select(global0.b.x, true, global0.b.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -788f), vec2<f32>(-1721f, -1044f), global0.b.zx)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-908f, -1873f), vec2<f32>(-274f, 675f), global0.b.zy))), _wgslsmith_clamp_u32(~var_0.x, abs(175u), ~1u), true || (0i < u_input.a.x))), Struct_1(false || global0.b.x));
    var var_2 = -1i;
    var var_3 = Struct_1(global0.b.x);
    let var_4 = u_input.b;
    var_0 = ~_wgslsmith_sub_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(83165u, var_0.x), func_4(global0.b.x, var_1.a.a.x, 827i, Struct_5(true, vec2<f32>(-537f, 1104f), 28761u, true)).b.x, max(u_input.b, var_1.a.a.x)), vec3<u32>(_wgslsmith_sub_u32(~104056u, ~global0.a.x), min(~var_1.a.a.x, u_input.b ^ 1u), 4294967295u));
    var_0 = ~vec3<u32>(~firstLeadingBit(var_4), 4294967295u, _wgslsmith_sub_u32(global0.a.x, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1255f, 134f, 1121f, 124f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1980f, -371f, -708f, 703f), vec4<f32>(-297f, 2473f, 1182f, -628f), vec4<bool>(false, var_1.a.b.x, global0.b.x, var_1.a.b.x))) - vec4<f32>(1000f, 1000f, 1158f, 1000f)))), _wgslsmith_mod_i32(abs(u_input.a.x & u_input.a.x), -53760i), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -116f))), ~u_input.a.x, abs(~vec3<u32>(var_0.x, var_1.a.a.x, 3491u)) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, var_4, global0.a.x) >> (vec3<u32>(u_input.b, var_1.a.a.x, 5640u) % vec3<u32>(32u)), max(vec3<u32>(104334u, 4294967295u, global0.a.x), vec3<u32>(0u, 1u, var_0.x))) % vec3<u32>(32u)));
}

