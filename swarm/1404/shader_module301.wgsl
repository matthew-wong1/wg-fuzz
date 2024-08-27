struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
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

var<private> global0: array<vec2<bool>, 16> = array<vec2<bool>, 16>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(4294967295u, 0u, 95721u, 0u));

var<private> global2: array<Struct_2, 14>;

var<private> global3: array<vec3<i32>, 25> = array<vec3<i32>, 25>(vec3<i32>(-14825i, 25351i, 3167i), vec3<i32>(i32(-2147483648), 11986i, -15854i), vec3<i32>(14586i, 17888i, -52330i), vec3<i32>(8509i, -56824i, 26183i), vec3<i32>(8045i, 2147483647i, 2147483647i), vec3<i32>(2147483647i, -34861i, 0i), vec3<i32>(1i, -1i, 8750i), vec3<i32>(0i, -17977i, -15654i), vec3<i32>(-95436i, 0i, -1i), vec3<i32>(-1i, 2147483647i, -40151i), vec3<i32>(2147483647i, 0i, -52781i), vec3<i32>(8226i, 0i, i32(-2147483648)), vec3<i32>(42967i, 1i, -25255i), vec3<i32>(0i, 31773i, 29481i), vec3<i32>(-1389i, -7208i, -28418i), vec3<i32>(2147483647i, 28412i, 0i), vec3<i32>(1i, 37874i, -1i), vec3<i32>(1i, -1272i, -1i), vec3<i32>(2147483647i, 7853i, 1i), vec3<i32>(i32(-2147483648), 1027i, -13880i), vec3<i32>(i32(-2147483648), 38928i, 2204i), vec3<i32>(i32(-2147483648), 0i, -30709i), vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec3<i32>(39032i, 8701i, i32(-2147483648)), vec3<i32>(0i, 0i, 2147483647i));

