struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>) -> vec2<bool> {
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-529f * 1f), -836f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-680f)) * _wgslsmith_f_op_f32(-450f - 676f)), 1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1276f))))), _wgslsmith_f_op_f32(step(375f, 730f)))));
    return select(vec2<bool>(true, true), vec2<bool>(false, !select(any(vec4<bool>(true, false, false, false)), true, any(vec2<bool>(false, false)))), select(!select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec3<bool>(false, false, false))), vec2<bool>(false, false), false));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = ~(~select(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, u_input.b, u_input.b), firstTrailingBit(vec3<u32>(81832u, 1u, 44753u))), (vec3<u32>(1u, arg_1.b, arg_1.b) >> (vec3<u32>(31228u, u_input.b, 1u) % vec3<u32>(32u))) << (reverseBits(vec3<u32>(0u, arg_1.b, 1u)) % vec3<u32>(32u)), !(arg_1.e | false)));
    var_0 = firstTrailingBit(~vec3<u32>(_wgslsmith_clamp_u32(var_0.x, 1u, 1u), var_0.x & var_0.x, ~215u)) & ~(~min(abs(vec3<u32>(1u, var_0.x, u_input.b)), vec3<u32>(u_input.b, u_input.b, 0u) >> (vec3<u32>(var_0.x, 0u, 37127u) % vec3<u32>(32u))));
    let var_1 = _wgslsmith_mod_u32(arg_1.b, 46933u);
    global0 = array<Struct_1, 16>();
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-430f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) + 1000f)))));
    return 1u;
}

fn func_2(arg_0: vec4<i32>) -> vec2<bool> {
    let var_0 = Struct_1(-2147483647i, ~(func_4(func_3(vec4<u32>(u_input.b, u_input.b, u_input.b, 62269u), vec2<u32>(657u, u_input.b)), Struct_1(u_input.a.x, u_input.b, vec4<bool>(true, false, false, true), -1002f, true)) | u_input.b), !select(select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), true)), vec4<bool>(true, true, true, true), func_3(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), min(vec2<u32>(67952u, u_input.b), vec2<u32>(16281u, u_input.b))).x), 1861f, all(vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, 31789u), vec3<u32>(0u, u_input.b, u_input.b)) <= 1u, u_input.a.x > -1i)));
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    return !func_3(~abs(vec4<u32>(0u, 4294967295u, 28114u, 1u)), min(min(vec2<u32>(1u, 1u), vec2<u32>(var_0.b, u_input.b)), ~(vec2<u32>(var_0.b, 52636u) & vec2<u32>(var_0.b, 71938u))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.d), 1498f));
    let var_1 = func_2(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -20306i, _wgslsmith_sub_i32(u_input.a.x, -1i), arg_2.a), ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, u_input.a.x), vec2<i32>(arg_2.a, -2147483647i)), select(1i, -2147483647i, true), firstLeadingBit(arg_2.a), arg_2.a)));
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    let var_2 = Struct_1(1i, _wgslsmith_mod_u32(arg_2.b, abs(4294967295u)), vec4<bool>(select(false, true, _wgslsmith_f_op_f32(-arg_2.d) <= arg_2.d), true, var_1.x, func_2(~(vec4<i32>(arg_2.a, u_input.a.x, -30194i, arg_1.x) << (vec4<u32>(arg_2.b, arg_2.b, u_input.b, arg_2.b) % vec4<u32>(32u)))).x), 1437f, true);
    return global0[_wgslsmith_index_u32(83792u, 16u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(0u, 4294967295u);
    var var_1 = true;
    var var_2 = arg_3.c;
    var_2 = vec4<bool>(all(arg_1.c.yzw), var_2.x, any(vec2<bool>(arg_0.e, true)), false);
    global0 = array<Struct_1, 16>();
    return func_1(vec3<bool>(true, true, (arg_1.d >= _wgslsmith_div_f32(arg_0.d, 886f)) || var_2.x), vec3<i32>(-2147483647i, -2147483647i, 2142i), func_1(!vec3<bool>(true, true, var_2.x), reverseBits(abs(u_input.a) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, arg_1.b, arg_0.b), vec3<u32>(49493u, 13836u, 1u)) % vec3<u32>(32u))), Struct_1(1i, 18855u, vec4<bool>(arg_3.c.x, arg_0.e & arg_3.c.x, false, true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.d, 801f)), arg_1.e)));
}

