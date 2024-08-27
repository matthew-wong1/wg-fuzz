struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: i32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> vec4<u32> {
    var var_0 = Struct_3(arg_1.b.a, arg_1.b, -50322i, arg_1.d);
    var_0 = arg_1;
    let var_1 = var_0.b.a;
    var_0 = arg_1;
    var_0 = Struct_3(var_0.b.a, Struct_2(var_0.a, select(select(vec4<bool>(arg_0, arg_1.b.b.x, var_1.d.x, arg_1.a.d.x), !var_0.b.b, arg_0), vec4<bool>(any(arg_1.b.b), any(var_0.b.b), all(var_0.b.b.yxw), !arg_0), var_0.b.a.d.x)), u_input.b.x, ~vec2<u32>(firstLeadingBit(var_1.a), 0u));
    return vec4<u32>(~var_1.a, ~(~_wgslsmith_mult_u32(~var_0.b.a.a, ~1230u)), 4424u, var_0.d.x);
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(abs(abs(func_3(arg_0.b.x, Struct_3(arg_0.a, arg_0, 1i, vec2<u32>(arg_0.a.a, 1u))))), ~vec4<u32>(arg_0.a.a, abs(arg_0.a.a), 4294967295u, ~arg_0.a.a)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.a, arg_0.a.a, 34357u >> (arg_0.a.a % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(23850u, 1u), vec2<u32>(32071u, 52703u))), vec4<u32>(0u, max(29966u, 28399u), arg_0.a.a, _wgslsmith_mult_u32(arg_0.a.a, arg_0.a.a)))));
    var var_1 = ~firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.b.wy, ~vec2<i32>(1i, u_input.b.x) & (vec2<i32>(54393i, u_input.b.x) << (vec2<u32>(38426u, var_0) % vec2<u32>(32u)))));
    var_1 = -_wgslsmith_dot_vec2_i32(~(~select(u_input.b.zz, u_input.b.ww, false)), vec2<i32>(abs(~66183i), select(reverseBits(0i), ~u_input.b.x, arg_0.a.e > arg_0.a.c)));
    var_1 = -_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.a >> (4294967295u % 32u), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)) << (~1u % 32u), 31413i);
    var var_2 = Struct_4(_wgslsmith_add_vec4_i32(u_input.b, firstLeadingBit(firstTrailingBit(-u_input.b))), u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1952f, -291f), vec2<f32>(-1788f, arg_0.a.b))) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(197f, -1010f), vec2<f32>(328f, -380f))))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1235f), _wgslsmith_f_op_f32(-383f + _wgslsmith_f_op_f32(-arg_0.a.e)))), _wgslsmith_f_op_f32(1700f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(arg_0.a.b))))), 0i);
    return Struct_3(arg_0.a, Struct_2(Struct_1(~var_0 & var_0, _wgslsmith_f_op_f32(f32(-1f) * -109f), 722f, select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(arg_0.a.d.x, arg_0.a.d.x)), var_2.c.x), !(!vec4<bool>(arg_0.a.d.x, arg_0.b.x, arg_0.b.x, false))), var_2.b.x, ~vec2<u32>(~abs(13075u), countOneBits(var_0)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(Struct_2(Struct_1(max(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(69778u, 58450u))), _wgslsmith_div_f32(-830f, _wgslsmith_f_op_f32(f32(-1f) * -2102f)), _wgslsmith_f_op_f32(f32(-1f) * -1165f), vec2<bool>(true, any(vec3<bool>(false, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(988f, 636f))), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), false)));
    var_0 = Struct_3(Struct_1(countOneBits(_wgslsmith_add_u32(var_0.b.a.a, _wgslsmith_sub_u32(var_0.a.a, var_0.b.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.e) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.c))), -181f, vec2<bool>(any(select(vec3<bool>(false, var_0.b.a.d.x, false), vec3<bool>(true, true, false), var_0.a.d.x)), !(!var_0.a.d.x)), var_0.b.a.b), func_2(func_2(Struct_2(var_0.a, !vec4<bool>(var_0.b.a.d.x, false, true, var_0.b.b.x))).b).b, var_0.c, _wgslsmith_add_vec2_u32(var_0.d, abs(select(var_0.d, var_0.d, !var_0.b.b.wz))));
    var var_1 = !var_0.b.b;
    var var_2 = Struct_4(u_input.b, vec4<i32>(64366i, var_0.c, 16926i, 3775i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1379f - var_0.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.a.e), _wgslsmith_f_op_f32(f32(-1f) * -1251f), var_0.a.d.x || true)) - var_0.a.c)), -144f, max(~(~0i), u_input.b.x));
    var_2 = Struct_4(select(vec4<i32>(-57073i, -33032i, _wgslsmith_mult_i32(u_input.b.x, 2147483647i), -2147483647i), vec4<i32>(-var_0.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_0.c, 1i, var_2.e), u_input.b), -6360i, 11175i), true) >> ((vec4<u32>(_wgslsmith_div_u32(var_0.b.a.a, var_0.b.a.a), 1u, var_0.b.a.a, func_2(var_0.b).a.a) | vec4<u32>(~var_0.b.a.a, 23942u, var_0.d.x ^ 55578u, ~1u)) % vec4<u32>(32u)), -vec4<i32>(var_2.b.x & var_0.c, countOneBits(_wgslsmith_dot_vec4_i32(var_2.a, var_2.a)), var_2.b.x, 0i), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_2.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1183f) * _wgslsmith_f_op_f32(var_2.d + -116f)) * _wgslsmith_f_op_f32(abs(-342f))), ~1i);
    return var_0.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_5) -> Struct_2 {
    let var_0 = arg_1.b.x;
    let var_1 = vec2<f32>(arg_1.a.e, arg_1.a.b);
    var var_2 = vec2<u32>(~(~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(arg_0, arg_0), vec4<u32>(arg_2.b, 4294967295u, arg_0.x, arg_2.b))), ~arg_0.x);
    let var_3 = _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -188f) * -506f), _wgslsmith_f_op_f32(round(arg_1.a.e)), var_0)))));
    let var_4 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(~(u_input.a | -20224i), -1i, 4183i)), vec3<i32>(arg_2.a & _wgslsmith_div_i32(u_input.a, 2147483647i & arg_2.a), firstLeadingBit(u_input.b.x << (arg_2.b % 32u)) << (var_2.x % 32u), _wgslsmith_sub_i32(u_input.a, 1i)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(reverseBits(vec4<u32>(1u, 1u, 1u, 1u)), Struct_2(func_1(), select(func_2(func_2(Struct_2(Struct_1(4294967295u, -653f, -1502f, vec2<bool>(false, false), -717f), vec4<bool>(true, true, true, false))).b).b.b, func_2(Struct_2(Struct_1(4294967295u, 219f, -809f, vec2<bool>(true, false), 1567f), vec4<bool>(true, false, true, true))).b.b, vec4<bool>(true, true, true, true))), Struct_5(_wgslsmith_div_i32(func_2(func_2(Struct_2(Struct_1(1u, 1199f, -141f, vec2<bool>(true, true), 2160f), vec4<bool>(true, true, true, false))).b).c, u_input.b.x), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(55724u, 35862u, 1u), vec3<u32>(4294967295u, 1u, 5223u)), _wgslsmith_dot_vec2_u32(vec2<u32>(43001u, 1u), vec2<u32>(54763u, 65480u))) | 1u));
    var var_1 = any(!var_0.b);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1().e * var_0.a.e) * -1593f);
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1290f + _wgslsmith_f_op_f32(-var_0.a.b))));
    var_2 = var_0.a.e;
    let var_3 = func_4(vec4<u32>(_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(var_0.a.a, 0u)), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, var_0.a.a, 1u)), vec3<u32>(var_0.a.a, var_0.a.a, var_0.a.a)), ~abs(0u), var_0.a.a) << (vec4<u32>(firstLeadingBit(~1u), var_0.a.a, 1u, var_0.a.a) % vec4<u32>(32u)), var_0, Struct_5(u_input.a, abs(var_0.a.a))).a;
    var var_4 = Struct_3(func_1(), var_0, 0i, max(vec2<u32>(~32289u, func_1().a), vec2<u32>(_wgslsmith_div_u32(~var_0.a.a, ~4294967295u), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(45325u, var_0.a.a, 65272u), abs(1u), func_4(vec4<u32>(1u, var_0.a.a, 73272u, 45062u), Struct_2(Struct_1(4294967295u, 823f, var_0.a.b, var_3.d, var_0.a.c), var_0.b), Struct_5(-48831i, 0u)).a.a))));
    var_4 = func_2(var_4.b);
    var var_5 = select(vec4<bool>(false, true, any(var_0.b.xyy), var_3.a <= 22493u), vec4<bool>(_wgslsmith_f_op_f32(max(-523f, _wgslsmith_div_f32(677f, var_3.e))) >= _wgslsmith_f_op_f32(-var_0.a.b), func_4(select(vec4<u32>(var_0.a.a, 64817u, 4294967295u, 93425u), vec4<u32>(1u, 4294967295u, 43398u, var_4.b.a.a), var_4.b.b) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(35827u, 1u, 48480u, var_0.a.a), vec4<u32>(var_4.a.a, 23686u, 1u, 1u)), func_4(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_4.a.a, 0u, var_4.d.x), vec4<u32>(0u, 74714u, var_0.a.a, var_0.a.a)), Struct_2(var_0.a, vec4<bool>(false, var_4.b.a.d.x, var_4.a.d.x, false)), Struct_5(-2147483647i, var_3.a)), Struct_5(-u_input.b.x, 4294967295u >> (var_0.a.a % 32u))).a.d.x, func_4(~(~vec4<u32>(var_0.a.a, 35086u, var_4.b.a.a, var_0.a.a)), Struct_2(func_1(), var_0.b), Struct_5(2147483647i, ~var_3.a)).a.d.x, !(_wgslsmith_div_u32(var_4.d.x, 0u) > func_1().a)), var_3.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(~_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(24342u, 1u, 0u, var_4.b.a.a), vec4<u32>(4294967295u, var_0.a.a, var_3.a, 4294967295u)), vec4<u32>(var_4.d.x, 23934u, 58464u, var_4.d.x) >> (vec4<u32>(var_3.a, 53570u, var_4.d.x, var_3.a) % vec4<u32>(32u))), func_2(func_4(select(vec4<u32>(var_3.a, var_3.a, var_4.b.a.a, 58691u), vec4<u32>(var_0.a.a, var_4.d.x, 14808u, var_4.a.a), var_5.x), func_4(vec4<u32>(44760u, var_0.a.a, var_4.d.x, var_0.a.a), var_4.b, Struct_5(u_input.a, var_3.a)), Struct_5(u_input.a, 4294967295u))).b, Struct_5(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, 18796i), u_input.b.ywx), u_input.b.yxy >> (vec3<u32>(var_4.d.x, var_4.a.a, 4294967295u) % vec3<u32>(32u))), _wgslsmith_mult_u32(100705u & var_0.a.a, 1u))).a.c, vec4<u32>(106115u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(min(1u, var_4.d.x), ~var_4.a.a), _wgslsmith_mult_u32(var_4.d.x, var_4.d.x)), countOneBits(var_0.a.a), ~(_wgslsmith_mod_u32(var_4.a.a, 87737u) >> ((var_0.a.a | var_3.a) % 32u))), vec3<f32>(_wgslsmith_f_op_f32(-func_2(Struct_2(var_3, vec4<bool>(true, var_4.a.d.x, false, false))).b.a.c), -1813f, _wgslsmith_f_op_f32(var_4.a.b - 902f)));
}

