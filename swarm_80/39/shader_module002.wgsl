struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-371f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -512f), _wgslsmith_f_op_f32(trunc(-472f)))))));
    var var_1 = Struct_2(Struct_1(-firstLeadingBit(abs(-3009i)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), firstTrailingBit(vec2<u32>(arg_0, 4294967295u))) > abs(_wgslsmith_add_u32(arg_0, 4294967295u)), reverseBits(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.c, -2147483647i), vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, 44575i, u_input.c)), firstLeadingBit(vec3<i32>(-25428i, 6275i, u_input.b)))), ~(~(~vec3<u32>(arg_0, u_input.a, u_input.a)))), 381f, vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, arg_0), countOneBits(vec2<u32>(1u, 68883u))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(arg_0, 80125u), vec2<u32>(47075u, 29053u))), abs(66012u ^ ~arg_0), u_input.a), Struct_1(countOneBits(firstLeadingBit(u_input.c >> (30652u % 32u))), true, ~_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.c, 7856i), vec3<i32>(41761i, u_input.b, 1i)), vec3<i32>(0i, u_input.b, -2147483647i) >> (vec3<u32>(u_input.a, 62851u, arg_0) % vec3<u32>(32u))), ~vec3<u32>(firstTrailingBit(97066u), 73268u, ~arg_0)), !vec3<bool>(false, any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, false))));
    var var_2 = Struct_4(select(var_1.e.yx, !(!select(var_1.e.yy, var_1.e.xy, vec2<bool>(false, false))), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.a, var_1.d.a, 2147483647i) << (var_1.a.d % vec3<u32>(32u)), reverseBits(vec3<i32>(u_input.c, u_input.b, var_1.d.a))) <= _wgslsmith_div_i32(~u_input.c, _wgslsmith_mod_i32(0i, -2147483647i))), var_1.a, Struct_2(Struct_1(-1i, all(!var_1.e.yz), var_1.a.c, vec3<u32>(36180u, 43804u, u_input.a) | var_1.c), var_0.x, ~firstTrailingBit(vec3<u32>(22796u, 0u, 58083u)), Struct_1(~_wgslsmith_sub_i32(1757i, var_1.a.c.x), false, vec3<i32>(0i, reverseBits(var_1.a.a), u_input.b | -24788i), _wgslsmith_clamp_vec3_u32(~var_1.c, var_1.a.d, var_1.c)), !select(!var_1.e, select(var_1.e, var_1.e, true), select(false, var_1.d.b, false))), _wgslsmith_div_i32(~min(var_1.d.c.x, -44470i) & u_input.c, -(u_input.c << (1u % 32u)) << (2576u % 32u)));
    let var_3 = _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -1673f));
    var_2 = Struct_4(select(vec2<bool>(var_1.d.b, _wgslsmith_mod_u32(9073u, var_1.c.x) != ~var_2.b.d.x), vec2<bool>(false, all(select(var_1.e, vec3<bool>(var_2.c.a.b, var_1.d.b, var_1.e.x), var_1.e.x))), var_1.e.x), var_2.c.d, Struct_2(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.b)))), var_1.c, var_2.c.a, var_1.e), u_input.c << (~var_1.c.x % 32u));
    return ~select(var_1.a.d.x, var_1.a.d.x, _wgslsmith_f_op_f32(var_2.c.b + var_3) >= _wgslsmith_f_op_f32(select(-599f, 107f, var_1.d.b))) ^ reverseBits(~47448u);
}

fn func_2(arg_0: vec3<i32>) -> vec4<i32> {
    var var_0 = 1u ^ _wgslsmith_add_u32(func_3(u_input.a), u_input.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-542f - 504f)), 133f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1969f, 513f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(205f, 1535f, 1039f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-519f, _wgslsmith_f_op_f32(f32(-1f) * -1014f), _wgslsmith_f_op_f32(min(-994f, _wgslsmith_f_op_f32(f32(-1f) * -909f)))))));
    var_0 = u_input.a;
    return ~vec4<i32>(arg_0.x, 1i, ~min(firstTrailingBit(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -1i), vec2<i32>(-46771i, u_input.c))), ~50667i);
}

fn func_4(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-702f, -635f), vec2<f32>(1009f, 1416f))))))));
    return Struct_3(Struct_2(Struct_1(countOneBits(u_input.b >> (u_input.a % 32u)), true, vec3<i32>(arg_0.x << (0u % 32u), 2147483647i & u_input.b, -u_input.b), ~vec3<u32>(4294967295u, u_input.a, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), vec3<u32>(func_3(0u), ~(~54721u), _wgslsmith_div_u32(~13904u, ~u_input.a)), Struct_1(_wgslsmith_sub_i32(u_input.b, ~2147483647i), select(all(vec2<bool>(false, true)), var_0.x >= -624f, true), reverseBits(vec3<i32>(arg_0.x, u_input.b, 0i)), (vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))) ^ abs(vec3<u32>(u_input.a, u_input.a, 73805u))), vec3<bool>(true || any(vec3<bool>(true, false, true)), true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(1017f)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-161f))))));
}

