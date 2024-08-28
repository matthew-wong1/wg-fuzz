struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>) -> bool {
    var var_0 = Struct_2(vec4<bool>(!(any(arg_1.wy) || true), all(arg_1), 1i <= arg_0, arg_1.x), _wgslsmith_div_vec3_u32(~countOneBits(vec3<u32>(41220u, 44199u, u_input.d.x)), ~vec3<u32>(u_input.b, u_input.d.x, u_input.b)) ^ u_input.d.yxz, -1000f, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-524f - _wgslsmith_f_op_f32(f32(-1f) * -768f)), _wgslsmith_div_f32(761f, -730f), _wgslsmith_f_op_f32(f32(-1f) * -960f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1702f))))), vec4<f32>(1414f, -689f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1701f, 774f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(837f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-392f))))));
    var_0 = Struct_2(select(var_0.a, !arg_1, true), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 45086u, u_input.b), u_input.d.zwz) << (~var_0.b % vec3<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -314f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-var_0.d))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-144f, _wgslsmith_f_op_f32(floor(287f)), arg_1.x || true)))));
    let var_1 = Struct_3(!vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x || arg_1.x, true), Struct_2(!vec4<bool>(!arg_1.x, any(vec2<bool>(var_0.a.x, true)), u_input.c < arg_0, false), ~u_input.d.zxx, _wgslsmith_f_op_f32(abs(var_0.e)), var_0.d, 609f), Struct_1(vec2<u32>(~countOneBits(42185u), ~(~u_input.b))), var_0.e);
    var_0 = Struct_2(vec4<bool>(arg_1.x, all(vec3<bool>(true, false, false)), !all(var_0.a.zy), (~1u ^ (u_input.b >> (48955u % 32u))) != ~var_0.b.x), vec3<u32>(max(var_1.b.b.x, 1u), min(var_1.b.b.x, u_input.b), var_0.b.x) >> ((~(~vec3<u32>(22205u, var_1.b.b.x, var_1.b.b.x)) & vec3<u32>(4294967295u, var_0.b.x, ~4294967295u)) % vec3<u32>(32u)), var_1.d, vec4<f32>(_wgslsmith_f_op_f32(890f - -1215f), -880f, -441f, 829f), 1868f);
    return !(!(var_0.e != -1000f));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: vec4<i32>) -> bool {
    var var_0 = _wgslsmith_mod_i32(abs(abs(arg_2.x)), arg_2.x);
    var_0 = ~(arg_2.x ^ _wgslsmith_dot_vec4_i32((arg_2 | arg_2) | (vec4<i32>(2147483647i, arg_2.x, u_input.c, u_input.a) | arg_2), arg_2));
    var_0 = _wgslsmith_mult_i32(u_input.a, min(arg_2.x | max(min(arg_2.x, u_input.c), ~arg_2.x), firstTrailingBit(-arg_2.x)));
    let var_1 = u_input.d.x;
    var var_2 = _wgslsmith_add_vec3_u32(~(~vec3<u32>(19671u, ~var_1, arg_0 ^ var_1)), firstTrailingBit(~select(~vec3<u32>(4294967295u, var_1, arg_0), _wgslsmith_mod_vec3_u32(u_input.d.wzy, u_input.d.zwy), vec3<bool>(arg_1, false, arg_1))));
    return (0u == var_2.x) | true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = false;
    var var_1 = all(vec2<bool>(func_4(~arg_2.x, func_3(u_input.c, arg_1.a), ~vec4<i32>(u_input.a, -61863i, 1i, u_input.a)) == var_0, false));
    var var_2 = vec3<bool>(true, true, func_4(arg_0.b.x, var_0, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, ~(-9943i), ~5472i), abs(vec4<i32>(29980i, 1128i, u_input.a, u_input.a)))));
    var_1 = true;
    var var_3 = arg_1.a.xzw;
    return Struct_2(arg_1.a, ~arg_1.b, _wgslsmith_f_op_f32(min(arg_0.c, 680f)), arg_1.d, 529f);
}

