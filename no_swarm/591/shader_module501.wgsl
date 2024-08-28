struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(207f, vec3<bool>(true, true, false)), Struct_1(1257f, vec3<bool>(true, true, true)), Struct_1(-1236f, vec3<bool>(false, true, true)), Struct_1(655f, vec3<bool>(false, true, false)), Struct_1(1199f, vec3<bool>(true, true, false)), Struct_1(241f, vec3<bool>(false, false, true)), Struct_1(1074f, vec3<bool>(false, true, true)), Struct_1(1843f, vec3<bool>(false, true, false)), Struct_1(-390f, vec3<bool>(true, false, true)), Struct_1(-1003f, vec3<bool>(true, true, false)), Struct_1(1243f, vec3<bool>(false, false, false)), Struct_1(-865f, vec3<bool>(true, true, true)), Struct_1(755f, vec3<bool>(true, true, true)), Struct_1(439f, vec3<bool>(false, false, false)), Struct_1(-1000f, vec3<bool>(false, true, false)), Struct_1(573f, vec3<bool>(false, false, false)), Struct_1(-699f, vec3<bool>(false, false, true)), Struct_1(767f, vec3<bool>(false, true, true)), Struct_1(115f, vec3<bool>(false, true, true)), Struct_1(-269f, vec3<bool>(true, false, true)), Struct_1(-936f, vec3<bool>(false, true, false)), Struct_1(-1034f, vec3<bool>(false, false, false)), Struct_1(-1293f, vec3<bool>(true, true, true)), Struct_1(-187f, vec3<bool>(true, true, false)), Struct_1(-277f, vec3<bool>(false, false, false)), Struct_1(668f, vec3<bool>(true, true, true)), Struct_1(-1030f, vec3<bool>(true, false, true)), Struct_1(1211f, vec3<bool>(true, true, true)), Struct_1(-993f, vec3<bool>(false, false, true)), Struct_1(808f, vec3<bool>(true, false, true)));

var<private> global1: i32;

var<private> global2: Struct_2;

var<private> global3: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(0u, 4294967295u, 964u, 38360u), vec4<u32>(4294967295u, 0u, 24449u, 1u), vec4<u32>(0u, 29375u, 23959u, 1u), vec4<u32>(77206u, 4294967295u, 4294967295u, 18832u), vec4<u32>(31929u, 77076u, 2924u, 37259u), vec4<u32>(54110u, 19936u, 78927u, 4294967295u), vec4<u32>(44617u, 1u, 14935u, 48656u), vec4<u32>(0u, 47063u, 31650u, 4294967295u), vec4<u32>(1u, 32710u, 38756u, 26372u), vec4<u32>(35497u, 22379u, 28613u, 62327u), vec4<u32>(4294967295u, 1u, 0u, 0u), vec4<u32>(0u, 0u, 87961u, 0u), vec4<u32>(0u, 4294967295u, 16989u, 6771u), vec4<u32>(1u, 0u, 24356u, 42635u), vec4<u32>(9292u, 4579u, 30188u, 9029u), vec4<u32>(10827u, 43714u, 53486u, 83629u), vec4<u32>(19853u, 4294967295u, 4294967295u, 0u), vec4<u32>(21913u, 4294967295u, 0u, 45807u), vec4<u32>(52574u, 28190u, 21422u, 50685u), vec4<u32>(27555u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 1604u, 67632u, 4294967295u), vec4<u32>(7283u, 14603u, 0u, 7618u), vec4<u32>(0u, 4714u, 29231u, 0u), vec4<u32>(0u, 28693u, 8243u, 53248u), vec4<u32>(3880u, 0u, 1u, 1u), vec4<u32>(1u, 1375u, 1u, 58541u), vec4<u32>(4132u, 5889u, 24852u, 0u), vec4<u32>(4282u, 11482u, 10605u, 0u), vec4<u32>(13279u, 4294967295u, 1u, 0u), vec4<u32>(55672u, 1u, 49309u, 0u), vec4<u32>(31520u, 605u, 0u, 9479u));

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    var var_0 = select(global2.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(22526u, 0u, max(global2.e.x, global2.e.x), 4294967295u), abs(countOneBits(global3[_wgslsmith_index_u32(~1u, 31u)]))), _wgslsmith_dot_vec3_u32(vec3<u32>(~10575u, ~global2.e.x, global2.e.x >> (u_input.e % 32u)), vec3<u32>(u_input.b.x, 2318u, ~21104u)) != u_input.d);
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = global2.b;
    global3 = array<vec4<u32>, 31>();
    var var_1 = ~4294967295u;
    let var_2 = -814f > _wgslsmith_f_op_f32(global2.b.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(-global2.d)) * 1253f));
    let var_3 = !(!select(vec3<bool>(any(global2.b.b.xx), all(vec2<bool>(true, arg_2)), false), vec3<bool>(false, false, func_3()), select(select(global4.b, vec3<bool>(false, var_0.b.x, global2.b.b.x), false), vec3<bool>(true, global4.b.x, arg_0.b.b.x), arg_3.b.x != global4.b.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-569f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2623f - -213f))))) * -276f);
}

