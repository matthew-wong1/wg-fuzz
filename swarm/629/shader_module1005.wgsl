struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: Struct_3,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 12> = array<vec3<f32>, 12>(vec3<f32>(224f, -208f, -179f), vec3<f32>(351f, 1682f, 176f), vec3<f32>(1591f, 593f, -1644f), vec3<f32>(437f, 645f, -678f), vec3<f32>(1879f, 274f, 1886f), vec3<f32>(2244f, 189f, 1000f), vec3<f32>(-732f, -1344f, -1730f), vec3<f32>(2076f, -179f, -1342f), vec3<f32>(473f, -678f, 1612f), vec3<f32>(1000f, 1887f, 626f), vec3<f32>(532f, -394f, -599f), vec3<f32>(-1064f, 343f, -207f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_2, arg_3: vec2<bool>) -> vec3<bool> {
    global0 = array<vec3<f32>, 12>();
    var var_0 = arg_2;
    let var_1 = arg_0.wzw;
    var var_2 = arg_2.b.x;
    return var_0.b.wxy;
}

fn func_3(arg_0: u32, arg_1: Struct_4) -> vec2<f32> {
    var var_0 = min(select(-max(vec4<i32>(arg_1.b, -2147483647i, arg_1.b, arg_1.b), vec4<i32>(15852i, arg_1.b, u_input.d, 2487i)), vec4<i32>(arg_1.b | arg_1.b, _wgslsmith_sub_i32(arg_1.b, -1i), -30450i, u_input.a.x), func_1(vec4<u32>(arg_0, 62188u, 1u, 1u), false, Struct_2(vec3<i32>(u_input.d, -1i, 4848i), vec4<bool>(false, arg_1.a.c.x, arg_1.d.x, false), 101f, 830f, vec4<f32>(-1637f, -306f, arg_1.a.e.x, -639f)), vec2<bool>(arg_1.d.x, arg_1.a.c.x)).x || !arg_1.a.c.x) ^ -max(firstLeadingBit(vec4<i32>(1i, arg_1.b, -9283i, 2147483647i)), firstTrailingBit(u_input.b)), vec4<i32>(-(~reverseBits(arg_1.b)), u_input.d, -52256i, -18932i));
    let var_1 = reverseBits(arg_0);
    var var_2 = arg_1.a.e.x;
    var_0 = _wgslsmith_clamp_vec4_i32(abs(u_input.b), _wgslsmith_add_vec4_i32(reverseBits(countOneBits(u_input.b)), vec4<i32>(2147483647i, ~var_0.x, arg_1.b, -16851i)) ^ firstLeadingBit(min(vec4<i32>(arg_1.b, u_input.a.x, 45079i, 1i), u_input.b)), select(_wgslsmith_div_vec4_i32(reverseBits(firstLeadingBit(vec4<i32>(8953i, arg_1.b, arg_1.b, arg_1.b))), vec4<i32>(-1i) * -vec4<i32>(var_0.x, var_0.x, 1923i, -56790i)), ~(min(vec4<i32>(var_0.x, -10361i, u_input.b.x, u_input.d), u_input.b) & ~u_input.b), !select(select(vec4<bool>(arg_1.a.c.x, arg_1.d.x, arg_1.a.c.x, arg_1.d.x), vec4<bool>(false, arg_1.d.x, true, true), arg_1.a.c.x), vec4<bool>(arg_1.d.x, arg_1.a.c.x, false, false), select(vec4<bool>(true, arg_1.a.c.x, arg_1.a.c.x, arg_1.d.x), vec4<bool>(true, true, arg_1.a.c.x, arg_1.a.c.x), vec4<bool>(false, true, arg_1.a.c.x, false)))));
    var_0 = min(max(-vec4<i32>(min(u_input.d, u_input.a.x), firstTrailingBit(-2147483647i), -1i << (arg_0 % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(20560i, -10821i, -1i, arg_1.b), u_input.b)), u_input.b), vec4<i32>(~(~(-48504i)), -arg_1.b, -1964i, ~(~reverseBits(0i))));
    return arg_1.a.b.a;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: i32) -> Struct_2 {
    var var_0 = false;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_1, arg_1), vec2<f32>(-127f, -171f))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, arg_1)))), vec2<f32>(_wgslsmith_f_op_f32(1000f + arg_1), 582f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, -296f, 1151f), vec3<f32>(721f, arg_1, arg_1))), vec3<f32>(arg_1, _wgslsmith_f_op_f32(-arg_1), -1364f)))));
    var var_2 = Struct_5(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, ~(~1u), ~(~u_input.e), reverseBits(~64239u)), vec4<u32>(_wgslsmith_mod_u32(u_input.e, 6428u) & _wgslsmith_clamp_u32(1u, 2355u, 4294967295u), ~1u, ~(u_input.c.x >> (41091u % 32u)), u_input.c.x)), vec2<u32>(4294967295u, ~abs(u_input.c.x) | _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 1u, u_input.c.x, 33237u), vec4<u32>(u_input.c.x, u_input.c.x, 16251u, u_input.e)), u_input.e)), Struct_3(~(1u & (u_input.c.x << (u_input.e % 32u))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(0u, Struct_4(Struct_3(23723u, Struct_1(var_1.b.yz, vec3<f32>(-850f, -127f, var_1.a.x)), vec3<bool>(false, true, false), 51782u, var_1.b.yz), u_input.a.x, vec4<u32>(4294967295u, 4533u, 13645u, 10782u), vec3<bool>(true, false, true))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_1, var_1.b.x))))), vec3<bool>(true, all(vec4<bool>(false, true, false, false)), true), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(80820u, u_input.c.x, 4294967295u, u_input.e), vec4<u32>(79060u, u_input.e, u_input.e, 45657u))), vec2<f32>(arg_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_div_f32(-1345f, var_1.a.x))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b))), global0[_wgslsmith_index_u32(3875u, 12u)], ((u_input.b.x & 14031i) | (0i << (u_input.e % 32u))) < 0i)), func_1(vec4<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.e, 1u, 22199u, u_input.e)), ~vec4<u32>(u_input.e, 37567u, u_input.c.x, u_input.e)), ~1u, ~u_input.c.x, ~(0u & u_input.c.x)), (0u > firstTrailingBit(1497u)) && (true || (u_input.a.x < arg_0)), Struct_2(-countOneBits(u_input.b.zyw), vec4<bool>(true, true, true, true), arg_1, _wgslsmith_f_op_vec2_f32(func_3(~3218u, Struct_4(Struct_3(0u, Struct_1(vec2<f32>(2166f, arg_1), var_1.b), vec3<bool>(true, false, false), 0u, var_1.a), -10894i, vec4<u32>(1u, 4294967295u, 15998u, u_input.e), vec3<bool>(true, true, true)))).x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1144f, arg_1, arg_1, var_1.a.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-626f, 1191f, -2610f, var_1.b.x)))), vec2<bool>(true, true)).yz);
    var var_3 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32((u_input.c >> (u_input.c % vec2<u32>(32u))) ^ ~var_2.b, vec2<u32>(492u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(~5874u, 1u), vec2<u32>(min(130479u >> (1u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.b.x, u_input.e, 77068u), var_2.a.xzw)), 65483u)));
    var var_4 = arg_1;
    return Struct_2(firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, arg_2), max(u_input.b.x, arg_0 << (1u % 32u)), ~arg_0)), vec4<bool>(var_1.b.x != _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b.x, -899f) * _wgslsmith_f_op_f32(arg_1 * -428f)), false, any(select(select(vec4<bool>(true, true, var_2.e.x, false), vec4<bool>(false, var_2.c.c.x, true, false), vec4<bool>(var_2.e.x, var_2.e.x, var_2.e.x, var_2.e.x)), select(vec4<bool>(var_2.e.x, true, false, var_2.c.c.x), vec4<bool>(var_2.c.c.x, var_2.c.c.x, true, false), var_2.c.c.x), all(var_2.c.c))), _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 1i), -vec2<i32>(0i, u_input.d)) >= _wgslsmith_div_i32(select(u_input.d, 37920i, false), countOneBits(arg_2))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_2.c.e.x, -1000f)), arg_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -233f) - _wgslsmith_f_op_f32(var_1.a.x + var_2.d.x)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -237f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_1, var_2.c.e.x)), _wgslsmith_f_op_f32(-var_2.d.x), true)), arg_1)));
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = 6468i;
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -456f), -1568f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1080f), _wgslsmith_f_op_f32(1413f + 102f), 979f)))));
    global0 = array<vec3<f32>, 12>();
    global0 = array<vec3<f32>, 12>();
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(2943u, ~min(u_input.e, u_input.c.x)) & _wgslsmith_dot_vec2_u32(u_input.c << (u_input.c % vec2<u32>(32u)), u_input.c << (u_input.c % vec2<u32>(32u))), u_input.c.x, max(0u, ~(~u_input.e)) & u_input.c.x, 50358u);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 12>();
    let var_0 = func_4(select(select(!func_1(vec4<u32>(u_input.e, u_input.c.x, 1u, 91951u), true, Struct_2(vec3<i32>(0i, 50039i, u_input.a.x), vec4<bool>(false, true, false, false), 1387f, 1923f, vec4<f32>(-743f, 1202f, 949f, 478f)), vec2<bool>(false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), select(func_1(vec4<u32>(u_input.e, u_input.e, u_input.c.x, u_input.e) & vec4<u32>(u_input.c.x, 1u, 50514u, 42868u), true, func_2(u_input.a.x, -481f, 1i), func_2(13173i, 379f, 2147483647i).b.xx), vec3<bool>(true, true, true), false), select(vec3<bool>(any(vec3<bool>(false, false, false)), true, true), func_2(u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1194f), _wgslsmith_sub_i32(86028i, -9344i)).b.yyy, true)), ~max(-2147483647i, u_input.a.x), !vec2<bool>(all(vec4<bool>(true, true, true, true)), func_1(~vec4<u32>(4632u, u_input.e, u_input.c.x, 4294967295u), false, func_2(18305i, -1000f, 1i), vec2<bool>(true, true)).x));
    var var_1 = any(!vec2<bool>(true, _wgslsmith_div_i32(21450i, u_input.a.x) != (i32(-1i) * -22911i)));
    var_1 = func_1(_wgslsmith_mult_vec4_u32(max(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, u_input.c.x, 1u, u_input.c.x), vec4<u32>(u_input.c.x, 0u, 40401u, 37354u)), min(vec4<u32>(1u, 56333u, u_input.e, u_input.e), vec4<u32>(44214u, u_input.c.x, 32142u, 87655u)) >> (~vec4<u32>(u_input.e, 93269u, u_input.e, u_input.c.x) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 28585u, u_input.e), ~vec4<u32>(u_input.e, u_input.e, 2495u, u_input.e)) << ((~vec4<u32>(u_input.c.x, 55413u, u_input.c.x, 1u) << (firstTrailingBit(vec4<u32>(u_input.e, u_input.c.x, u_input.c.x, u_input.c.x)) % vec4<u32>(32u))) % vec4<u32>(32u))), all(vec4<bool>(all(vec4<bool>(true, true, true, true)), all(vec3<bool>(false, false, false)), !(u_input.e >= u_input.c.x), all(vec3<bool>(true, true, true)))), Struct_2(u_input.a, func_2(_wgslsmith_dot_vec2_i32(u_input.b.ww, u_input.a.xx) ^ (i32(-1i) * -2147483647i), _wgslsmith_f_op_vec2_f32(func_3(u_input.e, Struct_4(Struct_3(26085u, Struct_1(var_0.a, vec3<f32>(var_0.b.x, var_0.b.x, 808f)), vec3<bool>(true, true, true), 1u, var_0.b.zz), 1i, vec4<u32>(u_input.e, 43689u, u_input.c.x, u_input.c.x), vec3<bool>(false, false, true)))).x, 0i).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(select(var_0.a.x, -658f, false))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(var_0.a.x)), func_4(vec3<bool>(false, true, true), u_input.b.x, vec2<bool>(true, true)).b.x, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1492f, -684f, 751f, 355f)))), func_2(_wgslsmith_mult_i32(firstTrailingBit(1i), 1i) & max(select(u_input.a.x, 2147483647i, false), u_input.b.x), -1383f, _wgslsmith_add_i32(u_input.d, u_input.b.x)).b.yw).x;
    var var_2 = !vec3<bool>(func_2(2147483647i, _wgslsmith_f_op_f32(ceil(-1825f)), _wgslsmith_dot_vec2_i32(-u_input.a.zy, func_2(31286i, 679f, u_input.b.x).a.yy)).b.x, false, any(func_2(-2147483647i, _wgslsmith_div_f32(-309f, -306f), -2147483647i).b));
    var var_3 = var_0.a.x;
    var_1 = func_2(u_input.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(383f - var_0.b.x))), -9112i).b.x;
    var_1 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(~max(u_input.b.x, 27756i), u_input.a.x), _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.d, -1i) >> (u_input.c % vec2<u32>(32u)), vec2<i32>(-2147483647i, 53363i)), vec2<i32>(u_input.d, 1i))) <= u_input.d;
    let var_4 = max(~(~(~firstLeadingBit(vec3<u32>(4294967295u, u_input.e, 16568u)))), vec3<u32>(u_input.e, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 21897u, 4294967295u), vec3<u32>(3753u, u_input.c.x, u_input.c.x)) & vec3<u32>(u_input.c.x, u_input.c.x, u_input.e), countOneBits(abs(vec3<u32>(0u, 6899u, u_input.c.x)))), 1u << (firstTrailingBit(firstTrailingBit(1u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x, ~(var_4.x >> (_wgslsmith_add_u32(~u_input.e, _wgslsmith_dot_vec3_u32(var_4, vec3<u32>(0u, u_input.e, var_4.x))) % 32u)), ~39663u, u_input.d, countOneBits(~var_4 ^ var_4) ^ vec3<u32>(6139u, ~_wgslsmith_div_u32(u_input.c.x, u_input.e), _wgslsmith_add_u32(u_input.c.x, var_4.x) ^ abs(6482u)));
}