fn func_5(arg_0: f32, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(trunc(-689f));
    let var_1 = true || arg_2;
    let var_2 = select(vec2<bool>(true || select(select(false, false, arg_2), var_1, false), arg_2), arg_3.a.xz, all(select(select(!arg_3.b.a.zz, arg_3.b.a.zz, true), arg_3.a.wx, arg_3.a.wx)));
    var_0 = 338f;
    var var_3 = arg_3.b.a;
    return !vec4<bool>(func_2(arg_3.b, arg_3.b, ~vec4<u32>(arg_1.x, 4294967295u, arg_1.x, 4294967295u) | reverseBits(vec4<u32>(11351u, 0u, 85759u, 0u))).a.x, var_1 || true, true, !(true & (arg_3.b.c > 944f)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_2(!func_5(-763f, _wgslsmith_mod_vec4_u32(u_input.d ^ vec4<u32>(u_input.d.x, 24691u, 1u, u_input.d.x), min(u_input.d, u_input.d)), true, Struct_3(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), false), func_2(Struct_2(vec4<bool>(true, true, true, true), u_input.d.zxy, -2112f, vec4<f32>(-276f, 1000f, -1071f, -1918f), 499f), Struct_2(vec4<bool>(false, false, true, false), u_input.d.zwz, 960f, vec4<f32>(-216f, -1005f, 114f, 465f), 835f), vec4<u32>(u_input.b, u_input.d.x, 0u, u_input.b)), arg_1, _wgslsmith_f_op_f32(f32(-1f) * -2336f))), firstLeadingBit(u_input.d.xxz), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-965f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec4<bool>(true, false, false, false)))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 883f, 798f, 1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(536f, -309f, -1353f, 1726f))))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1271f, -1109f, -1806f, 1000f) + vec4<f32>(-1154f, -2727f, 1776f, -292f))))))), _wgslsmith_f_op_f32(sign(-3016f)));
    var var_1 = Struct_3(vec4<bool>(any(var_0.a.wy), func_4(var_0.b.x, true, vec4<i32>(u_input.c, u_input.a, 2147483647i, -27736i)) != var_0.a.x, true, _wgslsmith_div_i32(-u_input.a, 1i) <= (_wgslsmith_mod_i32(-2147483647i, -1i) & u_input.a)), func_2(Struct_2(func_5(var_0.e, _wgslsmith_mod_vec4_u32(vec4<u32>(31230u, arg_1.a.x, 65562u, 22128u), u_input.d), true, Struct_3(var_0.a, Struct_2(var_0.a, vec3<u32>(var_0.b.x, arg_1.a.x, u_input.d.x), 2187f, var_0.d, var_0.d.x), Struct_1(var_0.b.xx), -801f)), vec3<u32>(19547u, arg_1.a.x, 4294967295u), var_0.c, var_0.d, -1950f), func_2(func_2(func_2(var_0, var_0, vec4<u32>(4294967295u, 559u, 16551u, 78170u)), Struct_2(vec4<bool>(var_0.a.x, var_0.a.x, false, false), vec3<u32>(9171u, 1u, u_input.b), -509f, vec4<f32>(-2041f, var_0.d.x, var_0.c, -1013f), 258f), u_input.d), func_2(Struct_2(var_0.a, var_0.b, var_0.e, vec4<f32>(179f, -1198f, 688f, var_0.d.x), var_0.e), func_2(var_0, var_0, u_input.d), u_input.d), vec4<u32>(_wgslsmith_sub_u32(u_input.b, 21444u), arg_1.a.x, u_input.b, select(55843u, arg_1.a.x, var_0.a.x))), ~(~countOneBits(u_input.d))), Struct_1(abs(countOneBits(vec2<u32>(u_input.b, u_input.b))) << (_wgslsmith_clamp_vec2_u32(var_0.b.xx, vec2<u32>(arg_1.a.x, 69794u), vec2<u32>(arg_1.a.x, 0u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.e)))));
    let var_2 = ~(~select(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(25500u, 4294967295u, u_input.b, var_0.b.x)), vec4<u32>(6969u, 71381u, arg_1.a.x, 0u)), vec4<u32>(14938u, _wgslsmith_mult_u32(17796u, 9469u), abs(var_1.c.a.x), _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), !var_1.b.a.x));
    var var_3 = -39561i;
    let var_4 = false;
    return _wgslsmith_f_op_f32(-var_0.e);
}

