struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-290f, -1042f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -213f), 1f)))));
    let var_1 = vec3<u32>(max(1u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(51448u, 1u) << (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u)), vec2<u32>(0u, 4294967295u)), ~1352u ^ ~u_input.b)), 4294967295u, 0u);
    var var_2 = -536f;
    let var_3 = ~firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, 0u, var_1.x)) & max(u_input.b ^ _wgslsmith_add_u32(0u, var_1.x), var_1.x);
    var_2 = -1711f;
    return -firstTrailingBit(-((vec3<i32>(1i, u_input.a.x, -2147483647i) & vec3<i32>(1i, u_input.a.x, u_input.a.x)) ^ vec3<i32>(1i, u_input.a.x, 87711i)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_3) -> vec2<i32> {
    let var_0 = vec4<bool>(arg_1.a.x, arg_2.a.x, arg_2.b.x <= ~u_input.a.x, arg_0.x);
    let var_1 = Struct_4(~arg_2.c, arg_0.x, arg_1.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1421f, 849f, 1124f, -226f) * vec4<f32>(-1452f, 349f, -521f, 186f))) + vec4<f32>(1189f, -857f, 1f, _wgslsmith_f_op_f32(round(1502f))))));
    var var_2 = Struct_2(vec4<f32>(var_1.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1049f)) * var_1.d.x), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(select(var_1.d.x, -221f, arg_2.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -696f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1060f)), var_1.d.x, true)), 406f))), !(!(-31502i != u_input.a.x) & !(!var_1.b)));
    var var_3 = abs(vec2<u32>(u_input.b << (7618u % 32u), _wgslsmith_mod_u32(abs(49542u), _wgslsmith_dot_vec2_u32(var_1.a.yx, arg_1.c.zz)) >> (~arg_1.c.x % 32u)));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_2.a.zzw)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.d.zxy + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a.xyx - var_2.a.zyx))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.d.x, -184f, -685f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.d.x, 1077f, var_1.d.x), vec3<f32>(-647f, 830f, 223f), var_0.xyz))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(366f, 690f, 1000f))))));
    return vec2<i32>(arg_2.b.x, countOneBits(func_3().x));
}

fn func_2(arg_0: f32, arg_1: bool) -> Struct_3 {
    var var_0 = ~func_4(select(!vec4<bool>(true, false, arg_1, arg_1), !(!vec4<bool>(arg_1, arg_1, arg_1, arg_1)), arg_1 & true), Struct_3(select(select(vec4<bool>(arg_1, false, false, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1), arg_1), vec4<bool>(true, true, arg_1, false), any(vec2<bool>(arg_1, arg_1))), -vec3<i32>(u_input.c, u_input.c, u_input.c), (vec3<u32>(u_input.b, 24154u, u_input.b) >> (vec3<u32>(u_input.b, u_input.b, u_input.b) % vec3<u32>(32u))) >> (vec3<u32>(46206u, 138003u, 7930u) % vec3<u32>(32u))), Struct_3(vec4<bool>(arg_1, false, true, arg_1), func_3(), vec3<u32>(u_input.b ^ u_input.b, 1u, 20755u)));
    var_0 = u_input.a;
    var var_1 = firstLeadingBit(vec2<i32>(-1i) * -u_input.a);
    var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(max(u_input.c, var_0.x) | -2147483647i, -1i), -(~firstTrailingBit(vec2<i32>(var_1.x, 44245i)) >> (select(_wgslsmith_div_vec2_u32(vec2<u32>(9633u, 62658u), vec2<u32>(u_input.b, 0u)), vec2<u32>(4294967295u, 1u), !vec2<bool>(arg_1, arg_1)) % vec2<u32>(32u))));
    var_0 = firstLeadingBit(vec2<i32>(reverseBits(var_1.x << (u_input.b % 32u)), ~43707i) ^ vec2<i32>(u_input.c, 25701i));
    return Struct_3(select(vec4<bool>(!arg_1, ~u_input.b < u_input.b, !any(vec4<bool>(true, true, arg_1, arg_1)), true), select(vec4<bool>(arg_1, any(vec4<bool>(true, true, true, arg_1)), true, arg_1), select(!vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, true, false, true)), vec4<bool>(arg_1, !arg_1, !arg_1, true)), vec4<bool>(~u_input.b <= u_input.b, !arg_1, all(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, true, arg_1), vec3<bool>(arg_1, arg_1, arg_1))), arg_1)), ~_wgslsmith_add_vec3_i32(select(select(vec3<i32>(var_0.x, var_0.x, -2147483647i), vec3<i32>(-18960i, 52169i, u_input.a.x), arg_1), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, var_1.x, -2147483647i), vec3<i32>(var_0.x, -38264i, var_0.x)), true), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-37828i, 1i, var_1.x), vec3<i32>(var_0.x, u_input.c, 0i)), -vec3<i32>(var_0.x, u_input.a.x, var_1.x))), vec3<u32>(max(u_input.b, abs(1u)), _wgslsmith_div_u32(firstTrailingBit(35574u >> (u_input.b % 32u)), reverseBits(4294967295u)), ~57333u));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    var var_0 = Struct_3(select(!vec4<bool>(arg_1.a.x, true, any(vec3<bool>(arg_1.a.x, false, arg_0.a.x)), arg_1.a.x), arg_1.a, -(arg_1.b.x | -52457i) >= u_input.a.x), -vec3<i32>(4347i, ~(-43139i), -16897i), ~firstTrailingBit(~(~arg_0.c)));
    return func_2(_wgslsmith_f_op_f32(round(-326f)), arg_0.a.x);
}