fn func_6(arg_0: i32, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_1) -> bool {
    let var_0 = func_5(func_5(Struct_1(~(-17745i), 23478u, func_5(func_5(arg_3, arg_3, global0[_wgslsmith_index_u32(arg_2.x, 16u)], Struct_1(arg_0, arg_2.x, arg_3.c, arg_3.d, arg_1)), arg_3, Struct_1(u_input.a.x, 1u, arg_3.c, -631f, false), Struct_1(-35235i, arg_3.b, vec4<bool>(true, true, true, true), -313f, true)).c, 1f, (arg_1 && true) & !arg_3.c.x), arg_3, global0[_wgslsmith_index_u32(38205u, 16u)], Struct_1(abs(arg_3.a), ~_wgslsmith_sub_u32(arg_2.x, u_input.b), arg_3.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1308f, -370f, arg_1)), -872f)), false)), Struct_1(~max(_wgslsmith_mod_i32(arg_3.a, u_input.a.x), u_input.a.x), (arg_3.b | u_input.b) & arg_2.x, vec4<bool>(_wgslsmith_f_op_f32(-arg_3.d) != _wgslsmith_f_op_f32(-117f * arg_3.d), all(!vec4<bool>(true, arg_1, arg_1, arg_1)), !(arg_3.d != arg_3.d), true), -549f, !(arg_1 & true)), arg_3, global0[_wgslsmith_index_u32(arg_2.x, 16u)]).d;
    var var_1 = func_1(arg_3.c.yzw, ~u_input.a, func_5(arg_3, func_5(func_1(!vec3<bool>(true, false, arg_3.e), -vec3<i32>(35745i, arg_0, -37389i), arg_3), arg_3, func_5(global0[_wgslsmith_index_u32(45388u & u_input.b, 16u)], func_1(vec3<bool>(arg_1, arg_3.e, false), u_input.a, Struct_1(arg_3.a, arg_2.x, vec4<bool>(arg_3.c.x, arg_3.c.x, arg_3.c.x, true), -1000f, false)), Struct_1(arg_3.a, u_input.b, vec4<bool>(false, arg_1, arg_3.c.x, arg_1), -928f, arg_3.e), func_1(arg_3.c.wxz, u_input.a, Struct_1(arg_3.a, 4762u, vec4<bool>(false, arg_1, false, true), arg_3.d, true))), Struct_1(arg_0, ~arg_3.b, vec4<bool>(arg_3.e, arg_3.c.x, true, false), _wgslsmith_f_op_f32(select(var_0, var_0, arg_1)), false && arg_3.c.x)), func_5(global0[_wgslsmith_index_u32(22666u, 16u)], func_5(func_1(arg_3.c.xxx, u_input.a, arg_3), func_1(arg_3.c.yzy, u_input.a, Struct_1(-1i, 45542u, arg_3.c, var_0, arg_3.e)), global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]), Struct_1(min(0i, 2147483647i), func_5(Struct_1(arg_3.a, u_input.b, vec4<bool>(false, arg_3.e, arg_1, true), arg_3.d, arg_1), Struct_1(-1i, arg_3.b, vec4<bool>(true, false, arg_3.c.x, true), var_0, arg_1), global0[_wgslsmith_index_u32(u_input.b, 16u)], arg_3).b, vec4<bool>(false, true, true, false), -441f, all(vec2<bool>(false, arg_1))), global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(3294u, arg_3.b)), 16u)]), Struct_1(firstLeadingBit(i32(-1i) * -1503i), countOneBits(0u), arg_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_0) - var_0), any(vec3<bool>(true, false, arg_1)))));
    var var_2 = var_1.a;
    let var_3 = vec4<i32>(abs(_wgslsmith_div_i32(arg_0, 10771i | ~arg_0)), -2147483647i, -47479i, (u_input.a.x & abs(12821i)) & u_input.a.x);
    var_1 = Struct_1(arg_3.a, _wgslsmith_add_u32(arg_3.b, ~abs(4294967295u)), vec4<bool>(all(!vec4<bool>(false, false, arg_1, true)), true, var_1.c.x || true, true), _wgslsmith_f_op_f32(min(var_1.d, _wgslsmith_f_op_f32(-arg_3.d))), arg_3.e);
    return arg_3.e;
}

