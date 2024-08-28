struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 18>;

var<private> global2: array<vec2<bool>, 30>;

var<private> global3: vec3<bool>;

var<private> global4: array<Struct_4, 21> = array<Struct_4, 21>(Struct_4(47802i, Struct_3(Struct_1(-2052f, true), vec2<bool>(true, false), Struct_1(1023f, true), Struct_2(Struct_1(134f, true)), Struct_1(380f, true)), i32(-2147483648)), Struct_4(90350i, Struct_3(Struct_1(-150f, true), vec2<bool>(true, true), Struct_1(-547f, false), Struct_2(Struct_1(271f, true)), Struct_1(168f, false)), -1i), Struct_4(2147483647i, Struct_3(Struct_1(300f, false), vec2<bool>(true, false), Struct_1(938f, false), Struct_2(Struct_1(211f, false)), Struct_1(1013f, true)), 20084i), Struct_4(5729i, Struct_3(Struct_1(313f, false), vec2<bool>(false, false), Struct_1(1016f, false), Struct_2(Struct_1(1000f, true)), Struct_1(-497f, false)), 0i), Struct_4(i32(-2147483648), Struct_3(Struct_1(-893f, false), vec2<bool>(true, false), Struct_1(-350f, false), Struct_2(Struct_1(989f, true)), Struct_1(-286f, true)), -13414i), Struct_4(0i, Struct_3(Struct_1(1000f, true), vec2<bool>(false, true), Struct_1(-1418f, true), Struct_2(Struct_1(-1579f, true)), Struct_1(-330f, true)), -1437i), Struct_4(-1646i, Struct_3(Struct_1(857f, true), vec2<bool>(false, true), Struct_1(1684f, true), Struct_2(Struct_1(-862f, false)), Struct_1(-786f, true)), 2147483647i), Struct_4(-12824i, Struct_3(Struct_1(182f, true), vec2<bool>(false, true), Struct_1(-550f, false), Struct_2(Struct_1(1000f, false)), Struct_1(166f, true)), i32(-2147483648)), Struct_4(i32(-2147483648), Struct_3(Struct_1(-536f, false), vec2<bool>(true, true), Struct_1(1393f, true), Struct_2(Struct_1(-528f, true)), Struct_1(804f, true)), -15608i), Struct_4(i32(-2147483648), Struct_3(Struct_1(-1530f, false), vec2<bool>(false, false), Struct_1(-828f, true), Struct_2(Struct_1(-237f, false)), Struct_1(-109f, false)), -1i), Struct_4(-80393i, Struct_3(Struct_1(258f, false), vec2<bool>(false, false), Struct_1(-738f, true), Struct_2(Struct_1(1000f, true)), Struct_1(1000f, false)), -55250i), Struct_4(-23595i, Struct_3(Struct_1(200f, true), vec2<bool>(true, true), Struct_1(-1197f, false), Struct_2(Struct_1(650f, true)), Struct_1(-102f, false)), i32(-2147483648)), Struct_4(-54842i, Struct_3(Struct_1(-778f, false), vec2<bool>(true, true), Struct_1(571f, false), Struct_2(Struct_1(-246f, true)), Struct_1(-527f, false)), 0i), Struct_4(0i, Struct_3(Struct_1(-460f, true), vec2<bool>(false, true), Struct_1(-2290f, false), Struct_2(Struct_1(-1000f, true)), Struct_1(-1000f, true)), 32939i), Struct_4(0i, Struct_3(Struct_1(323f, true), vec2<bool>(false, false), Struct_1(412f, true), Struct_2(Struct_1(1980f, false)), Struct_1(114f, true)), 2147483647i), Struct_4(-1i, Struct_3(Struct_1(753f, false), vec2<bool>(true, false), Struct_1(1101f, false), Struct_2(Struct_1(402f, false)), Struct_1(1000f, false)), -43222i), Struct_4(1386i, Struct_3(Struct_1(-973f, false), vec2<bool>(false, true), Struct_1(429f, false), Struct_2(Struct_1(-159f, false)), Struct_1(-359f, false)), 2147483647i), Struct_4(0i, Struct_3(Struct_1(-116f, true), vec2<bool>(false, false), Struct_1(-121f, true), Struct_2(Struct_1(-582f, false)), Struct_1(-232f, true)), 0i), Struct_4(i32(-2147483648), Struct_3(Struct_1(-238f, false), vec2<bool>(false, true), Struct_1(427f, true), Struct_2(Struct_1(-328f, true)), Struct_1(-268f, true)), 22696i), Struct_4(i32(-2147483648), Struct_3(Struct_1(347f, false), vec2<bool>(true, false), Struct_1(1157f, false), Struct_2(Struct_1(-946f, false)), Struct_1(325f, true)), -25164i), Struct_4(-27476i, Struct_3(Struct_1(-201f, false), vec2<bool>(false, true), Struct_1(203f, false), Struct_2(Struct_1(301f, true)), Struct_1(-432f, true)), 41444i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> vec3<bool> {
    global4 = array<Struct_4, 21>();
    global2 = array<vec2<bool>, 30>();
    let var_0 = 0u;
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_add_i32(-firstTrailingBit(55477i), select(abs(_wgslsmith_add_i32(1i, -19224i)), 1i, true)), -38374i);
    let var_2 = vec4<bool>(any(!vec4<bool>(arg_1.a.b, !arg_2.b, !arg_1.a.b, true)), true, true, !global3.x);
    return vec3<bool>(any(vec2<bool>(arg_2.b, false)), false, all(vec2<bool>(false, arg_1.a.b || (global3.x && arg_3))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: bool) -> vec4<bool> {
    return !select(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, arg_0.e.b, arg_2, arg_2), global3.x), vec4<bool>(false, false, false, true), !arg_0.b.x), select(select(!vec4<bool>(global3.x, arg_2, arg_0.e.b, true), vec4<bool>(arg_2, arg_2, arg_0.e.b, false), true), vec4<bool>(all(global2[_wgslsmith_index_u32(65048u, 30u)]), true, func_3(-1345f, arg_0.d, arg_0.e, arg_0.a.b).x, true), select(select(vec4<bool>(arg_0.e.b, global3.x, arg_0.b.x, arg_0.a.b), vec4<bool>(false, global3.x, arg_2, false), global3.x), vec4<bool>(false, true, true, false), !vec4<bool>(true, arg_2, true, true))), vec4<bool>(arg_0.e.b, arg_0.c.b, !arg_2 && global3.x, select(arg_0.b.x, global1[_wgslsmith_index_u32(arg_1.x, 18u)] >= global1[_wgslsmith_index_u32(arg_1.x, 18u)], arg_0.e.b)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = func_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-668f - 2117f) + _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(74618u, 18u)]))), _wgslsmith_f_op_f32(2415f - global1[_wgslsmith_index_u32(u_input.b, 18u)]) < _wgslsmith_div_f32(global1[_wgslsmith_index_u32(4294967295u, 18u)], 975f)), global2[_wgslsmith_index_u32(u_input.a, 30u)], Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(8987u, u_input.b)), 18u)], arg_0 >= countOneBits(37756i)), Struct_2(Struct_1(-118f, global3.x)), Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.b), vec2<u32>(0u, 1u)), 18u)], ~50948u != ~u_input.b)), select(~(~(~vec3<u32>(1u, 63242u, u_input.b))), firstTrailingBit(~vec3<u32>(1u, 25957u, 1u)), select(!(!vec3<bool>(false, false, global3.x)), vec3<bool>(global3.x, !global3.x, !global3.x), func_3(-331f, Struct_2(Struct_1(1469f, global3.x)), Struct_1(-112f, true), !global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1094f * global1[_wgslsmith_index_u32(1u, 18u)]), 939f)) != -628f);
    global2 = array<vec2<bool>, 30>();
    global2 = array<vec2<bool>, 30>();
    let var_1 = vec2<bool>(global3.x, select((_wgslsmith_mult_u32(u_input.a, u_input.b) != 1u) && all(!global2[_wgslsmith_index_u32(32711u, 30u)]), false, !(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 18u)]) < _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.b, 18u)], global1[_wgslsmith_index_u32(u_input.b, 18u)]))));
    var var_2 = ~(~select(_wgslsmith_sub_u32(4294967295u, u_input.b), ~0u, true) & ~abs(_wgslsmith_mult_u32(u_input.b, 0u)));
    return Struct_1(-1186f, any(vec4<bool>(true, true, true, true)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_4) -> vec3<bool> {
    global1 = array<f32, 18>();
    global3 = vec3<bool>(false, true, select(-2147483647i < _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_2.c, arg_2.c, 13799i, -1i)), vec4<i32>(arg_2.a, arg_2.a, -30398i, -2147483647i)), true, arg_2.c < arg_2.c));
    var var_0 = -228f;
    var var_1 = 21391u;
    global3 = select(vec3<bool>(!arg_1.a.b, true, true), select(!func_4(arg_0, vec3<u32>(23010u, u_input.b, 1u), true).yww, !(!func_4(arg_2.b, vec3<u32>(u_input.a, 27092u, 12904u), true).wxw), !(true || global3.x)), vec3<bool>(false, !arg_2.b.b.x, arg_1.a.b));
    return vec3<bool>(any(vec4<bool>(!func_3(arg_1.a.a, arg_1, Struct_1(global1[_wgslsmith_index_u32(50711u, 18u)], false), global3.x).x, !all(vec3<bool>(false, arg_2.b.b.x, true)), ~(-1i) < arg_2.a, !(!arg_0.b.x))), false, true);
}

