struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(43761u, 1u), vec2<u32>(38003u, 1u), vec2<u32>(0u, 7773u), vec2<u32>(59668u, 44192u), vec2<u32>(51956u, 4294967295u), vec2<u32>(61594u, 4294967295u), vec2<u32>(84949u, 0u), vec2<u32>(57893u, 48803u), vec2<u32>(1u, 29790u), vec2<u32>(0u, 0u), vec2<u32>(1u, 44395u), vec2<u32>(103844u, 0u), vec2<u32>(20439u, 61689u), vec2<u32>(6227u, 4294967295u), vec2<u32>(68113u, 4294967295u), vec2<u32>(4294967295u, 47081u), vec2<u32>(1u, 28833u), vec2<u32>(324u, 14861u), vec2<u32>(52297u, 70713u), vec2<u32>(1u, 44487u), vec2<u32>(58726u, 0u), vec2<u32>(75724u, 0u), vec2<u32>(1u, 1u), vec2<u32>(20441u, 48193u), vec2<u32>(0u, 36659u), vec2<u32>(24662u, 9824u), vec2<u32>(51605u, 6233u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 52988u));

var<private> global3: f32;

var<private> global4: vec2<u32> = vec2<u32>(1u, 387u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: u32) -> vec3<bool> {
    global2 = array<vec2<u32>, 30>();
    var var_0 = Struct_4(arg_2.a.a < ~arg_2.d.a, arg_2, _wgslsmith_f_op_f32(arg_0 * -1421f), select(u_input.a != (-arg_2.c.x >> (_wgslsmith_mult_u32(u_input.c.x, 57892u) % 32u)), false, !all(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(min(arg_0, -519f)));
    var var_1 = Struct_4(false, Struct_2(Struct_1(arg_1), Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d.a, 1369u, 8869u, u_input.b.x), vec4<u32>(arg_1, 44085u, 43312u, arg_2.b.a))), ~(arg_2.e ^ vec3<i32>(-2147483647i, u_input.a, 16418i)), var_0.b.d, _wgslsmith_clamp_vec3_i32(arg_2.c, -_wgslsmith_sub_vec3_i32(arg_2.c, var_0.b.c), -(~arg_2.c))), _wgslsmith_f_op_f32(-var_0.e), !(true | all(vec2<bool>(var_0.d, true))), _wgslsmith_f_op_f32(abs(837f)));
    let var_2 = var_0.b.a;
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(reverseBits(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_2.d.a, arg_2.d.a), 30u)], ~vec2<u32>(arg_2.d.a, var_2.a))), _wgslsmith_clamp_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(102803u, 28211u, arg_3), vec3<u32>(107555u, 1u, 88213u))), arg_2.d.a << (u_input.e.x % 32u), _wgslsmith_add_u32(50675u, arg_2.b.a) >> (abs(5585u) % 32u))), _wgslsmith_mod_u32(arg_2.a.a, ~(~var_0.b.d.a)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, global1.a, 21787u, 47472u)) >> (vec4<u32>(_wgslsmith_add_u32(4294967295u, global4.x), global1.a, _wgslsmith_clamp_u32(var_2.a, 1u, global1.a), abs(u_input.b.x)) % vec4<u32>(32u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 6687u, arg_3, 1u), select(vec4<u32>(global1.a, 4294967295u, 4294967295u, var_0.b.d.a), vec4<u32>(arg_3, 44133u, var_1.b.a.a, arg_1), vec4<bool>(true, var_0.d, true, var_0.a)), vec4<u32>(var_2.a, 54418u, var_1.b.d.a, 1u)))), 30u)];
    return select(!vec3<bool>(true, true, !(!var_1.d)), select(select(!vec3<bool>(var_1.d, var_0.d, var_1.a), !vec3<bool>(var_0.a, var_0.d, false), true), select(vec3<bool>(-813f == arg_0, true, var_1.a), vec3<bool>(true, any(vec3<bool>(false, false, var_0.a)), true), select(vec3<bool>(false, var_0.d, false), select(vec3<bool>(var_0.d, true, var_1.a), vec3<bool>(var_1.d, var_0.a, var_1.d), true), select(vec3<bool>(var_0.d, true, var_1.a), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))), vec3<bool>(true, true, var_0.a)), select(any(select(vec4<bool>(var_0.a, true, var_0.a, true), vec4<bool>(var_1.d, var_1.d, true, var_0.a), vec4<bool>(true, false, var_0.a, true))), true, var_1.c < 575f) | !(!(false & var_1.d)));
}

