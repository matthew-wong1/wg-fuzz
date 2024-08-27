struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = -1000f;
    return !(!vec4<bool>(all(vec3<bool>(true, true, true)), true, true, true));
}

fn func_3(arg_0: vec2<i32>) -> vec4<f32> {
    var var_0 = !(!all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, false), false)));
    var var_1 = all(vec4<bool>(true, true, true, true)) & true;
    var var_2 = 26812u;
    var var_3 = Struct_3(-17982i, Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, 109365u, 124349u), vec4<u32>(select(u_input.d, 4294967295u, true), u_input.d, _wgslsmith_mult_u32(38785u, u_input.d), min(u_input.d, 98531u))), select(func_1(vec4<u32>(u_input.d, u_input.d, 73203u, u_input.b) & vec4<u32>(u_input.d, 36807u, 27334u, 76103u)).xw, !select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(false, false), all(vec2<bool>(true, false)))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.c, firstTrailingBit(1i)), (u_input.a.x & -22045i) << ((u_input.d | 26079u) % 32u)), vec2<u32>(~(~u_input.d), _wgslsmith_div_u32(~4294967295u, firstLeadingBit(u_input.d)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f - -306f)))), 202f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-400f)))), _wgslsmith_f_op_f32(f32(-1f) * -769f)), Struct_2(Struct_1(u_input.d, !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), _wgslsmith_div_i32(i32(-1i) * -2147483647i, -1i), vec2<u32>(0u, u_input.b)), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), true)), select(func_1(vec4<u32>(1u, u_input.d, u_input.d, 1u) & vec4<u32>(97465u, 30637u, u_input.d, 22676u)).wy, !select(vec2<bool>(false, true), vec2<bool>(false, true), true), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), false))), ~(~select(vec4<u32>(u_input.b, u_input.b, 38936u, u_input.d), vec4<u32>(37670u, 1u, u_input.d, 12098u), vec4<bool>(false, true, false, true))), u_input.d));
    var_1 = var_3.d.a.b.x;
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-669f))))), _wgslsmith_f_op_f32(abs(-221f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2206f, _wgslsmith_f_op_f32(sign(var_3.c.x)))), -483f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = u_input.c;
    var var_1 = select(arg_3.a.b, arg_3.c, vec2<bool>(any(arg_3.b), any(arg_3.b) || true));
    let var_2 = Struct_3(-u_input.c, Struct_1(u_input.d, vec2<bool>(!(!arg_3.c.x), var_1.x), -22516i, vec2<u32>(arg_3.e, reverseBits(1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1461f, -888f, -875f, 1648f) - vec4<f32>(-300f, 2072f, -216f, -614f)))) - _wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(u_input.a.x, arg_3.a.c)))), arg_3);
    return Struct_1(~_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2, arg_1.x, u_input.b), ~(vec3<u32>(6475u, 2462u, 1u) & arg_3.d.xxx)), !func_1(min(arg_3.d, var_2.d.d)).yy, reverseBits(-(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) & _wgslsmith_add_i32(33991i, u_input.a.x))), _wgslsmith_mult_vec2_u32(arg_1, _wgslsmith_sub_vec2_u32(~_wgslsmith_sub_vec2_u32(arg_3.d.yy, vec2<u32>(arg_1.x, 30517u)), ~var_2.b.d >> (vec2<u32>(22657u, 4294967295u) % vec2<u32>(32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> f32 {
    var var_0 = Struct_2(Struct_1(~_wgslsmith_sub_u32(4294967295u << (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 26274u), vec3<u32>(u_input.b, 1u, 521u))), vec2<bool>(func_1(vec4<u32>(arg_0.d.x, 0u, 18244u, u_input.d)).x, select(true, arg_0.b.x, select(arg_0.b.x, arg_0.b.x, arg_0.b.x))), -1i ^ -u_input.a.x, vec2<u32>(~arg_0.a, ~0u)), !vec4<bool>(false | arg_0.b.x, any(arg_0.b), false, arg_0.b.x), arg_0.b, reverseBits(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 24747u, u_input.d, 4294967295u), firstTrailingBit(vec4<u32>(9314u, 1u, 4294967295u, arg_0.d.x)))), 57312u);
    let var_1 = Struct_2(Struct_1(u_input.b, !var_0.c, ~5829i, select(reverseBits(var_0.d.yw), var_0.d.xx, true)), vec4<bool>(arg_0.b.x, true, !any(vec4<bool>(var_0.c.x, false, false, false)), any(vec2<bool>(all(var_0.b), arg_0.a > arg_0.a))), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.a.yy)).x) > 1391f, all(var_0.b.zwy)), firstTrailingBit(vec4<u32>(19598u, u_input.b, _wgslsmith_div_u32(~arg_0.a, 0u), ~36952u)), ~71501u);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))) - arg_1.x), -642f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x))), _wgslsmith_f_op_f32(1415f - -1129f));
    var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(1028f, arg_1.x))))), _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(221f + arg_1.x) + _wgslsmith_div_f32(814f, -530f))), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_clamp_vec2_i32(vec2<i32>(23048i, 1i), vec2<i32>(var_1.a.c, var_0.a.c), select(u_input.a.zx, u_input.a.zy, var_1.a.b.x)))).x)));
    var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 1852f, 1216f, 925f) * vec4<f32>(-836f, _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(exp2(var_2.x)), _wgslsmith_f_op_f32(1671f - 1149f))) - vec4<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(sign(712f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * arg_1.x))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-196f)), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_f32(func_4(func_2(~(~(~vec2<u32>(1929u, u_input.d))), abs(max(vec2<u32>(104613u, u_input.b), vec2<u32>(u_input.d, 0u))), 1u, Struct_2(Struct_1(1u, vec2<bool>(false, true), i32(-1i) * -1i, vec2<u32>(u_input.b, u_input.d) & vec2<u32>(4294967295u, 65122u)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), func_1(vec4<u32>(u_input.d, u_input.b, 4294967295u, 52363u))), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec4<u32>(u_input.b ^ u_input.b, ~22302u, u_input.d, 15904u), u_input.b)), vec2<f32>(-1000f, -151f)));
    let var_2 = Struct_2(Struct_1(u_input.d << (4294967295u % 32u), vec2<bool>(true, true), ~_wgslsmith_sub_i32(0i, -u_input.c), reverseBits(vec2<u32>(firstLeadingBit(u_input.d), 1u))), select(vec4<bool>(u_input.c <= ~(-29449i), true, !func_2(vec2<u32>(1u, 41753u), vec2<u32>(94763u, 6931u), u_input.d, Struct_2(Struct_1(1u, vec2<bool>(false, true), u_input.c, vec2<u32>(u_input.d, 1u)), vec4<bool>(true, false, true, true), vec2<bool>(true, false), vec4<u32>(4294967295u, 0u, 4294967295u, u_input.b), u_input.d)).b.x, any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true)), vec2<bool>(true, func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(1u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(95702u, u_input.d) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), abs(vec2<u32>(u_input.b, u_input.d)), abs(vec2<u32>(u_input.d, 1u))), 21733u, Struct_2(Struct_1(10877u, vec2<bool>(false, true), 2147483647i, vec2<u32>(49401u, 25467u)), vec4<bool>(true, true, true, false), vec2<bool>(true, true), vec4<u32>(4294967295u, 4294967295u, 46802u, 53737u), _wgslsmith_mod_u32(u_input.b, 9689u))).b.x), ~abs(vec4<u32>(~0u, u_input.d, firstLeadingBit(u_input.d), ~0u)), select(67848u, max(22550u, ~_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.d)), any(func_2(vec2<u32>(0u, 0u), vec2<u32>(u_input.d, u_input.d), u_input.d, Struct_2(Struct_1(u_input.b, vec2<bool>(false, false), 27400i, vec2<u32>(21741u, 36142u)), vec4<bool>(true, true, true, false), vec2<bool>(false, false), vec4<u32>(4294967295u, 63497u, 0u, u_input.b), u_input.b)).b) && !any(vec4<bool>(false, false, true, false))));
    var_0 = ~4294967295u;
    let var_3 = Struct_3(_wgslsmith_sub_i32(var_2.a.c, ~abs(_wgslsmith_clamp_i32(-13442i, 2147483647i, 6779i))), var_2.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-541f * 604f), 931f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -459f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-603f + -1715f), _wgslsmith_f_op_f32(round(-794f)), 1u >= var_2.d.x)), var_2.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -940f), 1155f, select(-56301i, var_2.a.c, true) == var_2.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(578f - _wgslsmith_f_op_f32(1818f - 721f)) - -369f)), var_2);
    var_0 = _wgslsmith_mult_u32(24991u, reverseBits(var_3.b.d.x | _wgslsmith_dot_vec2_u32(vec2<u32>(73114u, 102225u), vec2<u32>(15880u, 62386u) | var_3.b.d)));
    var_1 = -954f;
    let x = u_input.a;
    s_output = StorageBuffer(-1261f, _wgslsmith_mult_vec2_u32(~((vec2<u32>(var_2.a.a, u_input.d) | vec2<u32>(var_2.a.a, var_3.b.d.x)) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 19338u), vec2<u32>(4294967295u, 9784u))), var_2.d.yz), _wgslsmith_f_op_vec4_f32(func_3(abs(_wgslsmith_mult_vec2_i32(u_input.a.xy, u_input.a.yx)) | select(-u_input.a.zx, u_input.a.zx, false | var_3.d.c.x))).x, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3.c.x))), -341f))), -2147483647i);
}

