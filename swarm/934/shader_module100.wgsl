struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    var var_0 = Struct_3(arg_0.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-713f, -738f, -181f) - vec3<f32>(1282f, 895f, -691f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-360f, -1716f, -204f), vec3<f32>(1348f, -556f, 260f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-426f, 223f)) - -1000f) + _wgslsmith_f_op_f32(-450f - -779f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(562f + 153f) * -201f))));
    var var_1 = Struct_3(-(~(-58443i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.c.x)), 431f, _wgslsmith_f_op_f32(round(var_0.b.x))), _wgslsmith_div_vec3_f32(var_0.b, vec3<f32>(var_0.c.x, var_0.b.x, var_0.c.x)))) * var_0.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.x))))));
    let var_2 = Struct_3(-20769i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(var_0.b))))))), var_1.c);
    var_1 = var_2;
    var var_3 = -_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b, _wgslsmith_mod_vec2_i32(u_input.b, arg_0.zx) & (vec2<i32>(var_0.a, 0i) & vec2<i32>(arg_0.x, -2147483647i))), vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(arg_0, countOneBits(vec3<i32>(var_0.a, arg_0.x, var_2.a)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1557f);
}

fn func_2() -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2034f) - _wgslsmith_f_op_f32(func_3(vec3<i32>(u_input.c.x, u_input.b.x, -11i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1694f + 644f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(555f, -540f) * vec2<f32>(1000f, -537f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(596f, -149f) * vec2<f32>(-899f, -136f))), _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_div_vec2_f32(vec2<f32>(-540f, 643f), vec2<f32>(1000f, -995f))))), select(select(vec2<i32>(u_input.a, 1i), vec2<i32>(2147483647i, -1i), false) >> (vec2<u32>(94518u, 10706u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -1i), u_input.c), -vec2<i32>(93860i, 1i), min(u_input.b, vec2<i32>(u_input.c.x, -2147483647i))), true) << (~reverseBits(vec2<u32>(33451u, 58410u)) % vec2<u32>(32u)), ~(u_input.d.x << (4294967295u % 32u)), any(vec4<bool>(true, true, true, true)) | true);
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> bool {
    let var_0 = Struct_3(~(~abs(7578i)), vec3<f32>(-704f, 552f, _wgslsmith_f_op_f32(f32(-1f) * -468f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a - 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a))))));
    let var_1 = Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, ~(-2147483647i) << (arg_0.d % 32u), -2147483647i), vec3<i32>(arg_0.c.x, var_0.a, ~(~u_input.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.b), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), -1266f, _wgslsmith_f_op_f32(-arg_0.b.x)), any(select(vec2<bool>(arg_0.e, false), vec2<bool>(arg_0.e, arg_0.e), vec2<bool>(arg_0.e, false))))), _wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, arg_0.a, 131f)) * var_0.b))), arg_0.b);
    var var_2 = u_input.d.xx;
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(arg_0.b));
    var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(countOneBits(_wgslsmith_add_u32(0u, arg_0.d)), var_2.x & 0u), ~_wgslsmith_div_vec2_u32(vec2<u32>(~var_2.x, 31784u), countOneBits(~vec2<u32>(22472u, 46479u))));
    return arg_0.e;
}

