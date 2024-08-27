struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1937f;

var<private> global1: array<Struct_1, 18>;

var<private> global2: array<vec2<bool>, 22>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_div_f32(-1164f, _wgslsmith_f_op_f32(388f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(390f, 434f))) + _wgslsmith_f_op_f32(sign(299f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -137f))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(468f, -799f)))), any(!select(vec3<bool>(false, true, arg_1.x), vec3<bool>(arg_1.x, true, arg_1.x), false)))));
    var var_2 = Struct_2(Struct_1(!select(!vec3<bool>(arg_1.x, arg_1.x, true), arg_1, arg_1.x), arg_0.x, arg_1.x, vec4<u32>(4658u, _wgslsmith_clamp_u32(~0u, ~50760u, 1u >> (arg_0.x % 32u)), u_input.b.x, 0u), -_wgslsmith_mult_i32(-47116i, -6659i)), true, vec2<f32>(1295f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1418f))));
    var var_3 = Struct_1(select(vec3<bool>(!all(var_2.a.a), false, false), !vec3<bool>(false, !var_2.b, var_2.a.a.x), var_2.b), _wgslsmith_dot_vec3_u32(reverseBits(abs(vec3<u32>(var_2.a.d.x, 0u, 0u) << (var_2.a.d.yzz % vec3<u32>(32u)))), vec3<u32>(_wgslsmith_mod_u32(50648u, arg_0.x) | reverseBits(1u), u_input.b.x, u_input.b.x)), !arg_1.x, abs(~_wgslsmith_div_vec4_u32(var_2.a.d, vec4<u32>(var_2.a.d.x, 0u, 4294967295u, u_input.b.x)) & _wgslsmith_mod_vec4_u32(min(vec4<u32>(arg_0.x, var_2.a.b, 25128u, arg_0.x), vec4<u32>(36310u, 61759u, 4294967295u, 40722u)), var_2.a.d)), u_input.a ^ -3652i);
    var var_4 = _wgslsmith_dot_vec4_i32(-_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, 11282i, u_input.a, 22398i), -vec4<i32>(var_3.e, var_2.a.e, -19259i, u_input.a)), ~(-vec4<i32>(1i, var_3.e, 2147483647i, var_2.a.e))), ~(~(~vec4<i32>(var_2.a.e, 24897i, 2147483647i, u_input.a)) & ~max(vec4<i32>(0i, var_3.e, -44712i, 9247i), vec4<i32>(-2147483647i, u_input.a, -1i, -16669i))));
    return max(firstTrailingBit(var_3.d.x), ~abs(arg_0.x));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec4<f32>) -> vec3<bool> {
    global0 = -609f;
    global2 = array<vec2<bool>, 22>();
    return vec3<bool>(true, any(!vec4<bool>(any(vec2<bool>(false, true)), all(vec3<bool>(true, true, false)), false, true)), true);
}

