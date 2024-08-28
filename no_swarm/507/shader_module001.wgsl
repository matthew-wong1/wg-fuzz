struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>) -> f32 {
    global0 = array<vec4<f32>, 8>();
    global0 = array<vec4<f32>, 8>();
    var var_0 = select(vec2<bool>(any(select(select(vec4<bool>(arg_0.b.a, arg_0.d, true, arg_0.d), vec4<bool>(false, false, true, true), vec4<bool>(arg_0.e.a, arg_0.c.d.a, false, false)), !vec4<bool>(arg_0.d, arg_0.c.d.a, true, arg_0.a.a), arg_0.b.a)), true), !vec2<bool>(!arg_0.c.d.a || (false & arg_0.b.a), !(arg_0.c.c.a | arg_0.b.a)), all(vec4<bool>(false && !arg_0.d, false, all(vec3<bool>(arg_0.a.a, arg_0.c.c.a, true)), false)));
    global0 = array<vec4<f32>, 8>();
    let var_1 = u_input.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1683f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(425f - _wgslsmith_f_op_f32(272f - arg_0.c.a.x)) + -203f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: i32) -> bool {
    var var_0 = Struct_3(abs(_wgslsmith_add_vec4_i32(select(vec4<i32>(1i, arg_1.a.x, -5431i, arg_3), select(arg_1.a, vec4<i32>(-1i, u_input.a, arg_1.a.x, -29742i), arg_1.b.c.a), true), ~reverseBits(arg_1.a))), arg_1.b);
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, arg_1.a.x), var_0.a.x, 1i, var_0.a.x);
    var_0 = Struct_3(var_1, Struct_2(global0[_wgslsmith_index_u32(arg_1.b.b, 8u)], ~(~var_0.b.b), arg_0, var_0.b.d));
    var_0 = Struct_3(-vec4<i32>(max(1i, ~arg_1.a.x), _wgslsmith_div_i32(var_0.a.x, _wgslsmith_mod_i32(-2147483647i, 8730i)), ~(-u_input.a), ~(~var_1.x)), Struct_2(arg_1.b.a, ~15185u, Struct_1(all(select(vec2<bool>(false, true), vec2<bool>(arg_2.a, true), arg_1.b.c.a))), arg_0));
    return all(vec2<bool>(var_0.b.c.a & (~(-38440i) <= _wgslsmith_dot_vec2_i32(var_0.a.yz, vec2<i32>(var_0.a.x, u_input.a))), arg_0.a));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    let var_0 = vec3<bool>(true, all(vec4<bool>(!arg_1.b.d.a, arg_3.e.a, !any(vec3<bool>(false, arg_3.d, false)), arg_2.d)), true);
    global0 = array<vec4<f32>, 8>();
    global0 = array<vec4<f32>, 8>();
    let var_1 = select(select(var_0, vec3<bool>(true, true, _wgslsmith_f_op_f32(floor(arg_0.x)) <= _wgslsmith_f_op_f32(-arg_1.b.a.x)), vec3<bool>(all(vec2<bool>(arg_3.c.c.a, arg_3.c.c.a)), arg_1.b.c.a, select(false, true, false) && true)), vec3<bool>(arg_3.d, true, all(vec4<bool>(all(vec4<bool>(false, var_0.x, arg_3.e.a, false)), true, var_0.x, true))), true);
    var var_2 = firstLeadingBit(arg_3.c.b);
    return arg_2.e;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool) -> Struct_1 {
    let var_0 = arg_1.c;
    global0 = array<vec4<f32>, 8>();
    let var_1 = arg_1.c.a.x;
    let var_2 = vec4<f32>(-464f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, 125f, true)) + _wgslsmith_f_op_f32(arg_1.c.a.x + var_0.a.x))) + _wgslsmith_f_op_f32(exp2(arg_1.c.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(371f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1455f - _wgslsmith_f_op_f32(1000f + arg_1.c.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1871f)))), _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-1f)));
    var var_3 = vec2<u32>(1u, _wgslsmith_div_u32(~0u, 4294967295u));
    return func_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(arg_1, vec3<i32>(-11423i, 26218i, u_input.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(abs(-2282f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(133f, var_1) * _wgslsmith_div_f32(869f, -1070f)), arg_1.c.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2202f), var_1, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(-var_0.a.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -109f, var_0.a.x, -341f) + arg_1.c.a)))), Struct_3(-reverseBits(max(vec4<i32>(-1i, u_input.a, u_input.a, 3120i), vec4<i32>(-17259i, u_input.c.x, u_input.c.x, -11308i))), var_0), Struct_4(Struct_1(var_0.d.a), var_0.c, Struct_2(global0[_wgslsmith_index_u32(0u, 8u)], ~6435u, Struct_1(func_3(arg_1.a, Struct_3(vec4<i32>(u_input.c.x, 1i, u_input.a, u_input.c.x), var_0), Struct_1(true), u_input.a)), var_0.d), var_0.d.a | all(vec4<bool>(arg_0.a, arg_1.e.a, arg_2, false)), Struct_1(false)), arg_1);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_1 {
    global0 = array<vec4<f32>, 8>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_5(Struct_1(true), Struct_4(Struct_1(any(vec3<bool>(true, true, true))), Struct_1(true), Struct_2(global0[_wgslsmith_index_u32(u_input.b.x ^ 1u, 8u)], u_input.b.x, func_1(Struct_1(false), Struct_4(Struct_1(false), Struct_1(true), Struct_2(vec4<f32>(-835f, 1842f, -916f, 729f), 0u, Struct_1(true), Struct_1(true)), false, Struct_1(false)), false), Struct_1(true)), true, func_4(vec4<f32>(-1169f, -1356f, 479f, -473f), Struct_3(vec4<i32>(32816i, 48133i, u_input.a, u_input.a), Struct_2(global0[_wgslsmith_index_u32(14435u, 8u)], u_input.b.x, Struct_1(false), Struct_1(true))), Struct_4(Struct_1(true), Struct_1(true), Struct_2(vec4<f32>(218f, 873f, 1400f, -572f), u_input.b.x, Struct_1(false), Struct_1(false)), false, Struct_1(false)), Struct_4(Struct_1(false), Struct_1(false), Struct_2(vec4<f32>(475f, -814f, -516f, -493f), 26390u, Struct_1(false), Struct_1(true)), true, Struct_1(true)))), Struct_3(-(vec4<i32>(u_input.c.x, u_input.c.x, 4317i, -2147483647i) | vec4<i32>(-71442i, 0i, u_input.a, u_input.c.x)), Struct_2(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(53355u, 8u)]), reverseBits(61462u), func_4(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], Struct_3(vec4<i32>(u_input.a, 1i, 39612i, u_input.a), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 8u)], u_input.b.x, Struct_1(false), Struct_1(true))), Struct_4(Struct_1(true), Struct_1(false), Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 4294967295u, Struct_1(true), Struct_1(false)), false, Struct_1(true)), Struct_4(Struct_1(false), Struct_1(true), Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], u_input.b.x, Struct_1(false), Struct_1(true)), true, Struct_1(true))), Struct_1(false))), _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -1i, u_input.a) & vec3<i32>(2147483647i, -37498i, 2807i), _wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, 2147483647i, -1i))) ^ _wgslsmith_mod_vec3_i32(u_input.c, ~u_input.c)), func_1(func_1(Struct_1(true), Struct_4(Struct_1(true), Struct_1(true), Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 47044u, Struct_1(false), Struct_1(false)), all(vec2<bool>(true, false)), func_4(vec4<f32>(-986f, 2091f, 549f, 1171f), Struct_3(vec4<i32>(-8379i, 0i, 0i, u_input.a), Struct_2(global0[_wgslsmith_index_u32(11195u, 8u)], 4294967295u, Struct_1(false), Struct_1(false))), Struct_4(Struct_1(false), Struct_1(false), Struct_2(vec4<f32>(-1572f, 1000f, -114f, -832f), u_input.b.x, Struct_1(false), Struct_1(false)), true, Struct_1(false)), Struct_4(Struct_1(true), Struct_1(true), Struct_2(vec4<f32>(1455f, 978f, 178f, -250f), 1123u, Struct_1(true), Struct_1(true)), true, Struct_1(false)))), true), Struct_4(Struct_1(true), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 719f, 1464f, 338f) * global0[_wgslsmith_index_u32(4294967295u, 8u)]), Struct_3(vec4<i32>(u_input.a, u_input.c.x, u_input.c.x, 1i), Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], u_input.b.x, Struct_1(true), Struct_1(false))), Struct_4(Struct_1(false), Struct_1(false), Struct_2(vec4<f32>(2079f, 298f, 1690f, -421f), 4559u, Struct_1(true), Struct_1(true)), false, Struct_1(false)), Struct_4(Struct_1(true), Struct_1(true), Struct_2(vec4<f32>(-809f, 1350f, 846f, 251f), u_input.b.x, Struct_1(false), Struct_1(true)), false, Struct_1(true))), Struct_2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(507f, -1125f, 1000f, -722f), global0[_wgslsmith_index_u32(4294967295u, 8u)])), _wgslsmith_mod_u32(59869u, 77535u), Struct_1(true), Struct_1(false)), true, func_5(Struct_1(false), Struct_4(Struct_1(false), Struct_1(true), Struct_2(vec4<f32>(1000f, -759f, 704f, -2260f), 21756u, Struct_1(false), Struct_1(false)), false, Struct_1(false)), Struct_3(vec4<i32>(25009i, u_input.c.x, 14153i, -1i), Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 33623u, Struct_1(true), Struct_1(true))), _wgslsmith_div_vec3_i32(vec3<i32>(-5957i, u_input.c.x, u_input.c.x), vec3<i32>(u_input.a, 31115i, u_input.a)))), !(u_input.b.x <= ~4294967295u)), Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-904f, -1967f, 873f, 402f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -2097f, 854f, -1781f)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true))), vec4<f32>(_wgslsmith_f_op_f32(step(-189f, -510f)), _wgslsmith_f_op_f32(332f + 518f), _wgslsmith_div_f32(667f, -978f), _wgslsmith_f_op_f32(min(2535f, -2116f))))), 4294967295u, func_5(func_5(func_1(Struct_1(true), Struct_4(Struct_1(false), Struct_1(true), Struct_2(vec4<f32>(-296f, -1537f, 793f, 225f), u_input.b.x, Struct_1(false), Struct_1(false)), false, Struct_1(false)), true), Struct_4(Struct_1(true), Struct_1(false), Struct_2(vec4<f32>(-445f, 2853f, -678f, 109f), u_input.b.x, Struct_1(false), Struct_1(true)), false, Struct_1(true)), Struct_3(vec4<i32>(-14204i, u_input.c.x, u_input.c.x, 0i), Struct_2(vec4<f32>(-870f, -1085f, 407f, -380f), 4294967295u, Struct_1(true), Struct_1(false))), u_input.c), Struct_4(func_4(vec4<f32>(-800f, 1245f, -136f, 1760f), Struct_3(vec4<i32>(1i, u_input.a, -46704i, 44245i), Struct_2(vec4<f32>(1812f, 129f, 1066f, -1000f), u_input.b.x, Struct_1(false), Struct_1(true))), Struct_4(Struct_1(true), Struct_1(true), Struct_2(global0[_wgslsmith_index_u32(0u, 8u)], 1u, Struct_1(true), Struct_1(true)), true, Struct_1(false)), Struct_4(Struct_1(false), Struct_1(false), Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 0u, Struct_1(true), Struct_1(true)), false, Struct_1(false))), func_5(Struct_1(true), Struct_4(Struct_1(true), Struct_1(true), Struct_2(vec4<f32>(-685f, 141f, 1448f, -349f), 4294967295u, Struct_1(false), Struct_1(true)), false, Struct_1(false)), Struct_3(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.c.x), Struct_2(vec4<f32>(-2566f, -367f, -402f, 457f), u_input.b.x, Struct_1(true), Struct_1(false))), u_input.c), Struct_2(vec4<f32>(1000f, 456f, 1578f, -791f), 18164u, Struct_1(true), Struct_1(true)), false, Struct_1(true)), Struct_3(~vec4<i32>(u_input.a, u_input.a, 1799i, -2147483647i), Struct_2(vec4<f32>(898f, 905f, 187f, -615f), u_input.b.x, Struct_1(true), Struct_1(true))), abs(max(vec3<i32>(u_input.a, u_input.c.x, -15543i), vec3<i32>(2147483647i, u_input.c.x, u_input.a)))), Struct_1(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false))))), true, Struct_1(false));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(Struct_4(Struct_1(func_5(Struct_1(false), var_0, Struct_3(vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, 0i), var_0.c), vec3<i32>(1i, u_input.c.x, u_input.c.x)).a), Struct_1(true), var_0.c, true, func_1(func_1(Struct_1(var_0.a.a), var_0, var_0.a.a), Struct_4(var_0.a, var_0.c.c, Struct_2(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], var_0.c.b, Struct_1(true), var_0.b), true, Struct_1(var_0.a.a)), true)), u_input.c))));
    let var_2 = Struct_4(var_0.b, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.c.a.x, -1076f, var_1, 721f))))), Struct_3(vec4<i32>(-54905i >> (u_input.b.x % 32u), -u_input.c.x, 2147483647i, _wgslsmith_dot_vec3_i32(u_input.c, u_input.c)), var_0.c), Struct_4(func_1(func_1(Struct_1(false), Struct_4(Struct_1(var_0.b.a), Struct_1(false), var_0.c, true, Struct_1(true)), false), var_0, true), var_0.b, Struct_2(vec4<f32>(-252f, -2577f, -942f, 290f), 1u, func_1(var_0.c.c, var_0, true), func_4(var_0.c.a, Struct_3(vec4<i32>(2147483647i, u_input.a, 2147483647i, 0i), Struct_2(vec4<f32>(var_0.c.a.x, 1000f, var_0.c.a.x, var_0.c.a.x), var_0.c.b, Struct_1(false), var_0.b)), var_0, Struct_4(Struct_1(var_0.b.a), var_0.a, Struct_2(vec4<f32>(-1074f, var_0.c.a.x, var_1, var_0.c.a.x), var_0.c.b, Struct_1(var_0.a.a), Struct_1(var_0.c.d.a)), var_0.a.a, Struct_1(true)))), func_5(var_0.c.d, var_0, Struct_3(vec4<i32>(2147483647i, u_input.c.x, 29632i, 14679i), var_0.c), vec3<i32>(u_input.a, -2147483647i, u_input.c.x)).a & var_0.d, Struct_1(true && var_0.e.a)), var_0), Struct_2(var_0.c.a, ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), vec2<u32>(71157u, 4294967295u)), u_input.b.x >> (u_input.b.x % 32u)), var_0.b, func_1(var_0.e, var_0, var_0.c.c.a)), _wgslsmith_div_u32(~90097u, 33269u) <= _wgslsmith_mod_u32(~u_input.b.x, 29794u), func_5(var_0.e, var_0, Struct_3(~_wgslsmith_sub_vec4_i32(vec4<i32>(-14386i, u_input.c.x, u_input.a, 2147483647i), vec4<i32>(-1i, -2147483647i, 18150i, u_input.a)), var_0.c), _wgslsmith_mult_vec3_i32(~u_input.c | vec3<i32>(-2147483647i, u_input.a, 2147483647i), vec3<i32>(0i, -9017i, u_input.c.x) & _wgslsmith_clamp_vec3_i32(u_input.c, u_input.c, vec3<i32>(u_input.c.x, -58369i, u_input.c.x)))));
    global0 = array<vec4<f32>, 8>();
    let var_3 = abs(vec2<u32>(0u, 0u));
    var var_4 = vec3<f32>(var_1, _wgslsmith_f_op_f32(-var_0.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-195f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.a.x), _wgslsmith_f_op_f32(step(-681f, 325f))))));
    var var_5 = var_4.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c.a.xzw)), reverseBits(max(_wgslsmith_sub_vec2_u32(u_input.b.xy >> (u_input.b.xy % vec2<u32>(32u)), ~var_3), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, var_2.c.b), var_3) << (reverseBits(vec2<u32>(4294967295u, 1u)) % vec2<u32>(32u)))), ~min(min(~vec4<u32>(4294967295u, 0u, var_3.x, 0u), u_input.b), ~vec4<u32>(var_2.c.b, var_0.c.b, var_2.c.b, var_2.c.b)), ~abs(u_input.b.xyy), abs(vec3<i32>(-2147483647i, 75118i ^ _wgslsmith_clamp_i32(u_input.c.x, u_input.a, u_input.a), countOneBits(u_input.c.x))));
}

