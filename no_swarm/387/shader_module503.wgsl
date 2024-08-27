struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(21391u, -240f, vec4<bool>(true, true, true, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> bool {
    var var_0 = Struct_1(u_input.b, -1195f, select(vec4<bool>(!all(vec3<bool>(false, arg_2.c.x, false)), global0.c.x, !select(global0.c.x, true, true), global0.c.x), !(!arg_1.c), arg_2.c));
    var var_1 = Struct_1(abs(41856u) >> (~u_input.c % 32u), _wgslsmith_f_op_f32(arg_1.b - global0.b), vec4<bool>(false, !(!global0.c.x), arg_2.c.x, false));
    var var_2 = arg_2;
    var var_3 = -146f;
    let var_4 = _wgslsmith_add_vec4_i32(vec4<i32>(~(-(~arg_0.x)), -u_input.e.x, select(~1i, _wgslsmith_sub_i32(~u_input.e.x, _wgslsmith_add_i32(28636i, arg_0.x)), (var_0.c.x | var_0.c.x) && all(var_2.c.ww)), -1i), arg_0 | ~abs(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.e.x, 37558i, 0i), arg_0)));
    return !select(var_4.x >= var_4.x, true, var_1.c.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: u32, arg_3: vec3<i32>) -> f32 {
    let var_0 = _wgslsmith_dot_vec4_i32(arg_0, arg_0);
    var var_1 = ~4294967295u;
    var var_2 = Struct_1(~u_input.c, _wgslsmith_f_op_f32(-global0.b), select(vec4<bool>((arg_1.x && false) || true, true, false, func_3(vec4<i32>(1i, u_input.e.x, -1i, arg_3.x), Struct_1(68460u, global0.b, vec4<bool>(false, true, global0.c.x, arg_1.x)), Struct_1(arg_2, 1225f, vec4<bool>(true, global0.c.x, arg_1.x, false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(342f, 236f, global0.b, global0.b) * vec4<f32>(-181f, -718f, global0.b, global0.b)))), global0.c, _wgslsmith_div_f32(_wgslsmith_div_f32(global0.b, 413f), 1238f) <= 667f));
    return 960f;
}

fn func_1(arg_0: i32, arg_1: f32) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_mod_vec4_i32(-vec4<i32>(arg_0, u_input.e.x, 2147483647i, 2147483647i), firstTrailingBit(vec4<i32>(u_input.d, -1i, u_input.e.x, 0i))), vec3<bool>(!global0.c.x, false, true), ~(global0.a & 34499u), vec3<i32>(1i, i32(-1i) * -15320i, arg_0)))), _wgslsmith_f_op_f32(-2069f - -521f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -298f)), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(abs(arg_1)))))));
    global0 = Struct_1(0u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b)) - 2138f) + 1222f), _wgslsmith_f_op_f32(func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, arg_0, -5933i, arg_0), vec4<i32>(u_input.d, arg_0, -1i, 1i) | vec4<i32>(arg_0, -2147483647i, arg_0, arg_0)), global0.c.xxw, 4294967295u, ~(u_input.e ^ vec3<i32>(33691i, -19446i, u_input.e.x)))))), global0.c);
    var var_1 = 1575f;
    let var_2 = _wgslsmith_div_vec3_u32(max(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, u_input.b, global0.a, global0.a), vec4<u32>(u_input.c, 19065u, 1u, 35728u)), global0.a), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(37544u, 33201u, 4294967295u), vec3<u32>(global0.a, 33830u, global0.a))), _wgslsmith_mod_u32(61473u, u_input.a) | 76651u), vec3<u32>(~_wgslsmith_mult_u32(4294967295u, global0.a), ~4294967295u, 56171u)), abs(vec3<u32>(18851u, reverseBits(global0.a), 45025u << (_wgslsmith_add_u32(global0.a, global0.a) % 32u))));
    var_1 = _wgslsmith_f_op_f32(-global0.b);
    return _wgslsmith_div_u32(max(~u_input.c, global0.a), 49977u);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    var var_0 = arg_1;
    global0 = Struct_1(_wgslsmith_div_u32(arg_1.a, arg_1.a), _wgslsmith_f_op_f32(ceil(var_0.b)), !select(arg_1.c, vec4<bool>(func_3(vec4<i32>(22002i, -11890i, arg_0.x, arg_0.x), Struct_1(4294967295u, -2345f, vec4<bool>(true, false, global0.c.x, true)), Struct_1(u_input.a, -944f, vec4<bool>(arg_1.c.x, true, var_0.c.x, arg_1.c.x)), vec4<f32>(global0.b, arg_2, 298f, 1195f)), arg_1.a == 0u, true, arg_1.c.x), global0.c.x));
    var var_1 = max(vec3<i32>(_wgslsmith_clamp_i32(abs(0i), -2147483647i, _wgslsmith_mult_i32(u_input.e.x, select(arg_0.x, arg_0.x, false))), -_wgslsmith_clamp_i32(-2147483647i, u_input.d, -2147483647i), -14797i), min(arg_0 << (~firstTrailingBit(vec3<u32>(33639u, var_0.a, 1u)) % vec3<u32>(32u)), arg_0));
    return select(global0.c, !var_0.c, !(!var_0.c));
}