fn func_7(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-507f + _wgslsmith_f_op_f32(arg_2.d * 1531f)), arg_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.d, arg_2.d))), _wgslsmith_f_op_f32(func_5(Struct_1(-5499i, 11413u, arg_2.c, arg_2.d, arg_1.x), Struct_1(u_input.a.x, 14636u, vec4<bool>(arg_1.x, arg_1.x, false, arg_2.c.x), arg_2.d, arg_2.e), Struct_1(u_input.a.x, 59372u, arg_2.c, arg_2.d, arg_1.x), Struct_1(u_input.a.x, arg_2.b, arg_2.c, -1579f, arg_1.x)).d - arg_2.d)));
    global0 = array<Struct_1, 16>();
    var var_1 = arg_2.d;
    var var_2 = -vec4<i32>(-(abs(u_input.a.x) & (u_input.a.x ^ u_input.a.x)), arg_2.a, ~(~arg_2.a | -10360i), -_wgslsmith_dot_vec3_i32(select(vec3<i32>(arg_2.a, arg_2.a, 0i), vec3<i32>(2147483647i, -67621i, u_input.a.x), true), reverseBits(u_input.a)));
    let var_3 = Struct_1(countOneBits(var_2.x), arg_0.x, arg_2.c, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0.x, -1147f, true)), var_0.x, false)), arg_2.e & (false != func_5(func_1(vec3<bool>(true, true, arg_2.e), u_input.a, global0[_wgslsmith_index_u32(56216u, 16u)]), global0[_wgslsmith_index_u32(77800u, 16u)], global0[_wgslsmith_index_u32(arg_2.b, 16u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.x, arg_0.x), 16u)]).c.x));
    return StorageBuffer(vec4<u32>(0u, var_3.b, var_3.b, _wgslsmith_div_u32(func_1(vec3<bool>(false, true, var_3.c.x), u_input.a, Struct_1(var_3.a, 0u, arg_2.c, arg_2.d, arg_2.c.x)).b, min(var_3.b, u_input.b))) | ~max(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 4294967295u, arg_2.b), vec4<u32>(arg_2.b, var_3.b, var_3.b, 0u)), firstTrailingBit(vec4<u32>(var_3.b, 27211u, 3018u, 67244u))), 543f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(func_1(var_3.c.www, vec3<i32>(var_3.a, var_2.x, var_2.x), arg_2).d, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + 168f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = func_7(vec3<u32>(u_input.b, ~(~min(u_input.b, u_input.b)), 1u), vec3<bool>(all(vec3<bool>(true, true, true)) || (any(vec4<bool>(true, false, false, true)) && true), func_6(~1i | u_input.a.x, all(vec4<bool>(true, true, false, true)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 102981u), vec2<u32>(44396u, 43035u)), func_5(global0[_wgslsmith_index_u32(~1u, 16u)], func_1(vec3<bool>(false, false, true), vec3<i32>(5537i, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(4294967295u, 16u)]), Struct_1(u_input.a.x, u_input.b, vec4<bool>(false, false, false, false), 1894f, false), func_1(vec3<bool>(false, false, true), u_input.a, Struct_1(u_input.a.x, u_input.b, vec4<bool>(true, true, false, false), -581f, false)))), !(true & (38373u >= u_input.b))), func_1(func_5(global0[_wgslsmith_index_u32(28819u, 16u)], global0[_wgslsmith_index_u32(func_1(vec3<bool>(true, true, true), select(u_input.a, u_input.a, vec3<bool>(false, false, true)), Struct_1(-25340i, 4294967295u, vec4<bool>(true, false, false, false), -454f, false)).b, 16u)], Struct_1(60297i ^ u_input.a.x, u_input.b, vec4<bool>(true, true, true, true), func_5(Struct_1(u_input.a.x, u_input.b, vec4<bool>(true, true, false, true), 502f, false), global0[_wgslsmith_index_u32(61243u, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)], global0[_wgslsmith_index_u32(u_input.b, 16u)]).d, false), Struct_1(abs(u_input.a.x), 93305u, func_1(vec3<bool>(false, false, false), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), global0[_wgslsmith_index_u32(0u, 16u)]).c, -124f, true)).c.wzy, -vec3<i32>(0i, -49411i, -6150i), Struct_1(-14574i, u_input.b, !func_5(global0[_wgslsmith_index_u32(36235u, 16u)], global0[_wgslsmith_index_u32(11953u, 16u)], global0[_wgslsmith_index_u32(83362u, 16u)], Struct_1(1i, u_input.b, vec4<bool>(true, false, true, true), -467f, false)).c, 1508f, true)));
}

