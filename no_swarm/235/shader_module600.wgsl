struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: f32 = 1469f;

var<private> global2: array<Struct_2, 32>;

var<private> global3: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(2147483647i, Struct_2(Struct_1(i32(-2147483648), vec3<i32>(2147483647i, -1i, 13293i))), vec4<i32>(0i, -25153i, i32(-2147483648), 0i)), Struct_3(0i, Struct_2(Struct_1(i32(-2147483648), vec3<i32>(-2330i, 2147483647i, 1i))), vec4<i32>(0i, 0i, -28307i, -1i)), Struct_3(-34977i, Struct_2(Struct_1(-37662i, vec3<i32>(4102i, 2147483647i, -1i))), vec4<i32>(15780i, -81131i, 9496i, -1i)), Struct_3(-12443i, Struct_2(Struct_1(i32(-2147483648), vec3<i32>(27881i, -58247i, 2147483647i))), vec4<i32>(-1i, 13629i, 0i, 2147483647i)), Struct_3(-91540i, Struct_2(Struct_1(2147483647i, vec3<i32>(-1i, 0i, 38794i))), vec4<i32>(i32(-2147483648), -28222i, -1i, 30216i)), Struct_3(-1i, Struct_2(Struct_1(34538i, vec3<i32>(-17748i, -93922i, 19671i))), vec4<i32>(-77867i, -1011i, 2147483647i, -25906i)), Struct_3(1i, Struct_2(Struct_1(0i, vec3<i32>(40281i, -4977i, i32(-2147483648)))), vec4<i32>(30902i, -1i, -1i, -36779i)), Struct_3(0i, Struct_2(Struct_1(12257i, vec3<i32>(-35004i, -19400i, -11116i))), vec4<i32>(6134i, -55605i, 1i, 7831i)), Struct_3(1i, Struct_2(Struct_1(-38609i, vec3<i32>(39097i, 12491i, 38505i))), vec4<i32>(-12098i, -16767i, 51158i, 0i)), Struct_3(i32(-2147483648), Struct_2(Struct_1(0i, vec3<i32>(-909i, 26357i, i32(-2147483648)))), vec4<i32>(-1i, -50779i, 2147483647i, -1i)), Struct_3(2147483647i, Struct_2(Struct_1(i32(-2147483648), vec3<i32>(i32(-2147483648), 14806i, 0i))), vec4<i32>(0i, 0i, 2147483647i, 77202i)), Struct_3(2147483647i, Struct_2(Struct_1(29920i, vec3<i32>(-1i, -4896i, 1i))), vec4<i32>(41041i, 18288i, i32(-2147483648), i32(-2147483648))), Struct_3(-1i, Struct_2(Struct_1(-1i, vec3<i32>(i32(-2147483648), -1i, 2147483647i))), vec4<i32>(15730i, 2147483647i, i32(-2147483648), i32(-2147483648))), Struct_3(2147483647i, Struct_2(Struct_1(39273i, vec3<i32>(-2670i, 2147483647i, 59511i))), vec4<i32>(33095i, -31193i, 16850i, 40774i)), Struct_3(18940i, Struct_2(Struct_1(0i, vec3<i32>(i32(-2147483648), -2726i, 15936i))), vec4<i32>(36893i, -9643i, 13666i, -54451i)), Struct_3(13284i, Struct_2(Struct_1(-23559i, vec3<i32>(14079i, -3047i, -1i))), vec4<i32>(2147483647i, 2147483647i, 253i, 31102i)), Struct_3(i32(-2147483648), Struct_2(Struct_1(1923i, vec3<i32>(1i, 9193i, 47033i))), vec4<i32>(-44280i, 13924i, 30534i, -8371i)), Struct_3(-31005i, Struct_2(Struct_1(0i, vec3<i32>(-12463i, 21210i, 0i))), vec4<i32>(32209i, -1i, 2509i, -25236i)), Struct_3(37962i, Struct_2(Struct_1(-19004i, vec3<i32>(0i, 58819i, 38693i))), vec4<i32>(i32(-2147483648), 1i, -1i, 0i)), Struct_3(2147483647i, Struct_2(Struct_1(-62802i, vec3<i32>(-1i, i32(-2147483648), 1776i))), vec4<i32>(-44310i, -8170i, -1i, -4558i)), Struct_3(i32(-2147483648), Struct_2(Struct_1(11921i, vec3<i32>(1419i, 0i, 1697i))), vec4<i32>(i32(-2147483648), 14647i, 48399i, 0i)), Struct_3(-40627i, Struct_2(Struct_1(-19886i, vec3<i32>(-33220i, -12550i, 3962i))), vec4<i32>(0i, -5500i, -1i, -12274i)), Struct_3(1i, Struct_2(Struct_1(i32(-2147483648), vec3<i32>(9486i, 2147483647i, 41057i))), vec4<i32>(i32(-2147483648), -1i, 1408i, 1i)), Struct_3(5940i, Struct_2(Struct_1(21164i, vec3<i32>(i32(-2147483648), -63857i, -20642i))), vec4<i32>(52121i, 2885i, 34093i, i32(-2147483648))), Struct_3(-45675i, Struct_2(Struct_1(64676i, vec3<i32>(-24347i, -26943i, i32(-2147483648)))), vec4<i32>(2147483647i, -48792i, 11800i, 890i)), Struct_3(16624i, Struct_2(Struct_1(2147483647i, vec3<i32>(21659i, 26325i, 1i))), vec4<i32>(25452i, 0i, 0i, -60317i)), Struct_3(-29472i, Struct_2(Struct_1(0i, vec3<i32>(2147483647i, 2147483647i, 2147483647i))), vec4<i32>(-17904i, 32936i, 2147483647i, -13594i)), Struct_3(-6660i, Struct_2(Struct_1(i32(-2147483648), vec3<i32>(15065i, 0i, -16240i))), vec4<i32>(2147483647i, -1i, i32(-2147483648), 38201i)));

