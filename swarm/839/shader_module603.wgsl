struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: i32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -810f), _wgslsmith_f_op_f32(f32(-1f) * -1501f)) * vec2<f32>(-1548f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.b.x))))), !any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), vec3<bool>(true, false, false), any(vec3<bool>(false, true, false)))));
    var var_1 = _wgslsmith_div_u32(~_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 14067u, 1u, 4294967295u), vec4<u32>(1u, 54094u, 4294967295u, 9596u)), ~10259u), ~(_wgslsmith_add_u32(select(0u, 0u, true), _wgslsmith_div_u32(1u, 26759u)) << ((1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 27184u), vec3<u32>(3692u, 1u, 1u)) % 32u)) % 32u)));
    var var_2 = ~14164u;
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1150f, arg_2.b.x, _wgslsmith_f_op_f32(round(arg_2.b.x)))))), firstLeadingBit(~(vec2<i32>(u_input.b.x, arg_1.x) | vec2<i32>(0i, -30017i))) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(max(arg_2.a.xy, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2093f, -120f) - vec2<f32>(-543f, var_0.a.x))))), true), vec3<u32>(_wgslsmith_dot_vec3_u32(select(firstLeadingBit(vec3<u32>(67210u, 54314u, 0u)), ~vec3<u32>(54587u, 9380u, 36236u), true), vec3<u32>(19998u, ~34158u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 65286u, 46452u), vec4<u32>(48059u, 4294967295u, 4294967295u, 21569u)))), countOneBits(~(~4294967295u)), 1u));
    let var_4 = var_3.c;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-747f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.c.a.x), -1082f)))));
}

