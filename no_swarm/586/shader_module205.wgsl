struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: u32,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
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

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(true, vec2<i32>(2147483647i, -21460i)), Struct_3(true, vec2<i32>(2147483647i, i32(-2147483648))), Struct_3(true, vec2<i32>(-27852i, 1i)), Struct_3(true, vec2<i32>(-1i, -1i)), Struct_3(true, vec2<i32>(-32637i, -16534i)), Struct_3(false, vec2<i32>(74119i, -27700i)), Struct_3(true, vec2<i32>(-1i, 17320i)), Struct_3(false, vec2<i32>(19920i, -52727i)), Struct_3(true, vec2<i32>(1i, 0i)), Struct_3(true, vec2<i32>(1i, -43705i)), Struct_3(false, vec2<i32>(12994i, 1i)), Struct_3(false, vec2<i32>(-1i, 2147483647i)), Struct_3(false, vec2<i32>(-4032i, 34619i)), Struct_3(true, vec2<i32>(20668i, 2147483647i)), Struct_3(false, vec2<i32>(12832i, 0i)), Struct_3(false, vec2<i32>(2147483647i, -9143i)), Struct_3(false, vec2<i32>(1i, 2451i)), Struct_3(false, vec2<i32>(2147483647i, 2147483647i)), Struct_3(true, vec2<i32>(-48543i, -49041i)), Struct_3(true, vec2<i32>(18563i, 20757i)), Struct_3(true, vec2<i32>(48236i, 5640i)), Struct_3(false, vec2<i32>(30576i, 1i)), Struct_3(true, vec2<i32>(64482i, i32(-2147483648))), Struct_3(true, vec2<i32>(i32(-2147483648), 40623i)), Struct_3(true, vec2<i32>(66733i, 17185i)), Struct_3(true, vec2<i32>(10456i, 3153i)), Struct_3(true, vec2<i32>(29938i, 28509i)), Struct_3(false, vec2<i32>(i32(-2147483648), -1i)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    var var_0 = all(!vec4<bool>(true, true, !all(vec2<bool>(true, true)), true));
    global0 = array<Struct_3, 28>();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1313f))))), vec2<bool>(!all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false)), !(!all(vec3<bool>(false, true, false)))), u_input.a.x, any(vec2<bool>(true, true)), Struct_1(vec2<bool>(!select(false, true, true), true), _wgslsmith_dot_vec2_u32(u_input.a.yz, reverseBits(~vec2<u32>(u_input.a.x, u_input.a.x))), firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xx)) << (~(~vec2<u32>(1u, u_input.a.x)) % vec2<u32>(32u)), 1i));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, var_2.a, -1530f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(975f, 1001f, -899f), vec3<f32>(var_2.a, var_1.a, var_1.a)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.a, var_2.a, var_1.a), vec3<f32>(var_2.a, 118f, -2188f), var_2.d))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(275f, -503f, var_2.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, var_1.a, -2030f) - vec3<f32>(-1198f, var_1.a, var_2.a))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(min(var_1.a, var_1.a)), -1908f), true))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.a + var_1.a), var_1.a, 552f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(516f, var_2.a, var_1.a)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, var_1.a, -335f), vec3<f32>(-330f, -1000f, var_1.a), var_1.d))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-837f, var_1.a, 381f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -974f, var_1.a))))));
    return ((_wgslsmith_div_u32(u_input.a.x >> (var_2.e.b % 32u), ~59635u) < ~0u) | var_1.e.a.x) || true;
}