var<private> global4: array<u32, 18> = array<u32, 18>(96053u, 1u, 4294967295u, 21655u, 4294967295u, 32998u, 59951u, 4294967295u, 60215u, 36026u, 36237u, 21401u, 24196u, 4294967295u, 13751u, 4294967295u, 36226u, 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: bool) -> Struct_3 {
    let var_0 = !(!(((21695u < global4[_wgslsmith_index_u32(arg_2.x, 18u)]) || (734f > arg_0)) | !select(arg_3, arg_3, arg_3)));
    var var_1 = ~(~u_input.b);
    let var_2 = firstTrailingBit(~1u);
    var var_3 = true;
    global1 = -486f;
    return arg_1;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    global4 = array<u32, 18>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(arg_1.b.a.b, reverseBits(arg_0.a.b)), vec3<i32>(u_input.a, ~u_input.a, -52072i >> (~u_input.b % 32u))));
    let var_1 = ~firstLeadingBit(vec4<u32>(10731u, (u_input.b << (global4[_wgslsmith_index_u32(u_input.b, 18u)] % 32u)) & u_input.b, ~(~global4[_wgslsmith_index_u32(u_input.b, 18u)]), ~(~u_input.b)));
    var_0 = func_2(-1640f, func_2(-822f, func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - -815f))), Struct_3(11766i, global2[_wgslsmith_index_u32(countOneBits(global4[_wgslsmith_index_u32(35491u, 18u)]), 32u)], vec4<i32>(u_input.a, arg_0.a.b.x, 24764i, arg_0.a.b.x)), var_1, select(false, all(vec3<bool>(false, false, true)), true)), vec4<u32>(41812u, abs(57074u) | _wgslsmith_add_u32(u_input.b, 4294967295u), _wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b, 4294967295u), countOneBits(25567u)), u_input.b), select(!(global4[_wgslsmith_index_u32(4484u, 18u)] == 36432u), all(vec3<bool>(true, true, true)), true)), vec4<u32>(~firstTrailingBit(u_input.b), ~(~global4[_wgslsmith_index_u32(u_input.b, 18u)]), _wgslsmith_mult_u32(~u_input.b, _wgslsmith_add_u32(global4[_wgslsmith_index_u32(~u_input.b, 18u)], global4[_wgslsmith_index_u32(var_1.x, 18u)] >> (24677u % 32u))), 4294967295u), true).b;
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1454f, -847f, false))))))));
    return -arg_0.a.b.x;
}

