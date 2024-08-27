struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec2<bool>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: f32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, _wgslsmith_f_op_f32(f32(-1f) * -209f)) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.b, 1558f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(step(-426f, -2103f)), arg_1.b))))));
    let var_1 = arg_1;
    var var_2 = arg_0 > var_1.d.x;
    let var_3 = Struct_3(arg_1, vec3<u32>(_wgslsmith_div_u32(u_input.a.x, ~_wgslsmith_sub_u32(var_1.e, 33116u)), u_input.a.x ^ u_input.a.x, arg_1.e ^ abs(_wgslsmith_mod_u32(u_input.a.x, var_1.e))), _wgslsmith_f_op_f32(min(171f, var_1.b)), arg_1.a.x, Struct_2(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(733f - var_1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b)), var_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + _wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_f32(arg_1.b + -547f), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 109f)))))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.e.b));
    return 2147483647i;
}

fn func_2() -> Struct_1 {
    var var_0 = reverseBits(1u);
    var var_1 = Struct_3(Struct_1(!select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), u_input.a.x < u_input.a.x), -450f, vec2<bool>(select(true, true, all(vec3<bool>(false, true, true))), select(u_input.a.x <= 32199u, true, true)), countOneBits(vec2<i32>(func_3(-1i, Struct_1(vec4<bool>(true, false, false, false), -971f, vec2<bool>(false, false), vec2<i32>(0i, 0i), u_input.a.x)), 1i)), u_input.a.x), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a.x & 14213u, 5087u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, reverseBits(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(492f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1387f + 1158f)), _wgslsmith_f_op_f32(f32(-1f) * -425f))), !(any(vec2<bool>(true, false)) & (4294967295u == (u_input.a.x ^ u_input.a.x))), Struct_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(264f + -874f), 1399f, _wgslsmith_f_op_f32(354f * -1561f), _wgslsmith_f_op_f32(f32(-1f) * -1156f)))), _wgslsmith_f_op_f32(-725f + _wgslsmith_f_op_f32(min(-1082f, 1f))), vec2<f32>(_wgslsmith_f_op_f32(abs(2349f)), _wgslsmith_f_op_f32(-1f))));
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, firstTrailingBit(_wgslsmith_mod_u32(1u, var_1.a.e))), select(var_1.b.x << (38804u % 32u), ~u_input.a.x, var_1.d) ^ _wgslsmith_mod_u32(var_1.a.e | u_input.a.x, 0u), ~0u, ~var_1.a.e), countOneBits(~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(var_1.b.x, 1u, 0u, u_input.a.x)), vec4<u32>(var_1.a.e, u_input.a.x, u_input.a.x, 4294967295u) ^ vec4<u32>(0u, 25410u, var_1.a.e, 4294967295u))));
    var var_2 = firstLeadingBit(select(~max(var_1.a.d, select(var_1.a.d, vec2<i32>(-28802i, var_1.a.d.x), var_1.a.a.wx)), vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.d.x, var_1.a.d.x), var_1.a.d), ~var_1.a.d.x), !var_1.a.c));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_1.e.a.yw)));
    return Struct_1(var_1.a.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.x, -214f, var_1.a.c.x))) * var_1.c))), select(vec2<bool>(all(var_1.a.a) || var_1.d, var_1.d), vec2<bool>(var_1.a.c.x, !var_1.d), 41388u <= ~var_1.a.e), abs(vec2<i32>(-1i) * -var_1.a.d), 63113u);
}

