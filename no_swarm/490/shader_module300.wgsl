struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: u32,
    c: Struct_2,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(0i, -56486i, -48848i), vec3<i32>(-15358i, 1i, -1i), vec3<i32>(-24605i, i32(-2147483648), -6955i), vec3<i32>(11835i, -6537i, 0i), vec3<i32>(-7544i, -30891i, -29091i), vec3<i32>(2147483647i, -50156i, -1i), vec3<i32>(i32(-2147483648), -13693i, -44255i), vec3<i32>(-36505i, -61691i, i32(-2147483648)), vec3<i32>(-23035i, 23136i, i32(-2147483648)), vec3<i32>(6903i, i32(-2147483648), -33795i), vec3<i32>(-1i, -10468i, 26177i), vec3<i32>(-1i, 2147483647i, 79104i), vec3<i32>(50810i, -72841i, -1i), vec3<i32>(2147483647i, 11425i, 32482i), vec3<i32>(-1i, -14438i, -13882i), vec3<i32>(0i, 24366i, -20428i), vec3<i32>(8792i, 0i, -17894i), vec3<i32>(i32(-2147483648), 29736i, -33438i), vec3<i32>(-1i, -1i, 14502i), vec3<i32>(32682i, -30944i, -40926i), vec3<i32>(-45555i, -1i, i32(-2147483648)), vec3<i32>(28679i, 1i, -18079i), vec3<i32>(45015i, -1i, 2147483647i), vec3<i32>(0i, 24947i, 34927i), vec3<i32>(2147483647i, -16993i, 2147483647i), vec3<i32>(-16097i, 0i, 16234i), vec3<i32>(0i, 0i, i32(-2147483648)));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<vec3<i32>, 27>();
    let var_0 = Struct_2(arg_0.c.a | (~(vec3<i32>(-2147483647i, arg_0.c.d, -13613i) & arg_0.c.a) & _wgslsmith_mod_vec3_i32(global0[_wgslsmith_index_u32(arg_0.d, 27u)], ~arg_0.c.a)), arg_0.c.b, 706f, arg_0.c.a.x);
    let var_1 = ~27514i;
    return select(select(!vec2<bool>(true, var_0.b.a.x >= var_0.c), select(select(select(vec2<bool>(arg_1.b, false), vec2<bool>(var_0.b.b, arg_1.b), vec2<bool>(true, arg_0.c.b.b)), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(false, arg_0.c.b.b), vec2<bool>(true, arg_1.b))), !select(vec2<bool>(var_0.b.b, arg_0.c.b.b), vec2<bool>(arg_1.b, var_0.b.b), vec2<bool>(arg_0.c.b.b, arg_1.b)), any(vec3<bool>(var_0.b.b, true, arg_1.b))), (var_0.b.a.x < _wgslsmith_div_f32(arg_0.a.x, var_0.b.a.x)) && (arg_0.d > arg_0.b)), !select(vec2<bool>(!arg_0.c.b.b, arg_0.c.d == arg_0.c.d), !vec2<bool>(var_0.b.b, var_0.b.b), vec2<bool>(true, true)), !select(vec2<bool>(arg_0.c.b.b, var_0.a.x >= var_0.d), vec2<bool>(arg_1.b || true, var_0.b.b), select(true, true, true)));
}

