struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_5) -> vec4<bool> {
    var var_0 = arg_0.b;
    var var_1 = arg_0.a.a;
    var var_2 = Struct_1(firstLeadingBit(4294967295u), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.b.x, var_0.b.x))), var_0.b))))), ~u_input.b.x);
    var_2 = Struct_1(abs(~var_2.c), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.b))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(169f, var_2.b.x))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-179f)), _wgslsmith_f_op_f32(abs(var_2.b.x))), -1271f)), ~0u);
    var_0 = Struct_1(1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(400f, arg_0.b.b.x), var_1.b)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(arg_0.a.a.b))))), arg_0.a.a.a);
    return !select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), u_input.e.x > u_input.d), vec4<bool>(true, true, true, true), true), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false)) | select(false, true, false)), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), true)));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<i32>) -> u32 {
    var var_0 = select(!func_3(Struct_5(Struct_2(Struct_1(u_input.a, arg_1, u_input.b.x)), Struct_1(1u, vec2<f32>(1047f, -643f), 61094u))), !(!func_3(Struct_5(Struct_2(Struct_1(u_input.b.x, arg_1, u_input.b.x)), Struct_1(u_input.b.x, vec2<f32>(123f, 774f), u_input.b.x)))), select(!select(vec4<bool>(arg_0, arg_0, arg_0, true), !vec4<bool>(true, arg_0, true, true), true), select(func_3(Struct_5(Struct_2(Struct_1(0u, arg_1, u_input.b.x)), Struct_1(4294967295u, vec2<f32>(883f, 213f), 44638u))), vec4<bool>(all(vec3<bool>(false, arg_0, arg_0)), arg_0, true, true), vec4<bool>(arg_0, arg_0, func_3(Struct_5(Struct_2(Struct_1(u_input.b.x, vec2<f32>(arg_1.x, 1273f), u_input.b.x)), Struct_1(u_input.a, vec2<f32>(-352f, arg_1.x), 4294967295u))).x, all(vec3<bool>(false, arg_0, arg_0)))), true));
    let var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a, ~u_input.b.x, _wgslsmith_div_u32(0u, u_input.a), ~u_input.a), ~vec4<u32>(u_input.b.x, 36078u, u_input.b.x, 39548u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(countOneBits(49890u), firstTrailingBit(u_input.b.x), 0u, u_input.b.x << (u_input.b.x % 32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(72660u, 1u, 1u, 0u), ~vec4<u32>(u_input.a, 94365u, 4294967295u, u_input.a)), vec4<u32>(8581u, ~49880u, u_input.a, ~u_input.b.x))), _wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(57337u, u_input.a, u_input.a, u_input.b.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, u_input.a, 4294967295u), vec4<u32>(40606u, 4294967295u, 4179u, u_input.b.x))) >> (vec4<u32>(4294967295u, _wgslsmith_sub_u32(u_input.a, u_input.b.x), abs(~27824u), u_input.a) % vec4<u32>(32u)));
    var_0 = !(!vec4<bool>(false || !arg_0, true, all(!vec4<bool>(arg_0, false, var_0.x, arg_0)), false));
    let var_2 = Struct_5(Struct_2(Struct_1(select(4294967295u, _wgslsmith_div_u32(4294967295u, u_input.a), var_0.x), arg_1, ~var_1.x)), Struct_1(25067u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-281f * 155f))), _wgslsmith_add_u32(~var_1.x, ~_wgslsmith_sub_u32(40336u, var_1.x))));
    let var_3 = 829f;
    return abs(var_1.x);
}

