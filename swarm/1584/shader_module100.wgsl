struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: vec3<i32>,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> vec4<f32> {
    let var_0 = abs(-32796i);
    var var_1 = ~arg_0.a.a;
    var_1 = arg_0.a.a ^ vec4<u32>(countOneBits(max(abs(78191u), 0u & var_1.x)), abs(var_1.x), 39607u >> (1u % 32u), 3288u);
    var_1 = arg_0.a.a;
    var var_2 = !(!all(select(select(vec3<bool>(arg_0.b.x, true, arg_0.a.c), vec3<bool>(arg_0.e, true, arg_0.e), vec3<bool>(arg_0.e, true, arg_0.e)), vec3<bool>(true, arg_0.e, false), arg_0.e)));
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(-102f)), 1341f, -763f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(arg_1.x, arg_1.x)), arg_1.x))));
}

fn func_2() -> vec3<f32> {
    let var_0 = u_input.a;
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-959f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1034f, 349f, false)), -1684f)), 2091f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(max(-537f, 234f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-517f, -905f)), -1314f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1526f), _wgslsmith_f_op_f32(783f * _wgslsmith_f_op_f32(1000f + 1000f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-150f, 1000f, 2347f, -754f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 36104u, 83171u), vec3<i32>(-77785i, u_input.a, 29372i), false), vec2<bool>(false, false), u_input.a, vec3<i32>(-1i, var_0, -15564i), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(463f, 189f, -2529f, -663f) + vec4<f32>(703f, -1940f, 405f, -546f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-298f * -169f) + _wgslsmith_f_op_f32(495f - 186f)), 176f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(576f - -1549f), _wgslsmith_f_op_f32(sign(-650f)))), -261f)));
    var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1371f, _wgslsmith_f_op_f32(var_1.x * var_1.x), var_1.x, var_1.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, 2090f, var_1.x, var_1.x) + vec4<f32>(-589f, 1000f, var_1.x, 981f))))) + _wgslsmith_div_vec4_f32(vec4<f32>(-351f, -623f, var_1.x, _wgslsmith_f_op_f32(floor(305f))), vec4<f32>(_wgslsmith_f_op_f32(-1000f + var_1.x), _wgslsmith_f_op_f32(var_1.x + -1387f), var_1.x, 274f))));
    var var_2 = Struct_2(Struct_1(~(~vec4<u32>(1u, 1u, 1u, 1u)), ~(~vec3<i32>(2147483647i, var_0, 11393i) | (vec3<i32>(var_0, var_0, -3091i) >> (vec3<u32>(1u, 0u, 13120u) % vec3<u32>(32u)))), !all(vec3<bool>(false, false, true))), select(select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(true, true, true, true))), true), vec2<bool>(true, true), vec2<bool>(!(-1476f >= var_1.x), true)), u_input.a, _wgslsmith_mod_vec3_i32(~(~firstTrailingBit(vec3<i32>(u_input.a, 0i, u_input.a))), vec3<i32>(1i, 1i, 1i)), any(!vec3<bool>(any(vec2<bool>(true, false)), true, true)));
    return var_1.xyx;
}

