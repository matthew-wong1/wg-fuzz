struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1) -> vec2<i32> {
    global0 = array<vec4<bool>, 29>();
    var var_0 = arg_2;
    var var_1 = Struct_5(Struct_4(Struct_2(vec4<i32>(10926i, max(0i, 1712i), ~(-11065i), 19862i), _wgslsmith_f_op_f32(f32(-1f) * -123f), countOneBits(vec4<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x) & vec4<u32>(1u, 0u, arg_1.a.x, 0u))), _wgslsmith_mult_vec2_i32(select(vec2<i32>(u_input.a.x, arg_1.c), _wgslsmith_div_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(arg_1.b, -37395i)), all(vec2<bool>(true, false))), u_input.a)));
    var var_2 = Struct_5(var_1.a);
    global0 = array<vec4<bool>, 29>();
    return _wgslsmith_div_vec2_i32(select(vec2<i32>(4198i, ~(-1i)), var_2.a.b, vec2<bool>(all(vec4<bool>(arg_2.a, arg_0, arg_2.a, arg_2.c)), true)), vec2<i32>(max(0i, _wgslsmith_add_i32(u_input.a.x, var_1.a.b.x)), _wgslsmith_div_i32(~(-9251i), -25841i) ^ arg_1.c));
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_sub_vec4_i32(abs(min(vec4<i32>(-1i, 0i, 29203i, u_input.a.x), vec4<i32>(-11582i, -18699i, u_input.a.x, 45771i))), vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -23463i), u_input.a.x | 1i, ~u_input.a.x, abs(0i))), 461f, ~(~(~vec4<u32>(1u, 4294967295u, 4294967295u, 0u)))), _wgslsmith_mod_vec2_i32(abs(_wgslsmith_mod_vec2_i32(select(vec2<i32>(67856i, u_input.a.x), vec2<i32>(u_input.a.x, 1i), vec2<bool>(true, false)), min(u_input.a, u_input.a))), func_3(true, Struct_3(vec2<u32>(45636u, 94974u), _wgslsmith_mult_i32(u_input.a.x, 11795i), 1i, true), Struct_1(true, 377f, all(vec4<bool>(false, false, true, false))))));
    var_0 = Struct_4(Struct_2(var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-286f, -2124f)), var_0.a.c), var_0.b | vec2<i32>(var_0.b.x, _wgslsmith_sub_i32(var_0.b.x & 2147483647i, var_0.a.a.x)));
    let var_1 = Struct_3(~(vec2<u32>(47313u, var_0.a.c.x) >> (vec2<u32>(~0u, abs(33813u)) % vec2<u32>(32u))), 4898i, var_0.b.x, false);
    global0 = array<vec4<bool>, 29>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_0, -499f), vec2<f32>(-1240f, arg_0)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.b, -739f), vec2<f32>(arg_0, 397f))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0, var_0.a.b))) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.a.b, 531f)))), vec2<f32>(_wgslsmith_f_op_f32(sign(-490f)), _wgslsmith_f_op_f32(ceil(arg_0)))))));
    return var_1;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: i32) -> vec3<f32> {
    var var_0 = reverseBits(vec2<i32>(12756i, -15380i));
    let var_1 = arg_0.d;
    let var_2 = 0u;
    var var_3 = -2147483647i;
    var var_4 = vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(countOneBits(min(vec3<i32>(arg_2.a.a.x, -2147483647i, arg_2.a.a.x), arg_2.a.a.wyy)), arg_2.a.a.xzz)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(reverseBits(arg_2.a.a.x), min(25007i, 1i), 8718i), abs(arg_2.a.a.zxy)), vec3<i32>(reverseBits(_wgslsmith_clamp_i32(arg_2.a.a.x, arg_0.b, var_0.x)), 0i >> (var_2 % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-4183i, u_input.a.x, arg_2.a.a.x, arg_0.b), vec4<i32>(arg_2.a.a.x, u_input.a.x, -2147483647i, var_0.x)))), -(firstLeadingBit(_wgslsmith_div_i32(arg_3, u_input.a.x)) | (reverseBits(var_0.x) & (arg_0.b & -3015i))), ~arg_3);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.b, _wgslsmith_f_op_f32(768f - _wgslsmith_f_op_f32(f32(-1f) * -626f)), _wgslsmith_f_op_f32(exp2(arg_1.x))));
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(func_2(1f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(925f, 479f)) * 451f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(212f, -787f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(693f, 1338f))), Struct_4(Struct_2(countOneBits(vec4<i32>(-2147483647i, -33318i, u_input.a.x, u_input.a.x)), 1f, vec4<u32>(1u, 1u, 1u, 1u)), vec2<i32>(~u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, -43657i, u_input.a.x))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(u_input.a.x, -1i)) << (1u % 32u))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-728f, -113f, -696f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(452f, 294f, -469f))))));
    var var_1 = ~vec4<u32>(abs(~(~1u)), _wgslsmith_mod_u32(~(~2131u), 101201u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(52311u, 1u, 85931u, 0u)), reverseBits(vec4<u32>(1u, 48486u, 42563u, 15956u))), 1u);
    global0 = array<vec4<bool>, 29>();
    let var_2 = vec2<bool>(true, !(any(vec2<bool>(true, false)) || all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)))));
    var_1 = firstLeadingBit(firstTrailingBit(~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, var_1.x, 0u, var_1.x), vec4<u32>(1u, var_1.x, var_1.x, 20455u)), vec4<u32>(4294967295u, 12500u, 1u, 1u))));
    return func_3(select(true == (!var_2.x || true), false, true), Struct_3(~var_1.yx, u_input.a.x, firstLeadingBit(i32(-1i) * -u_input.a.x), all(select(!vec3<bool>(var_2.x, false, true), select(vec3<bool>(var_2.x, false, false), vec3<bool>(false, var_2.x, var_2.x), var_2.x), select(vec3<bool>(false, true, true), vec3<bool>(var_2.x, var_2.x, var_2.x), true)))), Struct_1(any(select(select(vec3<bool>(var_2.x, false, true), vec3<bool>(false, var_2.x, true), false), !vec3<bool>(false, var_2.x, false), var_2.x)), -247f, !var_2.x & false)).x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 29>();
    let var_0 = firstTrailingBit(u_input.a);
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(firstLeadingBit(~25396u))), firstLeadingBit(var_0.x), -1094f, -vec4<i32>(30035i, func_1(), u_input.a.x, _wgslsmith_dot_vec2_i32(var_0, vec2<i32>(u_input.a.x, 2147483647i))));
}

