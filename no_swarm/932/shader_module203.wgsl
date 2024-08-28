struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: f32,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: bool;

var<private> global2: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(38477u, 4294967295u, 4294967295u, 61608u), vec4<u32>(0u, 45272u, 4294967295u, 61023u), vec4<u32>(88240u, 4294967295u, 51538u, 75148u), vec4<u32>(29135u, 21372u, 4294967295u, 0u), vec4<u32>(1u, 6822u, 4294967295u, 68682u), vec4<u32>(8309u, 4294967295u, 35733u, 1u), vec4<u32>(0u, 0u, 4294967295u, 31653u), vec4<u32>(1u, 0u, 53001u, 4294967295u), vec4<u32>(62658u, 1u, 12926u, 0u), vec4<u32>(4294967295u, 20796u, 0u, 4294967295u), vec4<u32>(4294967295u, 1u, 4294967295u, 50828u), vec4<u32>(4294967295u, 1771u, 23716u, 1u), vec4<u32>(1u, 4294967295u, 23428u, 4294967295u), vec4<u32>(25107u, 1u, 0u, 0u), vec4<u32>(1u, 0u, 4294967295u, 12322u), vec4<u32>(67662u, 40153u, 84330u, 4294967295u), vec4<u32>(73216u, 589u, 37270u, 4294967295u), vec4<u32>(11289u, 4294967295u, 1u, 0u), vec4<u32>(4488u, 60927u, 0u, 0u), vec4<u32>(42599u, 4294967295u, 5716u, 13790u), vec4<u32>(52152u, 1u, 16439u, 5467u), vec4<u32>(1u, 1u, 61729u, 146945u), vec4<u32>(1u, 0u, 0u, 31587u), vec4<u32>(12695u, 13821u, 22375u, 36715u), vec4<u32>(22013u, 50119u, 4294967295u, 4294967295u), vec4<u32>(1u, 1u, 70431u, 0u));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-193f, 1743f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(365f + 180f), _wgslsmith_f_op_f32(sign(1493f)))), 386f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-330f, 976f) + -626f))));
    var var_1 = false;
    var_1 = arg_0.x;
    global0 = array<Struct_1, 22>();
    let var_2 = -451f;
    return -702f;
}

