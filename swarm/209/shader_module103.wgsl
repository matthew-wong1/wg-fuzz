struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: array<vec3<bool>, 21>;

var<private> global2: f32;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: f32) -> vec3<i32> {
    return u_input.b;
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_1(-7080i & _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(7583i, -14328i), 1i), select(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), u_input.b.zz), vec2<i32>(-1i, -14133i), vec2<bool>(true, false))));
    var var_1 = ~(~func_3(Struct_1(u_input.c), true, Struct_3(u_input.a.x, vec2<f32>(-161f, -1998f), vec3<bool>(false, false, true), Struct_1(var_0.a), false), -784f) | firstTrailingBit(u_input.b));
    global1 = array<vec3<bool>, 21>();
    var_0 = Struct_1(-var_0.a);
    var var_2 = u_input.a.x;
    return -select(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.zx ^ vec2<i32>(var_0.a, -2147483647i), var_1.zy), vec2<i32>(var_0.a, 7154i)), _wgslsmith_add_vec2_i32(var_1.xz, u_input.b.yy), select(vec2<bool>(true, all(vec2<bool>(false, false))), vec2<bool>(false, true), vec2<bool>(true, false)));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: i32) -> Struct_1 {
    var var_0 = reverseBits(~_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u)), reverseBits(vec4<u32>(u_input.a.x, 63822u, arg_1.d, 63839u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_1.d, arg_1.d, 1u), u_input.a)));
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(848f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -399f), _wgslsmith_f_op_f32(f32(-1f) * -864f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(595f + -2074f))))), all(select(select(!vec4<bool>(arg_1.c, arg_1.c, arg_1.a, arg_1.c), !vec4<bool>(false, arg_1.a, false, false), vec4<bool>(false, arg_1.c, arg_1.c, false)), vec4<bool>(!arg_1.c, false & arg_1.a, arg_1.c, arg_1.a & true), vec4<bool>(true, true, true, true)))));
    let var_1 = select(u_input.b, (_wgslsmith_add_vec3_i32(func_3(Struct_1(44279i), false, Struct_3(68492u, vec2<f32>(-397f, -325f), vec3<bool>(true, arg_1.c, arg_1.c), Struct_1(arg_1.b.a), true), 209f), abs(vec3<i32>(1292i, 25955i, 44231i))) | vec3<i32>(arg_2, -39394i, ~u_input.c)) & u_input.b, !(!select(vec3<bool>(arg_1.c, false, arg_1.c), vec3<bool>(arg_1.c, false, true), global1[_wgslsmith_index_u32(0u, 21u)])));
    let var_2 = _wgslsmith_dot_vec4_i32(-vec4<i32>(-39050i, var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-2876i, arg_2, arg_1.b.a), vec3<i32>(arg_2, arg_0, 1i)), arg_2), reverseBits(vec4<i32>(arg_2, -2147483647i, -19235i, -4918i) | vec4<i32>(-30783i, var_1.x, var_1.x, arg_0)) ^ vec4<i32>(-51608i, arg_2, firstLeadingBit(arg_2), max(1i, var_1.x))) >> (max(35900u, ~4294967295u) % 32u);
    let var_3 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-760f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_f32(select(934f, 137f, false)))) + _wgslsmith_f_op_f32(f32(-1f) * -732f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(132f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(193f, _wgslsmith_f_op_f32(max(-1182f, -843f))))));
    return arg_1.b;
}

fn func_1() -> Struct_1 {
    global1 = array<vec3<bool>, 21>();
    let var_0 = 4294967295u >> (0u % 32u);
    global0 = array<Struct_2, 9>();
    var var_1 = select(!(!vec4<bool>(true, var_0 >= var_0, any(vec4<bool>(true, false, false, false)), u_input.c > u_input.d)), vec4<bool>(true, true, 4294967295u != u_input.a.x, !any(global1[_wgslsmith_index_u32(50831u, 21u)])), all(vec2<bool>(true, true)));
    global0 = array<Struct_2, 9>();
    return func_4(_wgslsmith_sub_i32(35835i, -countOneBits(u_input.c)) ^ u_input.b.x, Struct_2(all(select(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<bool>(false, false, true, false), var_1.x), !vec4<bool>(var_1.x, true, true, var_1.x), false)), Struct_1(u_input.b.x & u_input.b.x), true, firstTrailingBit(~u_input.a.x) | ~(~100436u)), _wgslsmith_dot_vec2_i32(func_2(), _wgslsmith_add_vec2_i32(u_input.b.xz, vec2<i32>(reverseBits(u_input.c), _wgslsmith_mod_i32(9543i, -30309i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.b.x << (~6601u % 32u));
    let var_1 = func_1();
    var var_2 = min(~u_input.a.x, u_input.a.x | ~1u);
    let var_3 = u_input.a.x;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(371f * _wgslsmith_f_op_f32(ceil(167f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-401f, -1000f)))), _wgslsmith_f_op_f32(-290f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    var var_5 = Struct_3(~3259u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(962f, 1424f) * vec2<f32>(-1243f, var_4)), vec2<f32>(-427f, var_4)) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-220f, -1255f), vec2<f32>(-2088f, var_4))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4, -936f)), vec2<bool>(true, true)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-802f, var_4) - vec2<f32>(var_4, 166f))))), select(select(vec3<bool>(all(vec4<bool>(true, true, true, true)), true, any(vec3<bool>(false, false, false))), vec3<bool>(true, true, true), (var_4 == var_4) & any(vec4<bool>(false, true, true, false))), vec3<bool>((var_4 < var_4) || true, all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))), all(vec2<bool>(204f > var_4, true))), var_0, true);
    var var_6 = global1[_wgslsmith_index_u32(var_5.a, 21u)];
    var_2 = reverseBits(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, ~countOneBits(var_5.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, var_3), vec2<u32>(1u, var_3))), _wgslsmith_dot_vec2_u32(u_input.a.wy, min(u_input.a.wx, vec2<u32>(15822u, 16702u)) ^ firstLeadingBit(u_input.a.yx))));
    global0 = array<Struct_2, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4)), var_4, var_5.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1538f, var_4, var_5.b.x) * vec3<f32>(var_5.b.x, var_5.b.x, var_4)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-973f, -719f, 1393f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_5.b.x, -107f, -480f), vec3<f32>(-131f, -656f, -573f), global1[_wgslsmith_index_u32(u_input.a.x, 21u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4, -541f, -2060f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(131f, 445f, var_5.b.x) + vec3<f32>(1000f, var_4, 1861f))), select(select(var_5.c, var_5.c, true), select(vec3<bool>(true, true, false), var_5.c, vec3<bool>(var_6.x, var_6.x, var_5.c.x)), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(2110f, -1454f, var_4) + vec3<f32>(var_5.b.x, -110f, var_4)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4, 132f, 1237f)))), -28724i, -18424i);
}

