struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<i32>, 25>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_add_u32(41251u, 53018u), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, !select(true, any(vec2<bool>(true, false)), false)), ~u_input.c, vec4<i32>(max(2147483647i, firstTrailingBit(arg_1.c.x)), u_input.d, 0i, 0i), -_wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(-46969i), 0i, -8267i, arg_1.c.x), min(-vec4<i32>(-1221i, u_input.e, u_input.e, arg_0), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, arg_1.c.x, u_input.a.x, -1i), vec4<i32>(2147483647i, -42519i, arg_0, 1i)))));
    return vec4<i32>(abs(~(-min(-8555i, 2147483647i))), min(-1i, var_0.d.x), -(~u_input.d), 2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>) -> bool {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_mod_vec2_u32(u_input.b, min(min((vec2<u32>(u_input.c, 0u) << (arg_0.b.xz % vec2<u32>(32u))) ^ ~u_input.b, countOneBits(arg_0.b.yy) << (firstTrailingBit(vec2<u32>(arg_1.c, 0u)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(arg_0.b.yy, ~vec2<u32>(arg_1.c, 39856u) & _wgslsmith_div_vec2_u32(arg_0.b.xz, vec2<u32>(40454u, arg_0.b.x)))));
    var var_2 = -1288f;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1699f, arg_0.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, arg_0.a), _wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a, arg_0.a), vec2<f32>(arg_0.a, arg_0.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, -1272f) - vec2<f32>(-1691f, -1440f))))));
    let var_4 = -44834i;
    return !(!(!((arg_1.b.x && arg_1.b.x) || arg_1.b.x)));
}

fn func_2(arg_0: vec4<u32>) -> vec3<i32> {
    var var_0 = func_4(Struct_1(_wgslsmith_f_op_f32(1813f * -1128f), ~(vec3<u32>(34120u, 8806u, 0u) >> (~arg_0.yzz % vec3<u32>(32u))), vec3<i32>(~u_input.d, u_input.e << (41395u % 32u), ~u_input.d) ^ abs(-vec3<i32>(-37867i, 18667i, u_input.d))), Struct_2(_wgslsmith_clamp_u32(~(~u_input.b.x), 36871u, 7158u), vec3<bool>(true, false, !any(vec3<bool>(true, true, true))), 4294967295u, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, u_input.a.x, 21435i, -1i) | _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d, -2147483647i, u_input.a.x, u_input.e), vec4<i32>(u_input.d, u_input.a.x, 0i, u_input.e)), vec4<i32>(u_input.e, u_input.a.x, -52367i, 1i) ^ abs(vec4<i32>(24327i, u_input.a.x, u_input.d, -22034i))), ~func_3(u_input.d, Struct_1(1054f, vec3<u32>(arg_0.x, 5974u, 19448u), vec3<i32>(1i, u_input.d, -1i)))), -func_3(u_input.d, Struct_1(1139f, arg_0.yyx, vec3<i32>(-2147483647i, -1i, 837i))).zyw);
    global1 = array<vec2<i32>, 25>();
    global1 = array<vec2<i32>, 25>();
    global1 = array<vec2<i32>, 25>();
    let var_1 = vec3<u32>(1034u, 4853u, abs(u_input.b.x) & u_input.c);
    return -((vec3<i32>(abs(-6348i), u_input.d, i32(-1i) * -8974i) | ~(vec3<i32>(0i, u_input.a.x, u_input.d) << (vec3<u32>(u_input.c, var_1.x, 34735u) % vec3<u32>(32u)))) | vec3<i32>(-114400i, _wgslsmith_clamp_i32(1i, 1i, ~u_input.e), -1i));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>) -> Struct_1 {
    global1 = array<vec2<i32>, 25>();
    global1 = array<vec2<i32>, 25>();
    global0 = true & arg_1;
    global0 = select(all(!vec2<bool>(arg_1, true)), arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, arg_0.a)), arg_0.a)) <= _wgslsmith_f_op_f32(round(arg_0.a)));
    global1 = array<vec2<i32>, 25>();
    return arg_0;
}