fn func_2(arg_0: vec3<u32>) -> vec2<f32> {
    global0 = array<Struct_3, 28>();
    global0 = array<Struct_3, 28>();
    let var_0 = Struct_1(vec2<bool>(func_3(), true), _wgslsmith_dot_vec2_u32(vec2<u32>(~(~4294967295u), min(~0u, ~1423u)), firstLeadingBit(~(~u_input.a.yz))), ~(~(~_wgslsmith_mod_vec2_u32(arg_0.zx, vec2<u32>(arg_0.x, arg_0.x)))), ~u_input.c);
    let var_1 = Struct_3(var_0.a.x, min(firstTrailingBit(~vec2<i32>(1990i, var_0.d)) ^ ~vec2<i32>(var_0.d, u_input.c), ~_wgslsmith_div_vec2_i32(vec2<i32>(-46692i, -5691i), vec2<i32>(-1i, 19131i))));
    global0 = array<Struct_3, 28>();
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(floor(-991f)), -1647f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1370f, -655f), _wgslsmith_f_op_f32(f32(-1f) * -1671f)), vec2<f32>(-785f, _wgslsmith_f_op_f32(select(-119f, -1409f, var_0.a.x)))))));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-363f, -1579f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-428f * 1202f), _wgslsmith_f_op_f32(-1016f - -321f))))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(843f, -275f, _wgslsmith_f_op_f32(-1554f - _wgslsmith_f_op_f32(ceil(-175f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_2(vec3<u32>(_wgslsmith_clamp_u32(countOneBits(u_input.a.x), min(64307u, 1767u), u_input.a.x), firstTrailingBit(u_input.a.x), 1u))), _wgslsmith_f_op_vec2_f32(func_2(~vec3<u32>(40768u, 51890u, ~47354u))), false));
    let var_2 = 4294967295u;
    var var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(var_2, ~(~var_2), firstTrailingBit(_wgslsmith_clamp_u32(var_2, var_2, var_2)), _wgslsmith_mult_u32(~46299u, _wgslsmith_mod_u32(u_input.a.x, 4294967295u))) & _wgslsmith_mult_vec4_u32(vec4<u32>(~0u, 0u, max(1u, 4294967295u), countOneBits(32158u)), ~(vec4<u32>(0u, u_input.a.x, var_2, u_input.a.x) | vec4<u32>(4294967295u, 60115u, var_2, 20050u))), _wgslsmith_mod_vec4_u32(~min(vec4<u32>(11982u, var_2, 10520u, var_2), vec4<u32>(u_input.a.x, var_2, var_2, 4294967295u)) >> (~(~vec4<u32>(var_2, 4294967295u, 66347u, 8769u)) % vec4<u32>(32u)), ~vec4<u32>(1701u, var_2, 44272u, var_2) ^ ~vec4<u32>(u_input.a.x, 0u, 1u, 0u)));
    var var_4 = !vec3<bool>(any(vec2<bool>(true, true)), true, true);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 28>();
    let var_0 = any(!vec4<bool>(any(vec4<bool>(true, false, false, false)) && true, !func_1(), true || all(vec2<bool>(true, false)), true | func_3()));
    var var_1 = false;
    let var_2 = abs(firstLeadingBit(13353u));
    var var_3 = Struct_1(vec2<bool>(!(var_0 & !var_0), select(select(all(vec4<bool>(var_0, false, false, var_0)), u_input.c <= -15187i, !var_0), true, func_1())), u_input.a.x | 19102u, ~(~(_wgslsmith_clamp_vec2_u32(u_input.a.zx, u_input.a.yz, u_input.a.zx) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(var_2, 62495u), u_input.a.yy))), -u_input.b);
    var var_4 = !vec3<bool>(all(select(select(vec3<bool>(true, var_3.a.x, false), vec3<bool>(true, var_3.a.x, var_0), vec3<bool>(false, true, true)), vec3<bool>(var_0, var_0, var_0), select(vec3<bool>(var_0, true, var_3.a.x), vec3<bool>(false, true, true), var_0))), var_3.a.x, true);
    let var_5 = vec4<f32>(1681f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-124f + -452f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2001f + _wgslsmith_f_op_f32(f32(-1f) * -1055f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1246f, 556f, false)), 154f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1783f * _wgslsmith_f_op_f32(1593f + -769f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1214f)), -1054f))));
    let var_6 = 0u;
    var var_7 = firstLeadingBit(var_2);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(var_3.d, -27514i, var_3.d), select(vec3<i32>(37463i, var_3.d, 1i), vec3<i32>(-39461i, var_3.d, var_3.d), vec3<bool>(var_4.x, false, var_4.x))), u_input.c << (_wgslsmith_add_u32(var_3.c.x, u_input.a.x) % 32u)));
}

