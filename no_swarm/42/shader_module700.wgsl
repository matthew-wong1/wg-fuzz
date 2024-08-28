struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 11>;

var<private> global1: f32 = -725f;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> f32 {
    let var_0 = arg_0.a.b;
    let var_1 = -1210f;
    global0 = array<vec4<bool>, 11>();
    global1 = _wgslsmith_div_f32(-466f, 1231f);
    global0 = array<vec4<bool>, 11>();
    return 465f;
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: vec2<i32>) -> vec4<i32> {
    let var_0 = Struct_1(true, any(vec4<bool>(any(global0[_wgslsmith_index_u32(arg_1, 11u)]) == !arg_0.a, countOneBits(arg_1) == _wgslsmith_add_u32(11536u, arg_1), arg_0.a, arg_0.a)), ~vec2<u32>(~_wgslsmith_mult_u32(arg_1, 1u), 5945u << (max(arg_1, 4309u) % 32u)), arg_0.a);
    let var_1 = _wgslsmith_mult_u32(~(_wgslsmith_mod_u32(~var_0.c.x, arg_1 & 69975u) & _wgslsmith_clamp_u32(arg_1 & arg_1, _wgslsmith_mult_u32(arg_1, 45474u), 0u)), 0u);
    var var_2 = Struct_3(Struct_2(global0[_wgslsmith_index_u32(~0u, 11u)], Struct_1(true, ~62647u < arg_1, var_0.c, any(select(vec2<bool>(true, var_0.d), vec2<bool>(false, var_0.a), true))), var_0, 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -613f), -1000f)))), ((countOneBits(u_input.c.x) >> (var_1 % 32u)) ^ u_input.b.x) ^ ~arg_2.x);
    let var_3 = -_wgslsmith_add_vec3_i32(abs(select(vec3<i32>(-18616i, 20269i, 1i), vec3<i32>(u_input.a.x, var_2.b, 2147483647i), any(vec4<bool>(true, arg_0.a, var_2.a.b.d, false)))), -(-u_input.d.wzw << (vec3<u32>(1u, 4294967295u, 38303u) % vec3<u32>(32u))));
    let var_4 = -2147483647i & (~u_input.a.x << (~_wgslsmith_dot_vec4_u32(min(vec4<u32>(25238u, 1u, var_2.a.b.c.x, 68277u), vec4<u32>(var_1, 41348u, 0u, var_1)), min(vec4<u32>(12080u, 0u, var_0.c.x, 4294967295u), vec4<u32>(var_0.c.x, var_2.a.c.c.x, var_1, var_2.a.d))) % 32u));
    return firstTrailingBit(u_input.d);
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = func_3(Struct_4(select(~41701u, _wgslsmith_div_u32(5878u, 7576u), true) != 1u), ~(~(~abs(7111u))), vec2<i32>(_wgslsmith_add_i32(~u_input.c.x, min(u_input.e, u_input.c.x)), u_input.c.x));
    let var_1 = Struct_1(true, true, _wgslsmith_sub_vec2_u32(~(~_wgslsmith_div_vec2_u32(vec2<u32>(19117u, 4294967295u), vec2<u32>(10314u, 13589u))), vec2<u32>(106662u, firstTrailingBit(1u) << (~4294967295u % 32u))), all(vec3<bool>(true, any(!vec2<bool>(false, arg_0)), true)));
    global0 = array<vec4<bool>, 11>();
    global1 = _wgslsmith_f_op_f32(min(539f, 132f));
    var var_2 = vec3<i32>(i32(-1i) * -(i32(-1i) * -1i), 0i, u_input.c.x);
    return 302f;
}

