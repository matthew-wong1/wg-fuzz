struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(76182u, vec2<f32>(604f, 1403f), vec4<u32>(97369u, 34384u, 1u, 34747u), vec2<bool>(false, false), -733f), Struct_1(0u, vec2<f32>(215f, -457f), vec4<u32>(69917u, 17223u, 1u, 0u), vec2<bool>(true, false), -713f), Struct_1(50788u, vec2<f32>(1113f, 318f), vec4<u32>(13577u, 50185u, 0u, 20395u), vec2<bool>(true, true), -447f), Struct_1(5119u, vec2<f32>(474f, -627f), vec4<u32>(1u, 46047u, 6u, 4294967295u), vec2<bool>(false, false), 339f), Struct_1(4294967295u, vec2<f32>(2713f, 1745f), vec4<u32>(4294967295u, 1873u, 21491u, 46889u), vec2<bool>(true, true), -1148f), Struct_1(0u, vec2<f32>(-1000f, -616f), vec4<u32>(353u, 4294967295u, 31210u, 27614u), vec2<bool>(true, false), 1291f), Struct_1(24284u, vec2<f32>(-1000f, 487f), vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec2<bool>(true, false), -1397f), Struct_1(17304u, vec2<f32>(-1000f, -1012f), vec4<u32>(4294967295u, 27491u, 30999u, 92085u), vec2<bool>(false, false), 1011f), Struct_1(4294967295u, vec2<f32>(-1000f, -312f), vec4<u32>(4294967295u, 21360u, 26567u, 104021u), vec2<bool>(false, false), -2147f), Struct_1(83159u, vec2<f32>(-112f, 1000f), vec4<u32>(1u, 38421u, 4294967295u, 37927u), vec2<bool>(true, true), -481f), Struct_1(18506u, vec2<f32>(1000f, -606f), vec4<u32>(4294967295u, 1u, 10947u, 13044u), vec2<bool>(false, true), 1608f), Struct_1(0u, vec2<f32>(-1000f, 855f), vec4<u32>(4294967295u, 1u, 2650u, 1u), vec2<bool>(false, true), -493f), Struct_1(4294967295u, vec2<f32>(-561f, -249f), vec4<u32>(1u, 8573u, 28607u, 50457u), vec2<bool>(false, false), -1329f), Struct_1(50301u, vec2<f32>(-704f, -952f), vec4<u32>(0u, 80340u, 1u, 22315u), vec2<bool>(false, false), -1230f), Struct_1(0u, vec2<f32>(-1000f, 1000f), vec4<u32>(1u, 4294967295u, 56512u, 40875u), vec2<bool>(true, true), -711f), Struct_1(20692u, vec2<f32>(332f, -445f), vec4<u32>(58730u, 27803u, 1u, 98394u), vec2<bool>(true, true), -948f), Struct_1(4574u, vec2<f32>(1000f, 991f), vec4<u32>(0u, 0u, 5738u, 44487u), vec2<bool>(true, false), 1249f), Struct_1(78203u, vec2<f32>(1000f, 480f), vec4<u32>(50706u, 4294967295u, 0u, 0u), vec2<bool>(false, false), -1968f), Struct_1(52728u, vec2<f32>(423f, 316f), vec4<u32>(4294967295u, 29938u, 4294967295u, 14298u), vec2<bool>(false, true), -1121f), Struct_1(15783u, vec2<f32>(733f, -309f), vec4<u32>(0u, 0u, 1u, 26751u), vec2<bool>(true, true), 1518f), Struct_1(46424u, vec2<f32>(-839f, -1328f), vec4<u32>(1u, 1u, 14942u, 52655u), vec2<bool>(false, false), -993f), Struct_1(1u, vec2<f32>(-671f, 961f), vec4<u32>(1u, 53566u, 43076u, 14850u), vec2<bool>(false, true), -2325f), Struct_1(4294967295u, vec2<f32>(-283f, 510f), vec4<u32>(0u, 0u, 8102u, 4294967295u), vec2<bool>(false, true), 798f), Struct_1(53519u, vec2<f32>(-1177f, 1381f), vec4<u32>(6940u, 0u, 0u, 0u), vec2<bool>(true, false), -244f), Struct_1(16658u, vec2<f32>(-437f, 1275f), vec4<u32>(0u, 1u, 1u, 4294967295u), vec2<bool>(false, false), -2561f), Struct_1(27571u, vec2<f32>(487f, 927f), vec4<u32>(12210u, 1u, 56395u, 1u), vec2<bool>(false, false), -1011f), Struct_1(1u, vec2<f32>(1000f, 237f), vec4<u32>(13806u, 14359u, 0u, 33473u), vec2<bool>(true, true), -1085f), Struct_1(0u, vec2<f32>(-177f, -1000f), vec4<u32>(29087u, 1u, 16318u, 0u), vec2<bool>(false, false), 1486f));

