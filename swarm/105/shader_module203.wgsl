struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-810f, 1725f, -1000f, -689f, 924f, -233f, 748f, 1372f, 736f, -268f, -1718f, -500f, 756f, 1142f, 1250f, -1000f, 892f, -132f, -1125f, 140f, -222f, 1118f, 1000f, 1000f, 1011f, -1598f, 175f, 542f, 715f, -1359f);

var<private> global1: vec4<bool>;

var<private> global2: array<u32, 10> = array<u32, 10>(4294967295u, 17383u, 53367u, 4294967295u, 61072u, 1u, 4294967295u, 38179u, 4294967295u, 4294967295u);

var<private> global3: array<vec2<bool>, 1>;

var<private> global4: u32 = 10552u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> vec2<f32> {
    let var_0 = Struct_2(~(~(-vec4<i32>(u_input.a, -26723i, u_input.a, u_input.a))), _wgslsmith_mult_vec3_u32(~abs(firstTrailingBit(vec3<u32>(71263u, 0u, arg_1.c.x))), ~select(u_input.b.wyx, vec3<u32>(32298u, 0u, 111561u), false)), Struct_1(vec3<f32>(715f, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(arg_1.c.x, 30u)])), -257f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.b.x))), arg_3), vec3<u32>(~arg_1.c.x, u_input.b.x, arg_2.c.x) | ~firstLeadingBit(vec3<u32>(37287u, global2[_wgslsmith_index_u32(0u, 10u)], arg_2.c.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-358f, _wgslsmith_f_op_f32(-arg_3)))))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -1135f, -1665f, -1437f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, arg_2.a.x, 1009f, 834f))) + vec4<f32>(-841f, _wgslsmith_f_op_f32(-arg_1.b.x), arg_3, _wgslsmith_f_op_f32(f32(-1f) * -306f)))), u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * arg_3) + global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(arg_1.c.x, 97032u), 30u)])), -u_input.d.ywy);
    let var_2 = Struct_4(global1.zyz);
    var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.b.x))), 269f, _wgslsmith_f_op_f32(min(238f, 620f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1599f + global0[_wgslsmith_index_u32(52808u, 30u)]) * _wgslsmith_div_f32(-241f, -242f))) * var_1.a), ~(~u_input.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(160f + _wgslsmith_f_op_f32(select(-1309f, arg_2.b.x, arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b.x)) - _wgslsmith_f_op_f32(var_1.c * 805f))))), vec3<i32>(u_input.d.x, var_0.a.x, _wgslsmith_add_i32(-6813i >> ((var_0.c.c.x & 1u) % 32u), -28741i)));
    global3 = array<vec2<bool>, 1>();
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(-var_0.c.b.x)), arg_1.a.x)), _wgslsmith_f_op_f32(trunc(548f))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1004f - 391f), _wgslsmith_f_op_f32(max(424f, 367f)), all(vec3<bool>(false, true, true)))), 535f), _wgslsmith_f_op_vec2_f32(sign(var_1.a.zx))));
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: f32) -> f32 {
    var var_0 = Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(15183u, 30u)], 1237f, -640f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-785f * global0[_wgslsmith_index_u32(28619u, 30u)]), _wgslsmith_f_op_f32(round(-892f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, arg_2), vec2<f32>(global0[_wgslsmith_index_u32(14400u, 30u)], arg_0)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1000f)) * vec2<f32>(arg_0, 1665f)) + _wgslsmith_f_op_vec2_f32(func_3(any(vec2<bool>(true, true)), Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(81261u, 30u)], -220f, arg_2), vec2<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 10u)], 10u)], 30u)], arg_0), u_input.c), Struct_1(vec3<f32>(2014f, 1000f, arg_2), vec2<f32>(495f, arg_0), u_input.b.zyw), _wgslsmith_f_op_f32(exp2(arg_2)))))), vec3<u32>(32082u, _wgslsmith_mult_u32(firstLeadingBit(53600u), abs(u_input.c.x)) ^ 0u, 1u));
    var var_1 = u_input.d;
    var var_2 = _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~15147u, 30u)]));
    global1 = !select(vec4<bool>(false, all(vec2<bool>(global1.x, true)), false && (arg_1 == true), any(select(vec2<bool>(arg_1, global1.x), global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], 1u)], false))), vec4<bool>(arg_1, true, all(!vec4<bool>(global1.x, false, global1.x, true)), any(select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(false, true, global1.x, global1.x), global1.x))), (-2147483647i == _wgslsmith_div_i32(1i, var_1.x)) | (_wgslsmith_div_f32(var_0.b.x, 932f) < _wgslsmith_f_op_f32(arg_0 + -1258f)));
    global2 = array<u32, 10>();
    return 1082f;
}

