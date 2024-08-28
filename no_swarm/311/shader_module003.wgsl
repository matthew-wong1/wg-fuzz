struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = Struct_1(min(vec4<i32>(0i, abs(arg_0.b), -abs(-39813i), ~_wgslsmith_mod_i32(u_input.a, 2147483647i)), ~_wgslsmith_div_vec4_i32(vec4<i32>(-77787i, u_input.a, 39176i, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 31i, u_input.a, 1i), vec4<i32>(10169i, u_input.a, arg_0.a.x, arg_0.a.x)))));
    var_0 = Struct_1(firstLeadingBit(var_0.a));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(1383f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2, arg_3)) + _wgslsmith_f_op_f32(max(1000f, arg_2))))));
    var var_2 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(19244i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_0.a.wyy, vec3<i32>(52924i, u_input.a, -25023i)), var_0.a.wyw >> (vec3<u32>(31913u, 1u, u_input.b) % vec3<u32>(32u))), -41827i, _wgslsmith_div_i32(-arg_0.a.x, var_0.a.x)), _wgslsmith_mult_vec4_i32(-var_0.a, max(var_0.a, var_0.a & var_0.a))));
    var_0 = Struct_1(firstTrailingBit(vec4<i32>(u_input.a, arg_0.b, -31180i, arg_0.a.x)));
    return ~4294967295u;
}

fn func_2(arg_0: u32, arg_1: i32) -> vec3<bool> {
    let var_0 = -(vec4<i32>(arg_1, -17182i, _wgslsmith_clamp_i32(u_input.a, 2147483647i, u_input.a), firstTrailingBit(28856i)) >> (vec4<u32>(41617u, func_3(Struct_4(vec3<i32>(-55161i, u_input.a, -43819i), 0i), 27384u, 342f, -690f), 60076u, arg_0 & arg_0) % vec4<u32>(32u))) | ~countOneBits(vec4<i32>(8426i, 14334i, 30475i, arg_1));
    let var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f * -1204f), _wgslsmith_div_f32(519f, 576f), 1f, -578f) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-1200f, -488f, 1159f, 936f), vec4<f32>(1632f, -1469f, -651f, 519f))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1402f, -252f, 2403f, _wgslsmith_f_op_f32(f32(-1f) * -214f)), vec4<f32>(_wgslsmith_f_op_f32(round(-962f)), _wgslsmith_f_op_f32(f32(-1f) * -1101f), 1f, _wgslsmith_f_op_f32(836f - 1449f)), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(589f, 491f, -134f, 587f), vec4<f32>(220f, 1867f, -1000f, 142f)) - _wgslsmith_div_vec4_f32(vec4<f32>(1340f, 596f, 1515f, 332f), vec4<f32>(1914f, 1000f, -768f, 601f))))) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(102f * -182f))), _wgslsmith_f_op_f32(-296f + _wgslsmith_f_op_f32(trunc(-623f))), -184f, -973f))));
    let var_2 = vec4<i32>(-1i, 0i, -(~_wgslsmith_mult_i32(_wgslsmith_mult_i32(48287i, var_0.x), var_0.x)), ~(~(var_0.x | _wgslsmith_clamp_i32(arg_1, 72429i, -1i))));
    var var_3 = Struct_4(var_0.xyx, _wgslsmith_mult_i32(var_2.x, u_input.a));
    var_3 = Struct_4(_wgslsmith_clamp_vec3_i32(var_3.a << (reverseBits(~vec3<u32>(0u, u_input.b, 15665u)) % vec3<u32>(32u)), select(var_2.yzy, select(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_2.x, 0i), var_2.xyw, vec3<i32>(-42207i, arg_1, var_0.x)), vec3<i32>(var_3.a.x, var_0.x, 1i), vec3<bool>(true, true, true)), all(vec4<bool>(true, true, true, true))), vec3<i32>(firstLeadingBit(-u_input.a), -u_input.a, 17983i)), -36392i);
    return select(!(!vec3<bool>(true, arg_0 == 13398u, true)), select(select(vec3<bool>(true, true, true), vec3<bool>(u_input.b < arg_0, select(true, true, false), any(vec2<bool>(true, false))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), true)), vec3<bool>(!(var_1.x >= var_1.x), !(u_input.a == 28546i), all(vec4<bool>(false, false, false, true)) || true), true), select(vec3<bool>(false, true, select(true, all(vec4<bool>(false, true, true, false)), true)), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), true), any(vec2<bool>(true, false))));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1621f, -1424f) + vec2<f32>(333f, 1228f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(930f, 382f)) - vec2<f32>(143f, 576f)))));
    var var_1 = vec4<i32>(-1i, arg_1.x, (arg_1.x ^ max(_wgslsmith_dot_vec4_i32(vec4<i32>(15666i, 2147483647i, -6817i, arg_1.x), vec4<i32>(u_input.a, -1144i, -2147483647i, arg_1.x)), -2147483647i)) << (u_input.b % 32u), 46932i);
    let var_2 = abs(_wgslsmith_mult_i32(var_1.x, arg_1.x << (~34271u % 32u)) ^ arg_1.x);
    let var_3 = select(vec4<bool>(all(vec3<bool>(true, true, true)), all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)))), all(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true))), !(arg_0.x != _wgslsmith_mod_u32(arg_0.x, 55746u))), vec4<bool>(false, !all(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), true), true);
    let var_4 = func_2(arg_0.x, -43339i);
    return firstLeadingBit(max(~((arg_1.x & 0i) << (arg_0.x % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(28009i, u_input.a), i32(-1i) * -1i, u_input.a), select(vec3<i32>(5604i, 20300i, u_input.a), var_1.wzy, var_4.x) ^ reverseBits(var_1.wzz))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<f32>) -> u32 {
    return ~_wgslsmith_clamp_u32((1u >> ((40075u ^ u_input.b) % 32u)) ^ u_input.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 17263u), vec2<u32>(65660u, 47260u)) ^ (u_input.b << (u_input.b % 32u)), ~max(u_input.b, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-u_input.a) & _wgslsmith_add_i32(u_input.a >> (u_input.b % 32u), 47801i);
    let var_1 = ~firstLeadingBit(vec3<u32>(4294967295u, max(0u, 98149u), 1u)) << (vec3<u32>(_wgslsmith_sub_u32(1549u, _wgslsmith_mult_u32(u_input.b, u_input.b)) >> (1u % 32u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(50758u, u_input.b, u_input.b, u_input.b), vec4<u32>(0u, u_input.b, u_input.b, u_input.b)) << (select(u_input.b, 1u, false) % 32u), _wgslsmith_div_u32(4294967295u >> (0u % 32u), ~(~13184u))) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var_2 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(var_1, func_4(vec3<i32>(-var_0, ~abs(u_input.a), u_input.a), Struct_1(vec4<i32>(u_input.a, var_0, _wgslsmith_mod_i32(0i, u_input.a), countOneBits(var_0))), func_1(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 94773u, 4294967295u, u_input.b), vec4<u32>(29652u, u_input.b, 0u, 4294967295u)), vec2<i32>(-29884i, var_0)) << (func_3(Struct_4(vec3<i32>(var_0, -37460i, 0i), -2147483647i), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 47438u, 10318u, 1u), vec4<u32>(var_1.x, 1u, var_1.x, 12429u)), -900f, -127f) % 32u), vec3<f32>(-638f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-323f)) + _wgslsmith_f_op_f32(-493f * -1601f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -958f), -245f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-626f, 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-881f, 221f, false)) - -887f))));
}