fn func_1(arg_0: Struct_5, arg_1: vec4<i32>, arg_2: f32, arg_3: u32) -> f32 {
    let var_0 = vec4<u32>(29459u, ~arg_3, firstLeadingBit(_wgslsmith_mod_u32(~(~12985u), u_input.a)), ~select(~arg_0.a.a.c, ~arg_3, true) << (5888u % 32u));
    var var_1 = ~((~arg_0.b.c ^ func_2(false, vec2<f32>(arg_2, 759f), arg_1.xx)) ^ _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(arg_0.b.c, arg_3, var_0.x, 40153u)), vec4<u32>(var_0.x, 81211u, 4294967295u, arg_0.a.a.c))) << (~countOneBits(arg_0.b.c) % 32u);
    var var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.a.b.x, arg_0.a.a.b.x, -1103f) - vec3<f32>(arg_0.a.a.b.x, arg_0.b.b.x, arg_0.a.a.b.x)) - vec3<f32>(-411f, arg_2, arg_0.a.a.b.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-499f, -506f, 984f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.a.a.b.x, arg_0.a.a.b.x, arg_0.b.b.x)))))) - vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + arg_2), -182f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-528f)) * _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(trunc(-594f))))), _wgslsmith_f_op_f32(-381f - arg_2)));
    var var_4 = countOneBits(vec4<u32>(arg_0.a.a.a >> (reverseBits(max(0u, 402u)) % 32u), var_0.x, 27985u, ~(~min(u_input.b.x, 18494u))));
    return 1000f;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = false;
    let var_1 = 1479u;
    var_0 = !((true || (var_1 == _wgslsmith_div_u32(u_input.a, var_1))) & func_3(Struct_5(Struct_2(Struct_1(4294967295u, vec2<f32>(202f, 128f), u_input.b.x)), Struct_1(var_1, arg_1.yy, 4294967295u))).x);
    var_0 = any(!(!vec3<bool>(any(vec4<bool>(false, true, false, true)), true, false)));
    var var_2 = 6425u;
    return Struct_2(Struct_1(var_1, arg_1.zz, ~(~1u)));
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> Struct_4 {
    var var_0 = u_input.e;
    let var_1 = vec2<bool>(true || (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.b.x - 1711f)) != -1038f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_4(var_0.yz, vec4<f32>(arg_1.a.b.x, -844f, arg_1.a.b.x, 375f)).a.b.x)) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.a.b.x, arg_1.a.b.x)), _wgslsmith_f_op_f32(379f * arg_1.a.b.x))));
    var var_2 = reverseBits(1u);
    let var_3 = vec2<i32>(firstTrailingBit(~(~(-45541i))), var_0.x | _wgslsmith_dot_vec3_i32(vec3<i32>(-var_0.x, -arg_2, reverseBits(-79754i)), u_input.e ^ -vec3<i32>(-2147483647i, 21703i, 46389i)));
    var_0 = vec3<i32>(var_3.x, u_input.d, var_0.x);
    return Struct_4(func_4(var_0.zx, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(258f, arg_1.a.b.x, arg_1.a.b.x, arg_1.a.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.b.x), _wgslsmith_f_op_f32(exp2(arg_1.a.b.x)), -1000f, _wgslsmith_f_op_f32(747f - -632f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1259f + _wgslsmith_f_op_f32(649f * 327f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1701f)) - arg_1.a.b.x), _wgslsmith_f_op_f32(-247f + _wgslsmith_f_op_f32(ceil(-715f))))), !vec4<bool>(true, false, true, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))), func_4(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, -31813i)), vec2<i32>(u_input.e.x, max(-2147483647i, u_input.c.x)), ~u_input.c.zx >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1(Struct_5(Struct_2(Struct_1(0u, vec2<f32>(249f, -475f), 83826u)), Struct_1(u_input.a, vec2<f32>(1185f, 795f), u_input.b.x)), vec4<i32>(u_input.e.x, 25660i, -22966i, u_input.d), -173f, 4294967295u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(356f - -744f))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1958f, -2061f), -129f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -835f)))), u_input.d);
    let var_1 = ~func_2(true, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.b.x, var_0.b.x))), countOneBits(u_input.c.zx & u_input.c.xy)) & 1u;
    var var_2 = func_5(true, func_4(select(vec2<i32>(-1i) * -u_input.c.yz, reverseBits(u_input.e.zx | vec2<i32>(-4402i, -2147483647i)), !(!var_0.c.zw)), vec4<f32>(-723f, _wgslsmith_f_op_f32(var_0.a.a.b.x + _wgslsmith_f_op_f32(-528f * var_0.b.x)), var_0.b.x, func_5(all(vec2<bool>(var_0.c.x, var_0.c.x)), Struct_2(Struct_1(0u, vec2<f32>(269f, var_0.b.x), var_0.a.a.a)), -u_input.c.x).a.a.b.x)), _wgslsmith_mod_i32(1i, 1i | u_input.e.x)).b;
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x))))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-var_2.x)), var_0.a.a.b.x))));
    var var_3 = Struct_4(func_4(_wgslsmith_clamp_vec2_i32(firstTrailingBit(u_input.e.zy), abs(~u_input.c.xy), (u_input.c.xz & vec2<i32>(u_input.c.x, 2147483647i)) ^ _wgslsmith_mult_vec2_i32(u_input.e.yy, u_input.c.xz)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.b.x, 207f, -1046f, var_2.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-929f, 830f, var_2.x, var_0.a.a.b.x), vec4<f32>(-467f, var_0.a.a.b.x, -2529f, var_2.x))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a.a.b.x, var_0.a.a.b.x, var_2.x, -1157f)))), select(41753u, 32578u, var_0.c.x) >= _wgslsmith_sub_u32(var_1, 39727u)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1505f * var_0.a.a.b.x) * var_2.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(Struct_5(Struct_2(var_0.a.a), var_0.a.a), firstLeadingBit(vec4<i32>(1i, u_input.c.x, u_input.c.x, -50787i)), -172f, 1u)))), var_2.x), func_3(Struct_5(var_0.a, var_0.a.a)));
    var var_4 = var_3.a.a;
    let var_5 = -392f;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(60117i, u_input.d, ~(~u_input.e.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.a.b.x, -668f, var_2.x))))))), firstLeadingBit(abs(-u_input.e.x)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 37805u, ~var_4.c), ~vec3<u32>(1900u, var_4.c, u_input.a)) % 32u), u_input.c.x, -1920f);
}

