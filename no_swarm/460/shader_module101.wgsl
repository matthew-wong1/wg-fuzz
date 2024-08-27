struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_3;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_3 {
    global1 = global0.d;
    global0 = Struct_4(abs(~arg_1.d.x), Struct_3(4294967295u), arg_0, Struct_3(_wgslsmith_mod_u32(4294967295u << ((global0.d.a & global1.a) % 32u), 4294967295u)));
    let var_0 = arg_1;
    let var_1 = ~firstLeadingBit(u_input.d);
    var var_2 = arg_1.e.a;
    return Struct_3(global0.a);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_4) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.c.x)) + -861f), -198f, false));
    global0 = arg_2;
    global1 = Struct_3(_wgslsmith_clamp_u32(~(~3054u), 1u, abs(global1.a)));
    global1 = func_2(Struct_1(true, ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.c.x, -1i), u_input.c), vec3<i32>(-2147483647i, arg_2.c.b, -40021i)), vec4<f32>(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(ceil(-646f)))), 1633f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-237f)))), -1039f)), Struct_2(_wgslsmith_f_op_vec4_f32(select(arg_2.c.c, _wgslsmith_f_op_vec4_f32(round(arg_2.c.c)), vec4<bool>(true, true, any(vec3<bool>(false, true, false)), !global0.c.a))), !(!select(vec3<bool>(global0.c.a, false, true), vec3<bool>(arg_2.c.a, global0.c.a, true), vec3<bool>(arg_2.c.a, global0.c.a, global0.c.a))), select(vec4<bool>(true, !arg_2.c.a, !global0.c.a, false), select(select(vec4<bool>(true, true, false, true), vec4<bool>(global0.c.a, global0.c.a, arg_2.c.a, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, arg_2.c.a, global0.c.a, arg_2.c.a), vec4<bool>(false, global0.c.a, arg_2.c.a, true)), vec4<bool>(!arg_2.c.a, any(vec2<bool>(true, true)), any(vec3<bool>(arg_2.c.a, true, false)), false)), ~_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(28998u, 13871u, global0.d.a)), reverseBits(u_input.d.zxz)), Struct_1(true, u_input.a.x, vec4<f32>(var_0, 810f, 442f, _wgslsmith_f_op_f32(ceil(144f))))), _wgslsmith_f_op_vec4_f32(global0.c.c - _wgslsmith_f_op_vec4_f32(floor(global0.c.c))));
    global1 = Struct_3(10170u);
    return Struct_4(_wgslsmith_div_u32(u_input.b.x, max(_wgslsmith_mult_u32(arg_2.b.a, 4294967295u) >> (1u % 32u), ~global0.b.a)), Struct_3(firstTrailingBit(reverseBits(global1.a))), global0.c, global0.d);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: f32) -> Struct_3 {
    let var_0 = vec2<i32>(~u_input.e, -_wgslsmith_clamp_i32(global0.c.b, 1i, 1i) ^ firstTrailingBit(arg_0.x));
    global1 = Struct_3(min(_wgslsmith_add_u32(_wgslsmith_add_u32(firstLeadingBit(global0.b.a), ~u_input.d.x), 39789u), 826u));
    global0 = func_3(991f, ~(~arg_0.x), Struct_4(countOneBits(global1.a), func_2(global0.c, Struct_2(_wgslsmith_f_op_vec4_f32(global0.c.c * vec4<f32>(-662f, arg_2, -283f, global0.c.c.x)), vec3<bool>(false, false, arg_1.x), !vec4<bool>(global0.c.a, global0.c.a, true, arg_1.x), vec3<u32>(u_input.b.x, 0u, global0.b.a) | u_input.d.www, global0.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.c.c, global0.c.c))), global0.c, global0.d));
    var var_1 = 1373f;
    return global0.d;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_div_u32(47372u, 12316u), min(global0.a, global1.a)), vec2<u32>(global1.a, 1u & abs(u_input.d.x))), Struct_3(abs(0u)), func_3(arg_2.c.x, arg_1.c.b, arg_1).c, Struct_3(~global1.a));
    var var_1 = -(~37305i) > global0.c.b;
    let var_2 = u_input.d.zxx;
    let var_3 = ~u_input.d.x;
    let var_4 = _wgslsmith_sub_u32(1u, ~(~40831u & ~global1.a) | min(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(803u, 4294967295u, var_0.d.a, var_0.d.a)), ~arg_0.a), _wgslsmith_mult_u32(57826u | var_3, 51845u)));
    return func_3(var_0.c.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(~37426i, _wgslsmith_sub_i32(u_input.e, 29211i), var_0.c.b), u_input.a), arg_1).c;
}

