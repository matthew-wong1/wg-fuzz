struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(78822u, 32883u, 4294967295u, 91233u, 10131u);

var<private> global1: f32 = -1000f;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec4<bool> {
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    let var_0 = arg_1.c;
    global1 = 921f;
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_3.d))));
    return select(select(vec4<bool>(~u_input.c.x == ~0u, all(select(vec4<bool>(var_0.a.x, arg_3.b, arg_1.b.b, arg_2.c.b), vec4<bool>(true, arg_2.c.b, var_0.b, var_0.b), false)), true, select(true, true, any(vec4<bool>(false, true, true, arg_1.b.a.x)))), !(!select(vec4<bool>(var_0.b, false, true, arg_3.a.x), vec4<bool>(arg_3.b, false, false, arg_3.a.x), vec4<bool>(arg_0.b, true, true, false))), false | !arg_0.b), select(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(var_0.a.x, arg_3.a.x, arg_2.b.b, false), false), select(vec4<bool>(false, arg_0.a.x, true, true), vec4<bool>(var_0.b, arg_2.c.a.x, arg_2.b.b, arg_0.a.x), true), !vec4<bool>(arg_0.b, false, arg_0.b, arg_3.a.x)), vec4<bool>(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)]) < 29085u, true & all(vec4<bool>(var_0.b, arg_1.b.b, arg_1.b.a.x, false)), arg_2.c.a.x || false, _wgslsmith_f_op_f32(sign(109f)) <= arg_1.a), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, var_0.b, false, false), false), select(vec4<bool>(arg_1.c.a.x, false, false, false), vec4<bool>(true, arg_1.c.a.x, var_0.a.x, var_0.b), vec4<bool>(true, arg_1.c.a.x, arg_1.b.a.x, arg_0.a.x)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, arg_2.b.b, arg_3.a.x, arg_3.a.x), vec4<bool>(arg_3.a.x, arg_1.b.b, arg_0.a.x, false), true), arg_1.c.b & any(vec3<bool>(arg_2.c.b, true, false)))), vec4<bool>(any(!(!vec3<bool>(arg_1.c.a.x, arg_0.b, false))), any(vec4<bool>(false, arg_1.c.a.x, arg_3.a.x, arg_1.b.b)) && true, any(select(vec3<bool>(true, true, true), vec3<bool>(arg_2.c.a.x, var_0.b, true), !vec3<bool>(arg_0.a.x, true, false))), false));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool) -> vec3<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(arg_0.d - 728f), arg_0, arg_0);
    let var_1 = Struct_1(vec2<bool>(all(!select(vec2<bool>(false, arg_0.b), var_0.c.a, true)), any(arg_1)), false, 8649i, _wgslsmith_f_op_f32(abs(876f)));
    var var_2 = ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 5u)], 5u)];
    global0 = array<u32, 5>();
    let var_3 = var_0;
    return ~max(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(1u, global0[_wgslsmith_index_u32(u_input.a, 5u)], u_input.c.x)), ~vec3<u32>(1u, u_input.c.x, 1u)), vec3<u32>(4294967295u, u_input.c.x, ~17377u));
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, 16564u)), 4294967295u, 4294967295u) & _wgslsmith_mod_vec3_u32(func_4(Struct_1(vec2<bool>(false, true), true, abs(-1i), -479f), select(vec4<bool>(true, true, true, true), func_3(Struct_1(vec2<bool>(false, false), true, 20486i, -259f), Struct_2(460f, Struct_1(vec2<bool>(true, false), true, 0i, 2906f), Struct_1(vec2<bool>(false, true), false, 20098i, -2188f)), Struct_2(-1340f, Struct_1(vec2<bool>(false, true), false, u_input.b.x, -1072f), Struct_1(vec2<bool>(true, false), false, 0i, -793f)), Struct_1(vec2<bool>(false, true), true, u_input.b.x, 200f)), vec4<bool>(false, false, true, false)), true), vec3<u32>(abs(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19834u, 5u)], 5u)], 5u)]), global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 0u), vec3<u32>(u_input.a, 1u, 41184u)), 5u)], 5u)] | func_4(Struct_1(vec2<bool>(true, true), true, u_input.b.x, -148f), vec4<bool>(true, false, false, false), false).x));
    var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(func_4(Struct_1(vec2<bool>(true, false), true, -1i, 624f), vec4<bool>(true, true, true, true), true) >> (abs(vec3<u32>(var_0.x, 62741u, 4294967295u)) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(~vec3<u32>(33545u, global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)]), vec3<u32>(var_0.x, 1u, 44086u))), select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 5u)], u_input.c.x), vec2<u32>(global0[_wgslsmith_index_u32(39744u, 5u)], 139u)), 36523u, u_input.c.x), vec3<u32>(u_input.a, _wgslsmith_div_u32(4294967295u, 22291u), ~34945u), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), func_3(Struct_1(vec2<bool>(false, true), false, -48039i, 1174f), Struct_2(268f, Struct_1(vec2<bool>(true, false), true, u_input.b.x, 1000f), Struct_1(vec2<bool>(true, false), false, u_input.b.x, 1000f)), Struct_2(-1772f, Struct_1(vec2<bool>(true, false), false, 33127i, 923f), Struct_1(vec2<bool>(false, true), false, 42761i, -477f)), Struct_1(vec2<bool>(true, true), true, u_input.b.x, -308f)).ywx))), vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, firstLeadingBit(var_0.x)), 5u)] >> (~(~158406u) % 32u), 1u >> (abs(global0[_wgslsmith_index_u32(var_0.x, 5u)]) % 32u), ~(select(0u, u_input.a, false) & var_0.x)));
    var var_1 = Struct_1(!(!vec2<bool>(all(vec3<bool>(false, false, true)), func_3(Struct_1(vec2<bool>(true, true), false, u_input.b.x, 2979f), Struct_2(797f, Struct_1(vec2<bool>(true, true), true, 1i, 584f), Struct_1(vec2<bool>(false, true), false, 2147483647i, -666f)), Struct_2(703f, Struct_1(vec2<bool>(true, true), false, u_input.b.x, -1216f), Struct_1(vec2<bool>(false, true), true, u_input.b.x, 597f)), Struct_1(vec2<bool>(true, false), false, -39781i, -946f)).x)), any(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false))), firstTrailingBit(_wgslsmith_div_i32(~(-11849i), u_input.b.x)), -1044f);
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.d)))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(floor(1f)), Struct_1(select(vec2<bool>(false, all(vec2<bool>(var_1.b, var_1.b))), select(func_3(Struct_1(var_1.a, var_1.a.x, -45458i, 1463f), Struct_2(var_1.d, Struct_1(var_1.a, true, var_1.c, var_1.d), Struct_1(var_1.a, true, u_input.b.x, -2912f)), Struct_2(-2041f, Struct_1(var_1.a, true, -36740i, var_1.d), Struct_1(vec2<bool>(var_1.b, var_1.a.x), true, var_1.c, -731f)), Struct_1(var_1.a, true, var_1.c, 1215f)).xx, vec2<bool>(false, var_1.a.x), !vec2<bool>(true, var_1.b)), -273f <= _wgslsmith_f_op_f32(ceil(-1980f))), func_3(Struct_1(!var_1.a, false | var_1.b, var_1.c << (0u % 32u), _wgslsmith_f_op_f32(-515f + var_1.d)), Struct_2(var_1.d, Struct_1(var_1.a, false, u_input.b.x, -206f), Struct_1(vec2<bool>(var_1.a.x, true), var_1.b, 0i, var_1.d)), Struct_2(var_1.d, Struct_1(var_1.a, true, 1i, var_1.d), Struct_1(vec2<bool>(false, true), var_1.b, -56908i, var_1.d)), Struct_1(select(var_1.a, vec2<bool>(true, var_1.b), vec2<bool>(var_1.a.x, false)), var_1.a.x, countOneBits(u_input.b.x), _wgslsmith_f_op_f32(ceil(799f)))).x, -_wgslsmith_div_i32(firstTrailingBit(var_1.c), _wgslsmith_sub_i32(30210i, var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_1.d, -487f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-921f, -1968f))))), Struct_1(vec2<bool>(true, true), var_1.a.x, abs(2174i) & _wgslsmith_dot_vec3_i32(abs(u_input.b), vec3<i32>(-2147483647i, var_1.c, var_1.c) ^ u_input.b), _wgslsmith_f_op_f32(-1994f + 1774f)));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-573f * 443f) + _wgslsmith_f_op_f32(max(-1000f, 1971f))) - _wgslsmith_f_op_f32(select(var_2.a, var_1.d, true))) + 229f), Struct_1(vec2<bool>(true, true), any(!(!vec4<bool>(true, var_1.a.x, var_2.b.a.x, false))), -u_input.b.x, _wgslsmith_div_f32(-265f, _wgslsmith_f_op_f32(-var_1.d))), var_2.c);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = true;
    let var_1 = vec4<i32>(countOneBits(-4656i), _wgslsmith_sub_i32(abs(max(min(53870i, 26912i), arg_2.b.c)), ~(~_wgslsmith_sub_i32(u_input.b.x, 15200i))), countOneBits(firstTrailingBit(u_input.b.x) & _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -28i, -63881i, arg_2.b.c), abs(vec4<i32>(arg_2.b.c, 2147483647i, 9686i, -63763i)))), u_input.b.x | arg_2.c.c);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, arg_2.b.d) + 1510f);
    let var_2 = arg_2;
    global1 = _wgslsmith_f_op_f32(round(var_2.c.d));
    return Struct_1(func_3(func_2().c, Struct_2(1401f, func_2().c, func_2().b), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1825f - 477f))), func_2().c, func_2().c), func_2().b).yz, select(var_0, var_2.b.b, !(!arg_2.c.a.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.b.c & u_input.b.x, 1i, arg_2.c.c >> (~u_input.a % 32u)), select(vec3<i32>(-19253i, _wgslsmith_add_i32(-2147483647i, var_1.x), _wgslsmith_sub_i32(24331i, 20469i)), var_1.wyx | -vec3<i32>(var_2.b.c, var_2.c.c, var_1.x), arg_0)), _wgslsmith_f_op_f32(exp2(arg_2.a)));
}

