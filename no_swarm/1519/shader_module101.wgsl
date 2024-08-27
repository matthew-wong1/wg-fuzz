struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool) -> vec3<u32> {
    var var_0 = u_input.b;
    var_0 = u_input.b & select(-2147483647i, ~_wgslsmith_add_i32(~u_input.b, u_input.b), u_input.a.x < _wgslsmith_dot_vec2_u32(u_input.d, _wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(u_input.c, 1u))));
    var_0 = -u_input.b;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(1764f, -227f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1162f, 312f)), _wgslsmith_f_op_f32(f32(-1f) * -693f))), _wgslsmith_f_op_f32(f32(-1f) * -1668f)) - vec3<f32>(1f, 1f, 1f)), Struct_1(_wgslsmith_mod_u32(_wgslsmith_mod_u32(max(u_input.c, 59041u), 1u), min(firstLeadingBit(0u), 4294967295u & u_input.d.x)), ~(18772i & max(u_input.b, u_input.b)), 1u), ~(~_wgslsmith_mult_u32(36655u, 42015u)));
    var_1 = Struct_2(vec3<f32>(-995f, var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a.x)) - _wgslsmith_f_op_f32(round(686f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f))))), var_1.b, abs(_wgslsmith_mult_u32(~u_input.c, _wgslsmith_clamp_u32(u_input.a.x, u_input.d.x, 7351u))) | 1u);
    return vec3<u32>(u_input.c ^ ~(~u_input.d.x), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~u_input.a.xww, ~u_input.a.zzw), ~u_input.a.xyz), u_input.c) << (vec3<u32>(_wgslsmith_add_u32(var_1.c, _wgslsmith_div_u32(var_1.c, 4294967295u)), u_input.a.x, 0u) % vec3<u32>(32u));
}

fn func_2() -> f32 {
    var var_0 = Struct_3(func_3(false), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(139f)))), 1181f)) != 838f, true, true);
    var_0 = Struct_3(func_3(any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), var_0.b, _wgslsmith_f_op_f32(ceil(132f)) <= 1734f, select(!var_0.b, true, all(vec4<bool>(true, var_0.d, var_0.d, var_0.d)) || (~22583u == var_0.a.x)));
    var_0 = Struct_3(reverseBits(countOneBits(u_input.a.zxy)), !select(true && var_0.c, var_0.b == var_0.b, false), (true == !var_0.c) && false, true);
    var var_1 = vec3<i32>(_wgslsmith_add_i32(countOneBits(u_input.b) >> (func_3(var_0.c || var_0.d).x % 32u), -36283i), u_input.b >> (var_0.a.x % 32u), max(u_input.b, ~(~(~(-23247i)))));
    let var_2 = (-_wgslsmith_sub_i32(var_1.x, var_1.x) != 0i) | var_0.b;
    return -501f;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a.x, -367f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_0.a.x))))))) * _wgslsmith_f_op_f32(func_2()));
    return Struct_4(-43133i, _wgslsmith_div_vec3_u32(~u_input.a.xzy ^ ~u_input.a.zxw, _wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.wyx, u_input.a.xwy), vec3<u32>(0u, 0u, 21793u))) & vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(34485u, arg_3.a, 0u, 34603u), vec4<u32>(1u, 30929u, arg_0.c, u_input.d.x)) << (_wgslsmith_add_u32(arg_0.b.c, 0u) % 32u), u_input.c), u_input.d.x, arg_0.a.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_1(Struct_2(vec3<f32>(arg_1, 101f, arg_2.d), Struct_1(30151u, -30301i, 29077u), 26619u), true, false, Struct_1(7130u, 48232i, arg_2.b.x)).d, _wgslsmith_f_op_f32(arg_2.d * -1047f), 651f) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_1, -1000f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-545f, arg_2.d, 879f), vec3<f32>(arg_2.d, arg_1, -759f))), vec3<bool>(true, true, true)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1184f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(arg_1)), 2285f)), arg_1)));
    return 25732u;
}

