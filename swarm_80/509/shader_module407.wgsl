struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(-2162i, 82558i), vec2<i32>(-1i, 27533i), vec2<i32>(-13911i, -33032i), vec2<i32>(i32(-2147483648), 8590i), vec2<i32>(-1i, -40882i), vec2<i32>(-16098i, -13901i), vec2<i32>(2147483647i, -71906i), vec2<i32>(-1i, 23438i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 3856i), vec2<i32>(-21618i, 2147483647i), vec2<i32>(4925i, 1i), vec2<i32>(2147483647i, 18539i), vec2<i32>(-8859i, -30428i), vec2<i32>(-32089i, 1i), vec2<i32>(1i, -15715i), vec2<i32>(2147483647i, -43859i), vec2<i32>(1i, -4824i));

var<private> global1: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false));

var<private> global2: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(-1338f, -258f), vec2<f32>(1000f, 1255f), vec2<f32>(507f, -2137f), vec2<f32>(584f, -1371f), vec2<f32>(1073f, 354f), vec2<f32>(819f, -985f), vec2<f32>(-157f, 1394f), vec2<f32>(281f, 243f), vec2<f32>(1701f, -1110f), vec2<f32>(393f, -966f), vec2<f32>(1219f, 288f), vec2<f32>(279f, 1792f), vec2<f32>(-585f, -1557f), vec2<f32>(454f, -585f), vec2<f32>(823f, -432f), vec2<f32>(724f, -995f), vec2<f32>(-140f, 632f), vec2<f32>(-956f, 1506f), vec2<f32>(-512f, -1628f), vec2<f32>(-617f, -932f), vec2<f32>(716f, -1043f), vec2<f32>(1000f, 246f), vec2<f32>(-1000f, 1410f), vec2<f32>(-590f, -687f), vec2<f32>(1757f, 326f), vec2<f32>(-296f, -269f), vec2<f32>(-1626f, 705f), vec2<f32>(-125f, -1150f), vec2<f32>(805f, -1436f));