var<private> global2: bool = false;

var<private> global3: array<Struct_3, 25>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    let var_0 = abs(1i);
    global0 = Struct_1(abs(~(global0.a >> (abs(26849u) % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(step(-273f, 1168f))))), ~_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.a, u_input.b, global0.c.x, 0u), min(vec4<u32>(global0.a, 15480u, global0.a, global0.a), vec4<u32>(u_input.a, u_input.a, 1u, 69330u)), true), vec4<u32>(_wgslsmith_div_u32(global0.a, 0u), 39514u, _wgslsmith_add_u32(25449u, 66892u), max(26707u, 47217u))), global0.d, 1000f);
    let var_1 = Struct_3(vec2<u32>(u_input.a >> (u_input.b % 32u), _wgslsmith_div_u32(~4294967295u, abs(u_input.b >> (57073u % 32u)))), ~0i << (_wgslsmith_add_u32(u_input.a, u_input.a) % 32u), Struct_2(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 13528u, global0.c.x), vec3<u32>(26830u, global0.a, u_input.b)), vec3<u32>(u_input.b, u_input.b, u_input.a)), global0.c.x), global0.d, select(global0.c.zx | ~vec2<u32>(u_input.b, u_input.b), _wgslsmith_mult_vec2_u32(firstLeadingBit(global0.c.xy), global0.c.xz), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(929f, 250f, global0.e, 440f), vec4<f32>(global0.b.x, global0.e, 469f, global0.e)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.b.x, 2512f, -3534f, 287f), vec4<f32>(1341f, global0.b.x, 870f, 410f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1140f, global0.b.x, global0.b.x, global0.b.x))))));
    let var_2 = Struct_1(~1u, _wgslsmith_div_vec2_f32(vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.c.d.x)) * global0.e)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.b.x, -772f), var_1.c.d.zy)))), global0.c, vec2<bool>(!any(select(vec2<bool>(global0.d.x, false), global0.d, var_1.c.b)), !global0.d.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-961f * _wgslsmith_f_op_f32(global0.b.x - 2749f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -101f), _wgslsmith_f_op_f32(global0.e - var_1.c.d.x)))))));
    global0 = Struct_1(var_2.c.x, vec2<f32>(var_1.c.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2272f + var_1.c.d.x)))), ~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c.a, 66462u, global0.a, 50653u), vec4<u32>(var_2.c.x, 1u, global0.c.x, var_1.c.a)))), select(var_2.d, vec2<bool>(global0.d.x, false), var_2.d), 321f);
    return !select(!var_2.d, vec2<bool>(all(!vec4<bool>(false, true, var_1.c.b.x, true)), -var_1.b >= arg_0), vec2<bool>(true | any(vec3<bool>(false, true, false)), true));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_add_vec3_i32(~(-vec3<i32>(select(-33939i, 1i, true), 1i, abs(arg_0.b))), vec3<i32>(-16674i, abs(arg_2), abs(arg_0.b)));
    global1 = array<Struct_1, 28>();
    var var_1 = global0.c.yy;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.e)));
    var var_3 = select(func_3(1i), !(!arg_0.c.b), select(arg_1.d, vec2<bool>(!global0.d.x, select(!arg_0.c.b.x, arg_1.d.x, all(arg_1.d))), !(arg_1.d.x && !global0.d.x)));
    return _wgslsmith_f_op_f32(167f - arg_1.e);
}

