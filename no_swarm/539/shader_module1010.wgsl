struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(11558u, 1u, 1u, 1u), vec4<u32>(76592u, 4294967295u, 75149u, 26033u), vec4<u32>(74946u, 1u, 4294967295u, 31157u), vec4<u32>(41336u, 13515u, 28077u, 0u), vec4<u32>(35667u, 53842u, 68434u, 26550u), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 10199u, 0u, 0u), vec4<u32>(4294967295u, 75380u, 0u, 0u), vec4<u32>(4294967295u, 1u, 4294967295u, 0u), vec4<u32>(114617u, 27967u, 56441u, 30009u), vec4<u32>(4294967295u, 43105u, 0u, 1u), vec4<u32>(1u, 5845u, 75299u, 0u), vec4<u32>(0u, 46038u, 0u, 0u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: bool) -> bool {
    global0 = array<vec4<u32>, 13>();
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1195f, 2087f, _wgslsmith_f_op_f32(-arg_0.c))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c, arg_0.c, arg_2.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, var_0.c, 1391f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c, var_0.c, 1330f), vec3<f32>(arg_2.c, -914f, 1456f), arg_3))), arg_1.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, arg_2.c, 638f), _wgslsmith_div_vec3_f32(vec3<f32>(658f, 1000f, -1466f), vec3<f32>(var_0.c, -498f, arg_0.c))))))), !select(select(vec3<bool>(false, false, arg_1.x), !vec3<bool>(arg_1.x, arg_3, arg_1.x), select(vec3<bool>(true, arg_3, arg_3), vec3<bool>(arg_1.x, false, false), vec3<bool>(true, arg_3, true))), select(vec3<bool>(false, arg_1.x, arg_3), select(vec3<bool>(true, arg_3, false), vec3<bool>(arg_1.x, arg_3, arg_1.x), vec3<bool>(arg_3, arg_1.x, arg_1.x)), !vec3<bool>(false, arg_3, arg_1.x)), !(!vec3<bool>(true, arg_1.x, true)))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-2207f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(419f, var_0.c, false)), -1059f)), _wgslsmith_f_op_f32(-243f * 887f), true)), _wgslsmith_f_op_f32(arg_2.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - -1377f) * _wgslsmith_f_op_f32(1000f - -828f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = array<vec4<u32>, 13>();
    return arg_1.x;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(func_3(Struct_1(abs(vec2<u32>(arg_0.a.x, u_input.c.x)), ~firstTrailingBit(arg_0.a.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_0.c)), _wgslsmith_f_op_f32(arg_0.c * arg_0.c)))), !vec2<bool>(true, all(vec2<bool>(true, true))), Struct_1(select(~vec2<u32>(4294967295u, 4294967295u), u_input.b.yz, select(false, false, false)), 0u, _wgslsmith_f_op_f32(-2122f * arg_0.c)), arg_0.a.x == abs(_wgslsmith_mult_u32(64695u, u_input.b.x))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), false);
    let var_1 = Struct_1(~(~arg_0.a), arg_0.b, -960f);
    var_0 = vec3<bool>(true, _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, -36145i & u_input.a.x)) <= _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -7048i, 1i) & vec3<i32>(u_input.a.x, u_input.a.x, 0i), ~vec3<i32>(-26360i, u_input.a.x, 28560i)), abs(vec3<i32>(u_input.a.x, 0i, u_input.a.x))), true);
    var var_2 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(~(~13347u), ~firstTrailingBit(1u)), ~firstTrailingBit(_wgslsmith_mult_vec2_u32(u_input.c.zy, u_input.c.wz))), ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(13100u, _wgslsmith_div_u32(1u, arg_0.a.x)), u_input.d, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b, arg_0.b, arg_0.a.x), vec3<u32>(40440u, 14612u, 0u)), vec3<u32>(u_input.d, u_input.c.x, 12637u) & u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.c - -1714f))))));
    var var_3 = Struct_1(~vec2<u32>(u_input.b.x, 79404u), 0u | abs(~u_input.d), var_2.c);
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = !(!(!arg_0));
    var var_1 = ~_wgslsmith_mod_vec2_i32(~arg_1.yx, -u_input.a);
    var var_2 = -35142i;
    global0 = array<vec4<u32>, 13>();
    var_2 = countOneBits(~u_input.a.x);
    return func_2(arg_3);
}

fn func_4(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-2571f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)));
    global0 = array<vec4<u32>, 13>();
    global0 = array<vec4<u32>, 13>();
    let var_1 = Struct_1(firstTrailingBit(arg_0.a), 0u, 1537f);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.c - var_0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c)))))));
    return !vec2<bool>(true, !all(vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec2<bool>(false, false & (u_input.c.x == u_input.c.x)), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), func_4(func_1(u_input.a.x != u_input.a.x, ~vec4<i32>(0i, -8222i, 2147483647i, -1i), _wgslsmith_f_op_f32(f32(-1f) * -435f), Struct_1(vec2<u32>(4294967295u, u_input.d), u_input.d, -740f)))), !(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true))), !select(vec2<bool>(true, true), func_4(Struct_1(u_input.b.xx, 9605u, -1732f)), true));
    global0 = array<vec4<u32>, 13>();
    let var_1 = Struct_1(u_input.c.wy, 1u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-253f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(156f * 537f), 1596f, var_0.x)))));
    global0 = array<vec4<u32>, 13>();
    let var_2 = func_1(!(func_2(Struct_1(var_1.a, u_input.b.x, 1538f)).c >= _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(sign(var_1.c))))), vec4<i32>(u_input.a.x | u_input.a.x, (reverseBits(-1i) ^ _wgslsmith_add_i32(u_input.a.x, 0i)) >> (~59238u % 32u), u_input.a.x & _wgslsmith_dot_vec4_i32(vec4<i32>(28070i, 2147483647i, 5908i, u_input.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(-28390i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(1i, -41052i, 2147483647i, -1i))), -63161i), _wgslsmith_f_op_f32(-var_1.c), func_2(Struct_1(vec2<u32>(1u, ~33297u), 30834u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.c * var_1.c), 442f)))));
    var_0 = !(!(!vec2<bool>(var_0.x, var_0.x)));
    let var_3 = vec4<bool>(true, var_0.x, true, var_0.x);
    global0 = array<vec4<u32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(952f)), 1u | (~abs(17809u) & ~_wgslsmith_dot_vec3_u32(u_input.c.xxy, vec3<u32>(var_1.b, 1u, 53718u))), vec4<f32>(_wgslsmith_f_op_f32(abs(var_1.c)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.c), -583f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-877f + 365f)), _wgslsmith_f_op_f32(round(1146f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(-var_1.c)) + 1000f), u_input.a.x);
}

