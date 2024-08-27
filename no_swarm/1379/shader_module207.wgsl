struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-51590i, 0i, 0i);

var<private> global1: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(1326u, 0u, 1u, 0u));

var<private> global2: f32;

var<private> global3: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = -vec4<i32>(-9391i, global0.x, -17261i, -global0.x);
    let var_1 = _wgslsmith_f_op_f32(-640f * -1000f);
    var var_2 = Struct_4(min(_wgslsmith_mult_i32(5305i, u_input.d >> (31172u % 32u)), reverseBits(firstLeadingBit(1i))) << (min(60897u, ~abs(4294967295u)) % 32u), Struct_1(_wgslsmith_div_i32(~arg_0.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_0.yz, global0.xx), 28476i)), arg_0.x, firstTrailingBit(u_input.b.x)), min(~select(1u, ~37146u, any(vec2<bool>(true, false))), 5659u), -2147483647i);
    var var_3 = Struct_4(max(firstLeadingBit(_wgslsmith_clamp_i32(abs(-19092i), _wgslsmith_mult_i32(var_2.a, u_input.c), var_0.x & 2147483647i)), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(arg_0, -vec2<i32>(2147483647i, -1i)), select(global0.yz << (u_input.b % vec2<u32>(32u)), abs(global0.yx), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))))), var_2.b, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 52344u, u_input.b.x, 52566u), global1[_wgslsmith_index_u32(1u, 1u)]), firstLeadingBit(u_input.a), u_input.a), reverseBits(u_input.b.x)), firstLeadingBit(select(global0.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_2.d, -2147483647i, u_input.d), vec4<i32>(var_0.x, var_0.x, 20257i, var_2.d)), true)));
    global1 = array<vec4<u32>, 1>();
    return -674f;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: i32, arg_3: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-1797f, 920f), vec2<f32>(2894f, -191f)))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-836f, 140f))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1695f * var_0.x), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - 1024f)) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0.xx)))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-1234f * _wgslsmith_f_op_f32(min(var_0.x, -1927f)))), -607f));
    var var_2 = ~0u;
    let var_3 = ~(arg_2 | _wgslsmith_add_i32(~0i >> (~u_input.b.x % 32u), (arg_0.x ^ global0.x) & select(arg_2, -1i, arg_3)));
    var var_4 = Struct_3(countOneBits(max(global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 1u)], ~global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(62221u, 9114u, 4294967295u), 1u)])), !vec2<bool>(true, all(vec3<bool>(arg_3, arg_1, true))), Struct_1(_wgslsmith_div_i32(-arg_0.x & 1i, ~(-35118i)), select(43747i, abs(1i), true), u_input.a ^ ~59857u), select(global0.x, ~var_3, arg_3));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1497f, -1003f))) * vec2<f32>(-1000f, -117f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-382f, 1000f) - vec2<f32>(-1013f, 1286f)))) - vec2<f32>(_wgslsmith_f_op_f32(min(-1836f, _wgslsmith_f_op_f32(abs(-284f)))), _wgslsmith_f_op_f32(func_2(firstLeadingBit(vec3<i32>(global0.x, 669i, global0.x)), true, u_input.c, true)))));
    var var_1 = false;
    global1 = array<vec4<u32>, 1>();
    let var_2 = Struct_4(-countOneBits(-(0i ^ global0.x)), Struct_1(~global0.x, -(~(i32(-1i) * -8331i)), _wgslsmith_mult_u32(abs(89515u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b))), u_input.a, -u_input.c);
    var var_3 = var_2;
    return Struct_4(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(-1i, -14380i, 38223i)), -vec3<i32>(u_input.c, 0i, var_2.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.x, -1i, -1i), vec3<i32>(global0.x, -19887i, -35801i), vec3<i32>(global0.x, 0i, 27472i))), select(~vec3<i32>(var_3.d, global0.x, var_2.b.b), max(vec3<i32>(var_2.d, 50890i, 1i), vec3<i32>(var_3.a, u_input.d, -1i)), vec3<bool>(true, true, true))), abs(vec3<i32>(-2147483647i, 4066i, var_2.d))), var_2.b, firstTrailingBit(reverseBits(64690u)) << (4294967295u % 32u), ~_wgslsmith_div_i32(~1i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = vec3<i32>(-2147483647i, (-33391i & ~var_0.b.b) & -38629i, -5543i) ^ _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(-1i, global0.x, var_0.d), vec3<i32>(-10867i, 22033i, 3344i), false), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, u_input.c, -29224i), vec3<i32>(37041i, 2147483647i, global0.x))) & _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, global0.x, -2147483647i), vec3<i32>(26713i, u_input.c, 1i) | vec3<i32>(1i, u_input.d, 7791i)), vec3<i32>(global0.x | firstTrailingBit(-75565i), -45084i, u_input.c));
    global1 = array<vec4<u32>, 1>();
    let var_1 = false;
    let var_2 = Struct_3(reverseBits(_wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(~(u_input.b.x & 4294967295u), 1u)], _wgslsmith_clamp_vec4_u32(select(vec4<u32>(42020u, 0u, 0u, 1u), vec4<u32>(4294967295u, 100030u, var_0.c, u_input.b.x), vec4<bool>(var_1, false, true, var_1)), ~global1[_wgslsmith_index_u32(49816u, 1u)], abs(vec4<u32>(4294967295u, 1u, var_0.b.c, 36412u))))), vec2<bool>(all(select(!vec4<bool>(var_1, false, true, false), !vec4<bool>(true, var_1, true, true), var_1)), _wgslsmith_f_op_f32(step(-1389f, -103f)) < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(655f + -1146f), _wgslsmith_div_f32(981f, -345f), true))), func_1().b, firstLeadingBit(_wgslsmith_sub_i32(~(~0i), 17113i ^ ~u_input.c)));
    global1 = array<vec4<u32>, 1>();
    global1 = array<vec4<u32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1866f, 1858f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0.yz)) * -1948f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1131f, -1430f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-830f * 644f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(998f, -1149f) + -1588f))), var_2.c.c);
}