var<private> global4: array<u32, 6> = array<u32, 6>(4628u, 15627u, 1u, 0u, 28502u, 4294967295u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2) -> bool {
    global1 = array<vec4<u32>, 1>();
    let var_0 = arg_0.c;
    global1 = array<vec4<u32>, 1>();
    let var_1 = -27401i;
    global4 = array<u32, 6>();
    return any(vec3<bool>(_wgslsmith_mult_u32(arg_0.d.d.x, u_input.d.x) != 38077u, arg_0.d.a, false));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>) -> u32 {
    global1 = array<vec4<u32>, 1>();
    global3 = array<vec3<i32>, 25>();
    global3 = array<vec3<i32>, 25>();
    global0 = array<vec2<bool>, 16>();
    var var_0 = !vec3<bool>(func_3(global2[_wgslsmith_index_u32(4294967295u, 14u)]), true, true);
    return 1u >> (~global4[_wgslsmith_index_u32(u_input.d.x, 6u)] % 32u);
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1281f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2075f + -276f), -497f))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1000f, 1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1000f)))))), ~(~_wgslsmith_clamp_u32(firstLeadingBit(58562u), countOneBits(4294967295u), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(60845u, 6u)], 6u)], 6u)])), vec2<i32>(-17269i, u_input.a), _wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 11422u), vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 100936u, 13521u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d.x, 6u)], 6u)])), _wgslsmith_dot_vec4_u32(vec4<u32>(64164u, 119876u, global4[_wgslsmith_index_u32(0u, 6u)], global4[_wgslsmith_index_u32(45336u, 6u)]), global1[_wgslsmith_index_u32(u_input.d.x, 1u)]), u_input.d.x, global4[_wgslsmith_index_u32(0u, 6u)]), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(-vec3<i32>(u_input.b, -80486i, -16654i), vec2<i32>(u_input.c.x, u_input.b)), 4294967295u), 1u)]));
    let var_1 = Struct_1(true, 207u, vec2<i32>(_wgslsmith_add_i32(u_input.c.x, 2147483647i), -_wgslsmith_sub_i32(abs(var_0.c.x), 0i)), _wgslsmith_mod_vec4_u32(abs(_wgslsmith_mod_vec4_u32(u_input.d, var_0.d)) << (abs(firstLeadingBit(u_input.d)) % vec4<u32>(32u)), ~u_input.d));
    return Struct_3(vec4<bool>(!(!all(vec2<bool>(false, false))), !var_1.a, all(!vec3<bool>(var_0.a, true, true)), var_1.a), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(abs(-234f)), -104f), var_1, ~vec4<i32>(var_0.c.x, 1805i, -59054i, 3062i) << (vec4<u32>(0u, var_1.b << (7247u % 32u), ~0u, 35052u) % vec4<u32>(32u)), Struct_1(false, var_1.d.x, var_1.c, ~var_0.d ^ ~var_0.d)), Struct_1(true, abs(~u_input.d.x), vec2<i32>(20944i, ~var_1.c.x), ~(~reverseBits(vec4<u32>(var_0.b, 9714u, var_0.d.x, 33790u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-754f - -1115f), 223f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(2428f)) - _wgslsmith_f_op_f32(step(-801f, -606f))), _wgslsmith_f_op_f32(round(-525f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-316f, -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1243f)) + _wgslsmith_f_op_f32(f32(-1f) * -680f))), _wgslsmith_f_op_f32(-630f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-597f, 619f) + _wgslsmith_f_op_f32(-689f * 1000f))), true)));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    global0 = array<vec2<bool>, 16>();
    global0 = array<vec2<bool>, 16>();
    let var_0 = arg_0.d.x;
    global0 = array<vec2<bool>, 16>();
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_0))))));
    return arg_0;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<bool> {
    global1 = array<vec4<u32>, 1>();
    global4 = array<u32, 6>();
    let var_0 = true;
    let var_1 = Struct_1(var_0, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(~u_input.d, arg_2.d), global4[_wgslsmith_index_u32(0u, 6u)]), vec2<i32>(14015i, 2147483647i), func_4(func_4(Struct_3(!vec4<bool>(true, arg_0.b.d.a, arg_2.a, arg_0.c.a), func_1().b, func_1().c, arg_0.d, _wgslsmith_f_op_f32(sign(1582f))))).c.d);
    var var_2 = var_0;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), vec3<bool>(false, true, true), false))), reverseBits(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, global4[_wgslsmith_index_u32(u_input.d.x & 0u, 6u)]), 1u), 6u)]), -vec2<i32>(-(u_input.b >> (19750u % 32u)), _wgslsmith_add_i32(1i, i32(-1i) * -5823i)), firstLeadingBit(max(_wgslsmith_mod_vec4_u32(~global1[_wgslsmith_index_u32(u_input.d.x, 1u)], u_input.d), u_input.d)));
    global0 = array<vec2<bool>, 16>();
    var var_1 = vec3<bool>(!(!(all(vec4<bool>(var_0.a, var_0.a, false, var_0.a)) && var_0.a)), true, false);
    var var_2 = var_0.c.x;
    let var_3 = Struct_3(func_5(func_4(func_1()), ~select(select(vec3<u32>(var_0.d.x, 1902u, 1u), vec3<u32>(var_0.b, u_input.d.x, var_0.b), true), ~var_0.d.wzy, u_input.b <= u_input.b), func_1().c), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-925f, 1895f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(306f, 919f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(578f, 777f))), func_1().b.b, vec4<i32>(countOneBits(abs(var_0.c.x)), reverseBits(u_input.a), -34031i, _wgslsmith_div_i32(min(1i, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.x, var_0.c.x, 0i), global3[_wgslsmith_index_u32(4294967295u, 25u)]))), var_0), var_0, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(752f, -451f, -939f, 1010f))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -783f), -460f, _wgslsmith_f_op_f32(floor(1000f)), -909f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1658f, -1701f, -778f, _wgslsmith_f_op_f32(1757f - -214f)) + vec4<f32>(_wgslsmith_f_op_f32(448f - 664f), _wgslsmith_f_op_f32(step(-1054f, -939f)), -1013f, _wgslsmith_f_op_f32(abs(2156f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -941f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-837f + 717f), -866f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-414f, _wgslsmith_f_op_f32(141f - -1790f)))));
    let var_4 = func_1().a.ywy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-18791i, u_input.c.x, -2147483647i, -2147483647i), var_3.b.c)), firstLeadingBit(var_0.c.x), 3041i)));
}

