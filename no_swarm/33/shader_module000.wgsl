struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool) -> vec4<i32> {
    var var_0 = Struct_1(false, 4138i << (~abs(12415u >> (u_input.c % 32u)) % 32u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(749f, -2876f, -732f, 1000f))))), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_mod_u32(~33830u, 53371u));
    var var_1 = max(~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, 49093u), vec4<u32>(var_0.d, 31530u, 2034u, u_input.c), vec4<u32>(u_input.c, var_0.d, u_input.c, u_input.c)) & (vec4<u32>(u_input.c, var_0.d, u_input.c, var_0.d) | vec4<u32>(4294967295u, 6509u, u_input.c, 4177u)), vec4<u32>(~u_input.c, 1u, 0u, 92659u), firstLeadingBit(firstLeadingBit(vec4<u32>(4294967295u, 18198u, 64302u, 0u)))), vec4<u32>(var_0.d, max(var_0.d, _wgslsmith_mult_u32(select(15139u, var_0.d, false), 1u)), u_input.c, _wgslsmith_mod_u32(_wgslsmith_sub_u32(~28726u, max(var_0.d, 0u)), 0u)));
    return vec4<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(-29944i, var_0.b, 6361i), ~vec3<i32>(4271i, u_input.b, -26173i)), _wgslsmith_dot_vec3_i32(u_input.d, select(vec3<i32>(1i, -1i, var_0.b), -vec3<i32>(24940i, var_0.b, u_input.e), select(vec3<bool>(true, arg_0, var_0.a), vec3<bool>(var_0.a, true, arg_0), arg_0))), var_0.b, 1i) << (max(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.c, 47229u, var_0.d), vec4<u32>(var_1.x, 1u, 7090u, u_input.c)), firstLeadingBit(select(u_input.c, var_1.x, arg_0)), 583u, ~_wgslsmith_div_u32(var_0.d, var_0.d)), vec4<u32>(u_input.c, reverseBits(1u), _wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, var_0.d), var_1.xx), _wgslsmith_div_vec2_u32(var_1.xy, var_1.zy)), 1u)) % vec4<u32>(32u));
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> bool {
    var var_0 = Struct_1(true, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(func_3(true), _wgslsmith_mod_vec4_i32(arg_0, firstLeadingBit(arg_0))), vec4<i32>(u_input.e, countOneBits(1i) >> (u_input.c % 32u), arg_0.x >> (1u % 32u), reverseBits(firstTrailingBit(u_input.b)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1182f, -795f, -477f, -276f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1344f, 2043f, 171f, 493f) - vec4<f32>(-1000f, -915f, 1815f, 1589f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(632f, 179f, 1278f, -1000f)), u_input.c >= 1u)))), (~abs(arg_1) ^ ~arg_1) >> (19606u % 32u));
    let var_1 = Struct_2(vec4<u32>(var_0.d | 2976u, 88338u, ~var_0.d, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_1), vec2<u32>(u_input.c, u_input.c)), ~vec2<u32>(var_0.d, var_0.d))), _wgslsmith_f_op_f32(abs(var_0.c.x)), Struct_1(any(!(!vec4<bool>(var_0.a, var_0.a, false, true))), arg_0.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c.x, 1660f, var_0.c.x, var_0.c.x))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.x, var_0.c.x, 1873f, 2383f), vec4<f32>(var_0.c.x, var_0.c.x, 349f, var_0.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-313f, -1529f, var_0.c.x, -254f)))), vec4<bool>(!var_0.a, var_0.a, !var_0.a, true))), 0u), _wgslsmith_sub_i32(16601i, arg_0.x));
    var_0 = var_1.c;
    var_0 = var_1.c;
    var var_2 = var_1.c;
    return any(vec3<bool>(select(_wgslsmith_f_op_f32(f32(-1f) * -593f) != var_2.c.x, var_0.a, !var_2.a), true, false | all(vec3<bool>(var_0.a, var_0.a, var_1.c.a))));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = ~max(_wgslsmith_dot_vec2_u32(arg_2.a.ww >> (arg_2.a.zw % vec2<u32>(32u)), arg_2.a.zw), 1u);
    var_0 = 0u;
    let var_1 = arg_2.c;
    let var_2 = ~_wgslsmith_mod_u32(u_input.c, max(~u_input.c, arg_0));
    var var_3 = firstLeadingBit(~0u) > var_2;
    return arg_2.c;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_3 {
    var var_0 = !vec3<bool>(arg_2.a, false, !func_4(arg_1.d >> (4294967295u % 32u), select(vec3<bool>(false, arg_2.a, false), vec3<bool>(false, arg_2.a, false), vec3<bool>(arg_2.a, arg_1.a, arg_1.a)), Struct_2(vec4<u32>(80586u, 0u, 0u, arg_2.d), arg_1.c.x, arg_2, -44826i)).a);
    var_0 = select(vec3<bool>(arg_2.a, arg_2.c.x >= arg_3, true), vec3<bool>(false, !select(var_0.x, arg_1.a, false), arg_2.a), !arg_1.a);
    let var_1 = Struct_3(arg_2.b);
    var_0 = !select(!(!(!vec3<bool>(arg_2.a, true, true))), select(vec3<bool>(false, !arg_1.a, arg_2.a), select(vec3<bool>(arg_2.a, arg_2.a, true), !vec3<bool>(var_0.x, true, arg_2.a), arg_1.a), select(vec3<bool>(false, false, false), select(vec3<bool>(arg_2.a, false, false), vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(false, arg_1.a, var_0.x)), select(vec3<bool>(arg_1.a, true, true), vec3<bool>(true, var_0.x, false), vec3<bool>(true, false, true)))), vec3<bool>(false, false, var_0.x && false));
    var_0 = select(!(!select(select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, arg_2.a, false), vec3<bool>(false, arg_1.a, arg_2.a)), select(vec3<bool>(false, true, false), vec3<bool>(false, var_0.x, false), vec3<bool>(false, true, arg_1.a)), !vec3<bool>(var_0.x, arg_2.a, var_0.x))), vec3<bool>(true, all(var_0.xx), true), vec3<bool>(true, arg_1.a, true));
    return var_1;
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(1i, func_4(u_input.c, select(vec3<bool>(true, true, true), vec3<bool>(true, func_2(vec4<i32>(u_input.e, 0i, 1i, -1i), u_input.c), any(vec4<bool>(true, false, false, false))), vec3<bool>(true, true, true)), Struct_2(vec4<u32>(~54413u, 1u, 107599u, 32771u), 335f, Struct_1(u_input.e < u_input.e, u_input.b, vec4<f32>(-278f, 1000f, -1000f, -1713f), 65720u), u_input.b)), Struct_1(true, 2668i, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1198f, -1040f))))));
    var var_1 = Struct_2(abs(min(_wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.c, u_input.c, 10050u, 387u), vec4<u32>(u_input.c, 1095u, u_input.c, u_input.c), vec4<bool>(true, true, false, true)), vec4<u32>(u_input.c, u_input.c, u_input.c, 14645u)), abs(vec4<u32>(u_input.c, 1u, u_input.c, u_input.c)) << ((vec4<u32>(u_input.c, u_input.c, 0u, u_input.c) ^ vec4<u32>(4294967295u, 22923u, u_input.c, u_input.c)) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(f32(-1f) * -2090f), Struct_1(_wgslsmith_f_op_f32(1843f * _wgslsmith_f_op_f32(floor(-2724f))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1263f * 1000f)), u_input.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(573f, -1702f, 549f, -1454f) + vec4<f32>(-733f, -1000f, -581f, -430f)) * vec4<f32>(-1920f, -237f, -170f, 103f)) + vec4<f32>(566f, _wgslsmith_f_op_f32(703f + 1007f), _wgslsmith_f_op_f32(-878f - 1054f), _wgslsmith_f_op_f32(f32(-1f) * -1217f))), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(51856u, 31004u), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(u_input.c, ~0u))), -var_0.a);
    var var_2 = Struct_2(var_1.a, _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(-930f + var_1.c.c.x)), func_4(firstTrailingBit(var_1.c.d), vec3<bool>(any(vec2<bool>(true, true)), true, false), Struct_2(~countOneBits(vec4<u32>(u_input.c, 32768u, var_1.a.x, 31658u)), -461f, Struct_1(true, -2147483647i, var_1.c.c, var_1.c.d), countOneBits(40519i))), -countOneBits(_wgslsmith_add_i32(0i, u_input.b)));
    var var_3 = Struct_2(~(~abs(select(vec4<u32>(var_2.a.x, var_1.a.x, 4294967295u, u_input.c), var_2.a, var_1.c.a))), _wgslsmith_f_op_f32(abs(-1435f)), func_4(1u, select(!vec3<bool>(var_1.c.a, var_1.c.a, true), vec3<bool>(var_1.c.a, true, any(vec4<bool>(var_2.c.a, var_2.c.a, true, var_2.c.a))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, var_2.c.a), vec3<bool>(true, false, var_2.c.a), vec3<bool>(false, true, false)), false)), Struct_2(vec4<u32>(~4643u, 1u, ~4294967295u, 26922u), _wgslsmith_f_op_f32(f32(-1f) * -510f), Struct_1(true, 30963i, var_1.c.c, 0u), abs(func_3(true).x))), 21503i);
    var_2 = Struct_2(abs(var_3.a), func_4(~((var_3.c.d >> (var_3.a.x % 32u)) >> (18139u % 32u)), !vec3<bool>(any(vec4<bool>(var_1.c.a, true, true, false)), !var_1.c.a, true), Struct_2(~abs(var_3.a), _wgslsmith_f_op_f32(step(var_1.b, _wgslsmith_f_op_f32(trunc(var_3.c.c.x)))), var_1.c, var_2.d)).c.x, var_3.c, ~(i32(-1i) * -(26358i | var_1.d)));
    return Struct_1(!var_1.c.a, 1i, _wgslsmith_f_op_vec4_f32(step(var_1.c.c, _wgslsmith_f_op_vec4_f32(sign(var_3.c.c)))), firstLeadingBit(18795u << (0u % 32u)));
}

