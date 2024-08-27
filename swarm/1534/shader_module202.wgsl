struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(1u, 12950u, 4294967295u, 0u), vec4<u32>(13438u, 49088u, 4294967295u, 0u), vec4<u32>(1u, 0u, 37186u, 4294967295u), vec4<u32>(4294967295u, 4080u, 37079u, 4294967295u), vec4<u32>(3877u, 21479u, 70543u, 46222u), vec4<u32>(41523u, 58177u, 0u, 4294967295u), vec4<u32>(22840u, 34008u, 37311u, 57289u), vec4<u32>(4294967295u, 0u, 0u, 0u), vec4<u32>(1u, 25568u, 0u, 109287u), vec4<u32>(14501u, 4553u, 12100u, 4294967295u), vec4<u32>(30798u, 277u, 4594u, 26907u), vec4<u32>(1u, 38587u, 1u, 73548u), vec4<u32>(4694u, 0u, 6422u, 1932u), vec4<u32>(0u, 7078u, 0u, 43640u), vec4<u32>(51639u, 65067u, 26200u, 1u), vec4<u32>(23976u, 0u, 4294967295u, 0u), vec4<u32>(66862u, 74911u, 36641u, 101775u), vec4<u32>(1u, 4294967295u, 0u, 27814u), vec4<u32>(1u, 1u, 40603u, 4294967295u), vec4<u32>(40578u, 23840u, 99538u, 0u), vec4<u32>(4294967295u, 21380u, 15246u, 0u), vec4<u32>(0u, 24244u, 37919u, 13636u), vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(2990u, 58205u, 31466u, 1u), vec4<u32>(26828u, 52382u, 1u, 1u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    var var_0 = vec2<bool>(true, _wgslsmith_div_u32(u_input.d, ~0u) < 55390u);
    var var_1 = Struct_1(_wgslsmith_div_u32(~u_input.d, 1u), _wgslsmith_sub_vec2_u32(~u_input.a | vec2<u32>(57991u << (u_input.d % 32u), ~u_input.d), _wgslsmith_div_vec2_u32(~vec2<u32>(6358u, u_input.a.x) ^ u_input.a, vec2<u32>(_wgslsmith_div_u32(u_input.d, u_input.a.x), 4294967295u))), reverseBits(~reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 59421u, u_input.d), vec3<u32>(u_input.a.x, u_input.a.x, u_input.d)))));
    var var_2 = Struct_1(1u, reverseBits(vec2<u32>(~0u, _wgslsmith_mod_u32(u_input.a.x, 60611u))), ~min(max(select(var_1.c, var_1.c, var_0.x), var_1.c), ~(~var_1.c)));
    var_0 = select(vec2<bool>(false, any(!vec4<bool>(var_0.x, var_0.x, var_0.x, false))), vec2<bool>(u_input.a.x < _wgslsmith_mult_u32(~u_input.a.x, ~0u), true), !(!select(!vec2<bool>(false, var_0.x), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x)))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-735f * -2265f)))), -834f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1478f) - _wgslsmith_f_op_f32(floor(578f)))))), -1168f);
    return _wgslsmith_mult_u32(select(4294967295u, firstTrailingBit(min(select(u_input.d, 55765u, false), 1u)), !(var_0.x || false) || true), 44571u);
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<f32>, arg_3: bool) -> Struct_4 {
    let var_0 = !(!(!select(select(vec2<bool>(arg_3, false), vec2<bool>(arg_3, true), vec2<bool>(true, true)), !vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, arg_3))));
    global0 = array<vec4<u32>, 25>();
    return Struct_4(Struct_2(Struct_1(func_3(), u_input.a, vec3<u32>(29724u, 1u, u_input.d) | (vec3<u32>(0u, u_input.a.x, 58134u) << (vec3<u32>(u_input.d, arg_0.x, arg_0.x) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(156f + -1119f))), true)), arg_3, 1u));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: Struct_4) -> vec3<bool> {
    global0 = array<vec4<u32>, 25>();
    global0 = array<vec4<u32>, 25>();
    global0 = array<vec4<u32>, 25>();
    global0 = array<vec4<u32>, 25>();
    global0 = array<vec4<u32>, 25>();
    return select(vec3<bool>(false, !arg_1.a.c, arg_2.a.c), select(vec3<bool>(arg_2.a.b >= arg_0.x, arg_2.a.c, 1i != u_input.b), !(!vec3<bool>(true, true, arg_2.a.c)), select(!vec3<bool>(arg_2.a.c, arg_2.a.c, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), vec3<bool>(any(!vec4<bool>(arg_1.a.c, true, false, arg_2.a.c)), any(select(vec4<bool>(false, arg_1.a.c, arg_2.a.c, arg_1.a.c), !vec4<bool>(true, arg_1.a.c, arg_2.a.c, arg_1.a.c), !vec4<bool>(false, false, false, arg_1.a.c))), true));
}

fn func_1() -> Struct_1 {
    var var_0 = select(!vec3<bool>(any(vec3<bool>(true, true, false)), false, true), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 2683f, 1166f) - vec3<f32>(950f, -1598f, 2146f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-911f, -529f, -376f), vec3<f32>(-1050f, -1080f, 911f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-144f, 644f, 607f))), func_2(~u_input.a, abs(u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 772f, -719f) + vec3<f32>(254f, 245f, -1265f))), false), Struct_4(func_2(_wgslsmith_mult_vec2_u32(u_input.a, u_input.a), ~53124i, _wgslsmith_div_vec3_f32(vec3<f32>(-722f, -484f, -337f), vec3<f32>(-272f, 215f, 835f)), any(vec2<bool>(true, false))).a)), vec3<bool>(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 10834i, -28411i), u_input.c) > (u_input.b >> (~1u % 32u)), false, false));
    var var_1 = min(1i, u_input.c.x ^ -1477i);
    let var_2 = !(!vec2<bool>(true, any(select(vec3<bool>(true, false, false), vec3<bool>(var_0.x, true, false), false))));
    var var_3 = func_2(~firstTrailingBit(firstTrailingBit(func_2(vec2<u32>(111099u, u_input.a.x), 92329i, vec3<f32>(1000f, 936f, 3081f), var_0.x).a.a.c.zx)), 2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(-257f, 1274f)), -2174f, _wgslsmith_div_f32(-347f, -465f)) - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1058f), _wgslsmith_f_op_f32(f32(-1f) * -695f), 326f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-600f, 2293f, 1908f)) + vec3<f32>(887f, 551f, -317f)))), true).a.a;
    var var_4 = vec2<f32>(603f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -710f) * -1456f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-619f))))) * _wgslsmith_f_op_f32(-1054f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-220f, -1228f)))));
    return func_2(_wgslsmith_clamp_vec2_u32(select(countOneBits(u_input.a), var_3.c.xz, !var_2), ~var_3.c.yz, vec2<u32>(var_3.c.x, var_3.b.x)), u_input.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, var_4.x, var_4.x) - vec3<f32>(1000f, var_4.x, var_4.x)))) + vec3<f32>(var_4.x, -838f, _wgslsmith_f_op_f32(f32(-1f) * -2008f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2001f, _wgslsmith_div_f32(1000f, var_4.x), _wgslsmith_f_op_f32(-var_4.x))), func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-402f, var_4.x, var_4.x)), func_2(firstTrailingBit(vec2<u32>(u_input.a.x, u_input.d)), u_input.c.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, var_4.x, -1078f)), var_0.x), func_2(vec2<u32>(var_3.a, 1u), 1i << (u_input.d % 32u), vec3<f32>(var_4.x, 1476f, var_4.x), var_4.x <= var_4.x)).x)), var_0.x).a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(), u_input.b, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, _wgslsmith_f_op_f32(min(444f, -1635f)), _wgslsmith_f_op_f32(round(430f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(863f, 274f, 135f))))), countOneBits(~func_1().c << (vec3<u32>(~u_input.d, 0u, ~u_input.d) % vec3<u32>(32u))), -firstTrailingBit(u_input.b));
    global0 = array<vec4<u32>, 25>();
    let var_1 = var_0;
    global0 = array<vec4<u32>, 25>();
    let var_2 = Struct_3(var_0.a, ~(2822i ^ u_input.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.c)), min(abs(firstLeadingBit(_wgslsmith_mult_vec3_u32(var_0.d, var_1.d))), ~vec3<u32>(min(1u, 56255u), func_1().b.x, ~24448u)), -13165i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.a.x)), countOneBits(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_div_i32(var_1.e, 48759i), -13954i), -12527i, var_1.b, max(max(-1i, -60705i), 2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_1.c)))) + var_1.c), vec2<u32>(var_0.a.c.x, 53971u), reverseBits(_wgslsmith_mod_i32(~max(-2147483647i, var_1.b), var_2.b)));
}

