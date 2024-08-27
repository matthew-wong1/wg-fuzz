struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec4<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec4<f32>,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_5) -> vec4<u32> {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(2438f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(662f, _wgslsmith_f_op_f32(arg_3.c.x * arg_3.c.x))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1101f + arg_3.a.d), _wgslsmith_f_op_f32(arg_3.c.x + -624f))))), _wgslsmith_f_op_f32(ceil(-159f)), arg_3.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.c.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1553f * arg_3.a.d), _wgslsmith_f_op_f32(f32(-1f) * -2322f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-924f, arg_3.a.a.x)) * arg_3.c.x)));
    let var_1 = Struct_3(arg_3.e.a);
    return _wgslsmith_mod_vec4_u32(abs(vec4<u32>(32051u, _wgslsmith_clamp_u32(arg_0.x, _wgslsmith_div_u32(u_input.a, arg_2), 4294967295u ^ arg_1.x), 1u, 18404u)), vec4<u32>(0u, 2240u, arg_0.x, arg_3.b.c) & select(abs(u_input.c) | select(u_input.c, vec4<u32>(4294967295u, arg_3.b.a.x, arg_3.b.c, arg_3.b.a.x), vec4<bool>(true, arg_3.a.c.x, arg_3.a.e, arg_3.a.e)), u_input.c, arg_3.a.c));
}

