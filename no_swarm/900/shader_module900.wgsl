struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(1u, 16003u, 0u, 0u), vec4<u32>(10295u, 33808u, 10387u, 5395u), vec4<u32>(0u, 12753u, 18696u, 21714u), vec4<u32>(63816u, 1u, 1u, 0u), vec4<u32>(22269u, 41261u, 46426u, 4294967295u), vec4<u32>(0u, 1u, 3580u, 1u), vec4<u32>(35806u, 4294967295u, 55525u, 36022u), vec4<u32>(33966u, 64336u, 11777u, 4294967295u), vec4<u32>(11990u, 0u, 1u, 1u), vec4<u32>(0u, 38925u, 0u, 23821u), vec4<u32>(1u, 1u, 24210u, 0u), vec4<u32>(34617u, 21135u, 70675u, 4294967295u), vec4<u32>(49424u, 33567u, 4294967295u, 57534u), vec4<u32>(0u, 158787u, 36688u, 68346u), vec4<u32>(4294967295u, 32397u, 1u, 4294967295u), vec4<u32>(22206u, 4879u, 2896u, 1u), vec4<u32>(72791u, 0u, 33865u, 4294967295u), vec4<u32>(1u, 42235u, 4294967295u, 61930u), vec4<u32>(4294967295u, 24413u, 1u, 66720u), vec4<u32>(1u, 106623u, 131932u, 30591u), vec4<u32>(81434u, 7272u, 4294967295u, 16314u), vec4<u32>(59638u, 42798u, 52152u, 0u), vec4<u32>(0u, 67041u, 7017u, 1u), vec4<u32>(122u, 0u, 1u, 29468u), vec4<u32>(93082u, 43172u, 0u, 0u), vec4<u32>(1u, 28253u, 1u, 15922u), vec4<u32>(1u, 0u, 4294967295u, 16317u), vec4<u32>(33563u, 7151u, 1u, 71360u), vec4<u32>(12702u, 56975u, 0u, 4294967295u), vec4<u32>(4294967295u, 0u, 57030u, 86081u));

var<private> global1: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true));

var<private> global2: array<vec4<f32>, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> vec4<u32> {
    global1 = array<vec4<bool>, 18>();
    let var_0 = Struct_2(arg_2);
    global0 = array<vec4<u32>, 30>();
    let var_1 = arg_1;
    var var_2 = !vec2<bool>(all(!global1[_wgslsmith_index_u32(4294967295u, 18u)]) || true, arg_3.a.d);
    return ~(~min(_wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(min(arg_3.a.b, 8955u), 30u)], _wgslsmith_clamp_vec4_u32(vec4<u32>(69026u, 0u, u_input.d, var_1.c), global0[_wgslsmith_index_u32(var_0.a.b, 30u)], global0[_wgslsmith_index_u32(64220u, 30u)])), vec4<u32>(u_input.c, arg_3.a.b, ~u_input.d, abs(1u))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    global2 = array<vec4<f32>, 16>();
    let var_0 = 1i;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-788f, 1812f, -576f) + vec3<f32>(1000f, -428f, -934f)))))), 24055u, 0u, true, true));
    var var_2 = var_1.a;
    let var_3 = ~63472u;
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -956f), _wgslsmith_f_op_f32(var_2.a.x - -955f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - _wgslsmith_f_op_f32(select(var_2.a.x, 2099f, true))), 935f) * var_2.a), _wgslsmith_mult_u32(~(~var_3) & _wgslsmith_clamp_u32(~1u, u_input.c, var_2.c), ~(1u ^ arg_0.x) & ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 16349u), vec2<u32>(var_1.a.c, 14670u))), select(~_wgslsmith_dot_vec4_u32(func_3(var_2.e, var_1.a, Struct_1(vec3<f32>(var_1.a.a.x, -849f, 463f), 38023u, var_1.a.b, var_2.e, var_2.d), Struct_2(Struct_1(var_1.a.a, var_3, 0u, false, false))), vec4<u32>(arg_0.x, 12323u, 0u, 4294967295u) << (global0[_wgslsmith_index_u32(arg_0.x, 30u)] % vec4<u32>(32u))), var_1.a.c, true), var_2.d, var_2.d && (-(~(-21348i)) <= -(~var_0)));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> vec4<i32> {
    var var_0 = Struct_2(func_2(vec4<u32>(arg_2.b, ~10259u, ~(~79305u), ~(~18275u))));
    var var_1 = ~(~vec4<u32>(~u_input.c, arg_1, ~(~1u), ~0u));
    let var_2 = arg_2;
    var var_3 = vec2<bool>(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2596f - 229f) * _wgslsmith_f_op_f32(arg_2.a.x * 1000f)) <= _wgslsmith_f_op_f32(f32(-1f) * -369f)), arg_2.e);
    var_3 = !vec2<bool>(1u <= abs(arg_1), all(vec2<bool>(true, any(vec3<bool>(false, var_2.e, arg_0)))));
    return max(_wgslsmith_mult_vec4_i32(vec4<i32>(-15681i, abs(-2147483647i), _wgslsmith_add_i32(arg_3, u_input.a.x), _wgslsmith_div_i32(-16695i, -6742i) | arg_3), -vec4<i32>(arg_3, -11227i, 46093i, 1i) | select(-vec4<i32>(u_input.a.x, arg_3, 2147483647i, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(-44284i, 1i, -1i, 9885i), vec4<i32>(1i, 3521i, u_input.a.x, -1i)), arg_0)), abs(abs(~vec4<i32>(u_input.a.x, arg_3, 25537i, 0i))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    global1 = array<vec4<bool>, 18>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<f32>, 16>();
    global0 = array<vec4<u32>, 30>();
    let var_0 = func_4(func_1(true, u_input.c, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(788f, -265f, 532f) + vec3<f32>(1347f, -669f, -331f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1128f, 1556f, -1000f))), 0u, ~4294967295u << (firstLeadingBit(u_input.b) % 32u), !(u_input.a.x <= 0i), _wgslsmith_f_op_f32(663f - 1651f) != _wgslsmith_f_op_f32(trunc(1000f))), -7128i), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-642f, -139f, 769f) - vec3<f32>(-1699f, 543f, 391f))))), ~abs(_wgslsmith_clamp_u32(u_input.b, 13984u, 31522u)), 0u, !(_wgslsmith_f_op_f32(floor(501f)) >= -1089f), true));
    let var_1 = 381f;
    global0 = array<vec4<u32>, 30>();
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-166f * 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + var_1) * _wgslsmith_f_op_f32(var_0.a.x + 402f))))));
    global1 = array<vec4<bool>, 18>();
    let var_3 = func_2(vec4<u32>(_wgslsmith_mod_u32(1u, var_0.c), 112776u, 4294967295u, ~abs(~var_0.c))).e;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(floor(-327f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), -1000f)), _wgslsmith_f_op_f32(ceil(var_0.a.x))), vec2<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.a.x, 2147483647i) ^ (i32(-1i) * -25068i)));
}