fn func_1() -> i32 {
    let var_0 = func_5(Struct_1(1f, _wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b.x, 0u, 35700u)), ~vec3<u32>(47616u, 1u, 51999u), vec3<u32>(u_input.c, u_input.b.x, 4294967295u)) & vec3<u32>(u_input.b.x, _wgslsmith_sub_u32(4294967295u, u_input.b.x), _wgslsmith_mult_u32(1u, 1u)), func_2(vec4<u32>(14376u, 0u << (u_input.c % 32u), u_input.b.x, u_input.c))), true, global1[_wgslsmith_index_u32(4294967295u, 25u)]);
    global0 = true;
    global0 = all(select(!select(vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(true, true, true, true)), true, (var_0.a <= var_0.a) || true, false), vec4<bool>(true, true, true, true)));
    var var_1 = 0i;
    global0 = any(!select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), true));
    return abs(var_0.c.x);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_2 {
    global0 = !(_wgslsmith_add_u32(26597u, reverseBits(u_input.b.x)) <= ~(~u_input.b.x));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), arg_0.b, arg_1);
    var var_1 = all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true)), true), vec3<bool>(false, true, all(vec3<bool>(true, true, true))), select(true, _wgslsmith_mod_u32(1u, 67800u) == countOneBits(var_0.b.x), true)));
    var var_2 = func_5(Struct_1(_wgslsmith_f_op_f32(951f + 1000f), ~select(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b.x, 7841u, arg_0.b.x), arg_0.b), countOneBits(vec3<u32>(var_0.b.x, arg_0.b.x, 1u)), true), vec3<i32>(-35094i, u_input.e, -(~arg_0.c.x))), false, func_3(14389i, func_5(Struct_1(-1562f, vec3<u32>(78357u, var_0.b.x, u_input.b.x), arg_0.c), true, ~abs(arg_0.c.yz))).yw);
    var_2 = func_5(arg_0, true, select(u_input.a, _wgslsmith_mult_vec2_i32(vec2<i32>(-var_2.c.x, ~u_input.d), (vec2<i32>(u_input.a.x, 2147483647i) << (u_input.b % vec2<u32>(32u))) & -vec2<i32>(var_0.c.x, u_input.d)), select(select(vec2<bool>(false, false), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), vec2<bool>(true, true), true)));
    return Struct_2(~var_2.b.x, vec3<bool>(-21160i == -arg_0.c.x, false, true), select(1u, 14144u, true), vec4<i32>(_wgslsmith_div_i32(-(~arg_0.c.x), -_wgslsmith_mult_i32(var_0.c.x, -2147483647i)), -2147483647i, arg_0.c.x, -29813i), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(func_5(arg_0, false, vec2<i32>(-19766i, var_0.c.x)).c.x, -56962i >> (0u % 32u), _wgslsmith_dot_vec3_i32(var_2.c, vec3<i32>(3472i, arg_0.c.x, 20900i)), func_1()), ~(vec4<i32>(40257i, -2147483647i, -26058i, 2147483647i) >> (vec4<u32>(0u, 0u, var_2.b.x, 488u) % vec4<u32>(32u))), firstTrailingBit(func_3(var_0.c.x, Struct_1(-640f, arg_0.b, arg_0.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_1(-2519f, vec3<u32>(abs(1u), abs(countOneBits(17885u)), u_input.b.x), -(~(-vec3<i32>(0i, u_input.a.x, 2147483647i)))), vec3<i32>(-func_1(), _wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(4294967295u >> (0u % 32u), 25u)], _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, -22601i), global1[_wgslsmith_index_u32(52346u, 25u)])), -2147483647i) & func_5(Struct_1(-415f, firstLeadingBit(vec3<u32>(1u, u_input.c, u_input.b.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(u_input.a.x, -2147483647i, u_input.d))), func_4(func_5(Struct_1(1065f, vec3<u32>(1u, u_input.b.x, 42748u), vec3<i32>(u_input.d, -1i, u_input.d)), false, vec2<i32>(u_input.d, -20463i)), Struct_2(u_input.c, vec3<bool>(true, true, false), u_input.c, vec4<i32>(2147483647i, u_input.d, u_input.d, -2147483647i), vec4<i32>(u_input.e, u_input.a.x, 28180i, 34921i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.e, u_input.e, u_input.d), vec3<i32>(5482i, 0i, -1i), vec3<i32>(1i, -68429i, u_input.e))), global1[_wgslsmith_index_u32(u_input.c >> (u_input.c % 32u), 25u)]).c);
    let var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, u_input.c, 0u), max(vec3<u32>(93188u, 104179u, var_0.a), vec3<u32>(7355u, 32472u, u_input.b.x))), ~(vec3<u32>(var_0.a, 4294967295u, var_0.c) & vec3<u32>(1u, var_0.a, var_0.a)), !vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), ~max(abs(vec3<u32>(u_input.b.x, var_0.a, 4294967295u)), vec3<u32>(4294967295u, u_input.b.x, 4294967295u))), var_0.a, var_0.a);
    var_0 = func_6(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(1256f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2017f, 1000f)), true)), func_5(Struct_1(_wgslsmith_f_op_f32(trunc(181f)), vec3<u32>(var_0.a, 37677u, u_input.c), vec3<i32>(-2147483647i, 32399i, u_input.e) & vec3<i32>(-1226i, 1i, 1i)), func_6(func_5(Struct_1(-1068f, var_1, var_0.d.xxw), false, var_0.d.wz), var_0.e.wzz).b.x, _wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(u_input.d, 1i)), -vec2<i32>(2147483647i, u_input.a.x))).b, var_0.d.xwz), var_0.d.xxz);
    let var_2 = func_6(func_5(func_5(Struct_1(_wgslsmith_f_op_f32(614f - -171f), var_1, vec3<i32>(u_input.d, var_0.e.x, 1909i) << (vec3<u32>(var_0.c, 111969u, 16046u) % vec3<u32>(32u))), true, _wgslsmith_div_vec2_i32(reverseBits(var_0.d.xy), vec2<i32>(-14623i, u_input.a.x))), false, (vec2<i32>(-1i) * -var_0.d.xz) >> (vec2<u32>(var_0.c, u_input.c | 4294967295u) % vec2<u32>(32u))), vec3<i32>(-55429i, ~func_6(func_5(Struct_1(1137f, vec3<u32>(1u, 0u, u_input.b.x), vec3<i32>(var_0.e.x, 20970i, u_input.a.x)), var_0.b.x, u_input.a), vec3<i32>(u_input.a.x, u_input.a.x, var_0.d.x)).d.x, 0i));
    let var_3 = var_2;
    var var_4 = !var_0.b.zy;
    var var_5 = Struct_2(select(select(u_input.b.x, ~1u, var_4.x) >> (min(var_1.x, var_3.c) % 32u), _wgslsmith_mod_u32(u_input.c, 14318u & var_3.c), true), var_2.b, var_0.a, _wgslsmith_add_vec4_i32(vec4<i32>(~14493i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_3.d.x, 34751i), var_0.d.zzw), -2147483647i & var_3.e.x, var_0.e.x, -14614i), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(var_2.e.x, var_3.e.x), func_1(), _wgslsmith_mod_i32(25115i, var_2.d.x), 1i), vec4<i32>(18452i, 11883i, ~u_input.a.x, var_3.e.x))), -(~(~var_2.e)));
    var var_6 = select(max(var_5.e.ywx, _wgslsmith_sub_vec3_i32(var_5.e.xxz, func_2(vec4<u32>(var_1.x, 31925u, u_input.c, 1u)))), var_3.e.yxx, true);
    let var_7 = all(select(vec2<bool>(true, !var_2.b.x), !vec2<bool>(false, var_0.b.x), var_2.b.yz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(~(~var_5.e.zy), _wgslsmith_add_vec2_i32(var_2.d.wz, vec2<i32>(var_3.e.x << (var_1.x % 32u), ~var_0.d.x))));
}

