struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_dot_vec4_i32(max(vec4<i32>(36655i, -11114i, 1i, 1i), ~arg_3.c), arg_2.a.c);
    let var_1 = vec4<i32>(max(1i | (~arg_3.c.x >> (19198u % 32u)), ~(-41665i)), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-6772i, arg_2.a.c.x, u_input.b, -2147483647i)) & arg_0.c, ~(arg_3.c ^ arg_2.a.c)), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_2.a.c.x, 1i, -2147483647i)), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-36877i, -25476i, -2147483647i)), firstTrailingBit(arg_0.c.zyx), _wgslsmith_mod_vec3_i32(vec3<i32>(-16661i, arg_2.a.c.x, 0i), vec3<i32>(18099i, arg_3.c.x, -5164i))))), 5891i, arg_2.a.c.x);
    var_0 = ~select(2147483647i, u_input.a.x, false);
    var var_2 = Struct_2(arg_3);
    var_2 = Struct_2(arg_3);
    return vec2<bool>(any(vec2<bool>(!var_2.a.d, all(vec3<bool>(arg_2.a.d, arg_2.a.a.x, false)))), all(!vec3<bool>(false, 42170i < var_2.a.c.x, all(vec4<bool>(false, arg_2.a.d, true, true)))));
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_1(!select(vec2<bool>(true, true), !func_3(Struct_1(vec2<bool>(false, false), vec2<f32>(572f, 1394f), vec4<i32>(61626i, -2147483647i, -14203i, u_input.b), false), vec4<f32>(-366f, -290f, -333f, 1001f), Struct_2(Struct_1(vec2<bool>(true, true), vec2<f32>(-305f, -1275f), vec4<i32>(u_input.b, u_input.b, u_input.b, 1i), true)), Struct_1(vec2<bool>(true, true), vec2<f32>(844f, -1177f), vec4<i32>(2147483647i, 46736i, -17286i, -24340i), true)), false), vec2<f32>(_wgslsmith_f_op_f32(sign(-1058f)), -315f), max(~vec4<i32>(0i, _wgslsmith_add_i32(u_input.a.x, 4784i), u_input.a.x, 2147483647i), select(~abs(vec4<i32>(u_input.b, u_input.b, -1i, u_input.b)), min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, u_input.b), vec4<i32>(-17573i, -1i, 0i, u_input.a.x)), reverseBits(vec4<i32>(u_input.b, 1i, u_input.b, u_input.b))), true)), func_3(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-257f, 502f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-739f, 797f))), vec4<i32>(max(2008i, 1i), 2147483647i, firstLeadingBit(-1i), u_input.a.x | 45998i), all(vec2<bool>(true, true))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -865f), _wgslsmith_f_op_f32(select(-931f, 907f, false)), _wgslsmith_f_op_f32(step(919f, -2257f)), 595f))), Struct_2(Struct_1(func_3(Struct_1(vec2<bool>(false, true), vec2<f32>(-402f, -923f), vec4<i32>(u_input.b, -25237i, u_input.a.x, 1i), false), vec4<f32>(902f, -1000f, -759f, 1131f), Struct_2(Struct_1(vec2<bool>(true, false), vec2<f32>(-628f, -1359f), vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.b), false)), Struct_1(vec2<bool>(true, true), vec2<f32>(-768f, 549f), vec4<i32>(u_input.b, -2147483647i, u_input.b, -1i), true)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1408f, 630f)), firstLeadingBit(vec4<i32>(u_input.a.x, -25450i, 16315i, u_input.b)), false)), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1008f, -260f))), vec4<i32>(60869i, u_input.b, min(2147483647i, u_input.a.x), ~(-1i)), all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true))))).x);
    var_0 = Struct_1(var_0.a, _wgslsmith_f_op_vec2_f32(trunc(var_0.b)), max(_wgslsmith_div_vec4_i32(vec4<i32>(8116i, -var_0.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(39390i, var_0.c.x), vec2<i32>(-18666i, -28886i)), var_0.c.x), vec4<i32>(u_input.b, ~var_0.c.x, u_input.b, _wgslsmith_dot_vec2_i32(u_input.a, var_0.c.ww))), (-vec4<i32>(u_input.b, -1i, var_0.c.x, u_input.b) & ~var_0.c) | countOneBits(firstTrailingBit(var_0.c))), true);
    let var_1 = Struct_1(vec2<bool>(true, true), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1291f * -1286f)))), 680f), ~var_0.c, select(true, any(!(!vec3<bool>(var_0.d, true, var_0.d))), true));
    var_0 = Struct_1(select(vec2<bool>(var_1.d, var_1.d), vec2<bool>(true, var_0.d), var_1.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-255f, 324f), vec2<f32>(1109f, -413f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-177f, var_0.b.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -1394f) + var_0.b))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(-842f)), _wgslsmith_f_op_f32(step(-499f, var_1.b.x))))), var_0.c << (max(select(select(vec4<u32>(21941u, 124062u, 0u, 4294967295u), vec4<u32>(4294967295u, 23511u, 14953u, 6521u), vec4<bool>(false, var_0.d, var_1.a.x, var_0.a.x)), select(vec4<u32>(0u, 19128u, 27308u, 42268u), vec4<u32>(4222u, 31329u, 0u, 0u), vec4<bool>(var_1.d, var_0.d, var_0.d, var_1.d)), any(var_1.a)), vec4<u32>(0u, reverseBits(9351u), ~11981u, ~0u)) % vec4<u32>(32u)), select(select(var_0.a.x, var_0.a.x, (i32(-1i) * -1i) == -var_0.c.x), all(vec2<bool>(false & var_0.a.x, all(var_1.a))), all(vec2<bool>(!var_0.a.x, all(vec3<bool>(var_0.a.x, var_1.d, true))))));
    var var_2 = select(vec3<u32>(_wgslsmith_add_u32(1u, ~28530u), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(24337u, 6556u, 4294967295u)), ~vec3<u32>(1u, 29228u, 0u)), 27790u), ~vec3<u32>(1u, 1u, 1u), !select(vec3<bool>(true, var_0.d, false), !vec3<bool>(var_0.a.x, true, var_0.d), select(vec3<bool>(var_0.a.x, true, false), vec3<bool>(true, var_1.a.x, false), true))) | vec3<u32>(43478u, countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 38151u), vec2<u32>(5735u, 0u)), _wgslsmith_add_vec2_u32(vec2<u32>(26575u, 24540u), vec2<u32>(5452u, 2382u)))), ~reverseBits(1u));
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)) - var_0.b.x))), var_0.b.x, _wgslsmith_f_op_f32(exp2(var_1.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * var_1.b.x) * _wgslsmith_f_op_f32(2436f - var_1.b.x))))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-170f, 1000f)), _wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(ceil(arg_0.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())));
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -159f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(604f - _wgslsmith_div_f32(var_0.x, arg_0.b.x)), -623f), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_f_op_f32(-1325f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) * _wgslsmith_f_op_f32(-arg_0.b.x)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1162f, arg_0.b.x, _wgslsmith_f_op_f32(-676f + -526f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - arg_0.b.x), -660f)) + vec4<f32>(_wgslsmith_f_op_f32(180f + _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(sign(-221f)), _wgslsmith_f_op_f32(abs(arg_0.b.x)), arg_0.b.x)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(627f, 864f, 247f, 1000f)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-503f + 693f), -479f, arg_0.b.x, arg_0.b.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, var_0.x, var_0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, -509f, arg_0.b.x, -486f) + vec4<f32>(var_0.x, -580f, -581f, arg_0.b.x))))) * _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.b.x, -354f)) * 585f), 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_div_f32(-523f, var_0.x), -603f) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, arg_0.b.x, -1000f, arg_0.b.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, -439f, var_0.x, -1275f), vec4<f32>(arg_0.b.x, -1000f, -2332f, arg_0.b.x))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -354f, var_0.x, var_0.x) - vec4<f32>(653f, arg_0.b.x, arg_0.b.x, arg_0.b.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(271f, -109f, arg_0.b.x, -1021f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, arg_0.b.x, arg_0.b.x, -249f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1189f, arg_0.b.x, arg_0.b.x, 277f) * vec4<f32>(var_0.x, -714f, arg_0.b.x, arg_0.b.x))), _wgslsmith_f_op_f32(step(-252f, -1265f)) <= -1024f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, var_0.x, var_0.x, -162f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, arg_0.b.x, 893f, -487f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())))));
    return arg_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(380f, 1023f, -1739f, -1000f))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2350f, 771f, -417f, 339f))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -128f) * _wgslsmith_f_op_f32(f32(-1f) * -1160f)), _wgslsmith_f_op_f32(f32(-1f) * -1140f))))), -1336f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(284f)), _wgslsmith_div_f32(1000f, 1219f))), _wgslsmith_f_op_f32(-1015f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), -1282f, true))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-385f, _wgslsmith_f_op_f32(367f * _wgslsmith_f_op_f32(var_0.x * var_0.x)), 1441f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1011f, var_0.x, 1642f, var_0.x) * vec4<f32>(-915f, 939f, var_0.x, var_0.x)))))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1436f + var_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<bool>(true, true), var_0.zx, vec4<i32>(-2147483647i, u_input.b, -1i, u_input.a.x), true))), var_0.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - -983f), var_0.x))));
    var var_1 = Struct_1(func_3(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_0.xz - vec2<f32>(var_0.x, var_0.x)))), vec4<i32>(u_input.b & -12660i, u_input.a.x, u_input.a.x, _wgslsmith_mult_i32(-15580i, 16887i)), true), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(339f, 266f, 364f, var_0.x))) * vec4<f32>(150f, -1149f, var_0.x, var_0.x)))), Struct_2(Struct_1(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), _wgslsmith_f_op_vec2_f32(select(var_0.xx, vec2<f32>(940f, var_0.x), true)), vec4<i32>(u_input.b, u_input.b, u_input.a.x, -2147483647i), false)), Struct_1(vec2<bool>(u_input.a.x > -17583i, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.xy)), max(vec4<i32>(u_input.b, u_input.a.x, 9187i, u_input.a.x), vec4<i32>(11903i, 13540i, 1i, u_input.b)) >> (reverseBits(vec4<u32>(84209u, 58561u, 15501u, 14467u)) % vec4<u32>(32u)), all(vec3<bool>(true, true, true)))), vec2<f32>(-1144f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 539f)) - -138f)), ~vec4<i32>(-u_input.b, -u_input.a.x, _wgslsmith_mult_i32(-1i, -1961i) ^ select(u_input.a.x, -8012i, true), 35276i), true);
    let var_2 = Struct_1(func_3(Struct_1(vec2<bool>(true, var_1.d | false), _wgslsmith_div_vec2_f32(vec2<f32>(1233f, -1000f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(726f, var_0.x), var_1.b))), ~(vec4<i32>(21891i, var_1.c.x, -9577i, var_1.c.x) ^ var_1.c), select(true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-106f, 364f, -855f, var_0.x) + vec4<f32>(var_1.b.x, 1000f, var_0.x, -1704f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, -378f, 1000f, -2254f))))), Struct_2(Struct_1(!vec2<bool>(var_1.d, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(434f, 1293f)), vec4<i32>(u_input.b, 48562i, -1i, var_1.c.x), var_1.b.x < var_0.x)), Struct_1(select(!vec2<bool>(true, var_1.d), var_1.a, !vec2<bool>(var_1.d, var_1.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -643f) * vec2<f32>(var_1.b.x, var_0.x)) - var_1.b), -abs(vec4<i32>(u_input.a.x, u_input.b, 3451i, 37177i)), false)), vec2<f32>(_wgslsmith_div_f32(var_0.x, -532f), _wgslsmith_f_op_f32(1391f - -480f)), countOneBits(firstLeadingBit(vec4<i32>(var_1.c.x, 0i, var_1.c.x ^ 28386i, u_input.a.x ^ 0i))), true);
    let x = u_input.a;
    s_output = StorageBuffer((firstLeadingBit(~24780u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(26989u, 0u)) % 32u)) | _wgslsmith_add_u32(0u, ~0u), var_1.b.x, var_1.b.x, vec2<i32>(_wgslsmith_div_i32(-(var_2.c.x & -8583i), -19897i), u_input.b));
}

