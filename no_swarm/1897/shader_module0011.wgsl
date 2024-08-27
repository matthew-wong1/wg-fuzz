struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_3,
    d: Struct_4,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true));

var<private> global1: array<vec3<i32>, 13>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = all(vec3<bool>(true, true, true));
    var var_1 = Struct_4(Struct_2(~(u_input.a.x | ~4294967295u), arg_1.a.b), Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, arg_1.a.b.a.x, arg_1.a.b.a.x, 6529i), firstTrailingBit(vec4<i32>(-1i, arg_0.x, arg_0.x, arg_1.a.b.a.x))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(12430u, arg_1.a.a, 28219u, 9465u) | vec4<u32>(u_input.a.x, 18723u, u_input.a.x, 58217u), vec4<u32>(37074u, 42008u, 4294967295u, arg_1.a.a), vec4<u32>(arg_1.a.a, 0u, 55060u, 0u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2237f, _wgslsmith_f_op_f32(-259f + arg_1.a.b.c.x)) - vec2<f32>(_wgslsmith_f_op_f32(sign(arg_1.a.b.b.x)), arg_1.a.b.c.x)), arg_1.a.b.c), arg_1.a.b, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(606f - _wgslsmith_div_f32(arg_1.a.b.b.x, arg_1.a.b.b.x)))), arg_1.a.b.c.x, _wgslsmith_f_op_f32(ceil(arg_1.a.b.b.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_1.a.b.b.x, 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-684f * 1636f), _wgslsmith_div_f32(arg_1.a.b.b.x, arg_1.a.b.b.x)), true))), arg_1.a);
    return firstTrailingBit(select(select(vec4<u32>(var_1.e.a, 40119u, max(arg_1.a.a, 6021u), ~52201u), vec4<u32>(select(0u, 0u, true), 53692u, arg_1.a.a, ~u_input.a.x), true), min(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), arg_1.a.a << (0u % 32u), firstTrailingBit(var_1.e.a), select(43240u, u_input.a.x, true)), vec4<u32>(max(var_1.e.a, 1u), abs(9079u), ~9899u, ~68046u)), !vec4<bool>(true, true, true, 1996u >= var_1.e.a)));
}