fn func_1(arg_0: u32) -> Struct_2 {
    global3 = func_5(Struct_3(Struct_1(555f, global3.x), global2[_wgslsmith_index_u32(~((u_input.a >> (13652u % 32u)) << (4294967295u % 32u)), 30u)], Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -752f) + -1389f), all(global2[_wgslsmith_index_u32(u_input.b, 30u)])), Struct_2(func_2(0i)), func_2(1i)), Struct_2(func_2(-1i)), global4[_wgslsmith_index_u32(u_input.a, 21u)]);
    global4 = array<Struct_4, 21>();
    let var_0 = -((-_wgslsmith_clamp_vec2_i32(vec2<i32>(13716i, -1i), vec2<i32>(2147483647i, -16872i), vec2<i32>(2147483647i, -33291i)) >> ((~vec2<u32>(9747u, u_input.b) | ~vec2<u32>(u_input.b, 14970u)) % vec2<u32>(32u))) ^ firstTrailingBit(_wgslsmith_add_vec2_i32(~vec2<i32>(-73595i, -25553i), vec2<i32>(-57454i, -5224i))));
    var var_1 = global3.x && true;
    global2 = array<vec2<bool>, 30>();
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -107f))), global3.x));
}

fn func_6(arg_0: Struct_2, arg_1: u32, arg_2: vec4<bool>) -> Struct_4 {
    let var_0 = global4[_wgslsmith_index_u32(arg_1, 21u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-464f, global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(arg_1, 18u)], global1[_wgslsmith_index_u32(arg_1, 18u)]) + vec4<f32>(arg_0.a.a, var_0.b.a.a, arg_0.a.a, -1537f)))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1301f), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(4294967295u, 18u)])), global1[_wgslsmith_index_u32(~arg_1, 18u)], global1[_wgslsmith_index_u32(~21594u, 18u)]))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.a * func_1(u_input.a).a.a), 370f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 18u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1825f - -853f)))));
    global1 = array<f32, 18>();
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.a, var_0.c), abs(vec3<i32>(var_0.c, var_0.c, var_0.a))), var_0.a), abs(abs(abs(var_0.c)))) | var_0.a;
    var var_3 = arg_1;
    return global4[_wgslsmith_index_u32(75662u, 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_1(u_input.a), 4294967295u, select(vec4<bool>(false, all(vec3<bool>(global3.x, global3.x, false)), global3.x, true), func_4(Struct_3(Struct_1(global1[_wgslsmith_index_u32(u_input.a, 18u)], false), vec2<bool>(global3.x, true), func_2(-2147483647i), Struct_2(Struct_1(-1554f, global3.x)), Struct_1(740f, true)), vec3<u32>(firstLeadingBit(4751u), 0u, 4294967295u), false), true));
    global4 = array<Struct_4, 21>();
    let var_1 = _wgslsmith_add_u32(22783u, firstTrailingBit(_wgslsmith_div_u32(abs(_wgslsmith_div_u32(u_input.b, u_input.a)), u_input.b)));
    global1 = array<f32, 18>();
    var var_2 = _wgslsmith_div_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(~(-40856i), var_0.c), vec2<i32>(~var_0.c, -var_0.a)), ~countOneBits(select(vec2<i32>(5606i, var_0.c), vec2<i32>(var_0.a, 57525i), any(global3.zx))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 2147483647i), min(max(_wgslsmith_div_vec2_i32(vec2<i32>(609i, var_2.x), vec2<i32>(2147483647i, 0i)), select(vec2<i32>(7395i, var_0.a), vec2<i32>(var_2.x, 0i), global3.x)), countOneBits(-vec2<i32>(8587i, var_0.c)))));
}

