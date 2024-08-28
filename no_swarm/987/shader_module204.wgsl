struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3 = Struct_3(vec2<i32>(-38755i, 13789i));

var<private> global2: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-494f, -743f), vec2<f32>(-1000f, 1189f), vec2<f32>(1000f, -1000f), vec2<f32>(2097f, 991f), vec2<f32>(573f, 412f), vec2<f32>(1406f, 1166f), vec2<f32>(-374f, -690f), vec2<f32>(-1454f, -576f), vec2<f32>(553f, 614f), vec2<f32>(-633f, -931f), vec2<f32>(687f, -1095f), vec2<f32>(1548f, 728f));

var<private> global3: bool = false;

var<private> global4: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1865f)), 1133f, -1117f))), vec3<f32>(_wgslsmith_f_op_f32(265f * 646f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -727f), (u_input.c.x << (u_input.c.x % 32u)) <= ~(~(4294967295u >> (1u % 32u)))));
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x & _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), firstLeadingBit(~u_input.c.x)), ~(~vec2<u32>(40570u, u_input.c.x))) & u_input.c;
    var var_2 = Struct_3(-abs(_wgslsmith_div_vec2_i32(global1.a, countOneBits(global1.a))));
    var var_3 = !select(vec4<bool>(true, true, false, !any(vec4<bool>(false, true, true, true))), vec4<bool>(true, all(vec2<bool>(false, true)) | true, true, true), vec4<bool>(all(vec2<bool>(true, false)), true, (-180f != var_0.x) & (var_0.x >= -1000f), true));
    var var_4 = vec2<i32>(28849i, var_2.a.x >> (~(var_1.x & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 48287u, u_input.c.x), vec4<u32>(var_1.x, var_1.x, 1u, var_1.x))) % 32u));
    return all(!var_3.zx);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: vec3<f32>) -> f32 {
    var var_0 = global2[_wgslsmith_index_u32(u_input.c.x, 12u)];
    global2 = array<vec2<f32>, 12>();
    var var_1 = Struct_3(~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(global1.a, global1.a), global1.a) >> (u_input.c % vec2<u32>(32u)));
    let var_2 = select(arg_1, arg_1, !arg_1);
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1405f, arg_2.x, arg_3.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(335f, -698f, arg_2.x, 1000f) * vec4<f32>(-170f, -1334f, -425f, arg_3.x)))), vec4<f32>(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(276f * arg_3.x)), -970f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - arg_2.x), _wgslsmith_f_op_f32(-arg_2.x)), !vec4<bool>(func_3(), true, !arg_1.x, func_3()))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -894f, arg_2.x, var_0.x) - _wgslsmith_div_vec4_f32(vec4<f32>(-1192f, -952f, 684f, var_0.x), vec4<f32>(474f, var_0.x, -1000f, -1212f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-402f, 971f, -1444f, arg_2.x), vec4<f32>(arg_3.x, -2048f, -1595f, arg_3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -216f, -715f, 678f))))), vec4<f32>(_wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-407f))), 995f, 206f), select(!select(vec4<bool>(true, var_2.x, var_2.x, arg_1.x), vec4<bool>(false, var_2.x, arg_1.x, arg_1.x), var_2.x), !(!vec4<bool>(var_2.x, arg_1.x, false, true)), select(!vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<bool>(false, true, true, arg_1.x), false)))), vec4<bool>(true, true, true, true)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - arg_2.x) - _wgslsmith_f_op_f32(arg_2.x * var_0.x))) + _wgslsmith_f_op_f32(step(var_0.x, var_3.x)))));
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec3<bool>) -> bool {
    global3 = false;
    var var_0 = ~countOneBits(~countOneBits(abs(vec3<u32>(1u, 49372u, u_input.c.x))));
    let var_1 = Struct_5(1u, 1u, vec4<i32>(1i, 0i, max(select(57632i, abs(2147483647i), arg_2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_1, 0i), vec3<i32>(-2147483647i, 2147483647i, global1.a.x))), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1030f, arg_0)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f))) >= _wgslsmith_div_f32(var_1.d, _wgslsmith_f_op_f32(func_2(~(vec4<u32>(4294967295u, 7635u, u_input.c.x, var_0.x) << (vec4<u32>(var_0.x, var_1.b, u_input.c.x, var_1.b) % vec4<u32>(32u))), !select(vec2<bool>(false, false), vec2<bool>(true, arg_2.x), false), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-790f, var_1.d, -1089f) + vec3<f32>(646f, var_1.d, 1000f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.d, var_1.d, 1000f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(820f, 1000f, 2005f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, 2076f, 207f))))));
    let var_3 = Struct_3(vec2<i32>(-1i, 36753i));
    return true;
}

