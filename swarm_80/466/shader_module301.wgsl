struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool, arg_3: u32) -> vec2<bool> {
    var var_0 = vec3<u32>(0u, _wgslsmith_mult_u32(~u_input.b, _wgslsmith_mod_u32(1u, arg_3)), reverseBits(arg_3));
    global0 = true;
    var var_1 = Struct_1(firstTrailingBit(firstTrailingBit(vec3<u32>(u_input.d, 44928u, u_input.c)) | (vec3<u32>(1u, arg_0.a.x, 4294967295u) << (vec3<u32>(0u, 0u, 0u) % vec3<u32>(32u)))), min(max(vec4<u32>(u_input.b, reverseBits(arg_3), u_input.b, 20450u), firstLeadingBit(arg_0.b)), ~(~(~vec4<u32>(14846u, 54695u, var_0.x, 21583u)))), !(!arg_0.c));
    var_1 = Struct_1(_wgslsmith_clamp_vec3_u32(var_1.b.xyw ^ (~arg_0.a | arg_0.a), firstTrailingBit(vec3<u32>(~u_input.d, 1u, arg_3)), ~arg_0.b.yyw), var_1.b, arg_0.c);
    var var_2 = ~abs(arg_3);
    return arg_0.c;
}

fn func_2(arg_0: bool) -> i32 {
    global0 = !any(!vec2<bool>(arg_0, false));
    let var_0 = Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b) ^ vec3<u32>(u_input.c, u_input.c, u_input.b), ~vec3<u32>(19819u, u_input.c, u_input.c)), ~vec3<u32>(u_input.d, 0u, u_input.b)) >> (_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.d, u_input.c, u_input.c)), ~(~vec3<u32>(u_input.d, u_input.d, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.c, 23144u), select(vec3<u32>(18484u, 4294967295u, u_input.c), vec3<u32>(u_input.b, 56777u, u_input.b), false), ~vec3<u32>(u_input.d, u_input.c, u_input.b))) % vec3<u32>(32u)), ~vec4<u32>(u_input.b, ~(u_input.d & 1u), ~84278u, 71995u), select(!select(vec2<bool>(arg_0, arg_0), func_3(Struct_1(vec3<u32>(u_input.b, 10611u, u_input.b), vec4<u32>(15064u, 0u, 1840u, u_input.c), vec2<bool>(arg_0, false)), vec4<f32>(-412f, 1474f, -849f, -1112f), arg_0, u_input.b), !vec2<bool>(arg_0, true)), select(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, arg_0)), vec2<bool>(arg_0, arg_0)), vec2<bool>(false, true), vec2<bool>(false && arg_0, all(vec3<bool>(false, arg_0, arg_0)))), vec2<bool>(!any(vec4<bool>(arg_0, false, true, arg_0)), arg_0)));
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(100f)) + _wgslsmith_div_f32(1194f, -2396f)))) * -451f)));
    global0 = all(!vec2<bool>(_wgslsmith_f_op_f32(var_2 + 256f) < 1000f, true));
    return -15191i;
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: vec2<f32>) -> vec3<u32> {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(min(~(-18841i), u_input.e.x), arg_2.x, u_input.e.x, ~arg_2.x), ~(~vec4<i32>(u_input.a, arg_2.x, u_input.e.x, 58840i)) << (~arg_1 % vec4<u32>(32u)));
    var var_1 = func_2(true);
    var var_2 = _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(341f)))))));
    global0 = -30617i > _wgslsmith_dot_vec3_i32(~(-(~vec3<i32>(-15048i, 2147483647i, 24909i))), ~_wgslsmith_div_vec3_i32(arg_2.wwz, vec3<i32>(1i, 0i, var_0.x)));
    var var_3 = Struct_1(min(min(_wgslsmith_mod_vec3_u32(arg_1.zzy, arg_1.xzy), arg_1.zwy), arg_1.zzw), arg_1, vec2<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), arg_0 != arg_1.x)), false));
    return firstLeadingBit(arg_1.wxz);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<u32>) -> vec4<i32> {
    global0 = true;
    var var_0 = select(true, any(!(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))), false);
    var var_1 = 0i;
    var_0 = false;
    var var_2 = _wgslsmith_div_u32(u_input.c, select(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(87077u), ~u_input.b, _wgslsmith_add_u32(arg_1.x, u_input.b), _wgslsmith_sub_u32(u_input.c, 45004u)), vec4<u32>(1u, min(arg_0.x, 4294967295u), _wgslsmith_add_u32(arg_1.x, u_input.c), select(52795u, 4294967295u, false))), u_input.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(190f + 1000f), -1354f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(444f)))));
    return ~vec4<i32>(u_input.e.x, -34308i, 1i, -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(11091i, -36977i, u_input.e.x);
    var var_1 = func_4(~(~_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.d, 6510u, 79931u), func_1(u_input.b, vec4<u32>(u_input.b, u_input.d, 65782u, 4294967295u), vec4<i32>(-1i, -1i, 2147483647i, var_0.x), vec2<f32>(-1000f, 313f)))), vec2<u32>(~func_1(u_input.d, vec4<u32>(u_input.b, 0u, 4294967295u, u_input.d), vec4<i32>(u_input.a, var_0.x, u_input.e.x, 1i), vec2<f32>(-2681f, 2468f)).x, ~u_input.c) >> (select(~(vec2<u32>(4294967295u, 76037u) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))), vec2<u32>(~0u, u_input.d & 1u), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true)) % vec2<u32>(32u)));
    global0 = any(select(vec2<bool>(!all(vec4<bool>(true, true, false, false)), all(vec4<bool>(false, true, true, false))), vec2<bool>(!func_3(Struct_1(vec3<u32>(u_input.b, 0u, 4294967295u), vec4<u32>(u_input.c, 75853u, u_input.d, 83495u), vec2<bool>(true, true)), vec4<f32>(525f, 1023f, -360f, -1000f), true, u_input.c).x, true), any(vec4<bool>(true, true, true, true))));
    global0 = (u_input.a != ~14365i) & (true && any(func_3(Struct_1(vec3<u32>(0u, u_input.b, 0u), vec4<u32>(u_input.d, u_input.d, u_input.d, u_input.d), vec2<bool>(false, false)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-780f, -987f, 2364f, 730f), vec4<f32>(-1321f, -465f, 263f, 2123f), vec4<bool>(false, false, false, true))), true, func_1(22147u, vec4<u32>(u_input.b, u_input.d, u_input.c, u_input.c), vec4<i32>(-44168i, 2147483647i, -1i, u_input.e.x), vec2<f32>(1000f, 334f)).x)));
    var var_2 = Struct_1(~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, 31267u, u_input.d) >> (vec3<u32>(29050u, u_input.b, u_input.b) % vec3<u32>(32u)), ~select(vec3<u32>(24791u, 91629u, u_input.c), vec3<u32>(42991u, 32247u, u_input.c), vec3<bool>(false, false, true))), ~(vec4<u32>(u_input.c, ~u_input.b, 34714u, _wgslsmith_div_u32(46399u, 35548u)) >> (~(vec4<u32>(4294967295u, 1u, u_input.d, u_input.b) | vec4<u32>(49965u, 1u, 4305u, u_input.b)) % vec4<u32>(32u))), vec2<bool>(select(false, true, any(vec3<bool>(true, true, true))), any(vec4<bool>(true, true, true, true))));
    var_1 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(abs(countOneBits(vec4<i32>(var_1.x, 2147483647i, -2147483647i, 136i) >> (var_2.b % vec4<u32>(32u)))), -_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(var_1.x, u_input.a, u_input.e.x, var_1.x)), vec4<i32>(-20370i, var_0.x, 0i, -2897i), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_1.x, var_0.x), vec4<i32>(var_0.x, u_input.a, var_0.x, 1i)))), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(0i), -25698i, ~0i), vec3<i32>(-u_input.e.x, -9977i, ~(-12062i))), _wgslsmith_clamp_i32(31242i, -var_0.x ^ _wgslsmith_mod_i32(1i, u_input.a), _wgslsmith_dot_vec2_i32(u_input.e, -u_input.e)), -15991i, max(~var_0.x, -1i)));
    var var_3 = select(select(vec2<bool>(max(4830u, var_2.a.x) == var_2.b.x, all(var_2.c)), vec2<bool>(var_2.c.x, true), var_2.c.x), select(vec2<bool>(select(var_2.c.x || true, true, all(var_2.c)), func_3(Struct_1(var_2.a, var_2.b, vec2<bool>(false, var_2.c.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(244f, 1128f, 747f, -1138f)), var_2.c.x | true, u_input.c).x), func_3(Struct_1(vec3<u32>(u_input.c, var_2.b.x, u_input.d), min(var_2.b, vec4<u32>(u_input.b, u_input.c, var_2.b.x, 10630u)), vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(149f, -377f, 1548f, -751f)))), true, ~countOneBits(15219u)), var_2.c.x), func_3(Struct_1(vec3<u32>(_wgslsmith_add_u32(u_input.b, 1u), countOneBits(u_input.b), ~0u), countOneBits(vec4<u32>(154541u, u_input.d, var_2.b.x, var_2.b.x)), vec2<bool>(any(vec3<bool>(true, false, var_2.c.x)), false)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -856f), _wgslsmith_f_op_f32(min(1070f, -207f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1802f))), 1000f), var_2.b.x != 1u, ~(~min(u_input.d, u_input.c))).x);
    let x = u_input.a;
    s_output = StorageBuffer(-1844i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(ceil(397f)), _wgslsmith_f_op_f32(f32(-1f) * -355f), _wgslsmith_f_op_f32(sign(2110f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1302f, -953f, -1584f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-783f, 2288f, 1000f))))), vec4<u32>(u_input.c, ~var_2.a.x, 22117u, u_input.c), vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(74051u, u_input.c), var_2.a.zz), select(_wgslsmith_mult_u32(abs(4294967295u), _wgslsmith_div_u32(var_2.a.x, var_2.b.x)), firstLeadingBit(u_input.b) | abs(0u), var_2.c.x), reverseBits(_wgslsmith_div_u32(select(u_input.d, 19131u, var_3.x), func_1(4294967295u, var_2.b, vec4<i32>(21755i, u_input.a, -2147483647i, 8292i), vec2<f32>(-803f, 1075f)).x)), u_input.b), vec3<i32>(36587i, 1i, -8694i));
}

