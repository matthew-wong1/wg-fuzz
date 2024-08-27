struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: Struct_4,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 22>;

var<private> global1: f32;

var<private> global2: vec4<i32> = vec4<i32>(-14953i, 23527i, -56532i, 0i);

var<private> global3: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(true, 140f, true, 932f, 1u)), Struct_2(Struct_1(true, 535f, true, -1153f, 83681u)), Struct_2(Struct_1(true, -2053f, true, -976f, 1881u)), Struct_2(Struct_1(false, 427f, true, -1274f, 0u)), Struct_2(Struct_1(false, -669f, true, 382f, 1u)), Struct_2(Struct_1(true, 1998f, true, -115f, 5675u)), Struct_2(Struct_1(true, -1111f, false, 1164f, 0u)), Struct_2(Struct_1(true, 480f, false, -1404f, 55148u)), Struct_2(Struct_1(false, 1000f, false, 1416f, 4294967295u)), Struct_2(Struct_1(false, 117f, true, -218f, 1u)), Struct_2(Struct_1(false, -1973f, true, 664f, 0u)), Struct_2(Struct_1(false, 173f, true, 614f, 4294967295u)), Struct_2(Struct_1(false, 1000f, false, -859f, 0u)), Struct_2(Struct_1(false, -193f, true, 1803f, 4294967295u)), Struct_2(Struct_1(true, -726f, true, 580f, 0u)), Struct_2(Struct_1(true, 1123f, false, -467f, 0u)), Struct_2(Struct_1(true, 276f, true, -440f, 4294967295u)), Struct_2(Struct_1(false, 645f, false, -986f, 80609u)), Struct_2(Struct_1(true, -451f, true, 889f, 17203u)), Struct_2(Struct_1(false, -401f, false, -713f, 4294967295u)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(!(!any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1022f, _wgslsmith_div_f32(440f, -1035f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1259f)))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-550f - 565f))), 1f, true))), false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1783f - -1761f))))))), u_input.a ^ u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(4294967295u, 22u)]), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, var_0.b, 2120f) + _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(var_0.e, 22u)] * global0[_wgslsmith_index_u32(62642u, 22u)])))))), 4294967295u > _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 27657u, 38812u), vec3<u32>(var_0.e, 4294967295u, u_input.a)), ~vec3<u32>(37583u, u_input.a, 32614u)), reverseBits(vec3<u32>(90114u, 34402u, 1u)))));
    var var_2 = select(true, var_0.c, !(!(-global2.x >= reverseBits(-1i))));
    let var_3 = Struct_1(select(!var_0.a, all(!select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.c, true), vec2<bool>(true, var_0.a))), any(!(!vec2<bool>(var_0.a, true)))), var_1.x, !var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(764f, -374f) + _wgslsmith_f_op_f32(-2162f + var_1.x))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + _wgslsmith_f_op_f32(step(-1000f, var_0.d)))))), countOneBits(_wgslsmith_mod_u32(~u_input.a, 20698u) << (48516u % 32u)));
    var_2 = var_0.c;
    return ~_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(var_3.e >> (0u % 32u), ~1u)), select(vec2<u32>(_wgslsmith_mod_u32(u_input.a, var_0.e), var_0.e), ~vec2<u32>(var_3.e, var_3.e), false));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool, arg_2: bool) -> Struct_4 {
    global0 = array<vec3<f32>, 22>();
    global3 = array<Struct_2, 20>();
    let var_0 = all(vec2<bool>(!(u_input.a == arg_0.x), arg_2));
    var var_1 = _wgslsmith_add_vec2_u32(abs(vec2<u32>(abs(arg_0.x), ~(~u_input.a))), ~(~func_3()));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(229f - -565f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1012f + -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1405f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(366f + -1518f)), _wgslsmith_f_op_f32(f32(-1f) * -543f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(478f, 715f, -359f, 992f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(733f, 234f, -398f, 787f) * vec4<f32>(-522f, 434f, -222f, -635f)))), vec4<f32>(_wgslsmith_f_op_f32(round(520f)), _wgslsmith_div_f32(-1674f, -1187f), _wgslsmith_f_op_f32(step(-1000f, 1784f)), -711f))))));
    return Struct_4(_wgslsmith_f_op_f32(-var_2.x), Struct_3(Struct_1(false, -697f, false, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-168f, var_2.x), _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_add_u32(firstLeadingBit(44805u), ~u_input.a)), Struct_1(arg_1, var_2.x, arg_2, var_2.x, 0u)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4) -> Struct_1 {
    let var_0 = true && all(vec3<bool>(!all(vec3<bool>(arg_2.b.a.a, true, arg_2.b.b.c)), arg_2.b.b.a, !(!arg_2.b.a.c)));
    global3 = array<Struct_2, 20>();
    var var_1 = arg_2;
    var var_2 = arg_2;
    var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -224f) * 575f), _wgslsmith_div_f32(arg_2.b.a.d, _wgslsmith_f_op_f32(-var_1.a)))), Struct_3(Struct_1(var_2.b.a.c, _wgslsmith_f_op_f32(f32(-1f) * -1146f), true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_1.b.b.d)))), arg_0.b.a.e), func_2(~vec2<u32>(0u, u_input.a), all(vec4<bool>(var_0, var_2.b.a.c, var_0, true)), true & all(vec2<bool>(var_2.b.b.c, arg_1.a.c))).b.b));
    return Struct_1(false, _wgslsmith_f_op_f32(step(arg_0.b.b.b, var_2.b.a.d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.a.d), _wgslsmith_f_op_f32(min(arg_0.a, -222f)))) != _wgslsmith_f_op_f32(sign(-1507f)), 199f, u_input.a ^ _wgslsmith_dot_vec4_u32(select(~vec4<u32>(arg_2.b.a.e, arg_2.b.a.e, 0u, arg_0.b.a.e), ~vec4<u32>(arg_0.b.b.e, 2977u, arg_2.b.b.e, var_2.b.a.e), true), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, arg_2.b.b.e, 54678u, 4294967295u), vec4<u32>(u_input.a, 19472u, arg_1.a.e, arg_2.b.b.e))));
}

