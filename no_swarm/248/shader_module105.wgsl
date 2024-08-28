struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: i32,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = true;
    return u_input.b;
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    let var_0 = firstTrailingBit(vec4<u32>(_wgslsmith_clamp_u32(u_input.b, 16844u, ~(1u ^ u_input.b)), u_input.b, ~(21543u ^ func_3(Struct_2(u_input.a, vec2<bool>(arg_0.x, true)))), ~(~u_input.b)));
    var var_1 = ~countOneBits(vec4<i32>(min(-7311i, u_input.a), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, -49073i), vec3<i32>(u_input.a, -44034i, 7781i)), reverseBits(u_input.a))) & -min(vec4<i32>(_wgslsmith_sub_i32(u_input.a, -1i), _wgslsmith_add_i32(-46250i, u_input.a), 1i, -1i), max(countOneBits(vec4<i32>(u_input.a, u_input.a, 0i, -39350i)), reverseBits(vec4<i32>(18820i, u_input.a, u_input.a, 1i))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -293f);
    let var_3 = true;
    let var_4 = Struct_1(vec4<i32>(_wgslsmith_div_i32(0i, firstTrailingBit(-2147483647i) | 2147483647i), -1i, 1i, ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, u_input.a, u_input.a, 2147483647i), vec4<i32>(-45606i, 63766i, u_input.a, var_1.x), vec4<bool>(var_3, false, var_3, arg_0.x)), vec4<i32>(var_1.x, 1i, 2032i, var_1.x) ^ vec4<i32>(var_1.x, -2560i, u_input.a, var_1.x))), ~var_0.x);
    return u_input.a;
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(select(vec3<bool>(true, _wgslsmith_div_u32(u_input.b, 4294967295u) < ~u_input.b, ~u_input.b <= 2704u), vec3<bool>(select(false, true, any(vec2<bool>(false, true))), any(vec2<bool>(true, false)), true), false));
    let var_1 = _wgslsmith_clamp_u32((1u << (1u % 32u)) & ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 57617u) >> (vec3<u32>(u_input.b, u_input.b, 0u) % vec3<u32>(32u)), ~vec3<u32>(50213u, u_input.b, u_input.b)), _wgslsmith_clamp_u32(u_input.b, u_input.b, _wgslsmith_add_u32(u_input.b, u_input.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.b, 42049u), ~25177u), vec2<u32>(u_input.b, ~u_input.b)) & _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 43983u, u_input.b, 0u), select(vec4<u32>(u_input.b, 52386u, u_input.b, 0u), vec4<u32>(0u, u_input.b, u_input.b, u_input.b), false)), firstLeadingBit(~vec4<u32>(4294967295u, 56706u, u_input.b, 43778u))));
    let var_2 = Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_mult_i32(u_input.a, u_input.a), u_input.a >> (4294967295u % 32u), u_input.a), ~firstLeadingBit(vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a))), -(max(u_input.a, u_input.a) >> (1u % 32u)), u_input.a | (-2147483647i & u_input.a), 30142i), max(_wgslsmith_clamp_u32(var_1 >> (44724u % 32u), 4294967295u, reverseBits(u_input.b)), ~(~func_3(Struct_2(0i, vec2<bool>(false, false))))));
    let var_3 = _wgslsmith_sub_vec2_u32(~vec2<u32>(~var_1, 21317u), abs(~firstTrailingBit(select(vec2<u32>(var_2.b, 28618u), vec2<u32>(u_input.b, var_1), false))));
    let var_4 = select(select(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), true)), select(vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(false, true, false, true))), true), false), select(!vec2<bool>(any(vec2<bool>(false, false)), true), select(vec2<bool>(select(false, true, false), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), true)), _wgslsmith_dot_vec2_i32(var_2.a.xx, ~vec2<i32>(-17543i, u_input.a)) > 12234i), true);
    return Struct_1(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-var_2.a, max(var_2.a, vec4<i32>(var_2.a.x, 2147483647i, var_2.a.x, -6246i))), vec4<i32>(_wgslsmith_add_i32(firstLeadingBit(var_2.a.x), 0i), ~(~2147483647i), -7188i, -(~30065i))), u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    let var_0 = arg_3.d.b;
    var var_1 = Struct_3(firstTrailingBit(-_wgslsmith_mult_i32(abs(u_input.a), arg_3.c)), arg_2.a, 0i, arg_3.d, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, 971f) * _wgslsmith_f_op_f32(round(arg_2.e.x))), arg_2.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(285f + arg_3.e.x)), -663f), arg_2.e));
    let var_2 = -(~1i);
    var var_3 = arg_3;
    var var_4 = Struct_2(-u_input.a, select(!vec2<bool>(true, all(vec4<bool>(false, false, true, true))), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), false), !any(vec2<bool>(false, true))), vec2<bool>(_wgslsmith_f_op_f32(trunc(-798f)) <= _wgslsmith_f_op_f32(abs(var_1.e.x)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(991f * arg_1) * _wgslsmith_f_op_f32(-arg_2.e.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-18668i, vec2<bool>(true, true));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_4(func_1(), _wgslsmith_f_op_f32(round(-155f)), Struct_3(32552i, -1i, u_input.a, Struct_1(vec4<i32>(0i, u_input.a, -1i, u_input.a), u_input.b), vec4<f32>(165f, 768f, 528f, -1939f)), Struct_3(-35055i, u_input.a, -53904i, Struct_1(vec4<i32>(u_input.a, u_input.a, 3901i, 14826i), 102315u), vec4<f32>(155f, -551f, -742f, 307f)))), 969f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2415f + 546f) * _wgslsmith_f_op_f32(ceil(1829f))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(796f, -1488f, 872f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-284f)), -1457f, _wgslsmith_f_op_f32(max(1116f, 677f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1335f, -701f, -591f) - vec3<f32>(414f, 1600f, 861f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1067f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))), -1278f) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-985f - 954f), -777f, _wgslsmith_f_op_f32(-var_1.x))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1157f, 588f, -609f), vec3<f32>(var_1.x, -883f, -1365f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -938f, 697f) - vec3<f32>(514f, -870f, 1417f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-720f, 258f, 1351f) - vec3<f32>(-597f, 1262f, var_1.x)), vec3<f32>(var_1.x, -317f, var_1.x))), var_0.b.x)))));
    var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1101f, var_1.x, 1000f), vec3<f32>(var_1.x, var_1.x, var_1.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 1678f, var_1.x) - vec3<f32>(1792f, 1000f, 102f))))))));
    var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(min(797f, _wgslsmith_f_op_f32(func_4(Struct_1(vec4<i32>(u_input.a, 22454i, 21295i, u_input.a), u_input.b), _wgslsmith_f_op_f32(-2408f + var_1.x), Struct_3(u_input.a, var_0.a, var_0.a, Struct_1(vec4<i32>(2147483647i, var_0.a, 2147483647i, 1i), u_input.b), vec4<f32>(var_1.x, -1000f, -360f, var_1.x)), Struct_3(0i, var_0.a, -2147483647i, Struct_1(vec4<i32>(var_0.a, -47336i, -1i, var_0.a), u_input.b), vec4<f32>(var_1.x, -890f, var_1.x, -1352f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_add_i32(-56278i, func_2(!vec3<bool>(var_0.b.x, true, false))), min(abs(u_input.a ^ 0i), u_input.a)), var_1.x, -(-(30104i >> (u_input.b % 32u)) << (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(3675u, 9312u), vec2<u32>(37451u, 144057u)), max(vec2<u32>(u_input.b, 1u), vec2<u32>(4294967295u, 0u))) % 32u)), reverseBits(u_input.b), firstLeadingBit(vec4<u32>(_wgslsmith_mult_u32(19668u, u_input.b), firstLeadingBit(u_input.b), 4294967295u, ~0u)) >> (vec4<u32>(4294967295u, u_input.b, u_input.b >> (2460u % 32u), ~abs(53961u)) % vec4<u32>(32u)));
}