fn func_1() -> u32 {
    global3 = array<vec4<u32>, 31>();
    var var_0 = Struct_1(928f, vec3<bool>(all(select(select(vec4<bool>(global2.b.b.x, true, global4.b.x, false), vec4<bool>(global4.b.x, global4.b.x, global2.b.b.x, true), global4.b.x), !vec4<bool>(global2.b.b.x, global4.b.x, global2.b.b.x, true), true)), !global2.b.b.x, global4.b.x && any(vec2<bool>(false, false))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(func_2(Struct_2(var_0.a, Struct_1(_wgslsmith_f_op_f32(min(global4.a, -684f)), global2.b.b), _wgslsmith_f_op_vec4_f32(-global2.c), _wgslsmith_div_f32(437f, _wgslsmith_f_op_f32(f32(-1f) * -777f)), u_input.b), firstLeadingBit(~u_input.b.wy), global4.b.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~71705u, 34987u), 30u)])), !select(!(!vec3<bool>(global2.b.b.x, global2.b.b.x, var_0.b.x)), vec3<bool>(select(global4.b.x, false, true), false, any(global4.b.xz)), true));
    var_0 = global2.b;
    global2 = Struct_2(1070f, Struct_1(_wgslsmith_f_op_f32(floor(global4.a)), select(global2.b.b, global4.b, var_1.b.x)), vec4<f32>(985f, -470f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b.a * global4.a), _wgslsmith_f_op_f32(trunc(-191f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-201f))), true)), _wgslsmith_f_op_f32(-global2.b.a)), _wgslsmith_f_op_f32(-1028f - _wgslsmith_f_op_f32(select(357f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + _wgslsmith_f_op_f32(-var_0.a)), !func_3()))), select(u_input.b, global3[_wgslsmith_index_u32(abs(75065u << (0u % 32u)) | global2.e.x, 31u)], true));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global4.b.x;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a, _wgslsmith_f_op_f32(global2.d - global4.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.a))), -1019f) + global2.c) + global2.c);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(19580u & u_input.b.x, 33453u, !all(vec2<bool>(global2.b.b.x, global4.b.x)) | global4.b.x), _wgslsmith_div_u32(~func_1() ^ u_input.e, _wgslsmith_add_u32(1u, global2.e.x))), 30u)];
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-1674f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(359f * var_1.x) - _wgslsmith_f_op_f32(f32(-1f) * -281f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1361f, 285f)) * _wgslsmith_div_f32(-1225f, -427f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(var_1.x, global2.b, global2.c, 226f, vec4<u32>(global2.e.x, global2.e.x, u_input.b.x, global2.e.x)), vec2<u32>(65426u, 1u), false, Struct_1(257f, vec3<bool>(true, var_2.b.x, true)))) - global4.a))), _wgslsmith_f_op_f32(min(-436f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-905f + -1000f)) - 1287f))));
    let var_4 = vec4<u32>(global2.e.x, 4294967295u, global2.e.x, countOneBits(_wgslsmith_div_u32(countOneBits(u_input.e & 0u), u_input.e)));
    global1 = firstTrailingBit(-2147483647i);
    let var_5 = Struct_2(global4.a, Struct_1(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.a, 2134f)) + _wgslsmith_f_op_f32(-652f + global4.a))), global2.b.b), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global2.b.a)), _wgslsmith_f_op_f32(global4.a * var_3.x))), 631f, _wgslsmith_f_op_f32(step(399f, global2.b.a)), -583f), var_1)), 875f, _wgslsmith_div_vec4_u32(~global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(55868u, var_4.x), 31u)], global2.e));
    global4 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1617f)))), select(global2.b.b, select(var_5.b.b, vec3<bool>(var_2.b.x, false, true), !(!global2.b.b.x)), select(!select(vec3<bool>(true, global2.b.b.x, global2.b.b.x), vec3<bool>(var_2.b.x, true, global4.b.x), true), select(global4.b, select(vec3<bool>(global4.b.x, var_5.b.b.x, var_5.b.b.x), vec3<bool>(false, var_2.b.x, var_2.b.x), var_5.b.b), select(global4.b, global4.b, vec3<bool>(global4.b.x, true, var_2.b.x))), global2.b.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(abs(~select(vec3<i32>(-23228i, 17968i, u_input.a.x), vec3<i32>(0i, -2147483647i, -7339i), var_5.b.b.x)), -vec3<i32>(firstLeadingBit(u_input.a.x), -1i, i32(-1i) * -40375i), vec3<i32>(9442i, _wgslsmith_mod_i32(u_input.c & u_input.c, reverseBits(15556i)), u_input.c)), 1330f);
}