fn func_1() -> Struct_3 {
    let var_0 = countOneBits(_wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.a, u_input.a), firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), false), reverseBits(vec2<u32>(0u, u_input.a) ^ vec2<u32>(80666u, 4294967295u)))) << (abs(vec2<u32>(u_input.a, ~0u)) % vec2<u32>(32u));
    let var_1 = func_4(min(vec4<i32>(u_input.c, u_input.b, u_input.c >> (_wgslsmith_dot_vec4_u32(vec4<u32>(5772u, 0u, 0u, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)) % 32u), u_input.c), min(func_2(vec3<i32>(u_input.c, u_input.b, 0i)) | vec4<i32>(-18556i, u_input.b, -2147483647i, 10365i), countOneBits(min(vec4<i32>(u_input.c, 0i, u_input.b, u_input.b), vec4<i32>(u_input.c, u_input.c, u_input.b, u_input.b))))));
    let var_2 = var_1.a;
    var var_3 = false;
    var_3 = !(firstTrailingBit(~var_1.a.a.d.x) < ~4294967295u) && func_4(_wgslsmith_add_vec4_i32(vec4<i32>(select(var_1.a.a.a, var_1.a.a.a, var_1.a.d.b), _wgslsmith_mult_i32(u_input.c, u_input.b), u_input.b, -27548i), abs(vec4<i32>(var_1.a.d.c.x, var_1.a.d.c.x, -2147483647i, u_input.b)))).a.a.b;
    return Struct_3(Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-58617i, var_1.a.a.a), vec2<i32>(var_2.a.a, 0i)), var_1.a.a.b, ~var_2.d.c, var_2.c), 598f, vec3<u32>(var_0.x, ~71678u, ~0u), func_4(_wgslsmith_mod_vec4_i32(min(vec4<i32>(-27723i, -123i, -27038i, u_input.c), vec4<i32>(u_input.c, -51516i, 1i, -4588i)), firstLeadingBit(vec4<i32>(-361i, u_input.b, u_input.c, var_2.d.a)))).a.d, func_4(firstTrailingBit(-vec4<i32>(-8114i, var_2.a.c.x, var_2.d.a, var_2.d.c.x))).a.e), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1i, true, ~(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 2147483647i, 2147483647i), vec3<i32>(u_input.b, -47222i, u_input.b)) & -max(vec3<i32>(39364i, u_input.c, u_input.c), vec3<i32>(u_input.c, -1i, 1i))), ~(vec3<u32>(_wgslsmith_mult_u32(42831u, u_input.a), countOneBits(u_input.a), u_input.a) >> (vec3<u32>(~7049u, _wgslsmith_add_u32(u_input.a, u_input.a), u_input.a) % vec3<u32>(32u))));
    let var_1 = func_1();
    var var_2 = !select(vec3<bool>(var_0.b, var_1.a.a.b, var_0.b), var_1.a.e, !func_1().a.e);
    var var_3 = vec2<u32>(~0u, var_0.d.x & u_input.a);
    let var_4 = _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(countOneBits(abs(vec4<u32>(var_0.d.x, 26196u, var_0.d.x, var_3.x))), ~vec4<u32>(var_1.a.c.x, 1u, 1u, 4294967295u))), _wgslsmith_div_vec4_u32(vec4<u32>(max(2492u, var_0.d.x), func_1().a.c.x, 38150u, func_1().a.c.x), vec4<u32>(var_1.a.a.d.x, 0u, select(39932u, u_input.a, var_1.a.e.x), ~u_input.a)) ^ _wgslsmith_add_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(39577u, 0u, var_1.a.d.d.x, 21132u), vec4<u32>(var_0.d.x, 100513u, var_0.d.x, 4294967295u))), vec4<u32>(18209u, 48891u, _wgslsmith_mult_u32(30096u, 81741u), _wgslsmith_dot_vec2_u32(var_1.a.c.xz, vec2<u32>(var_1.a.c.x, var_3.x)))));
    var var_5 = !func_4(~vec4<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_1.a.d.a), vec2<i32>(u_input.b, 33841i)), abs(-27267i), -2147483647i >> (var_4 % 32u))).a.e;
    var_3 = func_4(_wgslsmith_clamp_vec4_i32(vec4<i32>(min(var_1.a.a.a, func_4(vec4<i32>(u_input.c, 13497i, var_0.c.x, u_input.c)).a.a.c.x), ~(-17133i), -21362i, countOneBits(-u_input.b)), -_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b, u_input.b, -22424i, 2147483647i), ~vec4<i32>(-29786i, var_1.a.a.c.x, var_0.a, var_0.c.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.a.d.c.x, var_1.a.a.a, -2147483647i, 0i), vec4<i32>(var_1.a.a.a, var_1.a.a.c.x, 0i, 47178i)) & _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(14761i, u_input.c, 37205i, var_1.a.d.c.x), vec4<i32>(u_input.b, u_input.b, 1i, var_0.c.x)), select(vec4<i32>(var_1.a.d.c.x, 1i, -2147483647i, 19498i), vec4<i32>(-13052i, 0i, var_0.a, var_1.a.a.c.x), vec4<bool>(false, var_1.a.d.b, true, var_2.x))))).a.a.d.zx;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(abs(var_0.a >> (u_input.a % 32u)), _wgslsmith_dot_vec2_i32(select(var_0.c.yz, vec2<i32>(var_1.a.a.c.x, var_1.a.a.c.x), var_5.x), func_1().a.d.c.yy), u_input.c) >> (_wgslsmith_add_vec3_u32(~_wgslsmith_sub_vec3_u32(var_1.a.c, var_0.d), vec3<u32>(_wgslsmith_add_u32(54766u, var_4), var_3.x, var_3.x | 0u)) % vec3<u32>(32u)));
}

