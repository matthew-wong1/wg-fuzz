struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(67556u, 1u), vec2<u32>(0u, 13488u), vec2<u32>(0u, 29329u), vec2<u32>(4294967295u, 1u), vec2<u32>(50853u, 45842u), vec2<u32>(30353u, 69170u), vec2<u32>(1u, 1u), vec2<u32>(60921u, 32427u), vec2<u32>(4294967295u, 65899u), vec2<u32>(1u, 57555u), vec2<u32>(10716u, 3745u), vec2<u32>(0u, 4294967295u));

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_5) -> vec2<i32> {
    var var_0 = true;
    var var_1 = true;
    var var_2 = Struct_4(_wgslsmith_sub_u32(u_input.c.x, ~1u), _wgslsmith_f_op_f32(-arg_0.b.x));
    var_0 = any(select(!vec2<bool>(true, all(vec2<bool>(false, true))), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), select(vec2<bool>(true, all(vec3<bool>(false, false, false))), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_3 = !((u_input.d ^ (arg_0.a << (arg_1.b.x % 32u))) >= ~2944u);
    return abs(-u_input.b);
}

fn func_4(arg_0: vec2<i32>) -> bool {
    var var_0 = u_input.c.x == 4294967295u;
    let var_1 = -427f;
    let var_2 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(463f + -146f) - global1.a.x)) + _wgslsmith_f_op_f32(-global1.a.x)), ~vec3<u32>(u_input.e, firstTrailingBit(~u_input.c.x), u_input.e), Struct_2(vec4<f32>(730f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_1, -300f), _wgslsmith_f_op_f32(-global1.a.x), 101394u >= u_input.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1124f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1231f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a.x))) - 109f)));
    var_0 = 1u > u_input.c.x;
    let var_3 = Struct_5(142f, _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(firstTrailingBit(u_input.e), ~0u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.b.x, var_2.b.x, 35386u) >> (u_input.c % vec3<u32>(32u)), vec3<u32>(17284u, var_2.b.x, 0u))), ~u_input.c), var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-719f, _wgslsmith_f_op_f32(-377f - var_1)))));
    return false;
}

fn func_2(arg_0: i32) -> u32 {
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(104f, _wgslsmith_f_op_f32(1329f - 251f), _wgslsmith_f_op_f32(global1.a.x + global1.a.x), global1.a.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.a.x, -931f, global1.a.x)) - vec4<f32>(1755f, 205f, 1000f, global1.a.x)))));
    global0 = array<vec2<u32>, 12>();
    let var_0 = vec4<bool>(select(func_4(select(vec2<i32>(arg_0, 2147483647i), func_3(Struct_3(4294967295u, vec2<f32>(global1.a.x, global1.a.x), Struct_2(vec4<f32>(global1.a.x, -139f, global1.a.x, -162f))), Struct_5(1000f, vec3<u32>(u_input.e, 1u, u_input.c.x), Struct_2(global1.a), global1.a.x)), true)), !all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)), true), any(vec4<bool>(true, true, true, true)), global1.a.x > global1.a.x, true);
    var var_1 = Struct_3(1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(global1.a.x)), global1.a.x)), Struct_2(global1.a));
    let var_2 = (~_wgslsmith_dot_vec3_i32(-vec3<i32>(arg_0, u_input.a, 2147483647i), vec3<i32>(-2147483647i, arg_0, 2147483647i) ^ vec3<i32>(u_input.b.x, -7972i, arg_0)) >> (abs(u_input.e) % 32u)) & _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, 0i, u_input.a, 39316i), vec4<i32>(-4999i, u_input.a, 44694i, u_input.b.x)) ^ ~vec4<i32>(-2147483647i, -650i, -2147483647i, 1i)), vec4<i32>(54345i, u_input.a, 1i, arg_0) | firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(0i, -1i, u_input.a, 2147483647i), vec4<i32>(-2147483647i, arg_0, u_input.b.x, -3658i))));
    return u_input.e & 2218u;
}