fn func_1(arg_0: vec4<f32>) -> vec3<i32> {
    global4 = select(53917u, _wgslsmith_add_u32(~0u, 5421u >> (~u_input.c.x % 32u)) | _wgslsmith_div_u32(72466u, countOneBits(~9772u)), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.c.x, 27495u, u_input.c.x, 0u) | vec4<u32>(u_input.c.x, 4294967295u, 112099u, 83293u), vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(-arg_0.yzy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(377f, arg_0.x, arg_0.x)))) - arg_0.x), u_input.a, vec3<bool>(true, true, false)));
    var var_0 = Struct_1(!((_wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, global1.a.x), vec2<i32>(u_input.a, u_input.a)) < global1.a.x) || true), vec3<bool>(true, true, true), ~(-_wgslsmith_clamp_i32(u_input.a ^ 2147483647i, _wgslsmith_mod_i32(2147483647i, -30361i), -2147483647i)));
    global1 = Struct_3(global1.a);
    var var_1 = _wgslsmith_add_vec2_u32(min(~vec2<u32>(~67015u, abs(u_input.c.x)), ~(~abs(vec2<u32>(28439u, u_input.c.x)))), u_input.c);
    let var_2 = 4294967295u;
    return _wgslsmith_clamp_vec3_i32(-select(vec3<i32>(_wgslsmith_mult_i32(global1.a.x, 1i), u_input.a & global1.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), global1.a)), -vec3<i32>(-1i, 21130i, -83179i), !vec3<bool>(false, var_0.b.x, false)), vec3<i32>(-1i) * -min(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -1i, u_input.b), vec3<i32>(global1.a.x, var_0.c, -51863i)), vec3<i32>(global1.a.x, var_0.c, u_input.a)), ~_wgslsmith_mult_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 47293i, -2147483647i), vec3<i32>(global1.a.x, global1.a.x, 2147483647i), vec3<i32>(-1i, u_input.b, var_0.c)), vec3<i32>(var_0.c, global1.a.x, u_input.b) ^ ~vec3<i32>(-2147483647i, var_0.c, u_input.b)));
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(global1.a.x, 49397i, u_input.b)), arg_2), _wgslsmith_dot_vec2_i32(vec2<i32>(~2147483647i, ~1103i), global1.a)), firstLeadingBit(max(vec2<i32>(-1i, arg_0) | _wgslsmith_sub_vec2_i32(arg_2.yx, arg_2.yz), arg_2.yx)));
    global4 = arg_1.x;
    global4 = _wgslsmith_add_u32(arg_3, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3, 31028u, 4294967295u), vec3<u32>(arg_3, arg_1.x, 48820u)), ~arg_1.x, ~1u) >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 75052u, arg_3, arg_1.x), vec4<u32>(u_input.c.x, arg_1.x, u_input.c.x, 57822u)) << (max(36171u, arg_1.x) % 32u)) % 32u)) & _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~u_input.c.x, 4294967295u, 4294967295u), ~arg_3);
    let var_1 = Struct_5(u_input.c.x, 0u, _wgslsmith_mod_vec4_i32(min(abs(~vec4<i32>(2147483647i, -54770i, var_0.x, -2147483647i)), vec4<i32>(39515i, abs(-2147483647i), 26835i, -2147483647i)), -(abs(vec4<i32>(u_input.a, -2147483647i, arg_0, 36655i)) | vec4<i32>(-5923i, -47594i, 48988i, u_input.b))), 1f);
    let var_2 = ~_wgslsmith_add_vec2_u32(select(vec2<u32>(arg_3, abs(4294967295u)), ~(~u_input.c), true), _wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_3, arg_3), ~abs(u_input.c), ~min(arg_1, u_input.c)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1349f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1756f, 652f)) * _wgslsmith_f_op_f32(-2711f + -1474f))) * -852f) + 643f);
    global3 = false;
    global3 = select(!func_5(~_wgslsmith_sub_i32(0i, u_input.a), vec2<u32>(u_input.c.x, ~u_input.c.x), _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(u_input.b, 2147483647i, global1.a.x)), func_1(vec4<f32>(488f, 1031f, 828f, 987f)), vec3<i32>(global1.a.x, u_input.a, global1.a.x)), abs(u_input.c.x)), true, any(vec3<bool>(true, true, true)));
    global1 = Struct_3(vec2<i32>(_wgslsmith_dot_vec2_i32(global1.a, _wgslsmith_add_vec2_i32(~vec2<i32>(0i, -2147483647i), -vec2<i32>(-3342i, u_input.b))), -6809i ^ reverseBits(~global1.a.x)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1105f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(~(~vec4<u32>(u_input.c.x, 1u, 0u, 1u)), select(vec2<bool>(false, true), vec2<bool>(false, false), all(vec4<bool>(true, true, false, false))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(812f, -1053f, -1375f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1898f, 370f, 834f), vec3<f32>(-1000f, 155f, -1275f)))))), -1360f));
    global4 = max(~4294967295u, max(_wgslsmith_mult_u32(firstLeadingBit(u_input.c.x) & ~80805u, _wgslsmith_add_u32(min(u_input.c.x, 1u), _wgslsmith_div_u32(1u, 9661u))), u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(reverseBits(firstTrailingBit(29085u)), _wgslsmith_mod_u32(12805u, ~u_input.c.x), _wgslsmith_mult_u32(~u_input.c.x, ~u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-931f + -1056f)) + _wgslsmith_f_op_f32(ceil(-803f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -822f)))), firstTrailingBit(~vec2<i32>(-1i, -global1.a.x)));
}