fn func_2() -> i32 {
    let var_0 = select(func_3(Struct_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-475f, -306f, 485f, 1227f))))), 1u, Struct_2(vec3<i32>(u_input.a, u_input.a, u_input.b), Struct_1(vec4<f32>(-762f, -1000f, 2039f, -1551f), true), -1000f, -u_input.a), 5571u, vec3<f32>(_wgslsmith_f_op_f32(ceil(1120f)), _wgslsmith_f_op_f32(f32(-1f) * -2000f), _wgslsmith_div_f32(146f, 1369f))), Struct_1(vec4<f32>(_wgslsmith_div_f32(359f, 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1393f), _wgslsmith_f_op_f32(floor(-126f)), _wgslsmith_f_op_f32(select(611f, -124f, true))), false)), vec2<bool>(true, true), !(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), true)));
    var var_1 = _wgslsmith_sub_i32(-(~(33660i >> (0u % 32u))), _wgslsmith_mod_i32(-u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.b, u_input.b), -vec2<i32>(u_input.b, u_input.b)), max(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(-19499i, u_input.a)), vec2<i32>(u_input.a, -1i) ^ vec2<i32>(u_input.b, u_input.b)))));
    var var_2 = max(-select(abs(u_input.b), -1i ^ u_input.b, var_0.x) << (5212u % 32u), -(~2147483647i));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-347f + 1811f)) - -349f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-670f)) + _wgslsmith_f_op_f32(select(-166f, 347f, var_0.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1783f * -1358f), _wgslsmith_f_op_f32(ceil(1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -520f))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 1049f, 1062f, 502f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, var_3.x, -972f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3.x, var_3.x, var_3.x, 657f), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, var_3.x, 1000f, var_3.x), vec4<f32>(-942f, -312f, var_3.x, -1041f)), !vec4<bool>(var_0.x, var_0.x, true, var_0.x)))) - vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_3.x, var_3.x, true)))), var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -931f) * _wgslsmith_f_op_f32(-var_3.x)), 1000f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.x, 241f, -971f, var_3.x))))), vec4<f32>(_wgslsmith_f_op_f32(var_3.x * var_3.x), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-137f - var_3.x), _wgslsmith_f_op_f32(min(-1000f, var_3.x)))))));
    return reverseBits(-23824i);
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = Struct_2(vec3<i32>(_wgslsmith_sub_i32(0i, min(_wgslsmith_div_i32(u_input.a, u_input.b), ~u_input.b)), func_2(), ~max(-35683i, 0i ^ u_input.a)), Struct_1(vec4<f32>(-929f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(441f * 373f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -963f) - _wgslsmith_f_op_f32(f32(-1f) * -257f))), !any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-585f - 914f), _wgslsmith_div_f32(1440f, -1115f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-976f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1411f, 2340f)), -1000f)))), u_input.a);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2116f, _wgslsmith_f_op_f32(f32(-1f) * -254f), _wgslsmith_f_op_f32(round(-1108f)), _wgslsmith_f_op_f32(-var_0.c)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.a.x), _wgslsmith_f_op_f32(sign(var_0.c)), _wgslsmith_f_op_f32(step(var_0.b.a.x, 328f)), 206f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b.a) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, var_0.c)), vec4<f32>(924f, -670f, 1098f, -2163f), !vec4<bool>(var_0.b.b, true, false, var_0.b.b))))), _wgslsmith_mult_u32(arg_0, ~arg_0), Struct_2(reverseBits(~reverseBits(vec3<i32>(0i, -10994i, var_0.a.x))), var_0.b, var_0.c, _wgslsmith_add_i32(-2147483647i, u_input.b)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 0u, 4294967295u, arg_0), select(vec4<u32>(arg_0, 4294967295u, arg_0, 90036u), vec4<u32>(65176u, 1u, 16320u, arg_0), vec4<bool>(false, var_0.b.b, true, true))) | _wgslsmith_add_u32(4294967295u, firstTrailingBit(54038u)), vec3<f32>(var_0.b.a.x, var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))));
    let var_2 = var_0.b.a.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1170f, -281f) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_1.e.x, var_1.e.x)))))), _wgslsmith_f_op_vec2_f32(sign(var_0.b.a.xz)), !select(vec2<bool>(true, false), select(vec2<bool>(var_1.c.b.b, var_1.c.b.b), vec2<bool>(false, var_0.b.b), true), !vec2<bool>(var_1.c.b.b, false))))));
    global0 = array<vec3<i32>, 27>();
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(465f, -1347f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(sign(-431f)), -554f, _wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_u32(1u, ~56661u, _wgslsmith_mod_u32(2648u, 12125u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(807f * _wgslsmith_f_op_f32(floor(-145f))))), false);
    var var_1 = Struct_2(abs(~vec3<i32>(11221i, -2147483647i, -1i)) & global0[_wgslsmith_index_u32(~429u, 27u)], Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -1848f, var_0.a.x, 108f) * var_0.a)))), any(!select(vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(true, true, var_0.b), var_0.b))), 548f, abs(_wgslsmith_mult_i32(reverseBits(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 3716i), vec2<i32>(-23152i, 432i))) >> (_wgslsmith_mult_u32(24099u, _wgslsmith_mod_u32(53494u, 22732u)) % 32u)));
    let var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(1u << (0u % 32u), max(0u, 1u)), abs(0u)), vec2<u32>(1u, _wgslsmith_clamp_u32(~41889u, abs(0u), abs(59809u)))), 21834u, 0u);
    global0 = array<vec3<i32>, 27>();
    let var_3 = 49769i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + -986f), _wgslsmith_f_op_f32(-var_1.b.a.x)))));
}

