struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(49770i, vec2<u32>(38599u, 82634u), -41533i, -292f, vec3<u32>(17544u, 1u, 0u)), Struct_2(81037i, vec2<u32>(0u, 17438u), -20625i, -1934f, vec3<u32>(0u, 1u, 15959u)), Struct_2(i32(-2147483648), vec2<u32>(4294967295u, 19259u), -47755i, -1315f, vec3<u32>(1u, 20271u, 0u)), Struct_2(14035i, vec2<u32>(1u, 36758u), 0i, 1333f, vec3<u32>(4294967295u, 4642u, 81021u)), Struct_2(724i, vec2<u32>(4294967295u, 1u), 28713i, 647f, vec3<u32>(1u, 1983u, 0u)));

var<private> global1: array<Struct_2, 3>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    var var_0 = Struct_2(-(countOneBits(u_input.c) >> (_wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.d.x, 4231u), u_input.d.x) % 32u)), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.d.x), u_input.b.zx)) | vec2<u32>(~u_input.b.x, ~1u), abs(7299i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 1136f)), ~(~u_input.b.zyx & ~vec3<u32>(33282u, u_input.a, u_input.b.x)));
    global0 = array<Struct_2, 5>();
    var var_1 = select(vec4<bool>((_wgslsmith_f_op_f32(sign(423f)) <= _wgslsmith_f_op_f32(select(var_0.d, var_0.d, true))) & !any(vec2<bool>(true, true)), !all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true))), ~var_0.e.x <= _wgslsmith_dot_vec2_u32(select(var_0.b, vec2<u32>(u_input.a, 4294967295u), vec2<bool>(false, false)), abs(vec2<u32>(20076u, 1u))), false), vec4<bool>(true, true, true, any(vec4<bool>(true, true, true, true))), false);
    var var_2 = (var_0.e.x << (var_0.b.x % 32u)) > _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(11531u, ~38488u, 0u), abs(0u)), ~var_0.b.x);
    var var_3 = Struct_1(-2725f);
    return _wgslsmith_clamp_u32(~(~(75109u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(19817u, 66961u, 30601u, 76567u), u_input.b))), ~0u, min(var_0.e.x, _wgslsmith_mult_u32(~1u, _wgslsmith_add_u32(0u, u_input.a))));
}

fn func_2(arg_0: u32, arg_1: bool) -> f32 {
    let var_0 = Struct_2(u_input.c, vec2<u32>(_wgslsmith_sub_u32(~4294967295u << (func_3() % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 40842u), vec2<u32>(34419u, 4294967295u))), arg_0), _wgslsmith_clamp_i32(-min(i32(-1i) * -6070i, u_input.c), abs(~u_input.c) ^ 0i, ~(-1i)), 2138f, select(u_input.b.zwx, firstTrailingBit(u_input.b.yyy), !(!select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, false), arg_1))));
    var var_1 = 1222f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-830f))), _wgslsmith_f_op_f32(var_0.d * var_0.d)))) * -1014f);
    var var_3 = var_0.c;
    var var_4 = ~(~(~(~92009u)));
    return -656f;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> vec4<bool> {
    var var_0 = Struct_1(-223f);
    let var_1 = -1659f;
    global0 = array<Struct_2, 5>();
    return !(!(!vec4<bool>(true, false, true, all(vec2<bool>(false, false)))));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    return select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true)))), func_4(~30598u, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(4294967295u, false)) - _wgslsmith_f_op_f32(func_2(31733u, true)))), 0i, firstTrailingBit(u_input.a)), false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 3>();
    let var_0 = vec2<bool>(0i >= _wgslsmith_sub_i32(u_input.c, u_input.c), any(select(func_1(338f), func_4(4294967295u, Struct_1(-1000f), u_input.c, 4294967295u), vec4<bool>(true, true, true, true))) | true);
    global1 = array<Struct_2, 3>();
    var var_1 = _wgslsmith_clamp_u32(countOneBits(u_input.d.x & _wgslsmith_dot_vec2_u32(select(vec2<u32>(26107u, u_input.a), u_input.b.xy, false), vec2<u32>(0u, u_input.d.x))), ~u_input.b.x, abs(u_input.d.x));
    var var_2 = vec2<i32>(max(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.c, 2147483647i, 0i), -vec4<i32>(2147483647i, -2147483647i, 0i, 0i)), abs(40672i)), u_input.c), -11241i);
    global1 = array<Struct_2, 3>();
    global0 = array<Struct_2, 5>();
    var var_3 = 31398u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(359f + -1986f), _wgslsmith_f_op_f32(ceil(-312f)))))), -231f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1247f)) + 335f))), _wgslsmith_sub_vec3_u32(u_input.b.ywx, u_input.b.ywz ^ (u_input.b.xwy ^ u_input.b.wzy)), u_input.a, -abs(~var_2.x), _wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(8318i, -1i, var_2.x, 0i), vec4<i32>(-2147483647i, 1i, 0i, 1i)), -_wgslsmith_div_vec4_i32(vec4<i32>(-3299i, var_2.x, var_2.x, 24737i), vec4<i32>(u_input.c, 2147483647i, 7431i, 2147483647i))) | -_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(44372i, var_2.x, u_input.c, 0i), vec4<i32>(4666i, -4657i, u_input.c, -35023i), vec4<i32>(u_input.c, -2147483647i, 6280i, var_2.x)), vec4<i32>(9866i, var_2.x, var_2.x, -4394i) << (u_input.b % vec4<u32>(32u))));
}