var<private> global3: vec3<i32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>) -> i32 {
    global2 = array<vec2<f32>, 29>();
    var var_0 = ~firstLeadingBit(arg_0.x);
    global3 = arg_1;
    var_0 = 33843u;
    global3 = arg_1;
    return 474i;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>) -> Struct_3 {
    global3 = firstTrailingBit(vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(arg_0.e | arg_0.e, arg_0.e));
    global3 = ~(vec3<i32>(-1i) * -arg_0.e);
    var var_0 = Struct_4(true != arg_0.d.x, Struct_3(_wgslsmith_clamp_vec4_u32(min(min(vec4<u32>(arg_0.c.x, 0u, 1u, arg_2.x), vec4<u32>(1u, arg_0.c.x, arg_0.c.x, arg_2.x)), ~vec4<u32>(0u, 4294967295u, 4294967295u, arg_0.c.x)), vec4<u32>(arg_2.x, arg_2.x, 43185u, firstLeadingBit(78313u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.c.x, arg_2.x, 4294967295u, arg_2.x), abs(vec4<u32>(arg_0.c.x, 69046u, arg_2.x, arg_2.x)))), _wgslsmith_mult_i32(~u_input.a, u_input.a)), Struct_1(~_wgslsmith_sub_i32(-10740i, _wgslsmith_clamp_i32(global3.x, 20364i, 0i)), 2147483647i, abs(vec2<u32>(20903u, arg_2.x)) & vec2<u32>(_wgslsmith_mult_u32(14191u, 1u), 1u), !select(!global1[_wgslsmith_index_u32(arg_0.c.x, 27u)], global1[_wgslsmith_index_u32(select(arg_0.c.x, 4294967295u, arg_1), 27u)], true), vec3<i32>(arg_0.a, u_input.a, func_3(vec4<u32>(25661u, 64047u, 0u, arg_0.c.x), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, global3.x, global3.x), vec3<i32>(17042i, -2147483647i, 48255i))))));
    global1 = array<vec3<bool>, 27>();
    let var_1 = Struct_2(1u, Struct_1(~u_input.a & (arg_0.e.x | -2147483647i), var_0.c.a, vec2<u32>(4294967295u, _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_2.x, arg_0.c.x), ~arg_0.c.x)), arg_0.d, arg_0.e), ~arg_0.e.x, arg_0);
    return var_0.b;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    var var_0 = Struct_4(false, Struct_3(vec4<u32>(arg_2.a.x, ~(~arg_2.a.x), _wgslsmith_mult_u32(abs(arg_3.a.x), 1u), 4294967295u), arg_1), Struct_1(-arg_1, ~(func_2(Struct_1(-36807i, arg_3.b, arg_2.a.xw, global1[_wgslsmith_index_u32(arg_0, 27u)], vec3<i32>(arg_1, u_input.a, 58196i)), false, arg_3.a.wyy).b ^ 15707i), vec2<u32>(arg_0, arg_2.a.x), select(!select(vec3<bool>(false, false, true), global1[_wgslsmith_index_u32(1u, 27u)], vec3<bool>(true, false, true)), !(!global1[_wgslsmith_index_u32(arg_3.a.x, 27u)]), true), vec3<i32>(_wgslsmith_div_i32(2147483647i, i32(-1i) * -2147483647i), _wgslsmith_div_i32(global3.x, arg_1) << (countOneBits(36535u) % 32u), _wgslsmith_div_i32(-1i, ~global3.x))));
    var var_1 = Struct_4(false, Struct_3(_wgslsmith_div_vec4_u32(~vec4<u32>(var_0.b.a.x, arg_0, 19500u, 4294967295u), firstLeadingBit(arg_2.a) << (_wgslsmith_mult_vec4_u32(var_0.b.a, vec4<u32>(32492u, arg_0, arg_3.a.x, 1u)) % vec4<u32>(32u))), _wgslsmith_mult_i32(~(var_0.c.b & var_0.c.e.x), _wgslsmith_sub_i32(2147483647i, arg_3.b) << (16127u % 32u))), var_0.c);
    var var_2 = max(~select(vec4<i32>(~0i, _wgslsmith_clamp_i32(var_1.b.b, 2147483647i, arg_1), func_3(arg_2.a, vec3<i32>(u_input.a, var_0.b.b, 0i)), _wgslsmith_dot_vec2_i32(global3.zx, vec2<i32>(global3.x, 2147483647i))), ~(~vec4<i32>(-1i, -2147483647i, 1i, 1i)), vec4<bool>(all(vec4<bool>(var_1.a, false, false, var_1.c.d.x)), true, !var_1.c.d.x, var_1.a && var_0.a)), vec4<i32>(func_2(var_0.c, any(vec4<bool>(true, false, var_1.c.d.x, true)), ~arg_2.a.yzx).b ^ ~_wgslsmith_mult_i32(30506i, -31079i), var_0.c.a, select(-var_1.c.a, ~arg_1, var_1.c.d.x), var_0.c.e.x));
    global2 = array<vec2<f32>, 29>();
    let var_3 = func_2(var_0.c, true, var_1.b.a.xwz).b;
    return var_0.c;
}