fn func_6(arg_0: bool, arg_1: f32) -> u32 {
    var var_0 = ~(select(u_input.d.x | (u_input.b << (u_input.d.x % 32u)), _wgslsmith_div_u32(7945u, 4294967295u), true) & ~351u);
    let var_1 = i32(-1i) * -u_input.a;
    var var_2 = vec3<u32>(~1u, u_input.b, u_input.b);
    var_2 = vec3<u32>(var_2.x, 4294967295u, var_2.x) & select(~(~u_input.d.zzy << (_wgslsmith_div_vec3_u32(u_input.d.wxy, u_input.d.yxy) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(select(reverseBits(u_input.d.zzw), vec3<u32>(u_input.d.x, 0u, 4294967295u), any(vec4<bool>(arg_0, arg_0, arg_0, false))), ~(u_input.d.wwx | vec3<u32>(4294967295u, u_input.d.x, 28717u)), vec3<u32>(var_2.x, var_2.x ^ u_input.b, 78485u)), select(!(!vec3<bool>(false, false, arg_0)), vec3<bool>(func_3(u_input.c, vec4<bool>(false, arg_0, true, false)), true, arg_0), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_1, u_input.a), vec3<i32>(var_1, -2147483647i, 38619i)) > -var_1));
    let var_3 = Struct_1(~var_2.zy);
    return var_3.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    var var_1 = func_6(true, _wgslsmith_f_op_f32(func_1(-1i, Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_0) << (u_input.d.wy % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(u_input.d.xx, vec2<u32>(var_0, var_0)))))));
    let var_2 = 27203u;
    let var_3 = vec4<bool>(!((1i | select(u_input.c, u_input.c, false)) > u_input.c), any(select(!func_5(246f, vec4<u32>(u_input.b, var_2, var_2, 4294967295u), true, Struct_3(vec4<bool>(false, false, false, true), Struct_2(vec4<bool>(true, true, false, false), vec3<u32>(u_input.d.x, 2559u, 12038u), -624f, vec4<f32>(567f, 869f, 855f, -522f), -1396f), Struct_1(u_input.d.wy), -1000f)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true)), func_5(-994f, vec4<u32>(var_2, var_0, var_2, 1u), false, Struct_3(vec4<bool>(true, false, false, false), Struct_2(vec4<bool>(false, true, true, true), vec3<u32>(0u, u_input.b, 25306u), -2491f, vec4<f32>(340f, 228f, 1000f, -490f), -177f), Struct_1(vec2<u32>(1u, 8155u)), 700f)), true), vec4<bool>(true, func_2(Struct_2(vec4<bool>(false, false, true, true), vec3<u32>(4992u, var_0, var_2), 2332f, vec4<f32>(-1000f, 664f, -986f, 637f), -1130f), Struct_2(vec4<bool>(true, true, false, false), u_input.d.zyx, 1093f, vec4<f32>(-715f, -412f, 296f, 675f), -509f), vec4<u32>(var_0, var_2, u_input.b, 5901u)).a.x, true, all(vec2<bool>(false, false))))), select(func_3(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -69006i, u_input.c), vec3<i32>(u_input.c, 49605i, -2147483647i)), !func_2(Struct_2(vec4<bool>(false, false, false, true), vec3<u32>(0u, 4294967295u, 0u), 433f, vec4<f32>(-1000f, 1040f, 1314f, -347f), -268f), Struct_2(vec4<bool>(true, true, false, false), vec3<u32>(u_input.b, var_2, u_input.b), -823f, vec4<f32>(299f, -266f, -408f, -643f), 257f), u_input.d).a), func_5(-1000f, vec4<u32>(~var_2, 18866u, abs(var_0), 23686u), any(func_2(Struct_2(vec4<bool>(true, true, true, true), u_input.d.xwy, -1249f, vec4<f32>(206f, 1071f, 1808f, 936f), 485f), Struct_2(vec4<bool>(false, true, false, false), u_input.d.xzz, 244f, vec4<f32>(-578f, -1000f, 303f, -414f), 653f), vec4<u32>(var_2, 37382u, 1u, var_0)).a.wz), Struct_3(vec4<bool>(true, false, false, true), Struct_2(vec4<bool>(false, false, true, true), u_input.d.xxx, -444f, vec4<f32>(1366f, -1705f, 1158f, -539f), 381f), Struct_1(vec2<u32>(11976u, 0u)), -1000f)).x, true), func_4(_wgslsmith_clamp_u32(~(~25445u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.zy, u_input.d.xw), reverseBits(vec2<u32>(24610u, u_input.d.x))), _wgslsmith_dot_vec2_u32(u_input.d.zx, u_input.d.ww & u_input.d.yy)), select(_wgslsmith_f_op_f32(step(797f, -666f)) >= 178f, true, false), vec4<i32>(~u_input.a ^ u_input.c, 1i, 44472i, 1i)));
    var var_4 = ~(~u_input.d.xzz);
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(func_2(func_2(Struct_2(var_3, u_input.d.yxz, -693f, vec4<f32>(-565f, -1518f, 764f, 1548f), -114f), Struct_2(vec4<bool>(true, var_3.x, true, var_3.x), u_input.d.zxy, -612f, vec4<f32>(816f, -1045f, 1000f, -811f), -1659f), vec4<u32>(var_2, 0u, var_0, var_0)), Struct_2(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x), u_input.d.zyz, -238f, vec4<f32>(-633f, 1372f, 604f, -871f), 1592f), u_input.d).d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-222f))))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(-1874f, -690f, var_3.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-1000f)), 1f)))));
    let var_6 = Struct_1(~abs(~var_4.yx));
    let x = u_input.a;
    s_output = StorageBuffer(1044f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_5.x), _wgslsmith_f_op_f32(round(-1129f)), _wgslsmith_f_op_f32(-1360f + -160f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_5.x, var_5.x, -1774f) * vec3<f32>(-903f, var_5.x, var_5.x))))), ~var_6.a, var_5.x);
}

