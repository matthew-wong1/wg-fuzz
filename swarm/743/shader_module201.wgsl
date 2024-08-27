struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0.a.x;
    let var_1 = vec2<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(-44886i, 0i), _wgslsmith_mult_i32(u_input.b.x, -3024i))), i32(-1i) * -66588i) << (vec2<u32>(~(~29449u), reverseBits(arg_0.a.x)) % vec2<u32>(32u));
    let var_2 = all(vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), var_1.x >= var_1.x)), any(vec3<bool>(true, true, true))));
    let var_3 = Struct_4(~vec2<u32>(1u, u_input.c.x));
    var var_4 = !vec3<bool>(true, any(!(!vec2<bool>(var_2, var_2))), any(!vec3<bool>(var_2, var_2, true)));
    return ~_wgslsmith_dot_vec3_i32(u_input.b.wyy, vec3<i32>(var_1.x, -1i, 271i) | -u_input.b.yyz) >> (_wgslsmith_div_u32(arg_0.a.x, 0u) % 32u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_4) -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(763f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1051f)))))))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1279f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1499f * _wgslsmith_f_op_f32(abs(-1782f))))));
    let var_1 = Struct_3(Struct_2(!any(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true)), _wgslsmith_mult_vec2_i32(arg_1.b ^ _wgslsmith_mult_vec2_i32(arg_1.b, vec2<i32>(0i, arg_1.b.x)), firstLeadingBit(u_input.b.yz)), vec2<i32>(min(arg_1.b.x & u_input.a, -24423i), countOneBits(_wgslsmith_mult_i32(u_input.a, 2147483647i)))));
    var var_2 = vec2<bool>(false, false & (_wgslsmith_f_op_f32(trunc(var_0.x)) > 1863f));
    var_2 = vec2<bool>(false, (arg_1.a || var_1.a.a) | true);
    var_2 = vec2<bool>(true, !var_2.x);
    return u_input.a;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(u_input.b.x, -4259i)) & max(min(min(vec2<i32>(u_input.b.x, u_input.a), u_input.b.zz), u_input.b.xz), _wgslsmith_mult_vec2_i32(-u_input.b.yz, vec2<i32>(-27207i, u_input.a))), vec2<i32>(-1i) * -select(~u_input.b.zy, ~vec2<i32>(u_input.b.x, u_input.b.x), false), vec2<i32>(_wgslsmith_clamp_i32(func_3(arg_2.wxy, Struct_2(false, u_input.b.wx, vec2<i32>(u_input.a, u_input.a)), Struct_4(vec2<u32>(6684u, arg_1))), 38655i, -(~u_input.a)), ~(-54074i)));
    let var_1 = Struct_2(!all(vec3<bool>(true, select(true, true, false), any(vec4<bool>(true, true, true, true)))), vec2<i32>(u_input.a | _wgslsmith_sub_i32(-var_0.x, u_input.b.x), -1i), u_input.b.ww);
    let var_2 = Struct_3(Struct_2(true, _wgslsmith_add_vec2_i32(var_1.c, -(~var_0)), vec2<i32>(36268i, _wgslsmith_mod_i32(var_1.b.x, u_input.a))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(1134f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(454f, _wgslsmith_f_op_f32(-arg_0.e))) - arg_0.b.x)), arg_3.d, _wgslsmith_f_op_f32(571f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(411f + _wgslsmith_f_op_f32(trunc(-921f))) + 199f)));
    var var_4 = arg_3.e;
    return _wgslsmith_add_vec4_u32(vec4<u32>(1u, ~0u, u_input.c.x, arg_1), vec4<u32>(1u, 82388u, _wgslsmith_add_u32(_wgslsmith_sub_u32(0u ^ u_input.c.x, ~arg_0.c.x), 1u), 64680u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(arg_1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d + _wgslsmith_f_op_f32(-arg_1.d)) + 2038f) + 142f));
    var var_1 = -10413i;
    var_0 = -1275f;
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, -15491i), u_input.b.ww);
    let var_3 = Struct_4(vec2<u32>(~35324u, 0u) & ~vec2<u32>(abs(u_input.c.x), arg_1.a.x & 0u));
    return arg_1;
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_3) -> StorageBuffer {
    let var_0 = arg_3;
    let var_1 = ~vec2<u32>(countOneBits(~(~arg_2.c.x)), firstLeadingBit(~arg_2.a.x));
    let var_2 = false;
    let var_3 = arg_3.a.a;
    var var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-609f, 1052f, arg_2.d, arg_2.e))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.x, -113f, 281f, 440f) + vec4<f32>(913f, arg_2.d, -1139f, arg_2.d))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b.x, arg_2.b.x, arg_2.e, 2347f), vec4<f32>(arg_2.e, -1751f, -469f, -2233f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.e, arg_2.b.x, arg_2.b.x, 537f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.d, arg_2.b.x, arg_2.d, 262f)))))), vec4<bool>(_wgslsmith_f_op_f32(-1000f - -1027f) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.d * -1228f), _wgslsmith_f_op_f32(arg_2.e - arg_2.e)), var_0.a.a, all(!select(vec4<bool>(arg_1.a, var_2, var_2, var_3), vec4<bool>(false, true, true, false), vec4<bool>(var_2, var_0.a.a, var_3, false))), var_2)));
    return StorageBuffer(-2147483647i, arg_0, vec3<i32>(20961i << ((4294967295u & arg_2.c.x) % 32u), _wgslsmith_dot_vec2_i32(max(arg_3.a.b, vec2<i32>(arg_1.c.x, -2147483647i)), arg_1.c) | abs(_wgslsmith_mod_i32(1i, arg_3.a.c.x)), 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true, reverseBits(vec2<i32>(~select(14817i, -1i, true), -func_1(Struct_1(vec4<u32>(4294967295u, 85187u, 4315u, u_input.c.x), vec3<f32>(-308f, 710f, -1125f), u_input.c, -1684f, 1218f)))), select((vec2<i32>(10005i, u_input.a) & u_input.b.yz) >> (vec2<u32>(u_input.c.x, ~1u) % vec2<u32>(32u)), u_input.b.yw, vec2<bool>(true, true)));
    var_0 = Struct_2(false, vec2<i32>(var_0.c.x & u_input.b.x, u_input.b.x >> (u_input.c.x % 32u)), min(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(-42704i, u_input.a))) | _wgslsmith_mod_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(-1i, u_input.a) >> (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(var_0.c, select(vec2<i32>(u_input.b.x, 46433i), abs(vec2<i32>(u_input.a, var_0.b.x)), !vec2<bool>(var_0.a, false)))));
    var_0 = Struct_2(false, var_0.c, countOneBits(~var_0.c));
    var var_1 = any(select(!vec4<bool>(select(var_0.a, false, var_0.a), any(vec2<bool>(var_0.a, var_0.a)), var_0.a, var_0.a), vec4<bool>(true, any(vec4<bool>(false, var_0.a, false, var_0.a)), var_0.a, var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1482f))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1480f), _wgslsmith_f_op_f32(275f + 1000f)))));
    let var_2 = ~0i;
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(440f, 375f, _wgslsmith_f_op_f32(max(2162f, _wgslsmith_f_op_f32(-219f * _wgslsmith_f_op_f32(332f + -389f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1214f), -412f)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -745f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1086f)) * _wgslsmith_div_f32(-539f, _wgslsmith_f_op_f32(f32(-1f) * -756f))), 1f, -1379f));
    let x = u_input.a;
    s_output = func_5(firstTrailingBit(var_2), Struct_2(var_0.a, _wgslsmith_mod_vec2_i32(select(abs(vec2<i32>(var_2, 4956i)), vec2<i32>(u_input.b.x, 11049i), any(vec4<bool>(var_0.a, var_0.a, true, false))), vec2<i32>(-1i) * -u_input.b.ww), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, var_2 | u_input.a), vec2<i32>(-25591i, _wgslsmith_sub_i32(var_0.b.x, 1i)))), func_4(reverseBits(max(vec3<u32>(4294967295u, u_input.c.x, 26478u), vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u))), Struct_1(_wgslsmith_mult_vec4_u32(func_2(Struct_1(vec4<u32>(89168u, u_input.c.x, u_input.c.x, 4294967295u), vec3<f32>(-1561f, 116f, -155f), vec2<u32>(u_input.c.x, 60086u), 1818f, 750f), 0u, vec4<u32>(21845u, u_input.c.x, u_input.c.x, u_input.c.x), Struct_1(vec4<u32>(48727u, u_input.c.x, 27153u, 1u), vec3<f32>(462f, -776f, var_3.x), vec2<u32>(u_input.c.x, u_input.c.x), var_3.x, var_3.x)), vec4<u32>(37527u, 4294967295u, 0u, u_input.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_3.zyy, var_3.xyw)) + var_3.zww), max(u_input.c, ~vec2<u32>(u_input.c.x, 4294967295u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(546f))))), Struct_3(Struct_2(!any(vec4<bool>(false, true, false, var_0.a)), select(u_input.b.zw, -vec2<i32>(4459i, var_0.b.x), select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, false), vec2<bool>(var_0.a, var_0.a))), -_wgslsmith_sub_vec2_i32(u_input.b.yy, u_input.b.xw))));
}