fn func_2() -> u32 {
    var var_0 = -(~(~(u_input.b.x ^ (-29596i | u_input.a))));
    let var_1 = -12436i;
    var_0 = u_input.a;
    var var_2 = 21617u;
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(select(vec3<i32>(var_1, -51408i, u_input.b.x), vec3<i32>(-2147483647i, var_1, -2147483647i), vec3<bool>(false, false, true)), u_input.b, Struct_3(vec3<f32>(281f, -186f, 1000f), vec4<f32>(1381f, -324f, 385f, -1109f)), -2147483647i)), -1479f))));
    return 1u;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    let var_0 = 719f;
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1630f, -812f))) + vec2<f32>(var_0, -638f))))), !(func_2() > _wgslsmith_add_u32(~27815u, 0u)));
    var_1 = arg_1.c;
    var_1 = arg_1.c;
    var var_2 = vec3<bool>(arg_0.x != ((~4294967295u << (1u % 32u)) != countOneBits(max(arg_1.d.x, arg_1.d.x))), !any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, arg_1.c.b, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, false, true, arg_1.c.b), vec4<bool>(arg_0.x, true, arg_0.x, false), arg_1.c.b), select(vec4<bool>(arg_1.c.b, false, true, false), vec4<bool>(arg_0.x, arg_0.x, arg_1.c.b, var_1.b), vec4<bool>(false, false, var_1.b, arg_0.x)))), !var_1.b);
    return Struct_2(arg_1.a, vec2<i32>(firstLeadingBit(arg_1.b.x), _wgslsmith_div_i32(arg_1.b.x, _wgslsmith_div_i32(abs(6367i), _wgslsmith_div_i32(-28559i, u_input.b.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(max(var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.c.a.x, var_1.a.x)))))), arg_1.c.b), arg_1.d);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    var var_0 = func_1(vec2<bool>(true, _wgslsmith_add_u32(16083u, _wgslsmith_mod_u32(arg_2.d.x, 0u)) < (15096u << (~4294967295u % 32u))), Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(arg_2.a, vec4<f32>(arg_1.a.x, -1136f, 1061f, arg_2.c.a.x))))))), vec2<i32>(~(-24276i), 4200i), func_1(vec2<bool>(true, all(vec4<bool>(true, arg_0.x, true, true))), arg_2, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(882f, -1000f)), _wgslsmith_f_op_f32(min(2420f, arg_1.a.x))))).c, select(reverseBits(vec3<u32>(arg_2.d.x, arg_1.d.x, arg_2.d.x)), arg_1.d, all(vec2<bool>(false, arg_1.c.b)) && all(vec4<bool>(true, true, arg_2.c.b, true)))), -823f).c;
    var_0 = arg_2.c;
    let var_1 = func_1(select(arg_0, !select(arg_0, vec2<bool>(arg_2.c.b, var_0.b), vec2<bool>(true, var_0.b)), any(vec3<bool>(true, true, true))), arg_2, -1321f);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.a.wz)), true);
    let var_2 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.x - 1352f), _wgslsmith_f_op_f32(step(811f, 2311f)), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.c.a.x + arg_2.c.a.x), _wgslsmith_f_op_f32(trunc(-102f))))))), arg_1.a);
    return _wgslsmith_f_op_f32(-var_1.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), func_1(vec2<bool>(true, true), Struct_2(vec4<f32>(-839f, 2139f, -752f, -768f), vec2<i32>(-29332i, u_input.a), Struct_1(vec2<f32>(-450f, -376f), false), vec3<u32>(0u, 59581u, 0u)), _wgslsmith_f_op_f32(-1355f - 300f)), func_1(select(vec2<bool>(false, false), vec2<bool>(true, false), true), Struct_2(vec4<f32>(356f, 1310f, -1426f, 650f), u_input.b, Struct_1(vec2<f32>(-1196f, -586f), true), vec3<u32>(17980u, 0u, 48028u)), _wgslsmith_div_f32(1000f, 909f))))), vec3<i32>(-1i) * -vec3<i32>(i32(-1i) * -1i, ~u_input.a, ~1i), _wgslsmith_div_vec2_u32(select(~vec2<u32>(4294967295u, 3472u) | func_1(vec2<bool>(true, false), Struct_2(vec4<f32>(359f, -1326f, 1879f, -1033f), u_input.b, Struct_1(vec2<f32>(-888f, 997f), true), vec3<u32>(1u, 4294967295u, 4294967295u)), -962f).d.yz, vec2<u32>(1u, 1u), any(vec3<bool>(true, true, false))), select(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1u)), reverseBits(vec2<u32>(861u, 49750u))), vec2<u32>(1u, 1u), true)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(669f, -674f, -135f, 248f)) + vec4<f32>(-1000f, -1577f, -621f, 1527f))), ~u_input.b, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(step(1143f, -333f)), 222f), true), ~abs(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(96970u, 1u, 1u)))), countOneBits(20351i));
    var var_1 = _wgslsmith_f_op_f32(var_0.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.d.c.a.x + -561f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(var_0.a, -771f))))));
    var var_2 = func_1(!vec2<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(35032u, 0u, 14228u), vec3<u32>(var_0.c.x, var_0.c.x, var_0.d.d.x)) > firstTrailingBit(var_0.d.d.x), any(!vec3<bool>(var_0.d.c.b, false, var_0.d.c.b))), var_0.d, _wgslsmith_f_op_f32(var_0.d.a.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-200f + 146f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1544f))))))).c;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1105f + -991f) - var_2.a.x)), _wgslsmith_f_op_f32(select(-300f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-194f))), !var_2.b))) + var_2.a.x);
    let var_3 = !(!select(vec4<bool>(var_0.d.c.b, false, false, var_0.e != var_0.e), !select(vec4<bool>(var_2.b, true, false, var_0.d.c.b), vec4<bool>(var_0.d.c.b, var_0.d.c.b, var_2.b, false), vec4<bool>(var_2.b, true, var_2.b, true)), !(!vec4<bool>(false, var_0.d.c.b, var_0.d.c.b, var_2.b))));
    var_1 = -210f;
    var var_4 = 2107f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(~_wgslsmith_clamp_i32(select(u_input.b.x, var_0.d.b.x, var_2.b), _wgslsmith_sub_i32(u_input.a, 13487i), _wgslsmith_sub_i32(u_input.a, -1i)), ~2147483647i), var_0.d.d.x, var_0.d.d.x, vec4<i32>(~(-firstTrailingBit(u_input.a)), u_input.b.x, _wgslsmith_sub_i32(~(-1167i), countOneBits(min(5413i, var_0.e))), u_input.b.x >> (38571u % 32u)), _wgslsmith_f_op_f32(func_4(var_3.xx, Struct_2(var_0.d.a, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(u_input.a, var_0.e)) ^ (u_input.b << (vec2<u32>(6497u, 49848u) % vec2<u32>(32u))), func_1(var_3.wx, func_1(var_3.xy, Struct_2(var_0.d.a, vec2<i32>(-2147483647i, var_0.d.b.x), Struct_1(vec2<f32>(var_0.d.a.x, 568f), var_0.d.c.b), var_0.d.d), var_0.d.c.a.x), _wgslsmith_f_op_f32(-773f + 1242f)).c, vec3<u32>(51054u, var_0.d.d.x, 57864u)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d.a)), vec2<i32>(-u_input.a, var_0.e), func_1(vec2<bool>(true, var_0.d.c.b), func_1(vec2<bool>(false, var_2.b), Struct_2(var_0.d.a, u_input.b, Struct_1(var_0.d.a.xw, var_3.x), vec3<u32>(var_0.d.d.x, var_0.d.d.x, var_0.c.x)), -334f), var_2.a.x).c, ~var_0.d.d))));
}

