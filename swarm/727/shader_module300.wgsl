struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

var<private> global1: vec4<i32>;

var<private> global2: array<vec2<f32>, 2>;

var<private> global3: array<bool, 11>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(231f - _wgslsmith_div_f32(1613f, 950f));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(~(~u_input.a.yy), vec2<u32>(3553u, max(u_input.c, u_input.a.x)), vec2<u32>(u_input.c, ~u_input.c)), ~vec2<u32>(4294967295u, 1u ^ ~u_input.c));
    global2 = array<vec2<f32>, 2>();
    global2 = array<vec2<f32>, 2>();
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(621f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-518f + 564f), -225f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1420f - 354f) - _wgslsmith_f_op_f32(func_2()))))));
    global1 = ~_wgslsmith_sub_vec4_i32(min(-u_input.b, -u_input.b), u_input.b ^ ~u_input.b) << (_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_0.x, u_input.c, 4294967295u, var_0.x) ^ abs(vec4<u32>(15609u, u_input.a.x, 41083u, 1u))), vec4<u32>(~(~var_0.x), var_0.x, var_0.x, 7347u), vec4<u32>(~(~var_0.x), min(_wgslsmith_clamp_u32(var_0.x, 1u, 0u), ~var_0.x), u_input.a.x >> (31314u % 32u), ~u_input.a.x)) % vec4<u32>(32u));
    return u_input.b.x;
}

fn func_1() -> i32 {
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.c, 12u)], vec2<i32>(-2147483647i, global1.x));
    let var_1 = Struct_4(global3[_wgslsmith_index_u32(0u, 11u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * var_0.a.a.x), global0[_wgslsmith_index_u32(30533u, 12u)], u_input.b.x, func_3());
    global3 = array<bool, 11>();
    global0 = array<Struct_1, 12>();
    var var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(select(reverseBits(u_input.a.zy << (u_input.a.xz % vec2<u32>(32u))), vec2<u32>(u_input.a.x, u_input.a.x) & vec2<u32>(u_input.c, u_input.c), select(select(vec2<bool>(var_1.a, true), vec2<bool>(true, var_1.a), vec2<bool>(false, global3[_wgslsmith_index_u32(40706u, 11u)])), !vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 11u)], global3[_wgslsmith_index_u32(u_input.c, 11u)]), vec2<bool>(true, true))), ~(~u_input.a.xx) & _wgslsmith_mult_vec2_u32(vec2<u32>(7079u, 0u), u_input.a.zy)), ~(u_input.a.yx ^ select(vec2<u32>(u_input.c, 68777u) | u_input.a.zz, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 60515u), vec2<u32>(u_input.c, u_input.c)), true)));
    return _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(~_wgslsmith_div_vec2_i32(var_0.b, u_input.b.zx) | vec2<i32>(1i, u_input.b.x), _wgslsmith_sub_vec2_i32(vec2<i32>(abs(var_0.b.x), -1i), vec2<i32>(_wgslsmith_mod_i32(global1.x, -2147483647i), var_0.b.x))), ~var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_u32(~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c, u_input.a.x, 35704u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, u_input.a.x)))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(~0u, 0u), 1u), u_input.c, 4294967295u, 1u));
    global1 = vec4<i32>(_wgslsmith_mod_i32(9170i, 34867i), global1.x, 24872i, func_1());
    var var_1 = u_input.b;
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2040f, 1608f, -724f, 238f) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1026f, -472f, -1028f, -511f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(672f, -2404f, -844f, 387f), vec4<f32>(-357f, 1365f, -442f, 383f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1269f, -747f, 1748f, 426f) - vec4<f32>(-2215f, -1000f, 208f, 163f)), vec4<bool>(false, global3[_wgslsmith_index_u32(16998u, 11u)], false, global3[_wgslsmith_index_u32(1u, 11u)]))))));
    var var_3 = Struct_4(false, 352f, global0[_wgslsmith_index_u32(~var_0.x, 12u)], -_wgslsmith_div_i32(1i, 1i), max(~countOneBits(-17321i), -1i));
    let x = u_input.a;
    s_output = StorageBuffer(38261u, _wgslsmith_clamp_u32(countOneBits(63745u), ~(~u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(32261u, 60409u, u_input.a.x, 16908u) << (vec4<u32>(18805u, var_0.x, var_0.x, 0u) % vec4<u32>(32u)), select(abs(vec4<u32>(60276u, var_0.x, 15932u, 8956u)), vec4<u32>(var_0.x, 2093u, 34353u, 108063u), all(vec3<bool>(false, true, var_3.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-609f + 1824f)), -_wgslsmith_mod_i32(var_3.d, u_input.b.x), vec4<u32>(u_input.c, ((var_0.x ^ u_input.c) ^ ~14997u) << ((1u | _wgslsmith_div_u32(u_input.c, 30951u)) % 32u), firstLeadingBit(u_input.a.x << (firstTrailingBit(52930u) % 32u)), 1u));
}