fn func_1(arg_0: vec4<f32>, arg_1: u32) -> vec4<f32> {
    let var_0 = Struct_3(func_2(), vec3<u32>(u_input.a.x ^ 0u, u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2448f - -297f))))), ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, arg_1), vec4<u32>(0u, arg_1, 40592u, 0u))) < u_input.a.x, Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 1000f, -327f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -467f, 238f))))), _wgslsmith_f_op_f32(752f + _wgslsmith_f_op_f32(501f - arg_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.x, arg_0.x), arg_0.wx)) - arg_0.wy)));
    let var_1 = 10545u << (abs(~abs(var_0.b.x | arg_1)) % 32u);
    let var_2 = arg_1 > _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.b, var_0.b), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, var_0.a.e, 0u), vec3<u32>(arg_1, _wgslsmith_clamp_u32(0u, arg_1, 0u), var_1)));
    let var_3 = Struct_3(func_2(), var_0.b, _wgslsmith_f_op_f32(round(304f)), false, var_0.e);
    var var_4 = u_input.a.x;
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-842f)))), _wgslsmith_f_op_f32(800f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-894f, var_0.e.a.x)) + -654f))), _wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + var_3.e.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = select(arg_1.a.e << (10250u % 32u), min(4294967295u, 0u ^ max(_wgslsmith_clamp_u32(arg_1.b.x, 43619u, 19219u), ~arg_1.a.e)), true);
    var var_1 = arg_3.x;
    var_1 = true;
    var var_2 = arg_1;
    let var_3 = var_2.a.a;
    return Struct_1(vec4<bool>(false, arg_3.x, arg_3.x, (u_input.a.x >= 0u) | (arg_1.a.c.x | true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.e.a) + _wgslsmith_f_op_vec4_f32(abs(arg_0.a))), 4294967295u)).x + 705f), vec2<bool>(true, true), select(arg_1.a.d | ~_wgslsmith_div_vec2_i32(arg_1.a.d, vec2<i32>(var_2.a.d.x, -2005i)), _wgslsmith_clamp_vec2_i32(reverseBits(arg_1.a.d), arg_1.a.d, reverseBits(-var_2.a.d)), var_2.a.a.wx), var_0 & abs(u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-560f, -1022f, -262f, -270f) + vec4<f32>(-1255f, 596f, 511f, -765f)))), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1750f, 1487f, 598f, -571f) - vec4<f32>(-2278f, 2053f, 2002f, -2241f)), max(1u, 0u))))), _wgslsmith_f_op_f32(-func_2().b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1825f, 553f), vec2<f32>(577f, -375f))))), Struct_3(func_2(), select(abs(vec3<u32>(u_input.a.x, 0u, u_input.a.x)), vec3<u32>(u_input.a.x, 0u, 1u), func_2().a.x) << (min(vec3<u32>(u_input.a.x, 41797u, u_input.a.x), vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)) % vec3<u32>(32u)), 1395f, any(vec3<bool>(true, true, true)), Struct_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, 242f, 1035f, -190f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-412f, 1571f, -850f, 279f)), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(560f, -725f, true)), _wgslsmith_f_op_f32(f32(-1f) * -839f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(523f, -630f)))), false, select(!select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), select(select(func_2().c, vec2<bool>(true, true), true), vec2<bool>(true, any(vec4<bool>(false, true, true, true))), select(func_2().a.yw, select(vec2<bool>(true, false), vec2<bool>(false, true), true), true)), func_2().a.xy));
    var_0 = Struct_1(!var_0.a, _wgslsmith_f_op_f32(f32(-1f) * -372f), select(select(!var_0.c, var_0.c, !var_0.c), !vec2<bool>(func_2().a.x, var_0.c.x), !vec2<bool>(var_0.c.x, false)), vec2<i32>(_wgslsmith_sub_i32(-29130i, max(var_0.d.x, firstTrailingBit(-2147483647i))), 17396i), _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(var_0.e, 0u), 11298u, _wgslsmith_clamp_u32(abs(4294967295u), 4294967295u, _wgslsmith_sub_u32(var_0.e, var_0.e))), vec3<u32>(var_0.e, 1u, ~u_input.a.x)));
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-var_0.b), func_2().a.yw, var_0.d, var_0.e);
    let var_1 = Struct_3(func_2(), max(~vec3<u32>(~76109u, 1u, 21137u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(55977u, var_0.e, 1u) << (vec3<u32>(1u, 1u, u_input.a.x) % vec3<u32>(32u)), ~vec3<u32>(42419u, 6527u, 112212u))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true, Struct_2(vec4<f32>(-1000f, _wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(min(var_0.b, 208f))), -1870f, _wgslsmith_f_op_f32(sign(154f))), var_0.b, vec2<f32>(var_0.b, _wgslsmith_f_op_f32(max(-144f, _wgslsmith_f_op_f32(step(267f, -1000f)))))));
    var var_2 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.b), -1i, abs(vec4<u32>(29665u, var_2.e, ~(~28922u), 4294967295u)), ~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(var_1.b.x, 4294967295u, u_input.a.x, 6521u), vec4<u32>(var_1.a.e, 0u, var_1.b.x, u_input.a.x)), ~vec4<u32>(var_1.b.x, 1u, var_1.a.e, var_2.e)), vec4<u32>(min(1676u, 1u), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(98140u, 1u), var_1.b.xx), ~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.b) * -734f))));
}

