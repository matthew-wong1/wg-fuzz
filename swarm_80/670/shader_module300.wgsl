struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    global0 = array<vec4<bool>, 16>();
    var var_0 = 0u;
    var_0 = 1u;
    var var_1 = -u_input.a;
    let var_2 = select(select(vec3<bool>(any(vec2<bool>(true, true)), true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), !any(vec2<bool>(true, true))), !any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false))), vec3<bool>(true, true, true), vec3<bool>(true, (false || all(vec3<bool>(true, false, true))) | false, all(vec2<bool>(false, false))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(333f + _wgslsmith_f_op_f32(step(-1171f, 666f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(264f - -930f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1423f)))))));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(125f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(1000f - 2320f), _wgslsmith_f_op_f32(select(-454f, 249f, true))))))));
    global0 = array<vec4<bool>, 16>();
    var var_1 = ~23566u & _wgslsmith_mult_u32(max(arg_0.x, _wgslsmith_div_u32(arg_0.x, arg_0.x)), arg_0.x);
    let var_2 = !vec3<bool>(all(vec3<bool>(true, false, true)) || true, true, true);
    var var_3 = Struct_2(Struct_1(-(u_input.c.x ^ 2147483647i), !select(var_2, vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(true, true, var_2.x))), Struct_1(65193i, select(select(!vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(true, false, var_2.x), var_2.x || true), var_2, var_2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.yw)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xy) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) - vec2<f32>(-160f, -479f))))), Struct_1(u_input.b, !select(!vec3<bool>(true, true, var_2.x), vec3<bool>(var_2.x, true, false), select(var_2, var_2, var_2.x))), Struct_1(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -2147483647i), ~u_input.c.yw) >> (_wgslsmith_add_u32(reverseBits(arg_0.x), 1u) % 32u), vec3<bool>(false, !(arg_0.x != arg_0.x), var_2.x)));
    return var_3.d;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(839f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0.c.x)))) * -979f)))));
    global0 = array<vec4<bool>, 16>();
    global0 = array<vec4<bool>, 16>();
    let var_1 = arg_1.zy;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.c.x)) - -858f), _wgslsmith_div_f32(410f, -507f), arg_0.c.x))));
    return func_2(vec4<u32>(firstTrailingBit(_wgslsmith_clamp_u32(max(0u, 40501u), _wgslsmith_mult_u32(4294967295u, 0u), ~1u)), 4294967295u, ~select(select(359u, 4294967295u, arg_0.d.b.x), ~42090u, !arg_1.x), 12666u));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    global0 = array<vec4<bool>, 16>();
    global0 = array<vec4<bool>, 16>();
    var var_0 = arg_3.c.x;
    var var_1 = Struct_2(func_4(Struct_2(arg_3.d, func_2(vec4<u32>(1u, 1u, 1u, 1u)), arg_3.c, func_2(~vec4<u32>(1u, 4294967295u, 4294967295u, 48391u)), Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(26073i, -5888i, arg_3.e.a, 1i), u_input.c), !vec3<bool>(false, true, arg_1))), select(!(!vec4<bool>(arg_3.e.b.x, arg_3.a.b.x, false, false)), !select(global0[_wgslsmith_index_u32(31022u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], vec4<bool>(true, arg_1, arg_3.e.b.x, arg_1)), select(!global0[_wgslsmith_index_u32(16219u, 16u)], select(vec4<bool>(true, arg_1, true, true), global0[_wgslsmith_index_u32(32917u, 16u)], vec4<bool>(false, false, arg_3.d.b.x, true)), !arg_3.e.b.x))), arg_3.d, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-980f, arg_2) - arg_0.yx), _wgslsmith_f_op_vec2_f32(select(arg_0.zy, arg_3.c, arg_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x))), arg_3.a.b.zz)))), func_2(~(~vec4<u32>(1u, 1u, 1u, 1u))), arg_3.e);
    let var_2 = Struct_1(_wgslsmith_div_i32(32004i, _wgslsmith_div_i32(~var_1.d.a, -2147483647i) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 14409u, 4294967295u, 52943u), vec4<u32>(25428u, 45518u, 6715u, 72010u)) % 32u)), func_4(Struct_2(arg_3.b, Struct_1(countOneBits(-1i), !var_1.d.b), arg_0.xy, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-9782i, u_input.b, var_1.a.a, -25775i), u_input.c), !vec3<bool>(var_1.a.b.x, var_1.d.b.x, arg_1)), func_2(~vec4<u32>(4294967295u, 47470u, 46575u, 0u))), !global0[_wgslsmith_index_u32(select(0u, 27215u, u_input.c.x < -17013i), 16u)]).b);
    return var_1.b;
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_3) -> u32 {
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_div_u32(arg_0, arg_0), ~arg_0, ~arg_0), ~(vec3<u32>(arg_0, 1u, 1u) >> (vec3<u32>(arg_0, 11600u, arg_0) % vec3<u32>(32u))) & vec3<u32>(56697u | arg_0, ~arg_0, ~59069u)), ~vec3<u32>(_wgslsmith_sub_u32(~arg_0, abs(arg_0)), 10793u, abs(~arg_0)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(-firstTrailingBit(vec2<i32>(0i, u_input.a)), u_input.c.ww << (vec2<u32>(75431u, 85969u) % vec2<u32>(32u))) ^ (u_input.c.yz | -u_input.c.xy), (vec2<i32>(30924i, abs(u_input.b)) >> (reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(38955u, 0u), vec2<u32>(45239u, 11896u))) % vec2<u32>(32u))) | u_input.c.xy);
    let var_1 = ~func_5(_wgslsmith_add_u32(1144u, firstTrailingBit(0u) << (~28226u % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(377f, -837f, -634f, 348f)))), Struct_3(Struct_2(Struct_1(-1i, vec3<bool>(true, true, true)), Struct_1(21376i, vec3<bool>(true, true, false)), vec2<f32>(948f, -911f), func_1(vec3<f32>(1000f, 1887f, 435f), true, 110f, Struct_2(Struct_1(u_input.a, vec3<bool>(true, false, false)), Struct_1(2147483647i, vec3<bool>(false, true, true)), vec2<f32>(628f, 412f), Struct_1(u_input.a, vec3<bool>(false, false, true)), Struct_1(var_0.x, vec3<bool>(false, true, false)))), Struct_1(2147483647i, vec3<bool>(false, false, true)))));
    global0 = array<vec4<bool>, 16>();
    global0 = array<vec4<bool>, 16>();
    var var_2 = 367f;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(441f + 1469f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1040f, -2360f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1577f))))));
    let var_3 = !func_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(191f, 289f, -215f)), vec3<f32>(479f, 706f, 1496f), 1u != var_1)))), !(_wgslsmith_f_op_f32(func_3()) > _wgslsmith_f_op_f32(-1285f * 671f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -648f))), Struct_2(func_2(vec4<u32>(var_1, var_1, var_1, 48404u)), func_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1239f, -394f, -1000f), vec3<f32>(109f, 1437f, -1489f))), all(vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(floor(590f)), Struct_2(Struct_1(1i, vec3<bool>(true, true, true)), Struct_1(var_0.x, vec3<bool>(false, true, true)), vec2<f32>(-250f, 224f), Struct_1(-2147483647i, vec3<bool>(false, false, true)), Struct_1(-2147483647i, vec3<bool>(true, false, false)))), vec2<f32>(_wgslsmith_f_op_f32(floor(1237f)), _wgslsmith_f_op_f32(f32(-1f) * -452f)), func_1(vec3<f32>(-656f, -203f, 321f), true, 752f, Struct_2(Struct_1(u_input.a, vec3<bool>(false, false, true)), Struct_1(0i, vec3<bool>(true, true, true)), vec2<f32>(335f, 809f), Struct_1(-2147483647i, vec3<bool>(true, true, false)), Struct_1(u_input.b, vec3<bool>(true, true, false)))), func_2(abs(vec4<u32>(var_1, 38627u, 0u, var_1))))).b;
    var var_4 = !vec3<bool>(var_3.x && var_3.x, var_3.x, func_4(Struct_2(Struct_1(var_0.x, vec3<bool>(true, false, true)), Struct_1(var_0.x, vec3<bool>(false, var_3.x, false)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(305f, -3438f))), func_4(Struct_2(Struct_1(19816i, var_3), Struct_1(var_0.x, vec3<bool>(var_3.x, var_3.x, false)), vec2<f32>(1000f, -799f), Struct_1(u_input.b, vec3<bool>(false, var_3.x, false)), Struct_1(13788i, var_3)), vec4<bool>(var_3.x, var_3.x, false, var_3.x)), Struct_1(var_0.x, var_3)), vec4<bool>(any(vec2<bool>(true, var_3.x)), select(true, true, var_3.x), func_2(vec4<u32>(var_1, var_1, var_1, 4294967295u)).b.x, var_3.x)).b.x);
    let var_5 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-631f, _wgslsmith_f_op_f32(447f * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(f32(-1f) * -462f)), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(916f, -245f, 1068f), vec3<f32>(1000f, 1000f, -417f), false)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-590f, 301f, -672f)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1223f, 1498f, -969f), vec3<f32>(906f, 1712f, -138f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(297f, -279f, -458f))), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-848f, -901f, -584f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-801f, -1726f, -759f) - vec3<f32>(2109f, 472f, 1755f)))))), select(!func_4(Struct_2(Struct_1(10259i, var_3), Struct_1(var_0.x, var_3), vec2<f32>(2349f, -1000f), Struct_1(var_0.x, var_3), Struct_1(2147483647i, var_3)), global0[_wgslsmith_index_u32(36750u, 16u)]).b, !var_3, var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, (select(~var_1, var_1, true) << (~_wgslsmith_div_u32(var_1, var_1) % 32u)) << (func_5(~1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_5.x, -1645f, var_5.x, 1000f), vec4<f32>(-1433f, 969f, 1623f, -1551f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1072f, -2097f, 283f, -1059f))), Struct_3(Struct_2(Struct_1(-41585i, var_3), Struct_1(-72500i, var_3), var_5.zz, Struct_1(u_input.b, var_3), Struct_1(-1i, var_3)))) % 32u));
}