fn func_2() -> Struct_2 {
    var var_0 = vec2<bool>(all(vec2<bool>(all(vec3<bool>(true, true, true)), false)), true);
    var var_1 = min(1u | ~countOneBits(_wgslsmith_clamp_u32(1u, 4294967295u, 1u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, 42548u), 0u), ~select(u_input.a.x, 4294967295u, var_0.x)) >> ((_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 84294u, 4294967295u, u_input.a.x), vec4<u32>(9370u, 0u, 16744u, u_input.a.x)), func_3(vec2<i32>(-1i, 1i), Struct_3(Struct_2(u_input.a.x, Struct_1(vec4<i32>(1i, 22438i, 1i, 23301i), vec2<f32>(-212f, 1517f), vec4<f32>(1726f, -1000f, 1267f, -1180f)))))) | 0u) % 32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(517f, 790f, -682f, 2008f)))));
    var var_3 = Struct_3(Struct_2(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, 0u, 13669u, u_input.a.x), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 12924u), !vec4<bool>(false, var_0.x, var_0.x, var_0.x)), vec4<u32>(~u_input.a.x, ~1u, ~u_input.a.x, ~u_input.a.x)), Struct_1(-(~vec4<i32>(8792i, -26872i, 0i, 1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(var_2.xw))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, 429f, var_2.x, var_2.x), vec4<f32>(var_2.x, 833f, 855f, var_2.x)))))));
    var_2 = vec4<f32>(_wgslsmith_f_op_f32(var_2.x - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1251f), -519f, -1592f);
    return Struct_2(abs((0u << ((u_input.a.x << (1086u % 32u)) % 32u)) >> (12398u % 32u)), Struct_1(-var_3.a.b.a, _wgslsmith_f_op_vec2_f32(var_3.a.b.b * vec2<f32>(_wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(-var_3.a.b.b.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_3.a.b.b.x), -1600f, _wgslsmith_f_op_f32(round(var_3.a.b.b.x)), -771f)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: bool) -> vec3<u32> {
    global1 = array<vec3<i32>, 13>();
    let var_0 = -_wgslsmith_div_vec4_i32(abs(vec4<i32>(-40120i, 1i, _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], global1[_wgslsmith_index_u32(arg_2.x, 13u)]), -1i)), vec4<i32>(_wgslsmith_sub_i32(-61130i, 18403i), 1i, _wgslsmith_mult_i32(17762i, 1i), 11958i) ^ ((vec4<i32>(-17511i, 0i, 1i, 18353i) >> (vec4<u32>(arg_2.x, 94629u, u_input.a.x, 0u) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_i32(vec4<i32>(26618i, -2147483647i, 16748i, -38764i), vec4<i32>(-18983i, -17038i, 20392i, 0i))));
    let var_1 = arg_3;
    global1 = array<vec3<i32>, 13>();
    var var_2 = func_2();
    return ~vec3<u32>(~_wgslsmith_add_u32(5147u, ~u_input.a.x), 43474u, reverseBits(var_2.a));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>) -> vec3<bool> {
    global0 = array<vec3<bool>, 30>();
    global0 = array<vec3<bool>, 30>();
    var var_0 = func_2().b;
    global1 = array<vec3<i32>, 13>();
    let var_1 = -163f;
    return vec3<bool>(true | !all(vec3<bool>(true, false, true)), false, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, select(true, false, true)), vec4<bool>(180f > var_0.c.x, true, false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.a.x, Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(33264u, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(1u, 4294967295u, 40535u, u_input.a.x)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -vec4<i32>(-2316i, -20068i, 34122i, 12732i))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(173f + -559f)), vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-314f, -475f, -519f, -433f) + vec4<f32>(2164f, 455f, -1802f, -617f))))))));
    global1 = array<vec3<i32>, 13>();
    global1 = array<vec3<i32>, 13>();
    var var_1 = var_0.b;
    var var_2 = ~var_1.a.x;
    let var_3 = 0i & var_1.a.x;
    var var_4 = !(!func_4(_wgslsmith_div_vec3_u32(func_1(vec4<f32>(1326f, var_1.c.x, -288f, 694f), var_1.c.ww, vec3<u32>(var_0.a, u_input.a.x, u_input.a.x), true), firstLeadingBit(u_input.a)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.b.c), _wgslsmith_div_vec4_f32(var_0.b.c, var_0.b.c)))));
    let var_5 = Struct_5(var_0.b.a.x, Struct_4(Struct_2(u_input.a.x, Struct_1(var_0.b.a >> (vec4<u32>(var_0.a, 54290u, 4175u, var_0.a) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_0.b.c.x, var_0.b.c.x))), _wgslsmith_f_op_vec4_f32(abs(var_1.c)))), Struct_1(var_1.a, var_1.c.zx, _wgslsmith_f_op_vec4_f32(var_1.c - var_1.c)), func_2().b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c * var_0.b.c) + var_1.c) - _wgslsmith_f_op_vec4_f32(-var_1.c)), func_2()), Struct_3(func_2()), Struct_4(Struct_2(1u, func_2().b), func_2().b, var_0.b, vec4<f32>(var_1.b.x, -154f, var_0.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(706f, 579f)))), Struct_2(~(~26744u), Struct_1(~vec4<i32>(var_1.a.x, 0i, var_1.a.x, var_0.b.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.b.x, 1017f) * vec2<f32>(915f, var_0.b.b.x)), vec4<f32>(2215f, var_0.b.b.x, -1445f, var_0.b.c.x)))), Struct_3(func_2()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-920f - var_0.b.b.x) * -1317f)))), vec2<u32>(~select(0u << (var_0.a % 32u), min(var_0.a, 60298u), var_4.x), ~u_input.a.x));
}