fn func_3() -> vec4<f32> {
    let var_0 = firstTrailingBit(global2[_wgslsmith_index_u32(u_input.e.x, 26u)]);
    let var_1 = _wgslsmith_mult_u32(var_0.x, _wgslsmith_div_u32(abs(_wgslsmith_mult_u32(1u, 73134u ^ var_0.x)), var_0.x));
    var var_2 = select(select(select(vec3<bool>(any(vec2<bool>(false, false)), true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(any(vec4<bool>(true, true, true, false)), all(vec3<bool>(true, true, true)) != true, !(u_input.b < u_input.b)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), true), vec3<bool>(all(vec4<bool>(false, true, false, false)), true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), all(vec3<bool>(false, true, true))))), select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), any(vec4<bool>(true, false, false, false))), vec3<bool>(true, true, true), true), true), true);
    global0 = array<Struct_1, 22>();
    let var_3 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, -60003i), vec3<i32>(u_input.b, 79135i, u_input.b))), -select(vec3<i32>(u_input.b, -1i, u_input.b), vec3<i32>(-1i, u_input.b, -40145i), var_2.x)), -min(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -4829i, 1i), vec3<i32>(-35867i, u_input.b, u_input.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b)))), vec3<i32>(u_input.b, 2147483647i, u_input.b));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -592f) - _wgslsmith_f_op_f32(817f - 1000f))), _wgslsmith_f_op_f32(171f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<bool>(false, var_2.x, false, var_2.x))) * _wgslsmith_f_op_f32(ceil(1061f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-829f))) - -1098f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-211f))), -573f))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = Struct_1(vec3<u32>(4114u, arg_0.e.x, _wgslsmith_sub_u32(arg_0.e.x, ~firstTrailingBit(4294967295u))), arg_2.b, _wgslsmith_f_op_f32(-arg_2.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1959f, arg_0.c, arg_0.c, arg_2.c) - _wgslsmith_f_op_vec4_f32(ceil(arg_2.d))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.d + vec4<f32>(arg_2.d.x, 538f, 868f, -1703f)), vec4<f32>(arg_2.c, 1393f, -1000f, arg_2.d.x)), vec4<bool>(false, true, select(arg_0.b.x, arg_0.b.x, arg_0.b.x), arg_2.b.x)))), countOneBits(arg_0.e) << (u_input.c % vec4<u32>(32u)));
    var var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(firstLeadingBit(var_0.a.x)), 22u)];
    let var_2 = global0[_wgslsmith_index_u32(1u, 22u)];
    var_1 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(4294967295u, countOneBits(var_2.e.x)), _wgslsmith_dot_vec3_u32(max(vec3<u32>(1u, arg_0.e.x, var_2.a.x), var_1.e.yzz), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.x, 0u, 4294967295u), vec3<u32>(u_input.d.x, 2643u, 1885u))), ~u_input.a.x), ~var_0.a), select(arg_2.b, vec3<bool>(true, var_0.b.x, select(true, !var_0.b.x, true)), vec3<bool>(var_2.b.x, select(var_0.b.x || arg_2.b.x, all(var_1.b), !arg_2.b.x), arg_0.b.x)), _wgslsmith_f_op_f32(arg_2.c * arg_0.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.d.x, -1000f, 496f, 992f))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(988f)), _wgslsmith_f_op_f32(-var_2.c), _wgslsmith_f_op_f32(arg_2.d.x - var_1.d.x), 344f))), arg_0.e);
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_0.a.x, _wgslsmith_dot_vec4_u32(arg_2.e, arg_0.e)), 22u)];
    return 1i;
}

