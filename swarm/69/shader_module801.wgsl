struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1() -> f32 {
    return 535f;
}

fn func_3(arg_0: vec2<u32>, arg_1: f32) -> vec2<bool> {
    var var_0 = any(select(vec2<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(false, false))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), u_input.b >= 2147483647i), _wgslsmith_clamp_u32(u_input.a, arg_0.x, 34804u) >= ~arg_0.x), !(-1036f != _wgslsmith_f_op_f32(func_1()))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, arg_1, true))), 1211f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(887f * 195f), _wgslsmith_div_f32(arg_1, 320f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, arg_1, 1191f))), vec3<f32>(arg_1, arg_1, arg_1))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 857f, -1000f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(324f, arg_1, arg_1))))), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, false)))))), Struct_2(Struct_1(arg_0, vec2<bool>(true, true), _wgslsmith_add_i32(u_input.b, u_input.b) >> (u_input.a % 32u), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, arg_0.x, u_input.a, u_input.a), vec4<u32>(arg_0.x, 1u, u_input.a, arg_0.x)))), 1u, Struct_2(Struct_1(~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 21793u), arg_0), vec2<bool>(true, u_input.b > 11262i), u_input.b, _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), ~vec4<u32>(28845u, arg_0.x, u_input.a, 32146u), reverseBits(vec4<u32>(u_input.a, 0u, 4294967295u, 63997u))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(751f, -476f, -142f, arg_1)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(172f, arg_1, arg_1, 662f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-177f, arg_1, -158f, -118f))))));
    var_0 = var_1.b.a.b.x;
    var var_2 = vec4<f32>(arg_1, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(381f, _wgslsmith_f_op_f32(-var_1.a.x))), var_1.a.x)), 130f, arg_1);
    var_2 = var_1.e;
    return !var_1.b.a.b;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<f32>) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i, select(select(u_input.b, u_input.b, arg_0.x), reverseBits(16579i), arg_0.x), _wgslsmith_mod_i32(-u_input.b, -31310i))), vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(2147483647i, u_input.b)), min(abs(u_input.b), u_input.b), -23060i) & vec3<i32>(_wgslsmith_div_i32(-36676i, ~1i), u_input.b, -(i32(-1i) * -14201i)));
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.x)) + arg_1.x))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))), 419f) - vec2<f32>(arg_1.x, -1000f));
    var var_2 = Struct_2(Struct_1(select(firstTrailingBit(min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(69348u, u_input.a))), ~vec2<u32>(23203u, u_input.a), vec2<bool>(true, true)), vec2<bool>(true, true), ~_wgslsmith_dot_vec3_i32(vec3<i32>(751i, u_input.b, -19124i), vec3<i32>(u_input.b, -2147483647i, 2147483647i)) << (_wgslsmith_sub_u32(firstTrailingBit(u_input.a), u_input.a) % 32u), reverseBits(vec4<u32>(_wgslsmith_clamp_u32(u_input.a, 4294967295u, 1u), abs(u_input.a), reverseBits(11402u), u_input.a))));
    let var_3 = abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, _wgslsmith_sub_i32(countOneBits(u_input.b), -1i)), vec2<i32>(max(2147483647i, u_input.b), 2147483647i) ^ select(-vec2<i32>(-4903i, u_input.b), ~vec2<i32>(-1i, u_input.b), any(vec4<bool>(var_2.a.b.x, arg_0.x, false, false))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_2.a.c, u_input.b), select(-19780i, var_2.a.c, arg_0.x)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(var_2.a.c, u_input.b), vec2<i32>(25565i, u_input.b), vec2<i32>(2147483647i, 205i)))));
    return _wgslsmith_f_op_f32(-175f * _wgslsmith_div_f32(var_1.x, 651f));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 483f) - vec2<f32>(-302f, -1953f)), _wgslsmith_div_vec2_f32(vec2<f32>(1321f, -499f), vec2<f32>(-618f, 931f)))), _wgslsmith_div_vec2_f32(vec2<f32>(407f, 1872f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-381f, -192f) - vec2<f32>(1784f, -212f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-213f, -383f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(f32(-1f) * -1721f)))));
    global0 = _wgslsmith_f_op_f32(func_4(func_3(_wgslsmith_mod_vec2_u32(~(~vec2<u32>(60667u, u_input.a)), vec2<u32>(1u, u_input.a) >> (~vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u))), _wgslsmith_f_op_f32(var_0.x - var_0.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1054f, 517f, -603f, var_0.x) * vec4<f32>(var_0.x, var_0.x, -381f, 1058f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -504f, var_0.x, var_0.x))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.x, -1790f, -754f, -750f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1459f) * vec4<f32>(var_0.x, var_0.x, var_0.x, -2283f)), true)))), select(vec4<bool>(true, true, 20288i > u_input.b, true), vec4<bool>(true, true, select(false, false, false), var_0.x < var_0.x), vec4<bool>(true, true, true, true))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(var_0.x + 789f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -823f)) + _wgslsmith_f_op_f32(f32(-1f) * -2049f))), _wgslsmith_f_op_f32(step(var_0.x, var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-196f - 505f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -589f))))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.zzz)), Struct_2(Struct_1(~(~vec2<u32>(u_input.a, u_input.a)), vec2<bool>(true, true), 0i, vec4<u32>(_wgslsmith_mult_u32(1u, u_input.a), 4074u, 18847u, ~u_input.a))), min(~(~(~0u)), select(_wgslsmith_add_u32(11868u, 4375u), u_input.a, false)), Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(0u, u_input.a)), vec2<u32>(0u, u_input.a) ^ vec2<u32>(u_input.a, u_input.a)), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), true), 3365i, ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, 5717u, 0u), vec4<u32>(u_input.a, u_input.a, 50649u, 0u)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_1.x, var_0.x, -1000f))))));
    var var_3 = _wgslsmith_mult_vec2_u32(~var_2.b.a.a, var_2.d.a.d.yz) << (~_wgslsmith_add_vec2_u32(~var_2.b.a.d.wx & _wgslsmith_add_vec2_u32(var_2.b.a.d.wx, vec2<u32>(910u, var_2.c)), var_2.b.a.a) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + 1219f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + var_2.e.x)))) - 523f);
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> StorageBuffer {
    let var_0 = arg_0.a;
    global0 = _wgslsmith_f_op_f32(func_4(vec2<bool>(arg_0.a.b.x, arg_1 != -1331f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1)), _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(1016f * 364f))), _wgslsmith_f_op_f32(exp2(arg_1)), arg_1), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, -595f) + vec4<f32>(-427f, arg_1, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, 442f, arg_1, 508f))) - vec4<f32>(arg_1, -1000f, -1406f, -1418f)), u_input.a >= u_input.a)), vec4<bool>(!arg_0.a.b.x || func_3(arg_0.a.a, -112f).x, 64287u < arg_0.a.d.x, true, var_0.b.x)))));
    var var_1 = Struct_1(var_0.a, select(select(vec2<bool>(true, true), select(func_3(vec2<u32>(4327u, 34224u), 448f), !arg_0.a.b, u_input.b > var_0.c), arg_0.a.b.x), func_3(~var_0.d.ww, -194f), any(vec2<bool>(all(vec2<bool>(var_0.b.x, var_0.b.x)), true))), -2147483647i, ~select(_wgslsmith_clamp_vec4_u32(countOneBits(var_0.d), vec4<u32>(74190u, u_input.a, 0u, u_input.a) | vec4<u32>(63777u, var_0.a.x, var_0.a.x, 1u), vec4<u32>(50640u, 70329u, 4294967295u, var_0.d.x) | arg_0.a.d), var_0.d, vec4<bool>(false, var_0.b.x, arg_0.a.b.x, var_0.b.x || true)));
    var var_2 = abs(_wgslsmith_mult_u32(~abs(~var_0.d.x), var_1.d.x));
    global0 = _wgslsmith_f_op_f32(936f - -905f);
    return StorageBuffer(_wgslsmith_clamp_vec4_u32(~arg_0.a.d, reverseBits(~var_0.d), vec4<u32>(var_0.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(var_0.d.x, 1u)), u_input.a, var_0.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 13872u), vec2<u32>(56812u, u_input.a), vec2<u32>(u_input.a, 37249u)))), !vec2<bool>(select(false, false, false), true), -(~0i), ~vec4<u32>(~u_input.a, 4294967295u, _wgslsmith_div_u32(u_input.a, u_input.a), select(u_input.a, 33743u, true))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1504f - _wgslsmith_f_op_f32(func_1()))), -116f);
    var var_1 = u_input.a;
    var var_2 = true;
    let x = u_input.a;
    s_output = func_5(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + 166f));
}