fn func_1() -> f32 {
    var var_0 = Struct_2(func_4(func_2(~(vec2<u32>(25963u, u_input.a) | vec2<u32>(4294967295u, u_input.a)), true, false), global3[_wgslsmith_index_u32(u_input.a, 20u)], Struct_4(726f, Struct_3(func_2(vec2<u32>(u_input.a, 12059u), true, false).b.a, Struct_1(true, -1000f, true, 404f, 0u)))));
    let var_1 = u_input.b.x;
    var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_mod_u32(0u, countOneBits(func_4(Struct_4(var_0.a.d, Struct_3(Struct_1(false, var_0.a.d, true, var_0.a.b, var_0.a.e), var_0.a)), global3[_wgslsmith_index_u32(0u, 20u)], Struct_4(341f, Struct_3(var_0.a, var_0.a))).e)), var_0.a.e << (0u % 32u)), 20u)];
    var var_2 = vec4<u32>(1u ^ _wgslsmith_dot_vec2_u32(select(_wgslsmith_sub_vec2_u32(vec2<u32>(35839u, var_0.a.e), vec2<u32>(u_input.a, 1092u)), ~vec2<u32>(var_0.a.e, var_0.a.e), true), ~vec2<u32>(u_input.a, 92447u)), var_0.a.e, _wgslsmith_dot_vec3_u32(vec3<u32>(1u << (u_input.a % 32u), 109509u, 1u) | (vec3<u32>(8598u, 8258u, var_0.a.e) | _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.e, u_input.a, 55755u), vec3<u32>(4294967295u, 10185u, var_0.a.e), vec3<u32>(4294967295u, 5354u, u_input.a))), firstLeadingBit(vec3<u32>(abs(u_input.a), reverseBits(0u), ~49118u))), _wgslsmith_div_u32(var_0.a.e, u_input.a));
    var var_3 = func_2(~vec2<u32>(~var_0.a.e, 40894u) << (func_3() % vec2<u32>(32u)), var_0.a.c, var_0.a.a).b.a;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d * _wgslsmith_f_op_f32(abs(828f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -954f));
    global2 = -vec4<i32>(~(-(~(-25808i))), u_input.b.x, 1i, ~_wgslsmith_mult_i32(u_input.b.x, 2147483647i));
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(-1f), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), countOneBits(0u));
    var var_1 = Struct_5(!(!(!select(vec4<bool>(var_0.c, true, var_0.c, var_0.a), vec4<bool>(false, false, var_0.c, var_0.c), vec4<bool>(var_0.a, var_0.c, false, true)))), func_2(select(firstLeadingBit(select(vec2<u32>(var_0.e, var_0.e), vec2<u32>(120957u, u_input.a), vec2<bool>(var_0.c, var_0.a))), vec2<u32>(u_input.a, func_3().x), false), var_0.a, var_0.c), func_2(vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a, 4294967295u, var_0.e), vec4<u32>(19967u, var_0.e, var_0.e, u_input.a)), u_input.a), all(select(vec2<bool>(true, false), !vec2<bool>(false, var_0.a), select(vec2<bool>(true, false), vec2<bool>(false, var_0.c), var_0.c))), select(true, true, true) || !var_0.a), Struct_2(func_4(func_2(~vec2<u32>(var_0.e, var_0.e), true, true), Struct_2(func_2(vec2<u32>(0u, 0u), true, true).b.b), Struct_4(-365f, Struct_3(Struct_1(var_0.c, -1140f, false, var_0.b, 1u), Struct_1(false, 1092f, var_0.c, var_0.d, 22448u))))));
    var var_2 = select(~select(_wgslsmith_div_i32(global2.x, ~2147483647i), -_wgslsmith_clamp_i32(global2.x, u_input.b.x, u_input.b.x), true), _wgslsmith_dot_vec3_i32(max(global2.xxz, _wgslsmith_div_vec3_i32(global2.yzw, vec3<i32>(0i, 469i, u_input.b.x))), global2.yyw), !(true && !var_0.a));
    let var_3 = 1u;
    let var_4 = 20091u;
    var var_5 = ~abs(vec3<u32>(0u & var_1.d.a.e, min(_wgslsmith_add_u32(var_3, var_3), var_4), u_input.a));
    let var_6 = firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(0i, u_input.b.x), u_input.b.x), ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, 20649i, -26069i), global2.zyx), ~(-26575i)), global2.x >> (((var_3 >> (var_1.c.b.b.e % 32u)) | ~4294967295u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(firstLeadingBit(vec4<i32>(i32(-1i) * -38999i, global2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_6.x, 1i), vec3<i32>(-12843i, 2147483647i, 2147483647i)), -13923i)), ~vec4<i32>(~1i, global2.x, -2147483647i ^ global2.x, u_input.b.x), select(vec4<bool>(var_1.d.a.c, var_0.c, var_0.a, !var_0.a), !var_1.a, true)));
}