fn func_1(arg_0: f32) -> vec3<f32> {
    global1 = -17563i <= func_4(Struct_1(abs(vec3<u32>(4294967295u, 4294967295u, 28962u)), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(false, false, false, false)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(923f, arg_0, arg_0, -372f), vec4<f32>(-837f, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(func_3())), ~vec4<u32>(u_input.e.x, u_input.e.x, u_input.a.x, 1u)), vec2<u32>(_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(abs(u_input.c.x), 26u)], _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.e.x, 28536u, 21273u), u_input.c)), ~1u), Struct_1(~_wgslsmith_sub_vec3_u32(u_input.a, u_input.c.ywz), vec3<bool>(true, all(vec2<bool>(true, true)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, arg_0, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(3251f, arg_0, 705f, arg_0), vec4<f32>(arg_0, arg_0, 718f, 852f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-758f, -1000f, arg_0, arg_0) + vec4<f32>(455f, -618f, 147f, -623f))), vec4<u32>(12219u, 1u, u_input.e.x, countOneBits(u_input.d.x))));
    var var_0 = select(u_input.d.x, u_input.e.x, u_input.b > 2147483647i) & 1u;
    var var_1 = Struct_1(u_input.a, select(vec3<bool>(true, true, true), vec3<bool>(true, false == all(vec2<bool>(true, false)), -264f < arg_0), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(391f, _wgslsmith_f_op_f32(-arg_0))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) + _wgslsmith_f_op_f32(arg_0 + arg_0)))), vec4<f32>(-1257f, 144f, 2722f, arg_0), min(~vec4<u32>(u_input.c.x << (1u % 32u), ~1u, 51486u, _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(6843u, 902u))), u_input.c));
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1.d.ywz, var_1.d.xxz))), var_1.d.wyy, select(vec3<bool>(true, select(u_input.b, 1i, true) < u_input.b, !var_1.b.x), var_1.b, select(var_1.b, select(select(var_1.b, vec3<bool>(false, var_1.b.x, var_1.b.x), vec3<bool>(var_1.b.x, true, var_1.b.x)), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec4<i32>) -> Struct_1 {
    global2 = array<vec4<u32>, 26>();
    global1 = true;
    let var_0 = ~_wgslsmith_clamp_vec4_i32(arg_3, _wgslsmith_div_vec4_i32(abs(arg_3), max(arg_3, arg_3)), reverseBits(abs(arg_3))) & max(vec4<i32>(-1i) * -vec4<i32>(arg_3.x, arg_3.x, u_input.b, arg_3.x), -vec4<i32>(_wgslsmith_clamp_i32(2147483647i, -21229i, arg_3.x), arg_3.x, arg_3.x, 1i));
    let var_1 = 94133u;
    global0 = array<Struct_1, 22>();
    return arg_1;
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    global1 = !((_wgslsmith_f_op_f32(select(-372f, arg_1.c, arg_1.b.x | true)) == arg_1.c) || true);
    global1 = false;
    global0 = array<Struct_1, 22>();
    var var_0 = 228i;
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-998f - arg_1.c) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-215f, arg_1.d.x)))), 2489f)) != arg_1.c;
    return _wgslsmith_f_op_f32(-arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 26>();
    var var_0 = Struct_1(~u_input.c.zwz, !vec3<bool>(true, all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), true)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.e.x, 4294967295u), u_input.a), func_5(true, global0[_wgslsmith_index_u32(43712u, 22u)], _wgslsmith_f_op_vec3_f32(func_1(-346f)), ~vec4<i32>(0i, u_input.b, u_input.b, u_input.b)), u_input.c.xy))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(-1000f * 1520f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<bool>(false, true, true, true))) * _wgslsmith_div_f32(-1296f, 1856f))), _wgslsmith_f_op_f32(f32(-1f) * -896f), -289f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(647f, -1582f), 897f, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(428f + -1483f) + _wgslsmith_div_f32(1522f, -586f)))), global2[_wgslsmith_index_u32(u_input.a.x, 26u)] | ~vec4<u32>(select(4294967295u, 34239u, true), abs(u_input.c.x), ~54830u, ~4294967295u));
    var var_1 = Struct_1(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.e.x, 4294967295u, var_0.a.x), var_0.e.wzw >> (vec3<u32>(0u, var_0.a.x, 13686u) % vec3<u32>(32u)))), vec3<bool>(var_0.b.x, true, !var_0.b.x), _wgslsmith_f_op_f32(max(-1110f, var_0.d.x)), vec4<f32>(1409f, var_0.c, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x - var_0.d.x))), u_input.c);
    global2 = array<vec4<u32>, 26>();
    let var_2 = _wgslsmith_sub_u32(var_1.e.x, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 68598u), var_1.a.xx), abs(vec2<u32>(u_input.a.x, 1u))) >> (var_0.e.x % 32u));
    var var_3 = Struct_1(select(var_1.e.yzz, _wgslsmith_mult_vec3_u32(~vec3<u32>(var_2, var_1.e.x, 20837u) & ~var_0.a, vec3<u32>(4294967295u, _wgslsmith_dot_vec3_u32(var_1.a, vec3<u32>(4294967295u, var_2, var_2)), var_2)), all(select(!vec2<bool>(true, var_1.b.x), vec2<bool>(true, true), var_1.b.x))), var_1.b, var_0.d.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1628f, _wgslsmith_f_op_f32(round(var_1.c))), var_1.d.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(-480f, 2048f)), _wgslsmith_div_f32(-1515f, -161f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1786f, 847f, var_1.d.x, -367f), vec4<f32>(-1519f, var_0.c, -706f, var_1.d.x)))), var_1.d)), global2[_wgslsmith_index_u32(0u, 26u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_0.c, var_3.c, -1398f), var_1.d.x, countOneBits(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, -2147483647i, -2889i), vec4<i32>(u_input.b, -2147483647i, u_input.b, -2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 1i, 2147483647i), vec3<i32>(-2147483647i, 1i, -10081i)) >> (~0u % 32u))));
}