fn func_1() -> Struct_1 {
    let var_0 = ~u_input.a;
    var var_1 = func_5(vec3<bool>(false, true, true), ~_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(19084u, var_0)), _wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(0u, 5u)]))) | u_input.c, func_2());
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2068f)), Struct_1(func_5(select(vec3<bool>(var_1.b, var_1.a.x, true), vec3<bool>(true, true, true), !vec3<bool>(var_1.a.x, false, false)), select(vec2<u32>(var_0, 4294967295u), vec2<u32>(4294967295u, 0u), var_1.a) << (~vec2<u32>(global0[_wgslsmith_index_u32(17375u, 5u)], global0[_wgslsmith_index_u32(u_input.a, 5u)]) % vec2<u32>(32u)), Struct_2(-714f, func_2().c, Struct_1(var_1.a, var_1.b, var_1.c, var_1.d))).a, func_2().b.a.x, firstLeadingBit(_wgslsmith_mod_i32(u_input.b.x, ~2127i)), _wgslsmith_f_op_f32(f32(-1f) * -667f)), Struct_1(var_1.a, abs(13032i) < _wgslsmith_sub_i32(u_input.b.x, ~u_input.b.x), -u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.d)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d, -790f, var_1.d, var_1.d) - vec4<f32>(var_2.a, var_1.d, 665f, 840f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(var_1.d + var_1.d), _wgslsmith_f_op_f32(f32(-1f) * -135f), var_2.c.d, _wgslsmith_div_f32(var_1.d, var_1.d)))), vec4<f32>(-1604f, _wgslsmith_f_op_f32(trunc(-587f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d + 1233f)), _wgslsmith_f_op_f32(-656f - _wgslsmith_f_op_f32(f32(-1f) * -1335f)))));
    var_2 = func_2();
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_1(!select(!(!vec2<bool>(var_0.b, false)), func_2().c.a, true), true, var_0.c, _wgslsmith_f_op_f32(func_1().d * _wgslsmith_f_op_f32(var_0.d + _wgslsmith_div_f32(func_5(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 25272u), Struct_2(-1136f, Struct_1(var_0.a, var_0.a.x, u_input.b.x, -874f), Struct_1(var_0.a, var_0.a.x, var_0.c, -209f))).d, var_0.d))));
    global0 = array<u32, 5>();
    var var_1 = ~u_input.c;
    var_0 = func_1();
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-959f, -847f, var_0.d, var_0.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d, var_0.d, 850f, -1720f)), vec4<bool>(true, false, var_0.b, var_0.b))))) + vec4<f32>(var_0.d, _wgslsmith_f_op_f32(-1089f - _wgslsmith_f_op_f32(max(878f, var_0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d))), _wgslsmith_f_op_f32(-2170f - -270f)))));
    let var_3 = _wgslsmith_div_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.a), 5u)], ~1u, var_1.x, 1u) << (~(~select(vec4<u32>(62912u, 100027u, 52313u, global0[_wgslsmith_index_u32(54407u, 5u)]), vec4<u32>(var_1.x, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70102u, 5u)], 5u)], 131599u), vec4<bool>(false, false, var_0.a.x, var_0.a.x))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(abs(countOneBits(vec4<u32>(u_input.c.x, 68858u, global0[_wgslsmith_index_u32(20121u, 5u)], u_input.c.x))), _wgslsmith_div_vec4_u32(abs(~vec4<u32>(12049u, 1u, 0u, 1u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(11814u, 13883u, global0[_wgslsmith_index_u32(u_input.c.x, 5u)], u_input.a), vec4<u32>(75011u, 126816u, 0u, var_1.x)), ~var_1.x, 4294967295u, 81715u))));
    var_0 = func_1();
    global1 = 880f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<i32>(-var_0.c, firstTrailingBit(-2147483647i))), ~max(firstLeadingBit(var_3.x), var_1.x) << (u_input.a % 32u), select(-15213i, -(~_wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.zz)), 1000f == _wgslsmith_f_op_f32(-1084f * _wgslsmith_f_op_f32(floor(var_0.d)))));
}

