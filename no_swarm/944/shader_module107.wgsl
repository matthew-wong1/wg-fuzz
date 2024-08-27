struct Struct_1 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: i32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_3,
    c: Struct_3,
    d: Struct_4,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15>;

var<private> global1: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(0i, vec2<u32>(1u, 53289u), Struct_2(vec4<f32>(139f, 1062f, 2469f, -1139f), vec2<i32>(9884i, 2147483647i), false, true), vec2<i32>(1i, -1i)), Struct_3(-2635i, vec2<u32>(31453u, 1u), Struct_2(vec4<f32>(-1575f, 596f, -645f, -527f), vec2<i32>(-1i, 1i), false, false), vec2<i32>(61951i, -1i)), Struct_3(i32(-2147483648), vec2<u32>(46184u, 1u), Struct_2(vec4<f32>(-398f, 914f, -2572f, -710f), vec2<i32>(1i, -10168i), false, true), vec2<i32>(1i, 9597i)), Struct_3(-46141i, vec2<u32>(54894u, 0u), Struct_2(vec4<f32>(760f, -2616f, 1730f, 141f), vec2<i32>(-1i, 18658i), true, false), vec2<i32>(24682i, 0i)));

var<private> global2: Struct_3;

var<private> global3: array<vec3<f32>, 28>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_5(u_input.c, global1[_wgslsmith_index_u32(u_input.b & ~countOneBits(abs(global2.b.x)), 4u)], Struct_3(-u_input.a.x, ~(~min(vec2<u32>(4294967295u, u_input.b), global2.b)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.c.a - vec4<f32>(-294f, global2.c.a.x, global2.c.a.x, -700f))), -global2.d ^ max(vec2<i32>(-58906i, 7154i), vec2<i32>(0i, -1i)), !global2.c.c, true), select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.x, 0u, u_input.b), u_input.c.xzy), 15u)], global0[_wgslsmith_index_u32(43689u, 15u)], vec2<bool>(true, true))), Struct_4(-(~_wgslsmith_sub_i32(-2147483647i, global2.a)), Struct_2(global2.c.a, global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.c.x, global2.b.x, u_input.b), 15u)], all(!vec4<bool>(global2.c.c, true, true, global2.c.d)), false && global2.c.c), -min(global2.c.b.x, 5492i)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_clamp_u32(global2.b.x | u_input.b, u_input.c.x, 4294967295u), global2.b.x, firstLeadingBit(u_input.b)), vec4<u32>(firstLeadingBit(~39871u), 1u, u_input.b, ~u_input.b)));
    global0 = array<vec2<i32>, 15>();
    let var_1 = _wgslsmith_clamp_u32(~countOneBits(~(global2.b.x ^ 0u)), _wgslsmith_clamp_u32(1u, ~_wgslsmith_dot_vec3_u32(u_input.c.xzz, _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.b.x, 43007u, var_0.e.x), vec3<u32>(var_0.b.b.x, 0u, global2.b.x), vec3<u32>(12939u, 1u, u_input.b))), 13898u), ~(~27298u));
    var var_2 = Struct_2(vec4<f32>(253f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(729f)) + _wgslsmith_f_op_f32(round(827f))) + var_0.d.b.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -827f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.c.a.x)), any(vec2<bool>(var_0.c.c.d, var_0.c.c.d)))), var_0.c.c.a.x), select(vec2<i32>(var_0.d.a, _wgslsmith_clamp_i32(global2.d.x, u_input.a.x, var_0.d.a) >> (_wgslsmith_clamp_u32(global2.b.x, 4233u, global2.b.x) % 32u)), u_input.a.xx, global2.c.d), var_0.d.b.c, true);
    var var_3 = u_input.b;
    return ~(~_wgslsmith_dot_vec2_u32(var_0.a.wy, firstLeadingBit(vec2<u32>(1u, 0u)))) & global2.b.x;
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> Struct_3 {
    let var_0 = Struct_5(~(~u_input.c), arg_1, arg_1, Struct_4(u_input.a.x, global2.c, ~(min(arg_1.c.b.x, 12065i) & -u_input.a.x)), u_input.c);
    global2 = Struct_3(var_0.d.a, abs(u_input.c.wx) >> (min(_wgslsmith_mod_vec2_u32(max(vec2<u32>(62937u, 23644u), u_input.c.zx), firstTrailingBit(vec2<u32>(0u, u_input.c.x))), firstLeadingBit(var_0.e.yy)) % vec2<u32>(32u)), arg_1.c, vec2<i32>(firstTrailingBit(-1i), (abs(u_input.a.x) & (global2.d.x >> (55582u % 32u))) | firstLeadingBit(1i)));
    let var_1 = 934f;
    global2 = Struct_3(u_input.a.x, vec2<u32>(~firstLeadingBit(func_3()), arg_0), global2.c, _wgslsmith_mod_vec2_i32(u_input.a.zx, ~(~global2.c.b)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-1f), 456f, global2.c.a.x, global2.c.a.x))), global2.c.a.x);
    return global1[_wgslsmith_index_u32(u_input.b, 4u)];
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, 121f)));
    global2 = global1[_wgslsmith_index_u32(abs(40030u), 4u)];
    global1 = array<Struct_3, 4>();
    let var_1 = func_2(~_wgslsmith_dot_vec4_u32(~u_input.c, vec4<u32>(_wgslsmith_sub_u32(38397u, u_input.c.x), 1u, 1u, global2.b.x)), Struct_3(-firstLeadingBit(~arg_2.x), vec2<u32>(~global2.b.x, arg_0.a.x), global2.c, arg_0.b.d)).c.c;
    global0 = array<vec2<i32>, 15>();
    return arg_0.b.c;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    var var_0 = firstLeadingBit(select(min(u_input.c, u_input.c), ~(~_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(1u, 4294967295u, u_input.b, u_input.b), u_input.c)), true));
    var_0 = u_input.c;
    global1 = array<Struct_3, 4>();
    var var_1 = global2.b.x;
    let var_2 = vec3<bool>(arg_0.c, !func_4(Struct_5(u_input.c, func_2(u_input.b, global1[_wgslsmith_index_u32(var_0.x, 4u)]), global1[_wgslsmith_index_u32(u_input.c.x, 4u)], Struct_4(global2.a, Struct_2(arg_0.a, global2.d, global2.c.c, arg_0.c), 11387i), ~vec4<u32>(40188u, 0u, 20433u, 3388u)), func_2(115273u, global1[_wgslsmith_index_u32(countOneBits(35980u), 4u)]).c, -u_input.a.yxx, Struct_4(_wgslsmith_dot_vec4_i32(u_input.a, u_input.a), arg_1, _wgslsmith_div_i32(arg_1.b.x, global2.a))).d, !global2.c.c);
    return Struct_2(global2.c.a, vec2<i32>(-26325i, ~(-3692i)), arg_1.d, all(!vec2<bool>(true, var_2.x)) && true);
}