fn func_1() -> u32 {
    var var_0 = Struct_2(85897u, !global0.d, ~(~_wgslsmith_mult_vec2_u32(global0.c.zy, global0.c.yz)) << ((~select(global0.c.ww, vec2<u32>(global0.a, 0u), global0.d.x) ^ vec2<u32>(_wgslsmith_div_u32(global0.a, 4294967295u), max(u_input.b, global0.c.x))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(248f, -673f, global0.b.x, -1134f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1612f, global0.e, 1001f, global0.b.x))) + vec4<f32>(-793f, _wgslsmith_f_op_f32(func_2(Struct_3(global0.c.wz, -1i, Struct_2(84101u, vec2<bool>(global0.d.x, true), vec2<u32>(global0.c.x, 0u), vec4<f32>(global0.b.x, -1235f, -850f, 272f))), Struct_1(global0.c.x, vec2<f32>(1183f, global0.b.x), global0.c, global0.d, 1000f), 21338i)), -1000f, global0.e))));
    global3 = array<Struct_3, 25>();
    let var_1 = 1u;
    var var_2 = Struct_2(~abs(max(0u, 0u) ^ _wgslsmith_mod_u32(0u, var_1)), global0.d, global0.c.yx, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.d + _wgslsmith_f_op_vec4_f32(-var_0.d)) * vec4<f32>(-1816f, global0.e, 949f, global0.e)))));
    var var_3 = abs(-vec4<i32>(countOneBits(2147483647i), _wgslsmith_sub_i32(-22588i, -70044i), ~(-2147483647i), i32(-1i) * -20218i));
    return countOneBits(_wgslsmith_sub_u32(select(31258u, var_1 | 4294967295u, all(global0.d)) & _wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, 4294967295u, global0.a), vec3<u32>(var_0.a, var_2.a, 8768u)), reverseBits(4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a, vec2<f32>(_wgslsmith_f_op_f32(global0.b.x * global0.e), global0.e), vec4<u32>(global0.c.x, 4294967295u, min(min(global0.a, global0.c.x), 0u), func_1()), select(select(!(!vec2<bool>(global0.d.x, global0.d.x)), global0.d, global0.d), vec2<bool>(global0.e >= 1962f, false), all(select(!vec4<bool>(global0.d.x, global0.d.x, global0.d.x, global0.d.x), select(vec4<bool>(false, global0.d.x, global0.d.x, global0.d.x), vec4<bool>(global0.d.x, global0.d.x, false, global0.d.x), false), vec4<bool>(global0.d.x, global0.d.x, global0.d.x, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1237f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e + _wgslsmith_f_op_f32(f32(-1f) * -1139f)) + global0.e)));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1354f))), global0.e, 1604f))), vec3<f32>(global0.e, global0.b.x, _wgslsmith_f_op_f32(step(1736f, _wgslsmith_f_op_f32(global0.b.x + -236f)))), vec3<bool>(true, var_0.d.x, all(select(!vec3<bool>(false, var_0.d.x, var_0.d.x), vec3<bool>(true, true, global0.d.x), true)))));
    let var_2 = Struct_1(2338u, vec2<f32>(320f, var_1.x), global0.c, global0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e + _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(select(123f, -1820f, false)))), _wgslsmith_f_op_f32(-global0.e)));
    global1 = array<Struct_1, 28>();
    global2 = true || any(vec2<bool>(true, false));
    global3 = array<Struct_3, 25>();
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(-47971i, -_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-1i, -1i, 2552i, 22240i)), -vec4<i32>(1i, 1i, 0i, 0i)), 1i, _wgslsmith_clamp_i32(reverseBits(i32(-1i) * -2147483647i), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(22628i, 62279i, -2147483647i)), _wgslsmith_mult_i32(-1167i, 1i)), _wgslsmith_add_i32(~(-4033i), -37285i))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(20610i, 14422i), _wgslsmith_dot_vec2_i32(vec2<i32>(-29692i, 849i), vec2<i32>(0i, -1i)), _wgslsmith_add_i32(0i, 2147483647i), 1i), vec4<i32>(-1i) * -vec4<i32>(51947i, -2147483647i, -2147483647i, -13968i)) >> (~(~vec4<u32>(23804u, global0.c.x, u_input.a, var_2.c.x)) % vec4<u32>(32u)));
    var_0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1000f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e + var_1.x))), reverseBits(reverseBits(max(vec2<i32>(13807i, var_3), firstTrailingBit(vec2<i32>(var_3, var_3))))));
}