fn func_1(arg_0: bool) -> Struct_2 {
    global2 = array<u32, 10>();
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 30u)]))), select(!arg_0, true, false), 1f)) * -1382f)));
    global1 = select(!(!(!(!vec4<bool>(false, global1.x, global1.x, global1.x)))), !(!(!(!vec4<bool>(false, global1.x, global1.x, arg_0)))), arg_0);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, -1664f, var_0, var_0))))) + vec4<f32>(-361f, _wgslsmith_f_op_f32(-247f + _wgslsmith_f_op_f32(456f - global0[_wgslsmith_index_u32(u_input.c.x, 30u)])), -485f, 205f)), u_input.b, _wgslsmith_f_op_f32(-var_0), vec3<i32>(i32(-1i) * -38170i, 1i, -(~u_input.a)));
    global4 = ~(~(~var_1.b.x) & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~0u, 10u)], 10u)]);
    return Struct_2(_wgslsmith_div_vec4_i32(u_input.d, u_input.d), abs(vec3<u32>(_wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 10u)], 10u)], u_input.b.x)), (19695u | u_input.b.x) >> (1u % 32u), 31316u)), Struct_1(vec3<f32>(-819f, -1630f, -716f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1439f, 401f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22416u, 10u)], 30u)], 1843f), _wgslsmith_f_op_vec2_f32(select(var_1.a.yw, vec2<f32>(var_0, 1197f), true)), global1.x))), _wgslsmith_mult_vec3_u32(var_1.b.yww, ~var_1.b.zxx)), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(1u, var_1.b.x) & 1663u, _wgslsmith_div_u32(u_input.c.x ^ global2[_wgslsmith_index_u32(1u, 10u)], 34699u)), 30u)])));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_4(select(vec3<bool>(any(vec2<bool>(true, true)), global1.x, !global1.x), select(global1.zzx, vec3<bool>(true, true, true), !all(vec2<bool>(false, global1.x))), vec3<bool>(!(arg_0.a.x >= u_input.d.x), true, (-1i & arg_0.a.x) >= max(-23175i, u_input.d.x))));
    global0 = array<f32, 30>();
    let var_1 = -2147483647i;
    global4 = ~(~38934u | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(1u, 10u)], 46473u), 10u)], 10u)]) ^ ~(_wgslsmith_sub_u32(0u, max(40312u, arg_0.b.x)) >> (_wgslsmith_div_u32(91623u, ~u_input.c.x) % 32u));
    var var_2 = 4294967295u;
    return Struct_1(arg_0.c.a, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_0.c.b.x)), _wgslsmith_f_op_f32(106f + arg_0.c.b.x))), 1354f), vec3<u32>(~8586u, arg_0.c.c.x, max(~_wgslsmith_dot_vec3_u32(vec3<u32>(29304u, 4294967295u, arg_0.c.c.x), u_input.c), ~1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.xx;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(562f, global0[_wgslsmith_index_u32(4294967295u, 30u)], -1430f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(20907u, 30u)], -613f, 1615f) + vec3<f32>(global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(0u, 30u)], global0[_wgslsmith_index_u32(u_input.b.x, 30u)]))))) - vec3<f32>(1503f, -339f, 1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1164f, global0[_wgslsmith_index_u32(20404u, 30u)])) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-220f, global0[_wgslsmith_index_u32(31019u, 30u)]) + vec2<f32>(2492f, 656f))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(var_0.x, 30u)], 1427f)))))), u_input.b.zxx);
    let var_2 = Struct_2(_wgslsmith_mult_vec4_i32(u_input.d, select(vec4<i32>(u_input.a, -35281i, -2147483647i | u_input.a, 2147483647i | u_input.a), -(vec4<i32>(-3883i, u_input.d.x, -1i, 39131i) << (vec4<u32>(0u, 5135u, 68927u, var_0.x) % vec4<u32>(32u))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(3282u, 30u)], global0[_wgslsmith_index_u32(var_0.x, 30u)]) >= global0[_wgslsmith_index_u32(65070u, 30u)])), _wgslsmith_div_vec3_u32(vec3<u32>(8925u, 4294967295u, 1u), ~firstTrailingBit(~vec3<u32>(17710u, u_input.c.x, 0u))), func_4(func_1(global1.x), _wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(u_input.d.yx, vec2<i32>(0i, u_input.d.x)), vec2<i32>(~(-17677i), ~u_input.d.x))), _wgslsmith_f_op_f32(-119f + func_4(Struct_2(min(vec4<i32>(1i, u_input.a, u_input.d.x, 7755i), vec4<i32>(u_input.d.x, 1i, 0i, 1i)), vec3<u32>(u_input.b.x, var_0.x, 13918u), func_1(true).c, -359f), ~(-2147483647i)).a.x));
    var var_3 = Struct_4(select(vec3<bool>(true, false, select(global1.x, global1.x, global1.x) || !global1.x), vec3<bool>(true, any(select(global1.yzw, vec3<bool>(global1.x, false, global1.x), global1.x)), true), true));
    var var_4 = _wgslsmith_div_f32(607f, 540f);
    var var_5 = func_4(var_2, _wgslsmith_mod_i32(-1i, _wgslsmith_div_i32(0i, _wgslsmith_sub_i32(-1i, var_2.a.x)))).a.xy;
    var var_6 = true;
    let var_7 = _wgslsmith_f_op_vec3_f32(var_1.a - var_1.a);
    let var_8 = Struct_1(vec3<f32>(-490f, var_5.x, var_2.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-383f, _wgslsmith_f_op_f32(-1721f * _wgslsmith_f_op_f32(round(323f))))), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(select(var_0.x, var_8.c.x, global1.x) & _wgslsmith_sub_u32(var_0.x, global2[_wgslsmith_index_u32(4294967295u, 10u)])), _wgslsmith_sub_u32(var_8.c.x, _wgslsmith_mult_u32(var_8.c.x, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(0u, 10u)], u_input.b.x)))), u_input.a);
}