fn func_1() -> vec2<i32> {
    global2 = Struct_3(u_input.a.x << ((_wgslsmith_dot_vec3_u32(u_input.c.wxy & vec3<u32>(38109u, u_input.c.x, u_input.b), ~vec3<u32>(global2.b.x, 13084u, u_input.b)) & abs(0u)) % 32u), ~((~vec2<u32>(global2.b.x, 22682u) & countOneBits(global2.b)) ^ global2.b), func_5(global2.c, func_4(Struct_5(max(u_input.c, vec4<u32>(10380u, global2.b.x, global2.b.x, u_input.b)), Struct_3(-32038i, vec2<u32>(9970u, global2.b.x), global2.c, global2.c.b), func_2(1u, Struct_3(9258i, u_input.c.yx, Struct_2(global2.c.a, vec2<i32>(global2.d.x, u_input.a.x), false, true), vec2<i32>(global2.a, u_input.a.x))), Struct_4(-1i, global2.c, 51939i), ~u_input.c), func_2(_wgslsmith_mult_u32(global2.b.x, u_input.b), func_2(u_input.c.x, global1[_wgslsmith_index_u32(1u, 4u)])).c, u_input.a.zww, Struct_4(-2147483647i, Struct_2(global2.c.a, vec2<i32>(2147483647i, -56215i), true, true), i32(-1i) * -56821i))), vec2<i32>(abs(29454i), global2.a));
    let var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(-vec4<i32>(-30508i, -1i, 1i, global2.c.b.x), vec4<i32>(48225i, u_input.a.x, 2147483647i, 46152i)), countOneBits(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(2147483647i, global2.a, u_input.a.x, -57578i)))), -75305i, max(-_wgslsmith_mod_i32(u_input.a.x | -48618i, u_input.a.x), ~global2.a));
    var var_1 = 2089f;
    let var_2 = func_3();
    let var_3 = Struct_3(-24841i, min(~(~vec2<u32>(4294967295u, 53002u)), vec2<u32>(global2.b.x, var_2 ^ 4294967295u)), Struct_2(global2.c.a, global2.d, false, false), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(44395u, reverseBits(~8763u)), 15u)]);
    return _wgslsmith_div_vec2_i32(vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(global2.d.x, global2.a), vec2<i32>(global2.c.b.x, u_input.a.x)) >> (firstLeadingBit(~60205u) % 32u), ~var_3.c.b.x), var_3.c.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 15>();
    global1 = array<Struct_3, 4>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global2.c.a.x, global2.c.a.x))), _wgslsmith_div_f32(561f, _wgslsmith_f_op_f32(trunc(global2.c.a.x))), 137f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.c.a.x, global2.c.a.x, global2.c.a.x, 102f), _wgslsmith_f_op_vec4_f32(global2.c.a - vec4<f32>(-1000f, -1000f, global2.c.a.x, 915f))))), func_1(), global2.c.a.x <= _wgslsmith_f_op_f32(-global2.c.a.x), false);
    global2 = Struct_3(countOneBits(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(var_0.b, u_input.a.zx))), _wgslsmith_mult_vec2_u32(max(_wgslsmith_mod_vec2_u32(vec2<u32>(global2.b.x, 4294967295u), vec2<u32>(1u, 6070u)), vec2<u32>(53919u, 59973u)) | vec2<u32>(1u, u_input.c.x ^ 0u), vec2<u32>(1u, select(~u_input.b, firstTrailingBit(58167u), any(vec4<bool>(global2.c.d, global2.c.d, var_0.d, false))))), var_0, global2.d);
    var var_1 = select(true, ~countOneBits(i32(-1i) * -1i) > ~var_0.b.x, true || any(select(!vec3<bool>(false, var_0.d, global2.c.c), vec3<bool>(false, global2.c.c, false), select(true, true, var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_u32(global2.b.x, _wgslsmith_dot_vec2_u32(global2.b, vec2<u32>(19614u, 4294967295u))));
}

