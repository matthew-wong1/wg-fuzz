struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<i32>(-1i, -1i, -15659i, 0i), vec3<bool>(true, false, true), vec2<u32>(15142u, 22619u)), Struct_1(vec4<i32>(9584i, 25701i, 41227i, -40154i), vec3<bool>(false, false, false), vec2<u32>(1u, 76047u)), Struct_1(vec4<i32>(-1i, 4426i, i32(-2147483648), 1391i), vec3<bool>(false, true, true), vec2<u32>(38245u, 4294967295u)), Struct_1(vec4<i32>(-54089i, 1i, 60998i, 0i), vec3<bool>(true, false, false), vec2<u32>(30757u, 28669u)), Struct_1(vec4<i32>(16705i, 2147483647i, 3616i, -57362i), vec3<bool>(false, true, false), vec2<u32>(0u, 37805u)), Struct_1(vec4<i32>(-29663i, i32(-2147483648), 1759i, 6978i), vec3<bool>(true, true, false), vec2<u32>(0u, 21730u)), Struct_1(vec4<i32>(-54849i, 47850i, i32(-2147483648), 17043i), vec3<bool>(true, false, false), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec4<i32>(0i, 36503i, 0i, 64020i), vec3<bool>(false, true, true), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec4<i32>(37397i, 5982i, 1i, 2147483647i), vec3<bool>(false, true, false), vec2<u32>(4294967295u, 0u)), Struct_1(vec4<i32>(0i, -89492i, 2147483647i, 50590i), vec3<bool>(true, false, true), vec2<u32>(18706u, 0u)), Struct_1(vec4<i32>(0i, 18054i, 20676i, 132i), vec3<bool>(true, false, false), vec2<u32>(0u, 1u)), Struct_1(vec4<i32>(18846i, 0i, -36504i, 35673i), vec3<bool>(false, false, true), vec2<u32>(4294967295u, 113035u)), Struct_1(vec4<i32>(1i, -15630i, -3234i, 2147483647i), vec3<bool>(false, false, true), vec2<u32>(0u, 4294967295u)), Struct_1(vec4<i32>(2147483647i, 1i, -26852i, -3169i), vec3<bool>(true, true, false), vec2<u32>(1u, 4294967295u)), Struct_1(vec4<i32>(40385i, 2147483647i, 8290i, 1i), vec3<bool>(false, true, true), vec2<u32>(67897u, 4294967295u)), Struct_1(vec4<i32>(58450i, -1i, 2147483647i, 1i), vec3<bool>(false, true, false), vec2<u32>(0u, 36894u)), Struct_1(vec4<i32>(-878i, 15732i, -28579i, i32(-2147483648)), vec3<bool>(true, true, false), vec2<u32>(0u, 0u)), Struct_1(vec4<i32>(2147483647i, 31020i, 1i, 0i), vec3<bool>(false, true, true), vec2<u32>(46591u, 33741u)), Struct_1(vec4<i32>(-1i, 32775i, 12503i, -1i), vec3<bool>(true, true, true), vec2<u32>(0u, 30861u)), Struct_1(vec4<i32>(i32(-2147483648), 18018i, -2731i, 1i), vec3<bool>(true, true, false), vec2<u32>(0u, 58310u)));

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(41898i, _wgslsmith_div_i32(0i, firstTrailingBit(1i))), u_input.e, u_input.d), ~_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.e, u_input.a.x), _wgslsmith_sub_i32(u_input.b, u_input.d)), u_input.e));
    global0 = array<Struct_1, 20>();
    var var_1 = ~33721i;
    var_1 = u_input.e;
    var var_2 = ~vec3<i32>(_wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(-2970i, -2147483647i, u_input.b)), ~(-vec3<i32>(-2147483647i, u_input.d, -1i))), abs(u_input.e), u_input.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(849f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(588f)), _wgslsmith_f_op_f32(min(1281f, 728f))))) * _wgslsmith_f_op_f32(-901f + -536f)));
}

fn func_2() -> vec4<f32> {
    global1 = Struct_2(global1.b, true);
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1478f, 1583f)), -267f)))), _wgslsmith_f_op_f32(func_3(select(!vec3<bool>(false, true, global1.a), !vec3<bool>(global1.a, true, false), vec3<bool>(false, false, false)))), 226f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(253f - -464f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(941f + -526f) + 1457f)))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-431f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(125f + -833f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-369f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1928f * 1231f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-797f - 1000f))), _wgslsmith_f_op_vec4_f32(func_2()), select(true, all(vec2<bool>(true, true)), !global1.b)));
    global0 = array<Struct_1, 20>();
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-935f, _wgslsmith_f_op_f32(func_3(vec3<bool>(false, global1.b, global1.b)))))) != -1487f, global1.b);
    global0 = array<Struct_1, 20>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec4_f32(func_2()).x, _wgslsmith_f_op_f32(f32(-1f) * -1465f))), _wgslsmith_f_op_vec4_f32(func_2()).x))), _wgslsmith_f_op_f32(-611f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1160f)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(trunc(-1403f))))), var_0.x);
    return Struct_2(all(select(select(!vec3<bool>(global1.b, global1.b, global1.a), vec3<bool>(global1.a, true, global1.a), global1.a), vec3<bool>(any(vec4<bool>(true, global1.b, false, false)), u_input.b == 0i, global1.a), all(!vec3<bool>(false, global1.b, true)))), global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1271f;
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(601f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1148f, _wgslsmith_f_op_f32(-var_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(-var_0)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, 914f, var_0)))), vec3<f32>(_wgslsmith_f_op_f32(-var_0), -1100f, _wgslsmith_f_op_f32(max(-800f, var_0))), false)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)))));
    let var_2 = vec2<bool>(!global1.a, global1.b);
    var var_3 = func_1(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(16183i, u_input.b, 43211i)), vec3<i32>(u_input.a.x, 69720i, u_input.e) ^ vec3<i32>(-2147483647i, 0i, u_input.b)), u_input.e, -(58060i | u_input.d), (u_input.d >> (u_input.c.x % 32u)) ^ ~(-2147483647i)), vec4<i32>(-reverseBits(0i), _wgslsmith_mult_i32(u_input.b, 2147483647i), ~u_input.e, ~(u_input.d | u_input.e))));
    var var_4 = ~u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(u_input.c, _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(3840u, u_input.c.x, 35572u), u_input.c), vec3<u32>(u_input.c.x, 4294967295u, 43656u)) & ~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, 73734u), u_input.c)), max(vec3<i32>(_wgslsmith_mult_i32(16216i, _wgslsmith_dot_vec4_i32(vec4<i32>(27797i, u_input.d, u_input.b, -2147483647i), vec4<i32>(u_input.b, 0i, 0i, -1i))), u_input.d, -51601i), vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, -1i), vec3<i32>(u_input.e, 2147483647i, -2147483647i)), 1i, max(2147483647i, 0i))), ~u_input.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.xz), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, _wgslsmith_div_f32(var_0, -1041f))))), -14440i);
}