fn func_2(arg_0: i32) -> vec4<u32> {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(~0u, 18u)], _wgslsmith_add_i32(~(-4516i), -32568i) == arg_0, vec2<f32>(-1013f, _wgslsmith_f_op_f32(floor(1660f))));
    global1 = array<Struct_1, 18>();
    let var_1 = select(global2[_wgslsmith_index_u32(u_input.b.x & 4294967295u, 22u)], select(var_0.a.a.yy, global2[_wgslsmith_index_u32(1440u, 22u)], _wgslsmith_div_u32(~var_0.a.d.x, 61669u) != ~var_0.a.b), u_input.b.x <= (~10340u << (~_wgslsmith_mod_u32(var_0.a.d.x, u_input.b.x) % 32u)));
    var var_2 = Struct_1(var_0.a.a, ~var_0.a.d.x, any(!func_4(u_input.b.x, func_3(vec3<u32>(u_input.b.x, 57466u, 1u), vec3<bool>(false, false, var_1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-577f, -1232f, var_0.c.x, var_0.c.x), vec4<f32>(var_0.c.x, 897f, 320f, var_0.c.x)))), _wgslsmith_sub_vec4_u32(select(var_0.a.d, ~min(vec4<u32>(1u, 6521u, 33626u, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, var_0.a.b, u_input.b.x)), any(vec3<bool>(var_0.a.c, var_1.x, var_0.b))), reverseBits(~vec4<u32>(2580u, u_input.b.x, 15322u, 57330u))), ~(-74155i));
    global2 = array<vec2<bool>, 22>();
    return countOneBits(~min(firstLeadingBit(min(var_0.a.d, vec4<u32>(var_2.d.x, 52964u, 136773u, var_0.a.b))), vec4<u32>(1u, 0u, var_0.a.d.x ^ u_input.b.x, 76181u)));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = u_input.b.x;
    let var_1 = u_input.b.x & _wgslsmith_mult_u32(_wgslsmith_sub_u32(abs(_wgslsmith_mod_u32(0u, 1u)), ~u_input.b.x | ~var_0), 30793u);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1495f))));
    let var_2 = ~_wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, 19031i), vec2<i32>(arg_0, -2147483647i)), firstTrailingBit(vec2<i32>(1i, arg_1))) | abs(~vec2<i32>(i32(-1i) * -2147483647i, -u_input.a));
    let var_3 = max(~u_input.b.zx, firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0, 1u, var_1, var_0), func_2(var_2.x)), func_2(_wgslsmith_add_i32(u_input.a, 10359i)).x)));
    return Struct_1(vec3<bool>(true, any(vec2<bool>(true, true)), any(select(global2[_wgslsmith_index_u32(u_input.b.x, 22u)], global2[_wgslsmith_index_u32(var_1, 22u)], global2[_wgslsmith_index_u32(var_1, 22u)]))), 4189u & var_3.x, true, vec4<u32>(_wgslsmith_mod_u32(54525u, ~4294967295u ^ var_0), ~var_0, ~(~func_3(u_input.b, vec3<bool>(false, true, true))), ~u_input.b.x), 17819i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(u_input.a, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(-33410i, u_input.a, u_input.a)), vec3<i32>(u_input.a, 1i, u_input.a) & vec3<i32>(-58122i, 29792i, u_input.a)), i32(-1i) * -2147483647i, ~(-1i))), false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-740f, _wgslsmith_f_op_f32(sign(137f))))));
    let var_1 = Struct_2(var_0.a, all(!vec3<bool>(false, true, var_0.b)) & var_0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x - 1733f), -784f) + var_0.c) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(353f - 395f)), _wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(floor(var_0.c.x))))));
    var var_2 = func_4(_wgslsmith_mult_u32(1u, 7405u), ~1u, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(trunc(211f)), _wgslsmith_f_op_f32(sign(-164f)), -161f, _wgslsmith_f_op_f32(f32(-1f) * -158f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-160f, -285f, 1146f, 723f) + vec4<f32>(-1520f, -1539f, 200f, -120f)) - vec4<f32>(var_0.c.x, -1000f, 1509f, var_0.c.x)))))));
    let var_3 = Struct_1(select(var_1.a.a, select(!var_1.a.a, vec3<bool>(true, !var_0.b, 4294967295u != var_0.a.b), false), vec3<bool>(!var_0.a.a.x, var_0.a.a.x, true)), ~func_2(_wgslsmith_clamp_i32(max(-61627i, var_0.a.e), _wgslsmith_mod_i32(1916i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-7186i, var_0.a.e, var_1.a.e, 13486i), vec4<i32>(2147483647i, var_1.a.e, -40859i, u_input.a)))).x, var_0.b, vec4<u32>(4294967295u & var_1.a.d.x, firstLeadingBit(~54196u), 0u, 1u), ~2147483647i);
    var var_4 = func_1(~reverseBits(-2147483647i), _wgslsmith_mult_i32(var_0.a.e, var_1.a.e));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.e, ~(~1u ^ countOneBits(_wgslsmith_sub_u32(4294967295u, var_0.a.b))), 4294967295u ^ func_1(-var_4.e & var_4.e, 1i).d.x, 1000f);
}