fn func_1() -> i32 {
    let var_0 = vec3<u32>(~u_input.d, u_input.c.x, ~(min(_wgslsmith_dot_vec3_u32(vec3<u32>(97729u, u_input.c.x, 102107u), u_input.c), ~10621u) >> (5444u % 32u)));
    global0 = array<vec2<u32>, 12>();
    global0 = array<vec2<u32>, 12>();
    var var_1 = vec4<u32>(countOneBits(~u_input.e << (_wgslsmith_div_u32(1u, 4294967295u) % 32u)) << (~1u % 32u), ~87087u, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(select(8995u, _wgslsmith_sub_u32(4294967295u, var_0.x), true), func_2(u_input.b.x) | _wgslsmith_mod_u32(4294967295u, var_0.x), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, 1u), vec2<u32>(u_input.d, var_0.x)), u_input.e << (var_0.x % 32u)))), ~_wgslsmith_mod_u32(var_0.x, 66513u << (_wgslsmith_clamp_u32(50495u, 1u, 26308u) % 32u)));
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(global1.a, vec4<f32>(_wgslsmith_f_op_f32(656f - global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a.x))), global1.a.x, global1.a.x), vec4<bool>(!func_4(u_input.b), true, -u_input.b.x == ~u_input.a, global1.a.x < _wgslsmith_f_op_f32(-global1.a.x)))));
    return abs(_wgslsmith_mult_i32(u_input.b.x, u_input.a));
}

fn func_5(arg_0: Struct_2, arg_1: i32, arg_2: Struct_4, arg_3: f32) -> Struct_3 {
    global0 = array<vec2<u32>, 12>();
    let var_0 = Struct_4(44743u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -413f), _wgslsmith_f_op_f32(sign(502f)), true || (_wgslsmith_f_op_f32(1167f * -366f) < _wgslsmith_f_op_f32(select(arg_3, 909f, true))))));
    let var_1 = _wgslsmith_f_op_f32(select(var_0.b, -163f, true));
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-(~vec3<i32>(arg_1, -35786i, -2147483647i) >> (abs(vec3<u32>(36199u, var_0.a, 16589u)) % vec3<u32>(32u))), -vec3<i32>(_wgslsmith_sub_i32(u_input.a, 0i), min(0i, u_input.a), -2147483647i)), _wgslsmith_div_vec3_i32(min(vec3<i32>(~arg_1, firstLeadingBit(arg_1), 11513i), ~_wgslsmith_div_vec3_i32(vec3<i32>(4169i, -2147483647i, -32308i), vec3<i32>(u_input.b.x, 38774i, arg_1))), _wgslsmith_mod_vec3_i32(vec3<i32>(17115i, ~29817i, 23373i), vec3<i32>(u_input.b.x, u_input.a, -1i) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, -1i, 1i), vec3<i32>(u_input.b.x, u_input.a, 46192i)))));
    var_2 = arg_1;
    return Struct_3(24194u, _wgslsmith_f_op_vec2_f32(global1.a.yx * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-192f)) + _wgslsmith_f_op_f32(f32(-1f) * -936f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_3)), 1027f)))), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(676f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.a.x, global1.a.x)) * arg_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(686f, global1.a.x, -1185f, global1.a.x)))))), ~func_1() >> (u_input.d % 32u), Struct_4(60922u, global1.a.x), global1.a.x);
    global0 = array<vec2<u32>, 12>();
    global1 = func_5(func_5(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, -156f, 1033f, var_0.c.a.x)))), reverseBits(u_input.a), Struct_4(_wgslsmith_mult_u32(~var_0.a, var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1747f)), _wgslsmith_f_op_f32(round(-964f))).c, 18980i, Struct_4(~4294967295u, var_0.c.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a.x - var_0.c.a.x))))).c;
    global0 = array<vec2<u32>, 12>();
    let var_1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mult_u32(~35700u, ~select(4294967295u, u_input.c.x, false)), 0u, ~var_0.a));
}

