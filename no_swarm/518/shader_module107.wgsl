struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: bool,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1675f) * _wgslsmith_f_op_f32(f32(-1f) * -805f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-254f + -2037f))), 124f, _wgslsmith_f_op_f32(step(-289f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1504f)))))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(85944u, 28319u, 1u), vec3<u32>(42170u, 41340u, 1u)) ^ (firstTrailingBit(119231u) ^ 1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), ~0u, ~abs(~1u)), !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), any(vec4<bool>(true, false, false, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(349f, 465f, -2056f, -319f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-201f, -1197f, -499f, 267f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-1000f, 1f)), _wgslsmith_f_op_f32(-273f * _wgslsmith_f_op_f32(f32(-1f) * -130f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-256f, -1000f)) * _wgslsmith_f_op_f32(select(238f, 411f, true))))));
    var var_1 = var_0;
    let var_2 = ~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x) & ~u_input.a.x;
    let var_3 = Struct_3(var_0);
    let var_4 = _wgslsmith_f_op_vec4_f32(var_1.d - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(-200f * 671f)), var_3.a.a.x, -1068f, var_1.d.x) + _wgslsmith_f_op_vec4_f32(-var_0.d)));
    return var_1.b;
}

fn func_2() -> vec2<f32> {
    var var_0 = Struct_3(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-823f, -133f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(669f + -649f) + 467f), _wgslsmith_div_f32(-1009f, 1330f)), vec4<u32>(~(~1u), ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(59427u, 15583u, 27460u, 7873u), func_3()), _wgslsmith_mult_u32(select(4294967295u, 0u, false), 0u)), select(1u, 1u, select(true, true, false)) >= ~0u, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1000f, -225f, -1127f, 1000f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-248f, 954f, 1173f, 595f), vec4<f32>(1059f, 295f, -539f, 584f))))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1115f, 1000f, 206f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1312f, 1315f, 611f) - vec3<f32>(-1000f, 2267f, -1106f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-105f, -2311f, -2090f), vec3<f32>(-1292f, -587f, 339f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1024f, 1492f, -109f)))), vec3<bool>(false, true, any(vec4<bool>(true, false, false, false)))))));
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(var_0.a.a.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.x, 340f)))))), var_0.a.d.zy));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-989f, 513f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(927f, 137f)))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(414f, -355f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(114f, -1091f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1703f)), vec2<f32>(-1278f, 949f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 2862f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(-677f, var_0.x)) + _wgslsmith_f_op_vec2_f32(func_2())), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) * vec2<f32>(var_0.x, 477f)))))));
    let var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x + -430f), _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-246f + var_0.x)))), ~vec4<u32>(28193u, _wgslsmith_dot_vec2_u32(vec2<u32>(4000u, 30628u), vec2<u32>(1u, 0u)), max(43574u, 4294967295u), _wgslsmith_mod_u32(17529u, 56950u)) >> (abs(vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -307f) + vec4<f32>(var_0.x, -1674f, var_0.x, 2127f)))))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1105f, var_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -1331f), _wgslsmith_f_op_f32(763f + -1207f))), _wgslsmith_f_op_f32(step(1944f, 2230f))));
    let var_2 = vec4<bool>(!var_1.c, var_1.c, var_1.c, true | var_1.c);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2()).x + var_0.x)))));
    return Struct_3(var_1);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = arg_2.a.b.x;
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(~arg_0.a.b.wy, ~arg_0.a.b.xy) ^ arg_2.a.b.x, arg_0.a.b.x, 12186u, 36642u), arg_0.a.c && arg_2.a.c, vec3<i32>(-arg_1.x, u_input.a.x, abs(~(-u_input.a.x))));
    let var_2 = vec2<bool>(true, !(countOneBits(arg_1.x) != -4344i));
    var_0 = ~func_1().a.b.x & _wgslsmith_clamp_u32(max((var_1.a.x ^ arg_2.a.b.x) >> (~arg_2.a.b.x % 32u), 0u), 4294967295u, ~abs(arg_2.a.b.x));
    var_0 = ~_wgslsmith_mult_u32(arg_2.a.b.x, firstLeadingBit(_wgslsmith_dot_vec2_u32(~arg_2.a.b.xy, arg_2.a.b.yw ^ vec2<u32>(1u, 40694u))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2.a.e, _wgslsmith_f_op_vec3_f32(arg_0.a.a * arg_0.a.a)))), vec4<u32>(~(~(~37807u)), ~(~(~1u)), _wgslsmith_sub_u32(~1u, ~var_1.a.x), 2457u), var_1.b, arg_0.a.d, vec3<f32>(arg_0.a.e.x, -1000f, _wgslsmith_f_op_f32(-1002f + _wgslsmith_f_op_f32(f32(-1f) * -503f))));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(func_1().a.d)), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_3.e.x)), _wgslsmith_f_op_f32(-1586f + -387f), _wgslsmith_div_f32(arg_3.a.x, arg_3.a.x), _wgslsmith_f_op_f32(ceil(-1509f)))) + _wgslsmith_f_op_vec4_f32(max(arg_3.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.d))))), _wgslsmith_div_vec4_f32(arg_3.d, vec4<f32>(-1479f, _wgslsmith_f_op_f32(1245f * 470f), arg_3.d.x, 1497f)), vec4<bool>(all(vec3<bool>(5337i == u_input.a.x, u_input.a.x > -1i, any(vec4<bool>(arg_3.c, arg_3.c, true, false)))), arg_3.c, true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_5(~(firstTrailingBit(79078u) & ~10696u), min(1u, _wgslsmith_mod_u32(1u, firstTrailingBit(50773u))), ~(~countOneBits(4294967295u)), func_4(func_1(), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, 52169i)), vec3<i32>(-9633i, -1i, 1i)), func_1()))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1002f, 1535f, -1489f, 831f) - vec4<f32>(884f, 801f, 1000f, 818f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -653f, 1093f, 858f), vec4<f32>(-178f, 1177f, -1065f, 435f), vec4<bool>(true, false, false, false))))))))));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_mult_i32(-2147483647i, reverseBits(-u_input.a.x)) >> (4294967295u % 32u), -_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(-27675i, 0i, -60754i), vec3<i32>(-2147483647i, u_input.a.x, -2147483647i), vec3<i32>(u_input.a.x, -23052i, u_input.a.x))), -(vec3<i32>(-1i, 0i, 1i) ^ vec3<i32>(-2147483647i, u_input.a.x, -1i))));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-func_4(func_1(), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(-28089i, 7175i, u_input.a.x)) >> (vec3<u32>(4294967295u, 38895u, 103915u) % vec3<u32>(32u)), Struct_3(func_1().a)).d.x)));
    let var_3 = vec2<u32>(0u, 14108u);
    var_1 = min(_wgslsmith_mod_i32(24177i, 1i), u_input.a.x);
    var var_4 = u_input.a ^ u_input.a;
    var_4 = -u_input.a;
    var_1 = -42712i;
    let x = u_input.a;
    s_output = StorageBuffer(var_0, vec2<f32>(-1938f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -668f), any(vec4<bool>(true, true, false, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1000f, 717f)), _wgslsmith_f_op_f32(var_2 - -2119f)))), vec2<u32>(~4294967295u, var_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-563f * 158f), _wgslsmith_f_op_f32(abs(-376f))))))), var_3.x);
}