fn func_1(arg_0: vec4<u32>) -> Struct_4 {
    let var_0 = !select(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(all(vec2<bool>(true, true)), true, true), 16671u < ~u_input.d.x);
    let var_1 = func_4(func_2(), ~(~1u));
    var var_2 = Struct_4(func_2(), func_2(), vec4<u32>(~(~4294967295u), 63223u, 1u, abs(countOneBits(arg_0.x))));
    var_2 = Struct_4(var_2.a, var_2.b, ~reverseBits(~vec4<u32>(arg_0.x, var_2.a.d, 74563u, arg_0.x)));
    var_2 = Struct_4(func_2(), Struct_1(_wgslsmith_f_op_f32(max(-1160f, 650f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a.b - vec2<f32>(753f, var_2.b.b.x)) - vec2<f32>(_wgslsmith_f_op_f32(var_2.a.a - var_2.a.a), _wgslsmith_f_op_f32(abs(-556f)))), reverseBits(vec2<i32>(-55460i, _wgslsmith_sub_i32(u_input.b.x, var_2.b.c.x))), ~var_2.b.d & (~0u & max(u_input.d.x, var_2.b.d)), !any(select(var_0, vec3<bool>(false, true, true), true))), ~vec4<u32>(_wgslsmith_clamp_u32(~4294967295u, ~29437u, min(u_input.e, 16289u)), var_2.b.d, u_input.d.x, 1u >> (~arg_0.x % 32u)));
    return Struct_4(func_2(), func_2(), _wgslsmith_div_vec4_u32(var_2.c, var_2.c));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4) -> vec2<bool> {
    var var_0 = !(!vec2<bool>(true, reverseBits(arg_0.c.x) > arg_0.c.x));
    var_0 = !select(vec2<bool>(_wgslsmith_f_op_f32(-arg_2.a.b.x) > 375f, all(vec3<bool>(arg_2.b.e, arg_1.b.e, true))), !select(vec2<bool>(var_0.x, false), !vec2<bool>(arg_0.e, arg_0.e), any(vec4<bool>(var_0.x, arg_1.b.e, var_0.x, arg_2.a.e))), func_4(arg_0, 41883u));
    var_0 = !(!select(select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), !vec2<bool>(false, arg_1.b.e)), !select(vec2<bool>(true, true), vec2<bool>(false, arg_1.b.e), vec2<bool>(true, var_0.x)), select(vec2<bool>(false, false), vec2<bool>(arg_0.e, false), select(vec2<bool>(arg_2.b.e, true), vec2<bool>(arg_2.b.e, false), true))));
    let var_1 = true;
    let var_2 = 932f;
    return vec2<bool>(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -284f), arg_2.b.b.x) < _wgslsmith_f_op_f32(-arg_2.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1556f, -311f) - vec2<f32>(231f, 106f))))))));
    var var_1 = select(func_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0, u_input.b, 34329u, any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true))), func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, u_input.e, u_input.d.x, u_input.e) | vec4<u32>(4294967295u, 1u, 1u, u_input.e), countOneBits(vec4<u32>(1386u, u_input.e, u_input.e, u_input.d.x)))), Struct_4(Struct_1(_wgslsmith_div_f32(-323f, -1337f), _wgslsmith_f_op_vec2_f32(-var_0), u_input.c, _wgslsmith_add_u32(70755u, u_input.e), true), Struct_1(func_1(vec4<u32>(74691u, 12107u, 4294967295u, 3318u)).b.a, _wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(var_0.x, -835f)), _wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(u_input.a, u_input.a)), max(u_input.d.x, u_input.e), false), select(vec4<u32>(0u, 58684u, u_input.e, 1u), ~vec4<u32>(u_input.d.x, u_input.d.x, 0u, 51524u), true))), select(func_5(Struct_1(_wgslsmith_f_op_f32(var_0.x + 393f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, 1399f))), _wgslsmith_mult_vec2_i32(u_input.c, vec2<i32>(0i, u_input.c.x)), ~u_input.d.x, true), Struct_4(func_2(), func_2(), vec4<u32>(u_input.d.x, 4294967295u, u_input.e, 42493u) & vec4<u32>(8345u, 4347u, u_input.e, u_input.e)), Struct_4(func_1(vec4<u32>(u_input.e, 38932u, 1185u, u_input.e)).b, func_2(), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 28963u, u_input.d.x, u_input.e), vec4<u32>(4294967295u, 0u, u_input.d.x, 0u)))), vec2<bool>(true, true), func_2().e), all(vec4<bool>(all(vec2<bool>(true, true)), true, true, true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(835f * _wgslsmith_f_op_f32(f32(-1f) * -272f)))));
    var_1 = func_5(func_2(), Struct_4(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.x)))), var_0, _wgslsmith_sub_vec2_i32(u_input.c ^ vec2<i32>(-28979i, -1i), vec2<i32>(2147483647i, -2147483647i)), 0u, false), func_2(), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(17327u, u_input.e, 0u, 4294967295u)), ~(~vec4<u32>(4294967295u, u_input.d.x, 40362u, 31774u)), _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(u_input.e, u_input.e, 4294967295u, u_input.d.x)), ~vec4<u32>(u_input.d.x, u_input.d.x, 0u, 27837u)))), func_1(~(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.e, 4857u, 42628u), vec4<u32>(16919u, 45926u, u_input.d.x, u_input.d.x)) & vec4<u32>(1u, u_input.d.x, 17308u, 4294967295u))));
    let var_3 = Struct_2(func_1(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(77804u, 1u, u_input.e, u_input.e), vec4<u32>(4294967295u, 0u, u_input.e, u_input.d.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 87001u, 20177u, u_input.e), vec4<u32>(u_input.d.x, u_input.d.x, 0u, 51406u))), 4131u, u_input.e, _wgslsmith_clamp_u32(~1u, ~2099u, reverseBits(0u)))).a, _wgslsmith_add_u32(u_input.d.x, 21107u), _wgslsmith_f_op_vec2_f32(min(var_0, var_0)), func_1(vec4<u32>(82849u, _wgslsmith_sub_u32(1418u, _wgslsmith_div_u32(u_input.d.x, 28256u)), u_input.d.x, ~(~4294967295u))).a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1299f, -184f)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_2, 872f), vec3<f32>(var_2, var_2, 1487f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2, 940f, -147f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -546f, var_0.x)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1635f, 754f, 196f))))) + vec3<f32>(_wgslsmith_f_op_f32(var_2 + var_2), var_2, _wgslsmith_f_op_f32(var_2 - var_0.x))), var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2057f)), u_input.b, reverseBits(_wgslsmith_mod_vec2_u32(u_input.d.yy, vec2<u32>(~u_input.e, ~20911u))), ~vec3<i32>(~(-7325i), 2147483647i, countOneBits(select(var_3.d.c.x, -30321i, false))));
}

