struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-568f, _wgslsmith_f_op_f32(f32(-1f) * -765f))), 472f, 559f), arg_0, arg_0);
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-350f, var_0.a.x, -1138f))) * var_0.a), var_0.c, Struct_1(1u, select(vec2<u32>(arg_0.a, arg_0.b.x), vec2<u32>(46035u, 86812u) & vec2<u32>(var_0.c.b.x, arg_0.b.x), arg_0.e.x), vec2<u32>(u_input.a.x, var_0.c.b.x & 43918u), reverseBits(arg_0.d), select(vec4<bool>(arg_0.e.x, var_0.c.e.x, arg_0.e.x, true), vec4<bool>(false, var_0.b.e.x, var_0.b.e.x, true), any(arg_0.e.xz)))));
    var_1 = Struct_4(var_0);
    var var_2 = var_1.a.c;
    var var_3 = max(u_input.a.wxx, _wgslsmith_div_vec3_u32(firstLeadingBit(u_input.a.yyz), abs(u_input.a.yww ^ u_input.a.zxz)) | select(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.a.c.b.x, 0u, 100727u), u_input.a.yww), vec3<u32>(4294967295u, 87542u, 53359u) & min(vec3<u32>(var_1.a.c.b.x, var_1.a.b.c.x, 59312u), vec3<u32>(4294967295u, var_2.c.x, 0u)), all(arg_0.e)));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1013f * var_1.a.a.x) * var_1.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.a.x)), 1024f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(exp2(var_0.a.x)))))));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    var var_0 = false;
    var var_1 = Struct_1(reverseBits(0u), vec2<u32>(u_input.a.x, select(~0u, min(~u_input.a.x, ~arg_0.b.x), arg_0.e.x)), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_0.b.x, 1u), vec3<u32>(arg_0.b.x, arg_0.b.x, arg_1))), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, arg_1), _wgslsmith_sub_u32(0u, arg_1))), 11937u), -_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(17440i, arg_0.d.x, 1i, 6542i) ^ arg_0.d, arg_0.d), arg_0.d), vec4<bool>(arg_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-500f, 1427f)) != _wgslsmith_div_f32(-784f, _wgslsmith_f_op_f32(select(-1124f, -820f, true))), -1i >= (arg_0.d.x & _wgslsmith_sub_i32(-66679i, 20337i)), !arg_0.e.x));
    var_0 = !arg_0.e.x;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_0)));
    var_1 = arg_0;
    return Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-602f * var_2.x), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_vec3_f32(select(var_2.yxz, _wgslsmith_f_op_vec3_f32(-var_2.wzz), !vec3<bool>(var_1.e.x, false, false)))))), Struct_1(~(~arg_0.a), _wgslsmith_clamp_vec2_u32(countOneBits(reverseBits(vec2<u32>(0u, 100375u))), vec2<u32>(22261u, min(0u, var_1.a)), var_1.c), _wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_0.c.x) ^ vec2<u32>(4067u, 4294967295u), select(~vec2<u32>(8453u, arg_0.b.x), select(var_1.c, vec2<u32>(1u, 50521u), var_1.e.yy), false)), vec4<i32>(var_1.d.x, var_1.d.x, arg_0.d.x, (var_1.d.x >> (var_1.b.x % 32u)) & 2147483647i), arg_0.e), arg_0);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_4 {
    let var_0 = 58753u;
    var var_1 = vec3<u32>(select(~34028u, abs(arg_1.b.c.x), true), ~select(var_0, reverseBits(var_0) >> (1u % 32u), true), 4294967295u ^ (((var_0 | u_input.a.x) & ~1u) | (0u << ((var_0 ^ arg_1.b.c.x) % 32u))));
    let var_2 = arg_1;
    var_1 = countOneBits(~u_input.a.zxz);
    var_1 = u_input.a.yyz;
    return Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(arg_1.a * var_2.a), Struct_1(4294967295u, vec2<u32>(reverseBits(4294967295u), reverseBits(var_2.c.c.x)), vec2<u32>(99313u, u_input.a.x) & arg_1.b.c, reverseBits(var_2.c.d), arg_1.c.e), arg_1.b));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    let var_0 = arg_0.c;
    let var_1 = func_4(!arg_0.b.e.x, func_2(arg_2.c, ~_wgslsmith_div_u32(1u, 1u)), !(!select(!vec2<bool>(true, arg_2.b.e.x), vec2<bool>(true, arg_2.c.e.x), arg_0.b.e.yz)));
    var var_2 = _wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(1u, 2430u, select(arg_2.b.a, var_1.a.b.c.x, arg_2.b.e.x))), ~(~u_input.a.xxz) ^ vec3<u32>(_wgslsmith_clamp_u32(~0u, _wgslsmith_sub_u32(var_1.a.b.b.x, 1u), var_0.b.x), 10116u | arg_2.c.b.x, var_0.a));
    let var_3 = ~(~1u);
    var_2 = func_4(var_1.a.b.e.x, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.a.x, 1281f, arg_1.x), _wgslsmith_f_op_vec3_f32(arg_1.yzw + vec3<f32>(arg_1.x, arg_1.x, arg_0.a.x)))), var_1.a.b, arg_0.b), !(!(!arg_2.c.e.xx))).a.b.b.x;
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_3(firstLeadingBit(vec2<i32>(abs(1i), arg_0.b.d.x)));
    var_0 = Struct_3(vec2<i32>(arg_1.b.d.x, -14758i));
    var var_1 = arg_0.b;
    var_1 = Struct_1(4294967295u, var_1.c, vec2<u32>(0u, _wgslsmith_dot_vec4_u32(~reverseBits(u_input.a), u_input.a & u_input.a)), firstTrailingBit(select(var_1.d, countOneBits(var_1.d), arg_1.c.e)), select(!(!(!vec4<bool>(false, false, arg_0.c.e.x, false))), vec4<bool>(select(true, any(var_1.e), all(arg_1.b.e.zxy)), arg_0.a.x == _wgslsmith_f_op_f32(step(2185f, 469f)), all(select(arg_0.b.e.yyw, vec3<bool>(arg_1.c.e.x, true, false), arg_1.c.e.x)), any(arg_1.c.e.zyw)), vec4<bool>((var_1.c.x << (arg_0.c.c.x % 32u)) != arg_1.b.b.x, true, !var_1.e.x, all(func_4(true, Struct_2(vec3<f32>(arg_0.a.x, arg_1.a.x, -301f), arg_1.c, Struct_1(arg_1.c.a, vec2<u32>(u_input.a.x, var_1.c.x), arg_0.c.b, vec4<i32>(arg_0.b.d.x, arg_1.b.d.x, var_1.d.x, -1i), var_1.e)), arg_1.c.e.zw).a.c.e.xzw))));
    let var_2 = arg_0.c.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-217f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -207f;
    var_0 = -1000f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(506f - _wgslsmith_f_op_f32(f32(-1f) * -1303f)), _wgslsmith_f_op_f32(-484f * _wgslsmith_f_op_f32(round(-787f))))));
    var_0 = 545f;
    let var_1 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~select(16512u, u_input.a.x, true), ~(~u_input.a.x), u_input.a.x), u_input.a.x), u_input.a.x, u_input.a.x, _wgslsmith_mod_u32(min(_wgslsmith_sub_u32(firstLeadingBit(u_input.a.x), ~u_input.a.x), ~u_input.a.x), _wgslsmith_dot_vec3_u32((vec3<u32>(u_input.a.x, 18843u, u_input.a.x) ^ u_input.a.yxw) >> (vec3<u32>(u_input.a.x, 92831u, u_input.a.x) % vec3<u32>(32u)), ~reverseBits(u_input.a.zxy))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(422f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -1900f))))));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(367f + _wgslsmith_f_op_f32(func_5(Struct_2(vec3<f32>(1156f, -1000f, -903f), Struct_1(62531u, var_1.yy, vec2<u32>(44570u, 0u), vec4<i32>(-2147483647i, 14455i, 27425i, 1i), vec4<bool>(true, false, true, false)), Struct_1(u_input.a.x, vec2<u32>(0u, 0u), vec2<u32>(35264u, u_input.a.x), vec4<i32>(-29365i, -10005i, 2147483647i, 17762i), vec4<bool>(false, false, true, true))), func_1(Struct_2(vec3<f32>(-359f, -480f, -878f), Struct_1(1u, u_input.a.yz, vec2<u32>(1u, 1u), vec4<i32>(0i, 2147483647i, -1i, 1i), vec4<bool>(false, true, false, true)), Struct_1(4294967295u, u_input.a.yw, var_1.xx, vec4<i32>(6774i, 1i, 2147483647i, 0i), vec4<bool>(true, false, true, false))), vec4<f32>(-728f, -271f, -259f, 659f), Struct_2(vec3<f32>(-607f, -818f, 2539f), Struct_1(var_1.x, vec2<u32>(0u, var_1.x), var_1.wx, vec4<i32>(2147483647i, -21933i, 0i, -2147483647i), vec4<bool>(true, true, true, true)), Struct_1(47444u, vec2<u32>(8803u, var_1.x), var_1.yz, vec4<i32>(-2295i, 27398i, 1i, 21178i), vec4<bool>(false, true, true, true))), 739i)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~(~41801u), 1u));
}