fn func_1() -> vec4<u32> {
    var var_0 = Struct_3(vec4<bool>(true, true, true, true), vec3<i32>(u_input.c, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), u_input.a), -19143i) >> (((_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 9441u, 53135u), vec3<u32>(9870u, u_input.b, 35670u)) & ~vec3<u32>(u_input.b, 12492u, 4294967295u)) >> (~(vec3<u32>(u_input.b, 28621u, 90353u) | vec3<u32>(u_input.b, 0u, u_input.b)) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(_wgslsmith_div_vec3_u32(~vec3<u32>(35316u, 9132u, u_input.b), vec3<u32>(u_input.b, 41184u, u_input.b)) | vec3<u32>(55318u, u_input.b, ~u_input.b)));
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1598f) * _wgslsmith_f_op_f32(max(-1654f, 1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2051f * 531f))), -1285f, -382f), true);
    var_0 = func_5(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1349f) + var_1.a.x), 13426u < ((5591u >> (var_0.c.x % 32u)) & 0u)), Struct_3(select(var_0.a, var_0.a, !(!var_0.a)), min(~vec3<i32>(24938i, u_input.a.x, u_input.c), _wgslsmith_mult_vec3_i32(-var_0.b, var_0.b)), ~var_0.c));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(var_1.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_1.a))))) - var_1.a), !any(!func_2(var_1.a.x, var_1.b).a.yw));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.x), 715f, var_1.a.x, var_2.a.x)) + vec4<f32>(-1000f, var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.a.x)) + var_2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(305f, 238f)) - 1459f) - _wgslsmith_f_op_f32(-var_2.a.x))));
    return ~(~(min(~vec4<u32>(1u, 4294967295u, 0u, u_input.b), vec4<u32>(0u, var_0.c.x, 79366u, var_0.c.x)) | vec4<u32>(~var_0.c.x, abs(1u), 1u, ~var_0.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -reverseBits(_wgslsmith_sub_vec4_i32(-(vec4<i32>(-4402i, 1i, u_input.a.x, -3467i) ^ vec4<i32>(u_input.a.x, u_input.c, u_input.c, 0i)), -(vec4<i32>(u_input.a.x, 0i, -3199i, u_input.c) << (vec4<u32>(u_input.b, 1u, u_input.b, 4294967295u) % vec4<u32>(32u)))));
    let var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, ~(52716u << (u_input.b % 32u)), u_input.b, 1u) << (~func_1() % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(u_input.b, 4294967295u, 4294967295u, 1u))), vec4<u32>(48858u, _wgslsmith_sub_u32(0u ^ u_input.b, _wgslsmith_mult_u32(u_input.b, 41415u)), 51476u, max(1u, reverseBits(3346u)))));
    var var_2 = ~(~vec2<u32>(u_input.b, 98786u) | ~vec2<u32>(_wgslsmith_div_u32(37602u, var_1.x), var_1.x | 0u));
    var var_3 = Struct_3(func_2(-1255f, true).a, vec3<i32>(1i, (var_0.x | 7388i) | (u_input.c & u_input.a.x), var_0.x) | vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(var_0, vec4<i32>(var_0.x, 1i, 1i, 2147483647i)), abs(var_0)), u_input.a.x, ~_wgslsmith_mod_i32(u_input.a.x, 1i)), func_1().www);
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(755f, -1000f, _wgslsmith_f_op_f32(-1649f + 2101f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - vec4<f32>(892f, _wgslsmith_f_op_f32(sign(141f)), 1f, -1111f)))), false);
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.ww, 4294967295u, vec2<i32>(-21741i, 1i), ~vec4<u32>(1u, func_1().x, 4294967295u, _wgslsmith_mod_u32(var_2.x << (var_1.x % 32u), ~var_2.x)), _wgslsmith_sub_vec4_i32(~abs(var_0), ~_wgslsmith_mult_vec4_i32(vec4<i32>(var_3.b.x, var_3.b.x, var_3.b.x, var_0.x), var_0) ^ (_wgslsmith_clamp_vec4_i32(var_0, var_0, vec4<i32>(var_3.b.x, -14228i, var_3.b.x, var_3.b.x)) >> (var_1 % vec4<u32>(32u)))));
}