fn func_2(arg_0: i32) -> vec3<f32> {
    let var_0 = ~func_3(u_input.c.yyx, u_input.c.yxx, _wgslsmith_div_u32(67611u, _wgslsmith_clamp_u32(1u, u_input.a >> (0u % 32u), 0u)), Struct_5(Struct_1(vec2<f32>(-1094f, 268f), _wgslsmith_div_u32(u_input.d, 96473u), vec4<bool>(true, true, true, true), -444f, true), Struct_4(abs(vec3<u32>(0u, u_input.c.x, u_input.d)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false), max(71388u, 4449u), Struct_3(vec4<i32>(u_input.b.x, arg_0, arg_0, u_input.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-1483f - 390f), -770f, _wgslsmith_f_op_f32(1701f - -1928f), _wgslsmith_f_op_f32(666f * -914f)), Struct_3(vec4<i32>(u_input.b.x, 0i, 2147483647i, arg_0)), Struct_3(~vec4<i32>(arg_0, arg_0, 36517i, u_input.b.x))));
    let var_1 = _wgslsmith_mult_u32(~(u_input.c.x >> (~44671u % 32u)), ~var_0.x);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-256f, -1028f, 1041f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(418f, 1292f, 1086f)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-263f))), _wgslsmith_f_op_f32(f32(-1f) * -276f), 1147f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: i32) -> vec3<i32> {
    var var_0 = select(select(vec4<bool>(arg_1, false, true, true), !vec4<bool>(arg_1, 1i > u_input.b.x, arg_1, true), select(vec4<bool>(arg_1, true, true, true), vec4<bool>(arg_1, true, arg_1, !arg_1), false)), !select(!(!vec4<bool>(arg_1, arg_1, arg_1, false)), select(vec4<bool>(true, true, arg_1, arg_1), select(vec4<bool>(false, arg_1, arg_1, arg_1), vec4<bool>(arg_1, false, false, arg_1), true), select(vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(arg_1, false, arg_1, false), arg_1)), !vec4<bool>(arg_1, true, false, false)), vec4<bool>(!(-1075f < _wgslsmith_f_op_f32(-arg_0.x)), !any(vec2<bool>(false, arg_1)) || !(false || arg_1), _wgslsmith_f_op_f32(f32(-1f) * -1053f) < _wgslsmith_f_op_f32(min(arg_0.x, -1593f)), false));
    let var_1 = Struct_3(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(u_input.a, u_input.d, 0u, 2117u) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(arg_2, -1i, 1i, u_input.b.x))), _wgslsmith_mult_i32(-2147483647i, _wgslsmith_add_i32(0i, u_input.b.x)), arg_2, u_input.b.x) >> (abs(_wgslsmith_sub_vec4_u32(firstTrailingBit(u_input.c), ~vec4<u32>(u_input.c.x, 0u, 0u, 1u))) % vec4<u32>(32u)));
    var var_2 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0.x, -344f), _wgslsmith_f_op_f32(814f * arg_0.x), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(851f - 393f)))), _wgslsmith_f_op_f32(f32(-1f) * -159f));
    let var_3 = vec4<bool>(arg_1, arg_1, false, arg_1);
    let var_4 = _wgslsmith_dot_vec2_u32(~(~((vec2<u32>(8676u, u_input.d) >> (vec2<u32>(7584u, u_input.a) % vec2<u32>(32u))) << (min(vec2<u32>(0u, 19640u), u_input.c.xx) % vec2<u32>(32u)))), ~u_input.c.yw);
    return -var_1.a.wzw;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<u32>) -> bool {
    var var_0 = (func_4(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(func_2(u_input.b.x)))), (u_input.b.x ^ -13757i) >= ~0i, u_input.b.x) & _wgslsmith_mult_vec3_i32(~vec3<i32>(-71181i, -21507i, 1i), vec3<i32>(2864i, u_input.b.x, -1i))) << (_wgslsmith_clamp_vec3_u32(~countOneBits(arg_2.yxx), arg_2.wyx, vec3<u32>(_wgslsmith_clamp_u32(u_input.d, _wgslsmith_mult_u32(u_input.c.x, arg_2.x), arg_2.x), 11356u, 38402u)) % vec3<u32>(32u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(192f, -701f))) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1, 1000f))))))), 4294967295u, select(vec4<bool>(arg_0, any(!vec2<bool>(arg_0, arg_0)), false, true), select(vec4<bool>(arg_0 || false, arg_0, any(vec2<bool>(arg_0, arg_0)), all(vec2<bool>(false, arg_0))), select(vec4<bool>(arg_0, false, arg_0, arg_0), !vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(arg_0, true, arg_0, true)), false), vec4<bool>(var_0.x >= _wgslsmith_div_i32(var_0.x, var_0.x), any(vec3<bool>(true, arg_0, arg_0)), arg_0, select(any(vec2<bool>(arg_0, arg_0)), false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_1, arg_1)), arg_1, true)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) - _wgslsmith_f_op_f32(-arg_1)))), true);
    let var_2 = Struct_5(Struct_1(var_1.a, _wgslsmith_sub_u32(arg_2.x, ~(~36019u)), vec4<bool>(true, !(var_1.a.x <= -100f), (4294967295u == var_1.b) && any(var_1.c), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(2371f))), all(!select(var_1.c.yyw, vec3<bool>(arg_0, true, false), var_1.c.zyw))), Struct_4(~u_input.c.yxy, !vec4<bool>(select(false, true, false), arg_0, 1u != u_input.c.x, var_1.c.x), ~(~arg_2.x), Struct_3(_wgslsmith_add_vec4_i32(abs(vec4<i32>(var_0.x, var_0.x, u_input.b.x, 1173i)), vec4<i32>(var_0.x, -14362i, u_input.b.x, u_input.b.x)))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1182f - _wgslsmith_f_op_f32(-var_1.a.x)), 1652f)), arg_1, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(703f, _wgslsmith_f_op_f32(step(1000f, var_1.a.x)))))), _wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-323f * var_1.a.x)))), Struct_3(-min(vec4<i32>(var_0.x, var_0.x, -2147483647i, u_input.b.x) << (u_input.c % vec4<u32>(32u)), ~vec4<i32>(18671i, u_input.b.x, -52217i, u_input.b.x))), Struct_3(select(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 62872i), vec4<i32>(-1i, u_input.b.x, u_input.b.x, -18062i)) ^ _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(30649i, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<i32>(-28670i, -1i, 11684i, _wgslsmith_dot_vec3_i32(vec3<i32>(15823i, -4122i, 2147483647i), vec3<i32>(29690i, 2147483647i, u_input.b.x))), select(!vec4<bool>(arg_0, arg_0, false, var_1.e), !vec4<bool>(true, false, var_1.e, arg_0), arg_0))));
    var var_3 = select(vec4<u32>(~(~func_3(vec3<u32>(5693u, u_input.a, 5321u), vec3<u32>(var_2.b.a.x, u_input.d, 1u), 43906u, Struct_5(Struct_1(vec2<f32>(-1774f, 915f), var_2.b.c, vec4<bool>(arg_0, arg_0, false, var_2.a.e), 298f, true), Struct_4(vec3<u32>(88448u, var_1.b, var_2.b.c), vec4<bool>(var_2.a.c.x, false, false, var_2.b.b.x), var_2.b.c, var_2.b.d), vec4<f32>(var_1.a.x, 1840f, var_2.c.x, -1188f), var_2.d, Struct_3(vec4<i32>(var_0.x, u_input.b.x, var_2.b.d.a.x, var_0.x)))).x), 117013u, 119684u, var_2.a.b), abs(select(~arg_2, ~vec4<u32>(48626u, 0u, u_input.d, u_input.c.x) & select(vec4<u32>(41933u, 0u, 19190u, var_1.b), vec4<u32>(1u, var_2.b.c, 29278u, 6038u), vec4<bool>(true, var_2.a.e, true, false)), false)), select(vec4<bool>(true, true, select(arg_0, true, 33324u < u_input.c.x), true), !var_1.c, select(var_2.b.b, !(!vec4<bool>(var_1.e, false, false, arg_0)), all(!vec2<bool>(false, var_1.c.x)))));
    var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(firstTrailingBit(countOneBits(var_2.e.a.xyw)) >> (~(~u_input.c.wzy) % vec3<u32>(32u)), vec3<i32>(u_input.b.x ^ 2174i, -26864i, 0i)), vec3<i32>(_wgslsmith_clamp_i32(select(-17729i, countOneBits(-1i), arg_0 & var_2.a.c.x), _wgslsmith_mod_i32(var_2.d.a.x, var_2.b.d.a.x), -1i), 15223i, u_input.b.x));
    return any(!var_1.c.ww) | var_1.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec3<u32>(min(8135u, ~(~4294967295u)), u_input.c.x, (u_input.d >> (0u % 32u)) >> (firstLeadingBit(u_input.a) % 32u)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.b.x <= -1i, func_1(true, 705f, vec4<u32>(1u, 4294967295u, 0u, u_input.c.x)), true, false), vec4<bool>(select(true, true, false), true, true, true)), vec4<bool>(true, false, all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), false), vec4<bool>(true, true, !select(true, true, true), true)), ~u_input.d, Struct_3(_wgslsmith_sub_vec4_i32(~(~vec4<i32>(-21906i, 2147483647i, u_input.b.x, u_input.b.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x)), -1i, u_input.b.x, -u_input.b.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-953f * _wgslsmith_f_op_f32(floor(-197f)))), _wgslsmith_f_op_f32(ceil(-1887f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-563f, 604f)), 1633f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(446f * 1777f) + _wgslsmith_f_op_f32(trunc(-1704f))) - _wgslsmith_f_op_f32(max(787f, _wgslsmith_f_op_f32(-294f + 1071f))))));
    let var_2 = !(all(var_0.b.www) != true);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_1.x, -918f), _wgslsmith_f_op_vec3_f32(select(var_1.wxx, var_1.zzw, false)), vec3<bool>(var_2, true, true))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(var_1.xzy)), _wgslsmith_f_op_vec3_f32(trunc(var_1.xwz)), false)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(134f)), 673f, _wgslsmith_f_op_f32(-var_1.x)), vec3<f32>(-1664f, _wgslsmith_f_op_f32(round(var_1.x)), -187f), (1u <= u_input.d) && var_0.b.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 703f, 548f), vec3<f32>(786f, var_1.x, 469f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, var_1.x, var_1.x) * vec3<f32>(var_1.x, 1064f, 767f))))));
    let var_4 = var_0.d.a.wz;
    let var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(var_1.zw)))), _wgslsmith_mult_u32(~u_input.c.x, ~4294967295u) ^ 1u, select(vec4<bool>(!(!var_2), true, any(var_0.b.zw), true), vec4<bool>(var_2, var_0.b.x, !var_2, var_2), select(var_2, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -730f))))), select(var_2, any(vec3<bool>(false | var_2, true, all(vec2<bool>(false, var_2)))), (1000f <= var_3.x) | (var_0.c == var_0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, select(var_5.b, _wgslsmith_mod_u32(~_wgslsmith_div_u32(var_5.b, 37085u), var_5.b), all(select(!var_5.c, vec4<bool>(var_0.b.x, var_5.e, true, var_0.b.x), !vec4<bool>(var_5.c.x, var_2, var_0.b.x, var_2)))));
}

