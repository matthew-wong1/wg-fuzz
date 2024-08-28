struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: f32) -> u32 {
    var var_0 = Struct_3(~(arg_0.a >> (_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(arg_0.a.x, 89530u)), _wgslsmith_clamp_vec2_u32(arg_0.b, vec2<u32>(0u, arg_0.a.x), vec2<u32>(arg_0.b.x, 0u))) % vec2<u32>(32u))), vec2<u32>(reverseBits(max(~arg_0.b.x, firstLeadingBit(64109u))), ~arg_0.a.x), vec4<f32>(_wgslsmith_f_op_f32(474f - -956f), arg_1, _wgslsmith_f_op_f32(ceil(arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-116f, -668f))))));
    let var_1 = 1u;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1330f)))), _wgslsmith_f_op_vec4_f32(-arg_0.c), _wgslsmith_dot_vec3_u32(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.b.x, 1u, var_0.b.x), vec3<u32>(0u, 26538u, arg_0.b.x))), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 34172u, 60936u) << (vec3<u32>(var_0.a.x, var_0.a.x, 1u) % vec3<u32>(32u)), abs(vec3<u32>(var_1, var_0.a.x, 48949u)))), ~(~(~arg_0.b)), all(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-2996f, var_0.c.x)), 933f, arg_0.c.x) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, 1976f, -459f) + _wgslsmith_f_op_vec3_f32(arg_0.c.wxw + arg_0.c.yzx))) - var_0.c.zzy), u_input.a.x);
    let var_3 = abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(0u, u_input.c, var_2.a.d.x), abs(vec3<u32>(9960u, u_input.c, 1u)) | vec3<u32>(var_0.b.x, 7308u, arg_0.a.x))) | (vec3<u32>(8937u, var_0.b.x, _wgslsmith_clamp_u32(11362u, u_input.b, 35867u)) | ~countOneBits(vec3<u32>(var_2.a.c, 28408u, u_input.b)));
    return 18057u;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<bool> {
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.b - arg_1.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 622f, 304f, arg_0.a.b.x)) - vec4<f32>(734f, arg_0.a.a, arg_1.a, -831f))))));
    var var_1 = _wgslsmith_mod_u32(func_3(Struct_3(vec2<u32>(590u, 4294967295u), abs(arg_1.d), _wgslsmith_f_op_vec4_f32(arg_1.b * vec4<f32>(arg_0.b, -834f, 2254f, 194f))), var_0.a.x) ^ _wgslsmith_mult_u32(_wgslsmith_mult_u32(select(4294967295u, arg_2.x, arg_1.e), min(0u, arg_2.x)), 1u), 17317u);
    let var_2 = 18500u >> (min(1u, ~_wgslsmith_mod_u32(u_input.c, ~0u)) % 32u);
    var_1 = max(0u, min(_wgslsmith_sub_u32(~32249u, _wgslsmith_add_u32(4294967295u, arg_2.x)) << (4294967295u % 32u), u_input.b));
    var var_3 = Struct_2(arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_0.a.wyx)) * vec3<f32>(arg_0.a.a, -493f, _wgslsmith_f_op_f32(-var_0.a.x)))), -1i);
    return vec3<bool>(true, arg_1.e, false);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: Struct_5, arg_3: vec3<bool>) -> vec4<f32> {
    var var_0 = abs(_wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.b, 0u)), u_input.c, 0u, ~u_input.c), max(~vec4<u32>(u_input.b, u_input.c, 10076u, 0u), ~countOneBits(vec4<u32>(13640u, u_input.c, u_input.b, 24768u)))));
    var var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a.yw, vec2<i32>(u_input.a.x, u_input.a.x) << (min(vec2<u32>(1u, 3474u), var_0.zx) % vec2<u32>(32u))), i32(-1i) * -45877i, reverseBits(0i), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-2147483647i, u_input.a.x) | vec2<i32>(37926i, -1i)), reverseBits(~vec2<i32>(u_input.a.x, 38969i)))) | u_input.a;
    var var_2 = Struct_3(var_0.xx, ~vec2<u32>(u_input.b, ~4294967295u), arg_0);
    let var_3 = ~(~_wgslsmith_div_vec3_u32(firstLeadingBit(max(var_0.yyw, var_0.zwx)), var_0.zwy));
    var var_4 = ~vec2<u32>(u_input.c, ~var_0.x & 0u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0, var_2.c, vec4<bool>(false, any(arg_3.xy), all(!arg_1), countOneBits(81189u) < (u_input.b << (24900u % 32u))))));
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.b)), arg_1.a.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1.a.b, arg_2.b, vec4<bool>(false, arg_1.a.e, false, true)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(arg_2.b))))))), select(select(!vec3<bool>(false, true, arg_2.e), vec3<bool>(any(vec2<bool>(arg_1.a.e, arg_2.e)), !arg_1.a.e, false), (true && arg_1.a.e) & (arg_1.a.a >= arg_1.b)), !(!vec3<bool>(true, arg_1.a.e, false)), select(!vec3<bool>(true, arg_1.a.e, arg_2.e), !func_2(arg_1, arg_2, vec4<u32>(arg_0, arg_1.a.d.x, u_input.c, 2675u)), true)), Struct_5(vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_1.a.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a.a))), _wgslsmith_f_op_f32(f32(-1f) * -1114f), _wgslsmith_div_f32(_wgslsmith_div_f32(854f, arg_1.a.a), arg_1.b))), vec3<bool>(false, all(select(vec2<bool>(arg_1.a.e, true), vec2<bool>(true, arg_1.a.e), true)) || select(arg_2.e, arg_1.a.e, !arg_2.e), true)));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_1.a.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a.b)))));
    var var_1 = 1i;
    var var_2 = -44012i;
    var var_3 = false || any(!(!(!vec2<bool>(arg_1.a.e, true))));
    return Struct_5(_wgslsmith_div_vec4_f32(arg_2.b, arg_1.a.b));
}