fn func_5(arg_0: Struct_1) -> f32 {
    global0 = Struct_1(select(global0.a, u_input.b, func_4(vec3<i32>(1i, u_input.d, u_input.e.x | u_input.e.x), Struct_1(u_input.b, _wgslsmith_div_f32(642f, global0.b), vec4<bool>(arg_0.c.x, global0.c.x, true, arg_0.c.x)), global0.b).x), -899f, arg_0.c);
    let var_0 = global0.b;
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, 26874i, 0i, 0i), vec4<i32>(_wgslsmith_dot_vec3_i32(-abs(u_input.e), u_input.e >> (vec3<u32>(3860u, 17856u, 1u) % vec3<u32>(32u))), -1i, firstLeadingBit(_wgslsmith_mod_i32(u_input.d, u_input.e.x) << (select(global0.a, 59178u, global0.c.x) % 32u)), ~25641i));
    var var_2 = Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, global0.a), vec2<u32>(18595u, 19219u)), arg_0.a ^ 4294967295u, select(u_input.c, global0.a, arg_0.c.x)), vec3<u32>(select(global0.a, arg_0.a, true) | _wgslsmith_sub_u32(arg_0.a, 0u), 4294967295u, global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(256f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.b)), 298f)), select(!vec4<bool>(global0.c.x, true, global0.c.x | false, arg_0.c.x), select(global0.c, select(func_4(vec3<i32>(u_input.d, u_input.d, 2147483647i), Struct_1(global0.a, -823f, vec4<bool>(global0.c.x, arg_0.c.x, global0.c.x, arg_0.c.x)), arg_0.b), vec4<bool>(global0.c.x, global0.c.x, arg_0.c.x, global0.c.x), any(global0.c.yz)), vec4<bool>(any(arg_0.c.wz), global0.c.x, global0.c.x, global0.b == arg_0.b)), false));
    var var_3 = countOneBits(_wgslsmith_div_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(46964u, u_input.c, 4294967295u, 11089u), vec4<u32>(var_2.a, 1u, 1u, 0u))), firstTrailingBit(~vec4<u32>(arg_0.a, u_input.a, u_input.a, 0u)))) | ~vec4<u32>(~(~1u), reverseBits(u_input.b << (1u % 32u)), ~global0.a, ~_wgslsmith_div_u32(38636u, u_input.c));
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -703f)) + global0.b) * 1090f), global0.c);
    var var_0 = vec3<i32>(u_input.d, ~u_input.e.x, -41181i);
    var var_1 = _wgslsmith_f_op_f32(func_5(Struct_1(global0.a, _wgslsmith_f_op_f32(step(global0.b, -349f)), func_4(u_input.e, Struct_1(func_1(var_0.x, global0.b), -2423f, select(vec4<bool>(global0.c.x, global0.c.x, false, false), vec4<bool>(true, global0.c.x, global0.c.x, global0.c.x), global0.c.x)), global0.b))));
    var_0 = countOneBits(select(u_input.e << (((vec3<u32>(88070u, u_input.c, global0.a) | vec3<u32>(4294967295u, global0.a, global0.a)) >> ((vec3<u32>(u_input.a, global0.a, u_input.b) >> (vec3<u32>(1u, u_input.b, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(u_input.e & u_input.e) | vec3<i32>(countOneBits(2147483647i), _wgslsmith_clamp_i32(8281i, -77716i, -2147483647i), max(var_0.x, -30229i)), vec3<bool>(global0.c.x, global0.c.x, !(!global0.c.x))));
    let var_2 = global0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(i32(-1i) * -firstLeadingBit(1i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.d, -2147483647i) << (vec3<u32>(u_input.a, global0.a, 22252u) % vec3<u32>(32u)), vec3<i32>(countOneBits(u_input.d), 1i, _wgslsmith_dot_vec2_i32(var_0.yy, vec2<i32>(6455i, u_input.d))))));
}