fn func_5(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(func_1(Struct_2(vec3<f32>(-1040f, -196f, -706f), arg_0, arg_0.c), true, false, arg_0).d, _wgslsmith_f_op_f32(-1000f + -381f), _wgslsmith_f_op_f32(sign(338f)), _wgslsmith_f_op_f32(731f + -618f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-478f, -358f, -1066f, 1032f), vec4<f32>(-2213f, 669f, 1989f, 971f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(985f, -593f, -538f, -440f) * vec4<f32>(-2194f, 1898f, 414f, 321f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-663f, -635f, -391f, -314f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1513f, -1500f, -593f, 402f))), vec4<bool>(true, true, true, true)))));
    let var_1 = Struct_2(var_0.wwy, arg_0, min(arg_0.a, _wgslsmith_sub_u32(~(4294967295u << (arg_0.c % 32u)), arg_0.c)));
    let var_2 = func_1(var_1, false && all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), _wgslsmith_clamp_u32(countOneBits(4294967295u), var_1.c, 6415u) > ~_wgslsmith_clamp_u32(~var_1.c, ~u_input.a.x, 1590u), Struct_1(~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c, var_1.b.a, var_1.c, arg_0.a), vec4<u32>(2539u, 18413u, 9273u, u_input.c)), u_input.a ^ vec4<u32>(0u, arg_0.a, arg_0.a, u_input.a.x)), 41951i, _wgslsmith_mod_u32(~0u, 1u)));
    var var_3 = 10282u;
    let var_4 = Struct_5(select(vec3<i32>(~(-1i), -9686i, reverseBits(var_2.a)) & min(vec3<i32>(var_1.b.b, u_input.b, 0i) ^ vec3<i32>(u_input.b, -21487i, var_1.b.b), _wgslsmith_sub_vec3_i32(vec3<i32>(-52390i, -2147483647i, u_input.b), vec3<i32>(-27296i, 0i, -2147483647i))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, var_1.b.b, arg_0.b), vec3<i32>(0i, arg_0.b, 2147483647i) ^ vec3<i32>(20496i, 14074i, var_1.b.b)), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), true), vec3<bool>(true, true, true), true)), Struct_1(arg_0.a, _wgslsmith_sub_i32(i32(-1i) * -2409i, 0i), arg_0.a));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_2.d + var_2.d))))), -798f, _wgslsmith_f_op_f32(f32(-1f) * -350f), _wgslsmith_f_op_f32(trunc(var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(Struct_1(min(u_input.c ^ 20602u, reverseBits(u_input.a.x)) >> (func_4(u_input.a >> (u_input.a % vec4<u32>(32u)), 1563f, func_1(Struct_2(vec3<f32>(818f, -446f, 410f), Struct_1(4294967295u, u_input.b, 10636u), 12562u), true, false, Struct_1(u_input.d.x, u_input.b, u_input.a.x))) % 32u), reverseBits(44975i), u_input.a.x)));
    var var_1 = !any(vec4<bool>(!select(true, false, false), select(true, any(vec3<bool>(true, false, true)), true), ~4294967295u >= u_input.d.x, true));
    var_1 = false;
    let var_2 = true;
    var var_3 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(-(~vec3<i32>(u_input.b, u_input.b, u_input.b))), vec3<i32>(u_input.b, u_input.b, u_input.b)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.www, _wgslsmith_sub_vec3_u32(u_input.a.yzz, vec3<u32>(u_input.d.x, 4294967295u, 4294967295u) | vec3<u32>(1u, u_input.c, u_input.c))), vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.a.zw, u_input.a.yw), _wgslsmith_add_u32(14566u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 10371u, u_input.c), vec4<u32>(u_input.c, u_input.c, 5994u, 42053u))), _wgslsmith_sub_u32(u_input.d.x, u_input.d.x))), 53946i, vec4<f32>(605f, 914f, var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x + 780f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), -1025f, var_2)), true))), vec3<i32>(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_add_i32(2147483647i, u_input.b | 14487i), -66589i), _wgslsmith_mult_i32(abs(max(-36550i, u_input.b)), u_input.b)));
}

