struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: u32 = 2832u;

var<private> global2: bool;

var<private> global3: vec3<u32> = vec3<u32>(1u, 0u, 41749u);

var<private> global4: vec3<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3) -> vec3<i32> {
    var var_0 = ~abs(firstTrailingBit(~(~vec4<u32>(1u, 26073u, 0u, u_input.e))));
    let var_1 = arg_1.e;
    global2 = arg_1.d.a.x;
    var var_2 = 342f;
    let var_3 = vec2<i32>(~(~(~(~u_input.d))), arg_1.d.b.x);
    return -vec3<i32>(-(abs(var_1.b.x) << (~1u % 32u)), firstTrailingBit(select(-var_1.b.x, _wgslsmith_sub_i32(0i, arg_1.d.c.a.x), any(arg_1.e.a))), var_3.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<i32>) -> u32 {
    var var_0 = Struct_4(_wgslsmith_mod_u32(~((1u & global3.x) | 26093u), ~_wgslsmith_clamp_u32(~24591u, 59140u, _wgslsmith_mult_u32(u_input.e, 4294967295u))), vec4<i32>(reverseBits(1i), -(~(~arg_2.x)), arg_0.a.x, _wgslsmith_dot_vec3_i32(func_3(-vec3<i32>(global4.x, arg_2.x, 0i), Struct_3(7872u, Struct_2(vec4<bool>(true, true, false, true), vec4<i32>(14862i, -2431i, global4.x, -1i), arg_0, Struct_1(arg_2)), arg_1.x, Struct_2(vec4<bool>(false, true, true, true), arg_2, arg_0, arg_0), Struct_2(vec4<bool>(true, true, true, false), vec4<i32>(arg_0.a.x, u_input.a, u_input.a, arg_0.a.x), arg_0, arg_0))), _wgslsmith_add_vec3_i32(~vec3<i32>(arg_2.x, arg_0.a.x, u_input.d), countOneBits(arg_2.yyz)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(step(arg_1, arg_1));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-827f - 455f)) - _wgslsmith_f_op_f32(-1190f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.x, arg_1.x)), 376f)));
    global3 = firstTrailingBit(~(~countOneBits(vec3<u32>(u_input.b.x, global3.x, var_0.a)))) | vec3<u32>(~firstLeadingBit(var_0.a), global3.x, 62800u);
    let var_3 = vec3<i32>(_wgslsmith_mod_i32(arg_0.a.x, -16267i), -23549i, _wgslsmith_mult_i32(var_0.b.x, _wgslsmith_add_i32(arg_2.x, arg_2.x)) ^ -73016i) ^ arg_2.wzz;
    return u_input.b.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    let var_0 = vec4<u32>(~arg_0.x, select(~(~4294967295u), ~1u, true), ~49336u, abs(_wgslsmith_sub_u32(16023u, 827u) | (u_input.b.x >> (u_input.e % 32u)))) ^ vec4<u32>(func_2(arg_2, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-345f, -1604f, arg_1)), firstLeadingBit(vec4<i32>(-1i, 31290i, arg_2.a.x, arg_2.a.x))), global3.x & u_input.e, arg_0.x, abs(func_2(arg_2, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, -1603f, arg_1)), arg_2.a)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.x + arg_1)))))), arg_3.x);
    global0 = (all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))) | any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), arg_3.x <= var_1.x))) || any(vec2<bool>(!(u_input.d != arg_2.a.x), false));
    var var_2 = min(_wgslsmith_mod_u32(36271u, _wgslsmith_add_u32(67961u, ~_wgslsmith_dot_vec3_u32(var_0.zzy, var_0.yxx))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~4294967295u, u_input.b.x, func_2(Struct_1(arg_2.a), vec3<f32>(-836f, -1047f, arg_1), arg_2.a), var_0.x), vec4<u32>(_wgslsmith_clamp_u32(1343u, global3.x, u_input.b.x), 1u, _wgslsmith_sub_u32(global3.x, arg_0.x), ~arg_0.x)), vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.xw, abs(arg_0)), ~61441u, _wgslsmith_mult_u32(u_input.b.x, 10655u) | _wgslsmith_div_u32(61486u, 28488u), 17401u)));
    let var_3 = Struct_2(vec4<bool>(select(true, true & (global4.x <= global4.x), true), select(select(false, false, false), true, true) & false, true, any(vec3<bool>(select(true, true, true), var_1.x <= arg_3.x, true))), firstLeadingBit(vec4<i32>(u_input.c, global4.x, u_input.c >> (global3.x % 32u), _wgslsmith_clamp_i32(select(global4.x, arg_2.a.x, false), ~u_input.d, -9743i))), Struct_1((~vec4<i32>(0i, -2147483647i, global4.x, u_input.a) >> (_wgslsmith_mult_vec4_u32(var_0, var_0) % vec4<u32>(32u))) ^ -(arg_2.a & vec4<i32>(60774i, u_input.c, arg_2.a.x, -2147483647i))), Struct_1(_wgslsmith_mod_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(-26280i, global4.x, u_input.a, -75638i), arg_2.a), -arg_2.a, select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false))), vec4<i32>(u_input.c, _wgslsmith_clamp_i32(global4.x, -2147483647i, -15119i), u_input.a, 15964i))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(418f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-933f, 525f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(-var_1.x)))), -13503i < -(-2147483647i | u_input.a))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(-arg_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.b.x, 4294967295u), -418f, Struct_1(vec4<i32>(u_input.a, 50389i, -25869i, -3699i)), vec2<f32>(419f, 523f)))))));
    var var_1 = any(vec2<bool>(true, true));
    var var_2 = Struct_2(select(vec4<bool>(false, true, any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true))), !select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true)), !any(vec4<bool>(true, true, true, false))), vec4<i32>(u_input.c & ~57716i, ~u_input.c, global4.x, 45140i), Struct_1(-(~(-vec4<i32>(-2147483647i, 1i, global4.x, 0i)))), Struct_1(-select(vec4<i32>(u_input.c, 40406i, 2147483647i, u_input.a), abs(vec4<i32>(global4.x, global4.x, u_input.c, -1i)), true)));
    var var_3 = Struct_1(var_2.d.a);
    var var_4 = Struct_3(33601u, Struct_2(vec4<bool>(var_2.a.x, var_2.a.x, true, !all(vec2<bool>(false, true))), -(~var_2.d.a), var_2.c, Struct_1(countOneBits(vec4<i32>(-52521i, var_3.a.x, var_2.d.a.x, u_input.d) >> (vec4<u32>(0u, 0u, 12288u, 37696u) % vec4<u32>(32u))))), -217f, Struct_2(select(var_2.a, var_2.a, true), var_2.d.a, var_2.c, Struct_1(var_3.a)), Struct_2(vec4<bool>(!(var_2.d.a.x > var_2.b.x), !any(vec3<bool>(var_2.a.x, true, false)), any(select(vec2<bool>(var_2.a.x, var_2.a.x), vec2<bool>(var_2.a.x, false), var_2.a.wx)), !any(vec4<bool>(var_2.a.x, true, false, false))), countOneBits(vec4<i32>(_wgslsmith_add_i32(9333i, global4.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, -41602i, -12441i), vec3<i32>(var_2.d.a.x, var_3.a.x, var_3.a.x)), ~1i, 43465i)), Struct_1(vec4<i32>(-43959i, 1i, -1i, _wgslsmith_div_i32(-1i, -26152i))), var_2.d));
    let var_5 = _wgslsmith_mult_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_4.e.d.a.x, var_3.a.x, 2147483647i)), var_2.b.xww), firstLeadingBit(func_3(var_2.b.xxx, Struct_3(38906u, var_4.d, -1768f, Struct_2(vec4<bool>(var_4.e.a.x, false, var_4.b.a.x, false), var_4.e.b, var_4.b.c, Struct_1(var_3.a)), Struct_2(vec4<bool>(var_2.a.x, true, true, var_2.a.x), var_2.d.a, Struct_1(var_3.a), var_4.d.d))).x), -18967i, var_4.e.c.a.x), _wgslsmith_div_vec4_i32((_wgslsmith_add_vec4_i32(vec4<i32>(1i, var_3.a.x, 801i, 1i), var_4.e.b) << (~vec4<u32>(1u, var_4.a, u_input.b.x, 52056u) % vec4<u32>(32u))) << (vec4<u32>(global3.x, ~var_4.a, ~u_input.b.x, func_2(var_2.d, vec3<f32>(-621f, 1355f, var_4.c), vec4<i32>(var_2.b.x, u_input.c, -50922i, var_2.d.a.x))) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(25474i, u_input.a, 0i, -65737i), vec4<i32>(var_4.e.b.x, global4.x, var_2.b.x, -1i)), -vec4<i32>(var_3.a.x, 1i, 53i, u_input.a)), ~global4.x | (u_input.d ^ global4.x), -(~u_input.d), var_3.a.x)));
    let var_6 = !(!select(!select(vec2<bool>(var_2.a.x, true), vec2<bool>(var_4.e.a.x, false), vec2<bool>(var_4.e.a.x, var_4.b.a.x)), select(select(vec2<bool>(false, false), vec2<bool>(var_2.a.x, true), var_4.b.a.wy), select(var_2.a.zx, vec2<bool>(true, var_4.e.a.x), var_4.d.a.x), vec2<bool>(true, var_4.b.a.x)), !vec2<bool>(false, var_4.e.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-var_4.c), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(992f * -593f)))), var_4.c));
}