fn func_5(arg_0: Struct_5) -> vec2<bool> {
    var var_0 = Struct_1(-381f, arg_0.a, ~u_input.b, _wgslsmith_sub_vec2_u32(select(max(vec2<u32>(0u, 60994u), vec2<u32>(65061u, 4294967295u)) ^ abs(vec2<u32>(u_input.c, u_input.c)), (vec2<u32>(0u, u_input.c) ^ vec2<u32>(1710u, 41514u)) ^ ~vec2<u32>(u_input.b, u_input.b), vec2<bool>(true, true)), ~firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(21888u, u_input.c), vec2<u32>(77373u, 4294967295u)))), !func_2(Struct_4(Struct_1(arg_0.a.x, arg_0.a, u_input.c, vec2<u32>(u_input.c, u_input.b), false), arg_0.a.x), Struct_1(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_vec4_f32(arg_0.a + arg_0.a), 2548u, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 28107u), vec2<u32>(u_input.b, 41682u)), false), ~vec4<u32>(u_input.c, 4294967295u, 4294967295u, u_input.c) ^ ~vec4<u32>(88661u, 4294967295u, u_input.c, u_input.c)).x);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-150f + _wgslsmith_f_op_f32(-arg_0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(867f)) - _wgslsmith_f_op_f32(var_0.a + 1872f)) * 1327f), -992f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-385f, var_0.a, var_0.e)) + _wgslsmith_div_f32(var_0.a, -198f)), var_0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-749f, _wgslsmith_f_op_f32(select(var_0.a, arg_0.a.x, var_0.e)))))), u_input.b, abs(_wgslsmith_clamp_vec2_u32(select(_wgslsmith_sub_vec2_u32(var_0.d, var_0.d), abs(var_0.d), true), var_0.d, var_0.d)), true);
    var var_1 = true;
    var var_2 = vec4<u32>(~var_0.d.x, u_input.c, 8286u, var_0.d.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a.x - -333f), arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.a.x))), _wgslsmith_f_op_f32(abs(arg_0.a.x)), arg_0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(abs(571f)), _wgslsmith_div_f32(-1083f, var_0.b.x), _wgslsmith_f_op_f32(abs(var_0.b.x))))), func_2(Struct_4(Struct_1(_wgslsmith_f_op_f32(round(360f)), _wgslsmith_f_op_vec4_f32(var_0.b * arg_0.a), ~var_2.x, vec2<u32>(var_0.d.x, u_input.b), var_0.e), _wgslsmith_f_op_f32(-238f + -428f)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, var_0.b.x, var_0.a, var_0.b.x)), var_2.x, ~firstTrailingBit(var_2.yy), !var_0.e | var_0.e), select(vec4<u32>(53399u, var_0.d.x, 1u, var_0.d.x) | vec4<u32>(var_2.x, var_2.x, 18910u, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(var_0.d.x, var_2.x, 83975u, 34833u), vec4<u32>(u_input.c, 53712u, 40180u, u_input.c)), select(vec4<bool>(var_0.e, true, var_0.e, var_0.e), vec4<bool>(var_0.e, var_0.e, true, var_0.e), true)) | vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.d.x, 78047u, 1u), vec4<u32>(1u, 1u, var_0.c, 0u)), var_0.d.x, 22128u, u_input.b)), Struct_5(var_0.b), !(!(!vec3<bool>(var_0.e, var_0.e, false))))).x;
    return !(!vec2<bool>(true, !var_0.e));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(u_input.a.x);
    let var_1 = true;
    let var_2 = u_input.a.x;
    var var_3 = all(vec3<bool>(true, u_input.b == u_input.c, var_1));
    var var_4 = -1540f;
    var var_5 = 1807f;
    let var_6 = Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(-1018f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(339f, 851f, -259f, -646f)))), u_input.c, vec2<u32>(u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.c)), all(func_5(func_1(u_input.c, Struct_4(Struct_1(-277f, vec4<f32>(1000f, 159f, -623f, -1000f), u_input.b, vec2<u32>(u_input.c, u_input.c), var_1), -1219f), Struct_1(277f, vec4<f32>(765f, -2330f, 1000f, 975f), u_input.b, vec2<u32>(u_input.b, 1u), false))))), _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(991f, 502f, -165f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(365f, 181f, 739f))), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1049f, -1012f, 561f), vec3<f32>(-514f, 1479f, 2512f), var_1)) - vec3<f32>(739f, -2201f, 815f)))), _wgslsmith_dot_vec3_i32(-(~u_input.a.yyx) | vec3<i32>(~(-376i), -1i, var_2), vec3<i32>(var_0 ^ (-28148i << (0u % 32u)), _wgslsmith_mod_i32(-47115i, 1i) >> (abs(0u) % 32u), _wgslsmith_dot_vec3_i32(u_input.a.yyy, vec3<i32>(2147483647i, 18697i, var_0) << (vec3<u32>(u_input.b, 1u, u_input.b) % vec3<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer((vec4<i32>(-1i) * -(vec4<i32>(0i, 2147483647i, 1i, -2147483647i) ^ vec4<i32>(u_input.a.x, var_2, var_6.c, -2147483647i))) ^ vec4<i32>(~_wgslsmith_mod_i32(var_6.c, var_0), _wgslsmith_dot_vec4_i32(-vec4<i32>(1i, 1i, u_input.a.x, 25651i), vec4<i32>(2147483647i, 36395i, -2147483647i, 13211i) << (vec4<u32>(var_6.a.c, 10471u, 0u, var_6.a.d.x) % vec4<u32>(32u))), var_2, 1i), firstTrailingBit(~vec3<u32>(1u, 0u, 4294967295u) & (~vec3<u32>(1u, 16473u, 43580u) ^ (vec3<u32>(u_input.c, 4294967295u, 0u) | vec3<u32>(60163u, 0u, 4294967295u)))));
}