fn func_2() -> f32 {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-198f * 256f), _wgslsmith_f_op_f32(f32(-1f) * -2232f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1564f, any(vec2<bool>(false, false))))))) - -986f);
    var var_0 = vec3<bool>(!any(vec4<bool>(true, true, true, false)), all(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !any(vec3<bool>(true, true, true)));
    var var_1 = any(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1142f)), _wgslsmith_dot_vec4_u32(min(_wgslsmith_add_vec4_u32(vec4<u32>(16474u, global1.a, 78763u, 50942u), vec4<u32>(1u, u_input.b.x, global1.a, global4.x)), firstLeadingBit(vec4<u32>(global1.a, 19200u, 4294967295u, 17312u))), select(abs(vec4<u32>(50627u, 53096u, 4294967295u, 1u)), firstLeadingBit(vec4<u32>(0u, global4.x, 4294967295u, u_input.b.x)), var_0.x)), Struct_2(Struct_1(4294967295u & global1.a), Struct_1(_wgslsmith_mod_u32(4294967295u, 52006u)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.d), vec3<i32>(2147483647i, u_input.d, 1i), vec3<i32>(u_input.a, 1i, 0i)), Struct_1(global4.x >> (1u % 32u)), vec3<i32>(u_input.d, firstLeadingBit(5116i), -1i)), u_input.b.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(396f + -280f))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(-1477f, 2470f, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-801f * 1407f) - _wgslsmith_f_op_f32(min(1000f, -1413f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-668f, 167f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(802f * 631f), _wgslsmith_f_op_f32(trunc(1005f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1126f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-414f * 320f)), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(1243f))), 1821f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -525f)))), !(any(!vec3<bool>(var_0.x, false, false)) && true)));
    let var_3 = Struct_1(abs(u_input.b.x));
    return _wgslsmith_f_op_f32(f32(-1f) * -613f);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32) -> Struct_3 {
    let var_0 = ~vec4<i32>(~u_input.a, i32(-1i) * -u_input.d, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_add_i32(-46402i, u_input.a) >> (34623u % 32u)), u_input.a);
    var var_1 = vec4<u32>(u_input.e.x, global4.x, _wgslsmith_div_u32(21203u, 4294967295u) >> (_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, u_input.c.x, 9797u) | ~global1.a, 1u >> ((global4.x & global1.a) % 32u), _wgslsmith_dot_vec2_u32(min(u_input.e, vec2<u32>(u_input.e.x, 53101u)), ~global2[_wgslsmith_index_u32(global1.a, 30u)])) % 32u), 2321u);
    return Struct_3(u_input.b.x & ~(_wgslsmith_mult_u32(3610u, 1u) & _wgslsmith_clamp_u32(57990u, 0u, 1u)), any(vec4<bool>(true, func_3(arg_2, ~global1.a, Struct_2(Struct_1(83903u), Struct_1(global4.x), vec3<i32>(var_0.x, 1i, u_input.a), arg_0, var_0.yxw), ~0u).x, true, true)), Struct_1(arg_0.a), -3304f);
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = func_4(arg_0.b, vec4<f32>(506f, _wgslsmith_div_f32(-1507f, _wgslsmith_f_op_f32(f32(-1f) * -1400f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(f32(-1f) * -195f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1166f) + _wgslsmith_f_op_f32(-1874f - 1000f))))), 1366f);
    let var_1 = firstLeadingBit(-arg_0.e.x);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(select(223f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d))), var_0.b))));
    var var_2 = Struct_4(select(!any(select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(var_0.b, true, var_0.b), false)), !var_0.b, (_wgslsmith_div_f32(-1186f, var_0.d) <= var_0.d) & !var_0.b), arg_0, _wgslsmith_div_f32(-696f, var_0.d), max(min(min(4294967295u, u_input.b.x), select(u_input.c.x, u_input.b.x, var_0.b)), var_0.a) < 1u, _wgslsmith_div_f32(1698f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, var_0.d)))));
    var var_3 = _wgslsmith_f_op_f32(exp2(var_0.d));
    return any(func_3(237f, 4294967295u, Struct_2(arg_0.b, func_4(func_4(Struct_1(4294967295u), vec4<f32>(var_2.c, 121f, 1907f, 1000f), -1040f).c, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, 738f, 725f, -388f) - vec4<f32>(var_2.c, -146f, var_0.d, -1000f)), var_0.d).c, vec3<i32>(38719i, arg_0.e.x, var_2.b.e.x), Struct_1(global1.a >> (98862u % 32u)), vec3<i32>(0i, 2147483647i, var_2.b.c.x) | ~var_2.b.e), _wgslsmith_div_u32(reverseBits(~arg_0.d.a), 1u)).xy);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: f32) -> Struct_4 {
    let var_0 = ~(~abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(57436u, 39740u, 18616u, 4294967295u), vec4<u32>(1u, u_input.e.x, 4294967295u, 0u))));
    let var_1 = arg_1.x;
    global3 = _wgslsmith_f_op_f32(-arg_2);
    let var_2 = _wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(global4.x, _wgslsmith_mod_u32(~u_input.e.x | ~global1.a, 1u), abs(~(~1u))));
    global4 = vec2<u32>(~var_0.x, 17061u);
    return Struct_4(!(abs(~var_2) > abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, 22874u), vec2<u32>(44476u, var_2)))), Struct_2(func_4(func_4(func_4(Struct_1(1u), vec4<f32>(-234f, arg_2, arg_2, 1207f), -566f).c, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-475f, arg_2, arg_2, arg_2))), _wgslsmith_f_op_f32(round(arg_2))).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2310f, arg_2, arg_2, arg_2) - vec4<f32>(-298f, -1274f, arg_2, -168f))), arg_2).c, Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, var_2), u_input.c)), ~vec3<i32>(-37613i, u_input.d & u_input.d, ~u_input.d), Struct_1(~(~39552u)), abs(vec3<i32>(1460i, abs(u_input.d), i32(-1i) * -26307i))), -516f, false, _wgslsmith_div_f32(arg_2, arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -144f;
    let var_0 = _wgslsmith_sub_i32(u_input.d, u_input.d) > _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_mod_i32(u_input.a, 0i), _wgslsmith_mult_i32(u_input.a, -2147483647i)), max(reverseBits(vec2<i32>(1i, -1i)), countOneBits(vec2<i32>(10825i, u_input.d))));
    let var_1 = func_5(vec3<bool>(all(vec3<bool>(false, var_0, true)) | !func_1(Struct_2(Struct_1(4294967295u), Struct_1(u_input.c.x), vec3<i32>(u_input.d, 1i, u_input.d), Struct_1(40168u), vec3<i32>(2147483647i, u_input.d, u_input.d))), true, !all(!vec4<bool>(var_0, var_0, true, var_0))), select(vec2<bool>(true, false), vec2<bool>(true, var_0), vec2<bool>(!func_3(-758f, 31115u, Struct_2(Struct_1(38452u), Struct_1(3905u), vec3<i32>(u_input.a, -19014i, u_input.d), Struct_1(4294967295u), vec3<i32>(u_input.d, 1i, -2147483647i)), global1.a).x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(1394f - 977f))) * func_4(func_4(Struct_1(0u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-964f, 463f, 1015f, 154f) - vec4<f32>(1429f, -444f, -431f, 969f)), -1000f).c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-819f, 917f, 846f, -643f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(809f, 117f, -745f, 714f))), _wgslsmith_div_f32(-410f, -192f)).d));
    var var_2 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.e, ~(~var_1.b.a.a), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.c, var_1.e, var_1.e, 955f))))), vec4<f32>(-251f, _wgslsmith_f_op_f32(f32(-1f) * -397f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1060f - -1660f)), var_1.e))));
}