fn func_1() -> Struct_4 {
    var var_0 = -vec3<i32>(u_input.a, u_input.a, _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), 16162i));
    return Struct_4(_wgslsmith_clamp_u32(0u, ~1u, ~1u) <= ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 132489u, 20340u, 0u), vec4<u32>(1u, 1u, 74865u, 0u))), Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(1u, ~0u, _wgslsmith_mod_u32(36989u, 1542u), 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 0u, 60519u), vec4<u32>(46321u, 62812u, 1u, 1u), vec4<u32>(107340u, 0u, 0u, 4294967295u)) ^ reverseBits(vec4<u32>(25541u, 51624u, 0u, 14115u))), 47653i), func_4(4294967295u, 1i, Struct_3(vec4<u32>(4294967295u, _wgslsmith_mult_u32(12668u, 1u), 2510u, ~51132u), firstTrailingBit(~global3.x)), func_2(Struct_1(47982i, -6155i, vec2<u32>(4294967295u, 4294967295u), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), countOneBits(vec3<i32>(0i, var_0.x, var_0.x))), false, _wgslsmith_mult_vec3_u32(~vec3<u32>(40932u, 1u, 1u), vec3<u32>(1u, 1u, 1u)))));
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: vec2<bool>, arg_3: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1325f - -566f), _wgslsmith_f_op_f32(-179f - arg_1)))), arg_1, -2285f, -944f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, 144f, 1281f, arg_1), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, 1000f) - vec4<f32>(826f, -919f, arg_1, 1551f)))))));
    let var_1 = func_1().b;
    let var_2 = func_4(8318u, global3.x, func_2(func_4(_wgslsmith_clamp_u32(~26440u, 1u, min(arg_3.b.a.x, 25635u)), abs(-1i), func_1().b, func_1().b), true, firstTrailingBit(_wgslsmith_mod_vec3_u32(arg_3.b.a.xyw, arg_0.b.a.www))), func_2(arg_0.c, !((var_1.a.x >> (arg_3.b.a.x % 32u)) < ~arg_3.c.c.x), vec3<u32>(~1u, arg_3.c.c.x, ~(~arg_3.c.c.x))));
    var var_3 = (abs(arg_3.b.a.x) ^ reverseBits(1u)) == arg_3.b.a.x;
    let var_4 = -214f;
    return Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(firstLeadingBit(41436u), firstLeadingBit(105269u)), _wgslsmith_div_vec2_u32(var_1.a.xz, arg_3.c.c)), arg_3.c.c), Struct_1(~((arg_3.c.a ^ global3.x) & (0i << (arg_3.c.c.x % 32u))), -8030i, countOneBits(var_2.c), global1[_wgslsmith_index_u32(~1u, 27u)], firstLeadingBit(-select(vec3<i32>(arg_0.b.b, 20504i, 0i), var_2.e, global1[_wgslsmith_index_u32(0u, 27u)]))), _wgslsmith_mod_i32(func_2(arg_3.c, false, min(~arg_3.b.a.yxx, vec3<u32>(67110u, 4294967295u, arg_0.b.a.x))).b, arg_3.c.a), func_1().c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = func_5(func_1(), _wgslsmith_div_f32(100f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -688f), _wgslsmith_f_op_f32(trunc(-1049f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(333f)) * _wgslsmith_f_op_f32(2450f - -390f)))), func_4(reverseBits(max(~0u, 0u >> (0u % 32u))), global3.x, func_1().b, Struct_3(vec4<u32>(~4294967295u, ~12491u, ~76059u, 4294967295u), -2147483647i)).d.zy, Struct_4(any(vec4<bool>(true, global3.x < -2147483647i, true, true)), func_1().b, Struct_1(-11146i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -1323i), global0[_wgslsmith_index_u32(1u, 18u)]) << (firstLeadingBit(4294967295u) % 32u), ~(~vec2<u32>(107276u, 82114u)), !(!global1[_wgslsmith_index_u32(10491u, 27u)]), func_4(~1u, min(u_input.a, -34183i), Struct_3(vec4<u32>(0u, 4125u, 0u, 17414u), u_input.a), Struct_3(vec4<u32>(0u, 142817u, 1u, 1u), -10493i)).e)));
    var var_2 = var_1.b.d.x;
    global0 = array<vec2<i32>, 18>();
    let var_3 = ~abs(_wgslsmith_div_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(40974u, var_1.d.c.x), var_1.a), reverseBits(vec3<u32>(1u, var_1.a, var_1.d.c.x))));
    let var_4 = Struct_4(true, Struct_3(_wgslsmith_div_vec4_u32(func_2(func_4(var_3.x, var_0, Struct_3(vec4<u32>(var_1.d.c.x, 1u, var_3.x, 1u), -1i), Struct_3(vec4<u32>(var_3.x, 92651u, 22934u, 4294967295u), var_0)), true, var_3).a, vec4<u32>(var_3.x, var_1.d.c.x, 4294967295u, 4294967295u) << (~vec4<u32>(var_1.d.c.x, 27292u, 1u, 45096u) % vec4<u32>(32u))), var_1.c), func_1().c);
    global3 = vec3<i32>(var_1.c, -countOneBits(func_5(var_4, _wgslsmith_f_op_f32(select(-181f, 1708f, true)), vec2<bool>(var_4.c.d.x, var_1.d.d.x), func_1()).b.e.x), -u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(var_3 | ~(~var_3)));
}