fn func_1(arg_0: u32, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_div_f32(-1499f, _wgslsmith_f_op_f32(floor(-139f)));
    var var_1 = func_2(800f, global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(13541u << (global4[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(arg_1, 18u)], 57434u, global4[_wgslsmith_index_u32(2849u, 18u)]), vec3<u32>(arg_1, arg_0, u_input.b)), vec3<u32>(u_input.b, 0u, 61379u)), global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(max(1u, abs(53479u)), 18u)], 18u)]), 18u)] % 32u), 18u)], 28u)], select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(6031u, 0u, 7460u, arg_1), abs(vec4<u32>(1u, arg_0, global4[_wgslsmith_index_u32(1u, 18u)], 14206u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global4[_wgslsmith_index_u32(arg_0, 18u)], 1u, u_input.b, 6207u), vec4<u32>(6834u, arg_0, arg_1, 1u) & vec4<u32>(1u, arg_0, 22327u, u_input.b))), vec4<u32>(~_wgslsmith_mult_u32(arg_0, u_input.b), 0u, _wgslsmith_clamp_u32(1u, u_input.b & arg_1, ~31670u), ~_wgslsmith_mult_u32(4294967295u, 0u)), (-u_input.a | u_input.a) >= _wgslsmith_add_i32(_wgslsmith_add_i32(28669i, u_input.a), firstLeadingBit(u_input.a))), 29090u > global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(arg_0, 0u), 21811u), 18u)]);
    let var_2 = Struct_1(abs(39550i), var_1.b.a.b);
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -913f);
    var var_3 = var_1.b.a;
    return firstTrailingBit(~_wgslsmith_div_i32(_wgslsmith_mod_i32(~(-1i), func_3(Struct_2(Struct_1(var_3.a, vec3<i32>(-1i, var_2.b.x, -1i))), global3[_wgslsmith_index_u32(13318u, 28u)])), _wgslsmith_clamp_i32(min(var_3.b.x, u_input.a), _wgslsmith_add_i32(u_input.a, -1i), -var_2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(-2147483647i, global2[_wgslsmith_index_u32(select(reverseBits(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global4[_wgslsmith_index_u32(29076u, 18u)], 28012u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(53736u, 18u)], 18u)], u_input.b)), vec4<u32>(0u, 7021u, 27550u, 89800u))), global4[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, global4[_wgslsmith_index_u32(u_input.b, 18u)]), vec4<u32>(4294967295u, 4294967295u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(47649u, 18u)], 18u)], 40776u))), 18u)], false), 32u)], vec4<i32>(firstTrailingBit(func_1(35288u, 31625u)), u_input.a, -9157i, -2147483647i | ~(-u_input.a)));
    let var_1 = -7249i;
    global3 = array<Struct_3, 28>();
    let var_2 = true;
    global2 = array<Struct_2, 32>();
    global4 = array<u32, 18>();
    global1 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1423f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1541f + -1374f), _wgslsmith_f_op_f32(select(165f, 1704f, var_2))))))));
    let var_3 = -1000f == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1142f)), _wgslsmith_f_op_f32(417f * _wgslsmith_f_op_f32(f32(-1f) * -3055f)), 27870u >= max(min(global4[_wgslsmith_index_u32(2291u, 18u)], global4[_wgslsmith_index_u32(4231u, 18u)]), _wgslsmith_mod_u32(32009u, global4[_wgslsmith_index_u32(u_input.b, 18u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(round(-1223f)), 432f), select(var_0.b.a.b & var_0.c.xxy, -vec3<i32>(-1i, _wgslsmith_div_i32(var_0.b.a.a, -2147483647i), _wgslsmith_sub_i32(var_0.b.a.a, 0i)), vec3<bool>(false, true, global4[_wgslsmith_index_u32(8714u, 18u)] == global4[_wgslsmith_index_u32(11710u, 18u)])), _wgslsmith_mod_u32(~select(~87789u, 1u, true), u_input.b));
}

