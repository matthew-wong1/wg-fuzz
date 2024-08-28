struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
    c: vec3<f32>,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec2<i32>(-33983i, -31222i), vec2<i32>(2147483647i, 2147483647i), Struct_1(2085f), Struct_1(335f)), Struct_2(vec2<i32>(-28617i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 0i), Struct_1(-1209f), Struct_1(-748f)), Struct_2(vec2<i32>(2147483647i, -17188i), vec2<i32>(-7496i, -1i), Struct_1(1599f), Struct_1(-544f)), Struct_2(vec2<i32>(2147483647i, -23784i), vec2<i32>(i32(-2147483648), -3806i), Struct_1(-1028f), Struct_1(-647f)), Struct_2(vec2<i32>(2147483647i, -1i), vec2<i32>(2147483647i, -32848i), Struct_1(-533f), Struct_1(-1132f)), Struct_2(vec2<i32>(-6445i, -12078i), vec2<i32>(1i, 1i), Struct_1(-296f), Struct_1(1066f)), Struct_2(vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), -1i), Struct_1(-302f), Struct_1(-168f)), Struct_2(vec2<i32>(-51487i, 1i), vec2<i32>(-29096i, -35927i), Struct_1(1419f), Struct_1(-224f)), Struct_2(vec2<i32>(-56992i, 23544i), vec2<i32>(-25446i, -1i), Struct_1(468f), Struct_1(1942f)));

var<private> global1: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -944f), _wgslsmith_f_op_f32(-1484f + _wgslsmith_f_op_f32(min(896f, 481f)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -537f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-630f)) - _wgslsmith_f_op_f32(f32(-1f) * -994f))), !select(select(true, true, true), any(vec3<bool>(false, true, true)), false)))));
    var var_1 = vec2<u32>(max(~43408u, 1u), firstLeadingBit(~(~4294967295u)));
    global0 = array<Struct_2, 9>();
    var var_2 = !vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), true)), all(vec4<bool>(4294967295u >= var_1.x, select(true, false, true), true, false)), 1f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)), true & all(vec2<bool>(true, true)));
    let var_3 = vec3<bool>(!var_2.x, var_2.x, !var_2.x);
    return any(var_2.zw);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> bool {
    var var_0 = func_3(vec3<i32>(~_wgslsmith_mult_i32(-u_input.a.x, 0i), ~u_input.a.x, _wgslsmith_add_i32(1i, -2147483647i)));
    global0 = array<Struct_2, 9>();
    var var_1 = vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(max(u_input.a.x, u_input.a.x), _wgslsmith_add_i32(0i, 0i)), u_input.a.x), u_input.a.x), -(~abs(-u_input.a.x)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -462f), 682f, _wgslsmith_div_f32(-255f, 224f))))), -_wgslsmith_mult_vec4_i32(vec4<i32>(~u_input.a.x, ~var_1.x, _wgslsmith_sub_i32(0i, -2334i), select(var_1.x, u_input.a.x, true)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -41832i, 55009i, -2147483647i), vec4<i32>(-1i, -34881i, 4814i, -1i)), max(vec4<i32>(var_1.x, -9793i, var_1.x, u_input.a.x), vec4<i32>(u_input.a.x, var_1.x, u_input.a.x, u_input.a.x)))));
    var var_3 = _wgslsmith_div_f32(var_2.a.x, 778f);
    return !arg_0;
}

fn func_1() -> bool {
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    global1 = !(!select(true, u_input.a.x > u_input.a.x, true) || !func_2(true, select(vec3<u32>(75286u, 5129u, 4294967295u), vec3<u32>(4294967295u, 2084u, 1u), vec3<bool>(false, false, true))));
    global0 = array<Struct_2, 9>();
    global0 = array<Struct_2, 9>();
    return !(_wgslsmith_clamp_i32(u_input.a.x, countOneBits(-u_input.a.x), select(~12172i, 0i, all(vec3<bool>(false, false, false)))) < -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = any(vec2<bool>(true, true));
    let var_0 = 784f;
    global1 = func_1();
    global0 = array<Struct_2, 9>();
    var var_1 = -vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(48500i, u_input.a.x, u_input.a.x)), u_input.a) ^ (_wgslsmith_sub_i32(u_input.a.x, u_input.a.x) & (u_input.a.x & 9494i)), -43591i);
    var var_2 = _wgslsmith_add_u32(60847u, 0u);
    var var_3 = ~abs(firstLeadingBit(20086u));
    let var_4 = vec3<u32>(~min(~1u, _wgslsmith_clamp_u32(4294967295u, ~16065u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 2295u), vec2<u32>(21917u, 1u)))), 4294967295u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 37264u), vec2<u32>(1u, 1u)), abs(_wgslsmith_mod_u32(_wgslsmith_add_u32(0u, 0u), 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, u_input.a.x, 0i, -3947i), vec4<i32>(var_1.x, 0i, var_1.x, u_input.a.x) ^ vec4<i32>(13569i, -54893i, 2001i, -22099i), abs(vec4<i32>(-1i, var_1.x, u_input.a.x, u_input.a.x))), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-19251i, u_input.a.x, -36265i, u_input.a.x), vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)))), _wgslsmith_clamp_i32(u_input.a.x, -1i, _wgslsmith_clamp_i32(var_1.x, var_1.x, u_input.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 545f, -1639f) * vec3<f32>(1510f, var_0, var_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 1000f, 298f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, 1000f, -857f))))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0, -758f, var_0))))), vec3<i32>(~var_1.x, ~u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(~4245i, _wgslsmith_add_i32(2147483647i, var_1.x), 10867i, _wgslsmith_mult_i32(1i, var_1.x)), vec4<i32>(~u_input.a.x, u_input.a.x, abs(8963i), min(u_input.a.x, u_input.a.x)))), var_4.x & _wgslsmith_clamp_u32(firstLeadingBit(46069u), var_4.x, var_4.x));
}

