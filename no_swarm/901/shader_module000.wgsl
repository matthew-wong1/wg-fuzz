struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = -_wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.b, -2147483647i, 1i, u_input.b) << (vec4<u32>(arg_0.d, u_input.a, arg_1.d, 31383u) % vec4<u32>(32u))), -(vec4<i32>(24414i, u_input.b, u_input.b, -6869i) >> (vec4<u32>(u_input.a, arg_2.d, 38630u, 1u) % vec4<u32>(32u)))) ^ ~u_input.b;
    return firstLeadingBit(~vec2<u32>(arg_1.d, 33369u));
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<u32>(firstTrailingBit(u_input.a), _wgslsmith_div_u32(4294967295u, ~u_input.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(778f - _wgslsmith_f_op_f32(f32(-1f) * -1039f)), _wgslsmith_f_op_f32(-719f * _wgslsmith_f_op_f32(f32(-1f) * -1487f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-118f, _wgslsmith_div_f32(-1154f, -772f), true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 565f) - -727f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1018f))))));
    let var_2 = ~select(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1u, 47684u), 24396u), ~vec2<u32>(4294967295u, 6090u) | ~var_0, var_0), ~func_3(Struct_1(vec3<f32>(var_1.x, var_1.x, var_1.x), vec2<bool>(true, false), false, var_0.x), Struct_1(var_1, vec2<bool>(false, true), true, 74999u), Struct_1(var_1, vec2<bool>(false, false), false, 4294967295u), Struct_1(var_1, vec2<bool>(true, true), true, 107016u)), all(vec4<bool>(true, true, true, true)));
    var var_3 = 10435u;
    return Struct_1(var_1, vec2<bool>(false, any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), true))), select(true, !((u_input.b << (var_2.x % 32u)) <= _wgslsmith_add_i32(u_input.b, u_input.b)), true), abs(abs(~1u)));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32) -> vec3<u32> {
    let var_0 = select(vec2<i32>(u_input.b, u_input.b), -_wgslsmith_mult_vec2_i32(countOneBits(firstTrailingBit(vec2<i32>(-12232i, u_input.b))), _wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.b, u_input.b), vec2<i32>(1i, 1i))), !arg_1.b);
    var var_1 = u_input.b;
    var_1 = ~(~(~var_0.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -502f, 2087f, -558f), vec4<f32>(191f, arg_0.x, arg_1.a.x, -1105f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, arg_0.x, -1462f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(584f, -969f, -1000f, 140f), vec4<f32>(393f, arg_0.x, 1133f, arg_1.a.x))), vec4<f32>(663f, -885f, 275f, arg_0.x), vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, 941f, 1000f, arg_0.x) * vec4<f32>(2736f, -1269f, 2107f, -2269f)))))));
    let var_3 = vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(1i, var_0.x, var_0.x), vec3<i32>(var_0.x, -774i, 0i)), vec3<i32>(~u_input.b, ~u_input.b, var_0.x)) << (u_input.a % 32u), ~(~(-24960i)));
    return ~select(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.d, 47492u, arg_2), vec3<u32>(4294967295u, arg_2, 4294967295u)) >> (vec3<u32>(u_input.a, arg_1.d, arg_1.d) % vec3<u32>(32u)), ~abs(vec3<u32>(arg_2, 1u, u_input.a)), true) & vec3<u32>(0u, countOneBits(_wgslsmith_clamp_u32(arg_2, 89515u, arg_2)) & 53434u, func_2().d);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(813f * -1606f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-626f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f)), false))));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-395f)), _wgslsmith_f_op_f32(-609f + 2060f)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(745f, 1207f, 1102f)))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(916f, -1477f, -1000f) - vec3<f32>(-1759f, -1221f, 491f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-333f, -1446f, -2397f)))), select(vec3<bool>(false, true, any(vec2<bool>(true, true))), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, false, true)))), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, true, false)), true), vec2<bool>(true, true)), !(~u_input.a == 2727u) && (~0u != ~u_input.a), 1u);
    var var_3 = _wgslsmith_mod_vec3_u32(func_4(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.a.x))), 892f, var_2.a.x), func_2(), _wgslsmith_div_u32(~reverseBits(10504u), 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a) & vec3<u32>(~0u, _wgslsmith_add_u32(var_2.d, u_input.a), func_2().d), abs(~vec3<u32>(102007u, u_input.a, var_2.d))));
    var_2 = Struct_1(vec3<f32>(var_2.a.x, 439f, var_2.a.x), vec2<bool>(var_2.b.x, false), (-144f <= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a.x)))) | false, var_2.d);
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(var_2.a.x, -2103f, true)), var_2.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a.x)))), vec2<bool>(any(!vec2<bool>(var_2.b.x, var_2.b.x)), !(true && !var_2.c)), var_2.c, ~(~49595u));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<u32> {
    var var_0 = arg_2;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.x, var_0.a.x, var_0.a.x))))), select(vec2<bool>(func_2().c, true), !(!func_2().b), vec2<bool>(true, true)), !arg_0.b.x, reverseBits(u_input.a));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 1276f, var_0.a.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(747f, arg_2.a.x, -671f) * vec3<f32>(1245f, 237f, 874f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, var_1.a.x, -1847f) * var_0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(435f, -2608f, var_1.a.x)))))), !vec2<bool>(!(104482u >= u_input.a), ~var_0.d >= ~var_0.d), !arg_2.b.x, 21443u);
    var var_2 = arg_2.b;
    let var_3 = var_1;
    return ~(~(~(~(~vec2<u32>(60658u, arg_2.d)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(1u, u_input.a)) & min(func_5(func_1(), func_2().c, func_2(), -vec4<i32>(u_input.b, u_input.b, u_input.b, -40272i)), vec2<u32>(11377u, 0u) & (vec2<u32>(4294967295u, u_input.a) | vec2<u32>(u_input.a, 45543u))));
}

