struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<f32>, 20>;

var<private> global3: f32 = 160f;

var<private> global4: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = vec2<u32>(reverseBits(u_input.a.x), 4294967295u) ^ vec2<u32>(_wgslsmith_div_u32(1u, (global1.c | 4597u) << (~37754u % 32u)), arg_2.c);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.zxw - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.b)), vec3<f32>(940f, 1159f, arg_0.b.x))), vec3<f32>(_wgslsmith_f_op_f32(abs(-2026f)), 833f, _wgslsmith_f_op_f32(-global0.x)), vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(-global0.yzy), max((min(global1.c, 20769u) | ~arg_0.c) >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(3122u, global1.c), u_input.a.xx) >> (arg_0.c % 32u)) % 32u), ~abs(u_input.b)));
    var var_2 = max((firstTrailingBit(arg_1) | abs(~arg_1)) & _wgslsmith_mult_i32(u_input.c, _wgslsmith_clamp_i32(_wgslsmith_add_i32(arg_1, -5683i), -29066i, _wgslsmith_add_i32(arg_1, u_input.c))), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(-5494i, arg_1, arg_1, arg_1) << (max(vec4<u32>(arg_2.c, arg_0.c, var_1.c, var_0.x), u_input.a) % vec4<u32>(32u))), vec4<i32>(52577i, 23247i, _wgslsmith_add_i32(~0i, firstTrailingBit(-9060i)), 49483i)));
    var var_3 = countOneBits(max(abs(vec3<u32>(4018u, var_1.c, 4294967295u)), ~(u_input.a.wyw << (vec3<u32>(1u, 36637u, arg_2.c) % vec3<u32>(32u))))) ^ ~vec3<u32>(arg_2.c, ~(~arg_2.c), ~_wgslsmith_mod_u32(4294967295u, 42055u));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-1f), global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x * arg_0.b.x) + _wgslsmith_f_op_f32(-global0.x))))), var_1.b, _wgslsmith_dot_vec3_u32(u_input.a.zyw, u_input.a.wxx));
    return arg_2.b;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    global2 = array<vec2<f32>, 20>();
    global4 = _wgslsmith_mult_i32(u_input.c, 47197i);
    let var_0 = vec3<bool>(!(!any(arg_2)), true, false);
    global2 = array<vec2<f32>, 20>();
    let var_1 = vec4<bool>(var_0.x, any(vec4<bool>(any(vec2<bool>(false, true)), !select(false, false, var_0.x), select(u_input.c < u_input.c, false, !arg_2.x), false)), arg_0.c == 38586u, any(select(!vec3<bool>(true, false, var_0.x), var_0, select(var_0, arg_2.wxz, var_0.x))) && all(!var_0.yx));
    return _wgslsmith_sub_u32(~_wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(u_input.a.xwx, u_input.a.zww), _wgslsmith_mod_u32(u_input.a.x, ~arg_1.c)), abs(~(~arg_1.c)));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a.zzz;
    return Struct_1(global0.xyy, _wgslsmith_f_op_vec3_f32(select(global0.xwx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, global0.x, -1926f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.x, global1.b.x, global1.a.x) * vec3<f32>(global0.x, global0.x, -1028f)))), true)), min(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(step(global0.xzy, global1.a)), global1.b, 1u), Struct_1(global1.b, global0.wzy, _wgslsmith_sub_u32(1u, u_input.b)), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false), Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(global0.x, global1.b.x, global0.x), vec3<f32>(-231f, 393f, global1.a.x), var_0.x), u_input.c, Struct_1(global1.b, global1.b, 24419u))), 1222u)), abs(86872u)));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> f32 {
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -2240f, -135f, global0.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, global0.x, 920f, 217f) - vec4<f32>(430f, 454f, global1.b.x, 252f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-238f, global1.b.x, -1214f, arg_1.b.x), vec4<f32>(arg_1.a.x, global0.x, -1518f, global0.x), arg_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, arg_1.a.x, 1286f, arg_1.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-530f, arg_3.a.x, arg_1.b.x, 351f), vec4<f32>(arg_3.b.x, -345f, arg_3.a.x, global1.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-115f, 1721f, arg_3.b.x, -1141f) * vec4<f32>(arg_3.b.x, global0.x, 112f, 2290f))))), true | any(!arg_0)))));
    global4 = 16563i;
    var var_0 = ~(~arg_2.ww);
    var_0 = _wgslsmith_div_vec2_u32(u_input.a.xx, vec2<u32>(~_wgslsmith_mult_u32(var_0.x, 4294967295u), firstTrailingBit(arg_3.c)));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(-1082f)), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(func_2().b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-107f + arg_1.b.x) * global0.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(ceil(arg_3.a.x)), global0.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(442f, -374f, arg_3.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b))), select(1u >> (_wgslsmith_sub_u32(4294967295u, arg_3.c & global1.c) % 32u), global1.c, false));
    return arg_1.a.x;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = vec2<bool>(!all(vec3<bool>(true, true, true)), !all(vec3<bool>(true, true, true)) && false);
    var var_1 = u_input.c & 44999i;
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * global0.x) + _wgslsmith_f_op_f32(549f + -1000f)), _wgslsmith_f_op_f32(func_5(!vec4<bool>(var_0.x && false, var_0.x && var_0.x, any(vec3<bool>(var_0.x, true, true)), false), func_2(), vec4<u32>(u_input.b, ~_wgslsmith_add_u32(1u, global1.c), ~_wgslsmith_mult_u32(4294967295u, 0u), 78345u), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(global1.a.x)), _wgslsmith_f_op_f32(494f * global1.a.x), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(global0.xxz, global0.xzx, 4294967295u), u_input.c, Struct_1(global1.a, global1.b, 53746u))).x), global1.b, 0u)))));
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), 1176f, 836f), vec3<f32>(-2018f, -2027f, _wgslsmith_f_op_f32(611f * 1091f)), u_input.b);
    let var_4 = func_2();
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(u_input.c, u_input.c, 4761i), vec3<i32>(u_input.c, u_input.c, 2147483647i)) & max(vec3<i32>(u_input.c, 2147483647i, 4154i), vec3<i32>(u_input.c, u_input.c, 23533i)), firstLeadingBit(~vec3<i32>(u_input.c, u_input.c, 32561i)), ~_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, 11829i, u_input.c), vec3<i32>(u_input.c, -2147483647i, u_input.c))) << (vec3<u32>(u_input.b, ~(~68539u), ~u_input.b) % vec3<u32>(32u)));
    var var_0 = _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(u_input.b << (firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(54086u, u_input.a.x, 85691u, u_input.a.x), vec4<u32>(0u, global1.c, 0u, global1.c))) % 32u), u_input.b, u_input.b, 0u));
    global4 = -abs(min(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c, u_input.c), vec3<i32>(u_input.c, -8361i, 2147483647i))), u_input.c));
    var var_1 = _wgslsmith_add_u32(0u, ~abs(~(u_input.b ^ global1.c)));
    var var_2 = _wgslsmith_clamp_vec4_u32(abs(firstLeadingBit(u_input.a)), ~firstTrailingBit(u_input.a), _wgslsmith_clamp_vec4_u32(select(max(~vec4<u32>(var_0.x, global1.c, 35903u, 1u), u_input.a), vec4<u32>(u_input.b, u_input.b, 146571u, ~u_input.b), vec4<bool>(true, true, true, true)), vec4<u32>(~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c, 11437u, var_0.x, var_0.x), select(vec4<u32>(0u, var_0.x, 46744u, global1.c), vec4<u32>(0u, 11086u, global1.c, 4294967295u), vec4<bool>(false, false, true, false))), reverseBits(_wgslsmith_sub_u32(var_0.x, 10928u)), ~_wgslsmith_sub_u32(26166u, 1u)), vec4<u32>(~(60952u >> (0u % 32u)), u_input.a.x, global1.c, _wgslsmith_dot_vec3_u32(~u_input.a.yyx, vec3<u32>(var_0.x, global1.c, 116551u) << (var_0.zxy % vec3<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-u_input.c, -(~u_input.c)), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(22080u, var_0.x, var_2.x), var_0.yyz), 1u) | var_2.yzy, abs(-(min(vec4<i32>(u_input.c, -58782i, 1i, 0i), vec4<i32>(u_input.c, 18219i, u_input.c, u_input.c)) << (vec4<u32>(u_input.b, 75246u, 1u, var_2.x) % vec4<u32>(32u)))), global1.a.x);
}