fn func_4(arg_0: vec3<f32>) -> Struct_4 {
    let var_0 = (4294967295u & ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 23230u), vec2<u32>(9534u, 4294967295u)))) >> (~(~firstTrailingBit(~4294967295u)) % 32u);
    global0 = array<vec4<bool>, 11>();
    var var_1 = (vec2<u32>(countOneBits(~var_0), 0u) >> (~(~vec2<u32>(1u, var_0) & _wgslsmith_mult_vec2_u32(vec2<u32>(var_0, 70923u), vec2<u32>(0u, 818u))) % vec2<u32>(32u))) & (~vec2<u32>(58215u & var_0, 1u) & ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0, 68218u), vec2<u32>(var_0, var_0))));
    let var_2 = Struct_1(-u_input.b.x > min(~u_input.c.x, -1i), -5614i >= select(max(_wgslsmith_sub_i32(u_input.a.x, 12883i), 9690i), u_input.a.x, (var_0 <= 24941u) & true), vec2<u32>(select(firstTrailingBit(18158u), var_0 & var_0, true) >> (0u % 32u), var_1.x ^ 1u), false);
    global1 = _wgslsmith_f_op_f32(994f * arg_0.x);
    return Struct_4(103332u <= (_wgslsmith_mod_u32(~1u, var_1.x) | min(24314u, 8935u >> (1u % 32u))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_4) -> Struct_4 {
    var var_0 = abs(select(u_input.e, 2147483647i, true) << (27224u % 32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0.x, -1617f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -2021f, arg_0.x) * vec3<f32>(arg_0.x, -1923f, -1221f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1187f, -308f, arg_0.x), vec3<f32>(-689f, -1314f, arg_0.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, 1201f, arg_0.x), vec3<f32>(-946f, -149f, arg_0.x)))))));
    var var_2 = Struct_3(Struct_2(!global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(1u, 19428u), 0u, 1u), 11u)], Struct_1(!(!arg_1.a), false, ~abs(vec2<u32>(0u, 11040u)), true & !arg_1.a), Struct_1(any(select(vec2<bool>(arg_1.a, true), vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(true, arg_1.a))), true, vec2<u32>(1u, 1u), !all(vec4<bool>(false, false, true, arg_1.a))), _wgslsmith_mod_u32(~30676u, 149574u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.x, -717f)) - _wgslsmith_f_op_f32(func_2(false))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)) - _wgslsmith_f_op_f32(-arg_0.x)))), u_input.e);
    let var_3 = u_input.a.x;
    var_2 = Struct_3(var_2.a, _wgslsmith_div_i32(2147483647i, u_input.b.x) ^ ~((u_input.d.x ^ 1i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.a.b.c.x, var_2.a.c.c.x, var_2.a.d, var_2.a.d), vec4<u32>(0u, 38565u, 43442u, 4294967295u)) % 32u)));
    return Struct_4(var_2.a.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -579f), _wgslsmith_div_f32(1794f, -300f))), _wgslsmith_f_op_f32(f32(-1f) * -1598f))));
    global0 = array<vec4<bool>, 11>();
    var var_1 = var_0;
    let var_2 = func_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1059f - var_0) - _wgslsmith_f_op_f32(var_0 - var_0)) + -2642f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_0)), _wgslsmith_f_op_f32(min(var_0, var_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(vec4<bool>(false, true, false, true), Struct_1(false, true, vec2<u32>(48052u, 42740u), false), Struct_1(false, false, vec2<u32>(0u, 21094u), true), 20773u, -1252f), u_input.e), true)) + _wgslsmith_f_op_f32(max(var_0, var_0)))))), func_4(vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(vec4<bool>(true, true, false, false), Struct_1(true, true, vec2<u32>(16961u, 4294967295u), true), Struct_1(true, false, vec2<u32>(4294967295u, 0u), false), 4294967295u, var_0), 0i), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(false)) + _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(206f - var_0))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -413f)))))) + _wgslsmith_div_f32(-204f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(floor(-529f)), -596f >= var_0)))));
    let var_3 = Struct_4(var_0 == _wgslsmith_f_op_f32(max(-761f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-192f, 165f, var_2.a)))))));
    let var_4 = Struct_3(Struct_2(select(!(!global0[_wgslsmith_index_u32(60383u, 11u)]), !(!vec4<bool>(var_2.a, true, false, false)), !select(vec4<bool>(true, true, var_3.a, var_3.a), vec4<bool>(var_2.a, var_2.a, var_2.a, var_3.a), var_3.a)), Struct_1(true, var_3.a, vec2<u32>(_wgslsmith_clamp_u32(28347u, 39853u, 15515u), 1u), true), Struct_1(var_2.a, true, reverseBits(reverseBits(vec2<u32>(17914u, 23906u))), !var_3.a), firstTrailingBit(~1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-174f + -2575f) * 933f)), _wgslsmith_mult_i32(~u_input.a.x, -(i32(-1i) * -u_input.e)));
    let var_5 = var_4.a;
    let var_6 = Struct_4(true);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, _wgslsmith_f_op_f32(max(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -358f)) + _wgslsmith_div_f32(var_0, 901f)))), firstLeadingBit(var_5.d));
}