fn func_1() -> bool {
    let var_0 = max(_wgslsmith_clamp_u32(21170u, 31142u, 34756u), 70933u);
    var var_1 = ~(-(vec2<i32>(abs(u_input.a), _wgslsmith_mult_i32(0i, u_input.a)) | vec2<i32>(u_input.a, u_input.a >> (var_0 % 32u))));
    var var_2 = max(-(~max(vec4<i32>(u_input.a, var_1.x, u_input.a, -12990i), vec4<i32>(u_input.a, var_1.x, var_1.x, u_input.a))), vec4<i32>(~var_1.x, -4142i, _wgslsmith_div_i32(u_input.a, ~11855i), ~u_input.a)) & abs(-vec4<i32>(firstLeadingBit(u_input.a), _wgslsmith_dot_vec3_i32(vec3<i32>(63732i, -37630i, u_input.a), vec3<i32>(41790i, u_input.a, 15775i)), var_1.x, reverseBits(var_1.x)));
    let var_3 = _wgslsmith_f_op_f32(-1f);
    let var_4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()))))));
    return any(vec2<bool>(select(true, true, true), any(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)))));
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec4_u32(~(~(~countOneBits(arg_2.a))), vec4<u32>(23800u, arg_2.a.x, _wgslsmith_dot_vec3_u32(~arg_2.a.zzw, countOneBits(vec3<u32>(57838u, 0u, 14649u))), ~(arg_2.a.x ^ ~arg_2.a.x)), abs(~select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x), vec4<u32>(1u, arg_2.a.x, arg_2.a.x, 4294967295u)), vec4<u32>(arg_2.a.x, 0u, arg_2.a.x, arg_2.a.x), !arg_1.x)));
    let var_1 = vec2<i32>(~min(-(~u_input.a), ~_wgslsmith_clamp_i32(-1i, 50888i, 0i)), 1i);
    let var_2 = Struct_2(Struct_1(max(select(vec4<u32>(38067u, 0u, 5330u, arg_2.a.x), vec4<u32>(43612u, 25611u, 40186u, arg_2.a.x), true), ~(~vec4<u32>(2855u, arg_2.a.x, 1u, 1u))), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -arg_3.yzz, select(_wgslsmith_mult_vec3_i32(arg_2.b, arg_2.b), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, var_1.x, 9588i), vec3<i32>(-36371i, arg_3.x, arg_3.x)), arg_2.c), arg_2.b), true), !(!arg_1.yy), -(var_1.x ^ _wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, -2147483647i), select(arg_3.zw, vec2<i32>(u_input.a, -19581i), arg_2.c))), arg_3.zxy ^ ~arg_2.b, arg_2.a.x < select(4294967295u, 83705u, true));
    var var_3 = Struct_1(var_2.a.a, arg_3.xzz, true);
    var var_4 = max(vec4<i32>(reverseBits(~select(u_input.a, -2147483647i, true)), _wgslsmith_div_i32(max(u_input.a, i32(-1i) * -1i), -2147483647i), abs(55084i << (var_3.a.x % 32u)), abs((-2147483647i << (var_2.a.a.x % 32u)) << (~47831u % 32u))), abs(_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.a, _wgslsmith_sub_i32(var_2.c, 1i), 1i), firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 1i, var_3.b.x, arg_2.b.x), arg_3, vec4<i32>(26815i, arg_3.x, var_1.x, 41871i))))));
    return Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1185f, _wgslsmith_f_op_f32(593f - 1523f), -2647f, _wgslsmith_f_op_f32(round(-1000f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1243f, 228f, -968f) + vec4<f32>(362f, -2064f, 735f, -1138f)) - vec4<f32>(1000f, 168f, -385f, -2164f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2276f))) + 1f), Struct_1(~(~(~vec4<u32>(1u, var_0.x, 0u, var_2.a.a.x))), vec3<i32>(_wgslsmith_add_i32(21231i, i32(-1i) * -1i), -(13347i ^ arg_3.x), ~(-1i)), true), arg_1, var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(true, vec4<bool>(!func_1(), false, firstLeadingBit(u_input.a) != ~(-u_input.a), _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_2()).x, -1057f) <= 1207f), Struct_1(_wgslsmith_add_vec4_u32(select(reverseBits(vec4<u32>(4294967295u, 4294967295u, 78017u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(false, true, true, false)), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-20205i, u_input.a), u_input.a, ~u_input.a), _wgslsmith_mult_vec3_i32(abs(vec3<i32>(-26458i, u_input.a, u_input.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.a, -36402i), vec3<i32>(0i, -22868i, 1i), vec3<i32>(-10063i, u_input.a, u_input.a)))), !any(vec4<bool>(true, false, true, false)) && true), countOneBits(_wgslsmith_sub_vec4_i32(-(vec4<i32>(1i, -63212i, 39785i, u_input.a) >> (vec4<u32>(37601u, 57547u, 0u, 70347u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)))));
    var var_1 = ~func_4(var_0.e.b.x | (-1851f > _wgslsmith_f_op_f32(round(-252f))), var_0.d, Struct_1((var_0.c.a & vec4<u32>(1u, 36801u, 0u, var_0.e.a.a.x)) | _wgslsmith_mod_vec4_u32(var_0.c.a, vec4<u32>(0u, var_0.c.a.x, 39877u, 10750u)), select(vec3<i32>(30194i, u_input.a, var_0.c.b.x), reverseBits(var_0.e.a.b), !var_0.d.yzy), func_1()), min(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_0.c.b.x, 1i, u_input.a, -21039i)), abs(vec4<i32>(-1i, var_0.e.c, -2147483647i, u_input.a)), vec4<i32>(-2147483647i, -10388i, -53125i, u_input.a)), min(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec4<i32>(36611i, var_0.e.c, -1i, var_0.c.b.x)))).e.a.a.zww;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec4_f32(func_3(func_4(false, func_4(true, vec4<bool>(true, false, true, var_0.e.b.x), Struct_1(var_0.e.a.a, var_0.c.b, var_0.c.c), vec4<i32>(u_input.a, -9592i, var_0.c.b.x, 42392i)).d, var_0.c, vec4<i32>(2147483647i, var_0.c.b.x, u_input.a, 0i) >> (vec4<u32>(37357u, var_0.e.a.a.x, var_1.x, var_0.e.a.a.x) % vec4<u32>(32u))).e, var_0.a)).yxx, _wgslsmith_f_op_vec3_f32(select(var_0.a.yyz, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.a.x, -799f, 760f))), !var_0.d.wzw)))));
    var var_3 = -(countOneBits(vec2<i32>(var_0.e.c, 1178i) >> (min(vec2<u32>(var_0.e.a.a.x, var_1.x), vec2<u32>(35218u, var_1.x)) % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(~(var_0.e.a.a.wy << (var_1.yx % vec2<u32>(32u))), var_0.c.a.yx) % vec2<u32>(32u)));
    let var_4 = 1u;
    let var_5 = abs(_wgslsmith_sub_vec4_u32(var_0.e.a.a, vec4<u32>(25870u, _wgslsmith_sub_u32(_wgslsmith_add_u32(var_1.x, var_0.e.a.a.x), ~var_4), select(_wgslsmith_mult_u32(var_0.e.a.a.x, var_4), ~0u, var_0.c.c), reverseBits(select(var_0.e.a.a.x, 25479u, var_0.d.x)))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 419f, 1025f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 1084f, var_2.x) * vec3<f32>(-2216f, var_0.a.x, var_0.b))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_0.b, 456f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.b, var_0.b)))))));
    var var_6 = select(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 1i), var_0.c.b.yy | _wgslsmith_sub_vec2_i32(var_0.e.d.zx, vec2<i32>(-2147483647i, 4497i))), countOneBits(max(-(vec2<i32>(var_0.e.c, var_0.e.a.b.x) | vec2<i32>(-1i, 2147483647i)), ~(var_0.e.a.b.xy & vec2<i32>(-12723i, -20231i)))), vec2<bool>(var_0.c.c, any(vec2<bool>(var_0.d.x, var_0.e.e)) && all(!var_0.e.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>((func_4(true, vec4<bool>(true, var_0.c.c, true, false), var_0.e.a, vec4<i32>(var_0.e.a.b.x, 1i, -1i, 1i)).e.a.a.x ^ 1u) ^ var_0.c.a.x, _wgslsmith_add_u32(~_wgslsmith_div_u32(328u, var_1.x), firstLeadingBit(0u))), _wgslsmith_f_op_f32(trunc(var_2.x)));
}