fn func_6(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: bool) -> f32 {
    var var_0 = vec2<bool>(func_4(select(min(u_input.c, 96002u), ~33270u, true) | ~_wgslsmith_div_u32(4294967295u, u_input.c), !select(select(vec3<bool>(true, true, true), vec3<bool>(arg_0.a, false, true), vec3<bool>(true, arg_3, true)), select(vec3<bool>(false, arg_0.a, false), vec3<bool>(true, arg_0.a, true), vec3<bool>(arg_0.a, arg_3, true)), select(vec3<bool>(arg_3, arg_3, true), vec3<bool>(arg_0.a, arg_3, true), false)), Struct_2(~_wgslsmith_mod_vec4_u32(vec4<u32>(32012u, arg_0.d, u_input.c, arg_0.d), vec4<u32>(u_input.c, arg_0.d, 4294967295u, 24266u)), _wgslsmith_div_f32(285f, _wgslsmith_div_f32(655f, -393f)), Struct_1(true, u_input.a.x, arg_0.c, countOneBits(1u)), arg_0.b)).a, arg_3);
    var_0 = !vec2<bool>(max(_wgslsmith_div_u32(u_input.c, u_input.c), u_input.c) != arg_0.d, func_1().a);
    var var_1 = _wgslsmith_f_op_f32(-arg_0.c.x);
    let var_2 = arg_0;
    var var_3 = vec4<u32>(48593u, 77853u, 1u, ~(var_2.d ^ ~1u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-286f - _wgslsmith_f_op_f32(f32(-1f) * -1382f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x + 751f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = true;
    let var_2 = ~u_input.c;
    var var_3 = Struct_1(var_1 & select(true, true, var_1), -32978i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(233f, -357f, 670f, 160f), vec4<f32>(-952f, 406f, 2439f, -1000f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1011f, 2868f, 560f, 1934f), vec4<f32>(-1189f, 1265f, -1186f, 516f), var_1)))))), var_0);
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-448f, _wgslsmith_f_op_f32(func_6(func_1(), -vec3<i32>(0i, u_input.b, u_input.b), abs(u_input.d.zz >> (vec2<u32>(var_3.d, var_3.d) % vec2<u32>(32u))), !(true || var_1)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c.x, -658f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c.x, -661f))));
    var_3 = func_1();
    var var_5 = -771f;
    let var_6 = func_5(u_input.d.x, Struct_1(var_3.a, ~func_1().b, var_3.c, abs(min(51537u, 33079u))), Struct_1(var_1, _wgslsmith_dot_vec3_i32(abs(~u_input.d), vec3<i32>(var_3.b, var_3.b, _wgslsmith_clamp_i32(1i, var_3.b, var_3.b))), vec4<f32>(-429f, 633f, _wgslsmith_f_op_f32(f32(-1f) * -533f), _wgslsmith_f_op_f32(f32(-1f) * -743f)), ~(var_0 ^ ~1u)), var_4.x);
    var var_7 = u_input.e;
    let x = u_input.a;
    s_output = StorageBuffer(-var_3.b & var_3.b);
}