fn func_5(arg_0: Struct_2) -> i32 {
    global0 = func_3(-270f, countOneBits(global0.c.b) | global0.c.b, Struct_4(~global1.a, global0.d, arg_0.e, global0.d));
    let var_0 = _wgslsmith_mod_vec4_u32(min(u_input.d, firstTrailingBit(~u_input.d)) >> (_wgslsmith_add_vec4_u32(firstLeadingBit(u_input.d), vec4<u32>(abs(global1.a), _wgslsmith_sub_u32(4294967295u, 0u), 0u, 24128u)) % vec4<u32>(32u)), u_input.d);
    var var_1 = Struct_1(true, countOneBits(1i | u_input.c.x), global0.c.c);
    let var_2 = !vec4<bool>(true, true, true, !all(!arg_0.c));
    let var_3 = Struct_1((_wgslsmith_clamp_u32(34710u, ~4294967295u, 3033u) >> (abs(~var_0.x) % 32u)) > arg_0.d.x, global0.c.b, _wgslsmith_f_op_vec4_f32(global0.c.c * vec4<f32>(global0.c.c.x, -2534f, arg_0.e.c.x, -665f)));
    return ~(~(~global0.c.b) ^ firstLeadingBit(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(1i, -55375i, var_1.b, global0.c.b)), max(vec4<i32>(-1i, -687i, 1i, var_1.b), vec4<i32>(global0.c.b, -2147483647i, var_3.b, 26464i)))));
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(~(~(arg_1.e.b | -1i)), global0.c.b), _wgslsmith_clamp_i32(-arg_0, -42760i, -global0.c.b), ~func_4(global0.d, Struct_4(max(87336u, 36342u), global0.b, global0.c, func_1(vec2<i32>(1i, 46806i), vec2<bool>(global0.c.a, global0.c.a), global0.c.c.x)), func_4(Struct_3(u_input.d.x), Struct_4(66509u, Struct_3(arg_1.d.x), global0.c, global0.b), func_4(global0.b, Struct_4(global0.b.a, global0.b, Struct_1(false, 65641i, vec4<f32>(arg_1.e.c.x, global0.c.c.x, global0.c.c.x, -980f)), Struct_3(0u)), Struct_1(false, global0.c.b, arg_1.e.c)))).b, -2899i);
    let var_1 = Struct_4(global1.a, func_1(-min(vec2<i32>(var_0.x, arg_0), var_0.yw) << (select(~arg_1.d.xz, ~u_input.b.yz, arg_1.b.zz) % vec2<u32>(32u)), arg_1.c.ww, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1147f * global0.c.c.x) * arg_1.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)))), func_4(Struct_3(u_input.d.x), Struct_4(reverseBits(u_input.d.x), global0.d, arg_1.e, global0.b), func_4(Struct_3(_wgslsmith_sub_u32(32831u, global0.b.a)), Struct_4(~4294967295u, global0.b, Struct_1(false, -1i, arg_1.e.c), Struct_3(arg_1.d.x)), Struct_1(true & global0.c.a, _wgslsmith_mult_i32(var_0.x, -1i), global0.c.c))), func_2(func_3(global0.c.c.x, -u_input.c.x & 2147483647i, Struct_4(91708u, Struct_3(global1.a), func_3(-684f, var_0.x, Struct_4(global1.a, Struct_3(u_input.b.x), global0.c, Struct_3(49523u))).c, func_3(673f, var_0.x, Struct_4(0u, global0.d, global0.c, Struct_3(global0.a))).b)).c, arg_1, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global0.c.c), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(381f, arg_1.a.x, 994f, -267f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.c.x, global0.c.c.x, 497f, arg_1.a.x) - _wgslsmith_f_op_vec4_f32(-arg_1.a)))));
    var_0 = ~(vec4<i32>(~(i32(-1i) * -3462i), arg_0, 14433i, -(~var_0.x)) >> (reverseBits(vec4<u32>(51933u, firstTrailingBit(3551u), _wgslsmith_sub_u32(global1.a, 0u), 1u)) % vec4<u32>(32u)));
    var_0 = min(vec4<i32>(64568i, -(global0.c.b | 47096i), func_4(func_2(var_1.c, Struct_2(vec4<f32>(-761f, arg_1.a.x, global0.c.c.x, 2426f), arg_1.c.xyy, arg_1.c, vec3<u32>(0u, u_input.d.x, var_1.d.a), arg_1.e), vec4<f32>(1313f, 362f, -2368f, 251f)), Struct_4(0u, Struct_3(var_1.b.a), Struct_1(false, 37563i, vec4<f32>(var_1.c.c.x, var_1.c.c.x, 708f, 859f)), Struct_3(4294967295u)), arg_1.e).b, _wgslsmith_clamp_i32(-1i, 22934i, -1i) >> (~55673u % 32u)) << (firstTrailingBit(~(~vec4<u32>(4294967295u, var_1.b.a, arg_1.d.x, var_1.a))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mult_i32(63836i, _wgslsmith_div_i32(var_1.c.b, arg_1.e.b | var_0.x)), -_wgslsmith_sub_i32(2147483647i, var_1.c.b), ~var_0.x, var_0.x));
    var var_2 = true;
    return arg_1.c.yy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(382f, 283f) - global0.c.c.wy);
    var var_1 = func_6(func_5(Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(378f, 1646f, -1000f, var_0.x)))), select(vec3<bool>(true, true, global0.c.a), vec3<bool>(true, true, true), select(vec3<bool>(global0.c.a, true, global0.c.a), vec3<bool>(global0.c.a, global0.c.a, false), vec3<bool>(global0.c.a, false, global0.c.a))), select(!vec4<bool>(global0.c.a, global0.c.a, true, true), vec4<bool>(true, global0.c.a, global0.c.a, global0.c.a), global0.c.a & false), ~(~u_input.d.zxz), func_4(func_1(u_input.c.zz, vec2<bool>(global0.c.a, false), var_0.x), func_3(global0.c.c.x, 1i, Struct_4(44379u, Struct_3(82875u), Struct_1(false, 2147483647i, global0.c.c), global0.b)), Struct_1(global0.c.a, global0.c.b, global0.c.c)))), Struct_2(_wgslsmith_f_op_vec4_f32(-global0.c.c), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, global0.c.a), vec3<bool>(global0.c.a, global0.c.a, global0.c.a), vec3<bool>(false, false, global0.c.a)), select(global0.c.a, global0.c.a, true)), vec3<bool>(true, true, true), false), select(vec4<bool>(global0.c.b != u_input.e, any(vec4<bool>(false, false, global0.c.a, true)), select(global0.c.a, true, global0.c.a), global0.c.a), !select(vec4<bool>(false, true, false, global0.c.a), vec4<bool>(false, global0.c.a, false, false), vec4<bool>(false, global0.c.a, false, true)), !(!vec4<bool>(true, global0.c.a, global0.c.a, global0.c.a))), vec3<u32>(max(abs(global1.a), reverseBits(4294967295u)), select(~u_input.b.x, max(u_input.b.x, 90879u), select(true, global0.c.a, global0.c.a)), 1u), global0.c));
    let var_2 = _wgslsmith_sub_u32(~(global0.b.a << (func_1(vec2<i32>(15670i, u_input.c.x), select(vec2<bool>(true, var_1.x), vec2<bool>(global0.c.a, false), false), global0.c.c.x).a % 32u)), _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(826f, 1098f, var_0.x, -717f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1981f, 856f, 1102f, 636f) - global0.c.c), select(vec4<bool>(global0.c.a, true, true, false), vec4<bool>(false, false, true, var_1.x), vec4<bool>(false, global0.c.a, false, var_1.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c.c))))), vec3<bool>(true, func_2(Struct_1(false, u_input.c.x, global0.c.c), Struct_2(global0.c.c, vec3<bool>(true, var_1.x, global0.c.a), vec4<bool>(false, var_1.x, global0.c.a, global0.c.a), vec3<u32>(u_input.b.x, global0.d.a, global0.a), Struct_1(false, 1i, vec4<f32>(var_0.x, 943f, -943f, var_0.x))), _wgslsmith_f_op_vec4_f32(global0.c.c - vec4<f32>(global0.c.c.x, -1000f, global0.c.c.x, global0.c.c.x))).a >= global0.b.a, !(!func_3(global0.c.c.x, -2147483647i, Struct_4(global0.a, Struct_3(var_2), global0.c, global0.d)).c.a)), !vec4<bool>(true, !global0.c.a || all(vec2<bool>(false, false)), true, true), ~u_input.d.xxy, func_4(func_3(1000f, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-14196i, u_input.c.x, u_input.e, u_input.e), vec4<i32>(0i, global0.c.b, u_input.c.x, 76648i)), -u_input.a.x), Struct_4(_wgslsmith_div_u32(global0.d.a, 24033u), func_2(global0.c, Struct_2(vec4<f32>(-1340f, 504f, global0.c.c.x, var_0.x), vec3<bool>(true, false, true), vec4<bool>(true, global0.c.a, true, global0.c.a), vec3<u32>(29030u, 1u, global1.a), Struct_1(var_1.x, global0.c.b, global0.c.c)), vec4<f32>(815f, global0.c.c.x, 927f, global0.c.c.x)), global0.c, global0.b)).d, Struct_4(~_wgslsmith_div_u32(7099u, 80801u), global0.b, global0.c, func_1(_wgslsmith_add_vec2_i32(u_input.a.yy, u_input.c.zz), !vec2<bool>(var_1.x, true), global0.c.c.x)), func_3(100f, func_4(global0.b, Struct_4(1195u, global0.d, Struct_1(global0.c.a, -16803i, global0.c.c), Struct_3(global0.b.a)), Struct_1(true, u_input.a.x, global0.c.c)).b, func_3(-2729f, -global0.c.b, Struct_4(var_2, global0.b, global0.c, global0.b))).c));
    let var_4 = Struct_1(var_1.x, -(-46976i | u_input.a.x) & _wgslsmith_add_i32(reverseBits(1i), max(-global0.c.b, 2147483647i >> (var_2 % 32u))), global0.c.c);
    let var_5 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 0i, -45324i, u_input.e), vec4<i32>(-73942i, var_3.e.b, 1i, 1i), -vec4<i32>(global0.c.b, -23846i, 34712i, u_input.a.x))), -359f, _wgslsmith_dot_vec3_u32(~(var_3.d ^ _wgslsmith_mult_vec3_u32(vec3<u32>(global1.a, global0.a, 0u), u_input.b)), vec3<u32>(~_wgslsmith_mult_u32(global1.a, 4294967295u), ~_wgslsmith_clamp_u32(104722u, 96018u, 1u), firstTrailingBit(~global0.b.a))), ~vec2<u32>(17510u, global1.a));
}

