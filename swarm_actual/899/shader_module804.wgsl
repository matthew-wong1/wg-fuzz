struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_mult_vec3_u32(abs(~vec3<u32>(arg_1.b.b, 9112u, 4294967295u)) ^ vec3<u32>(u_input.b ^ 12582u, ~1u, _wgslsmith_mod_u32(arg_1.a.x, u_input.d.x)), u_input.d.zyw), Struct_1(24752u, 4294967295u));
    return select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), true), vec3<bool>(!any(vec2<bool>(true, true)), false, !(!all(vec4<bool>(false, false, false, true)))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)));
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    var var_0 = !vec4<bool>(true, true != all(func_3(arg_0.xy, Struct_2(vec3<u32>(0u, 20268u, 7616u), Struct_1(54370u, u_input.c)))), true, ~u_input.d.x != countOneBits(u_input.d.x ^ u_input.b));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1226f))) * -941f))), 982f));
    let var_2 = max(vec3<u32>(~7454u, ~select(abs(u_input.b), _wgslsmith_div_u32(u_input.b, u_input.b), var_0.x), ~u_input.d.x), u_input.d.zyw);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1378f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(334f - _wgslsmith_f_op_f32(884f * 1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-434f, -1505f) * 162f))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-561f - -793f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-941f - -1461f) + -283f) + _wgslsmith_f_op_f32(-1f))) - _wgslsmith_f_op_f32(-1168f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-846f - -131f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1271f + -118f), 1000f, any(vec4<bool>(var_0.x, false, var_0.x, false)))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-705f + _wgslsmith_f_op_f32(-259f - 1362f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1448f)))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1266f, _wgslsmith_f_op_f32(189f * _wgslsmith_div_f32(-1600f, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(2887i, 40600i, -2147483647i, 0i)))), 1f))));
    var var_1 = Struct_4((vec4<i32>(-1i) * -select(vec4<i32>(u_input.a, -24751i, 2147483647i, -37356i), vec4<i32>(u_input.a, 0i, -46332i, 2147483647i), vec4<bool>(true, true, arg_1.x, false))) & select(max(vec4<i32>(15450i, u_input.a, 1i, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -25775i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, -1i, u_input.a))), vec4<i32>(0i, -28339i, u_input.a, 35038i), max(u_input.a, -13351i) >= 1i), Struct_3(Struct_1(arg_0, ~u_input.d.x), Struct_1(~abs(u_input.c), _wgslsmith_clamp_u32(countOneBits(4294967295u), _wgslsmith_div_u32(arg_0, 58574u), ~arg_0)), Struct_1(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.d.x)), min(u_input.d, u_input.d)), ~(~arg_0)), 4294967295u), Struct_1(arg_0, 14741u));
    var var_2 = Struct_2(vec3<u32>(u_input.d.x, u_input.d.x, 0u), var_1.b.b);
    var_2 = Struct_2(vec3<u32>(~countOneBits(1u), arg_0, ~1u), var_1.b.a);
    var_1 = Struct_4(select(-var_1.a, ~min(var_1.a, vec4<i32>(var_1.a.x, 36349i, var_1.a.x, var_1.a.x)), select(select(select(vec4<bool>(arg_1.x, false, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, true, true, true)), vec4<bool>(false, arg_1.x, arg_1.x, true), !vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), select(vec4<bool>(false, arg_1.x, true, arg_1.x), select(vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(false, true, arg_1.x, arg_1.x), vec4<bool>(false, true, false, arg_1.x)), false), arg_1.x)), var_1.b, Struct_1(~firstLeadingBit(68082u), abs(_wgslsmith_clamp_u32(4294967295u, ~1u, countOneBits(38382u)))));
    return Struct_2(var_2.a, var_2.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_4(countOneBits(vec4<i32>(u_input.a, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 13694i, u_input.a), vec3<i32>(u_input.a, -1i, 42583i)), -u_input.a), 1i, -countOneBits(u_input.a))), Struct_3(func_1(_wgslsmith_dot_vec3_u32(arg_0.a << (vec3<u32>(u_input.d.x, 4294967295u, arg_0.a.x) % vec3<u32>(32u)), u_input.d.yzy), vec2<bool>(!arg_1.x, true & arg_2.x)).b, Struct_1(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(44536u, arg_0.b.b), vec2<u32>(arg_0.a.x, 66340u))), ~arg_0.a.x), arg_0.b, arg_0.a.x), func_1(arg_0.a.x, select(!vec2<bool>(false, arg_2.x), vec2<bool>(false, !arg_1.x), false)).b);
    return Struct_2(~(~(~u_input.d.zzx)), arg_0.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec3<bool>) -> u32 {
    var var_0 = _wgslsmith_clamp_i32(-25274i >> (firstTrailingBit(~(arg_2.b.d & u_input.d.x)) % 32u), ~arg_2.a.x & 75850i, ~0i);
    var var_1 = abs(min(~18147u, arg_1.a.a) | (77235u >> (arg_0.a.x % 32u)));
    let var_2 = arg_2;
    var_0 = u_input.a;
    return u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-431f)), _wgslsmith_f_op_f32(-270f + -147f), _wgslsmith_f_op_f32(-876f - -1862f)) * vec3<f32>(1f, _wgslsmith_f_op_f32(sign(511f)), _wgslsmith_f_op_f32(floor(-105f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-580f, -1889f, -826f), vec3<f32>(2000f, -1000f, 1367f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1194f, 150f) * vec3<f32>(-816f, -384f, 1694f)), any(vec3<bool>(false, true, false)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1200f, -714f, 821f)))));
    var var_1 = _wgslsmith_mod_u32(min(u_input.b, func_5(func_4(func_1(u_input.b, vec2<bool>(true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), false), vec2<bool>(false, true)), Struct_3(Struct_1(4294967295u, 11544u), Struct_1(u_input.c, 1u), func_4(Struct_2(vec3<u32>(429u, u_input.b, 4294967295u), Struct_1(u_input.d.x, 23234u)), vec4<bool>(false, false, true, false), vec2<bool>(false, true)).b, 16997u), Struct_4(vec4<i32>(23960i, u_input.a, -23063i, -25815i) ^ vec4<i32>(u_input.a, 34375i, u_input.a, u_input.a), Struct_3(Struct_1(u_input.d.x, u_input.c), Struct_1(u_input.b, u_input.b), Struct_1(u_input.d.x, 4294967295u), 96950u), func_1(u_input.d.x, vec2<bool>(true, true)).b), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true))), 1u);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(919f + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(u_input.a, -1i, 16962i, u_input.a))))), var_0.x)) - -101f);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2, var_0.x, var_2)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, -2838f, -650f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 660f, -127f)), func_3(_wgslsmith_add_vec2_i32(-vec2<i32>(1i, 1i), ~vec2<i32>(u_input.a, u_input.a)), Struct_2(reverseBits(u_input.d.yzz), func_1(u_input.b, vec2<bool>(false, true)).b)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2, -513f, -234f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-507f, var_0.x, 1000f)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false))))));
    let var_4 = ~vec4<i32>(-(~u_input.a), 1i, abs(~(~(-2147483647i))), _wgslsmith_sub_i32(u_input.a | _wgslsmith_mult_i32(-2147483647i, u_input.a), _wgslsmith_mod_i32(abs(u_input.a), u_input.a)));
    var_1 = u_input.b;
    let var_5 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c, 60481u, u_input.d.x) | vec3<u32>(0u, u_input.d.x, 48405u), vec3<u32>(max(u_input.b, u_input.d.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b), u_input.d.zz), _wgslsmith_clamp_u32(0u, u_input.c, 19481u))), ~(u_input.d.yzx | ~u_input.d.yww));
    var var_6 = func_4(Struct_2(reverseBits(vec3<u32>(~1017u, ~var_5.x, u_input.d.x)), func_4(func_4(func_1(1u, vec2<bool>(true, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), vec4<bool>(true, true, true, true), vec2<bool>(select(true, true, true), true)).b), vec4<bool>(-858f > _wgslsmith_f_op_f32(177f - var_2), any(vec2<bool>(true, true)), true & all(vec2<bool>(false, false)), true), vec2<bool>(u_input.a > (_wgslsmith_add_i32(2147483647i, 0i) & var_4.x), true));
    let var_7 = vec3<u32>(8486u, var_6.b.a & max(~(~1u), 0u), var_6.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

