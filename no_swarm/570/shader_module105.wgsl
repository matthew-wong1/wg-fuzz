struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<f32>,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: Struct_3) -> bool {
    let var_0 = arg_0.a;
    let var_1 = !(!vec4<bool>(false, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, 4294967295u, arg_2.b.a), vec4<u32>(var_0.a.a, 0u, var_0.a.a, 0u)) > ~u_input.c.x, all(arg_0.a.c.zx) | (arg_2.d.x | arg_0.a.c.x), !(var_0.c.x && arg_0.a.c.x)));
    let var_2 = any(select(select(vec2<bool>(any(var_1), arg_2.e.x), vec2<bool>(true, -1i == u_input.e.x), true), select(select(vec2<bool>(var_1.x, arg_0.a.c.x), vec2<bool>(false, arg_0.a.c.x), vec2<bool>(false, false)), vec2<bool>(arg_2.d.x, any(vec3<bool>(false, true, var_0.c.x))), var_0.c.xx), select(!vec2<bool>(false, var_1.x), var_0.c.zy, var_1.x)));
    var var_3 = Struct_3(Struct_2(-2147483647i, countOneBits(~vec3<u32>(var_0.a.a, var_0.a.a, var_0.a.a) ^ ~u_input.c), -1i, _wgslsmith_f_op_vec3_f32(-arg_0.a.b), -1000f), Struct_1(arg_2.b.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.x + -204f))), -305f, arg_0.a.b.x), !vec3<bool>((u_input.b > arg_0.a.a.a) && all(var_1.yxx), all(var_0.c), false), !select(!select(var_0.c.zz, vec2<bool>(arg_0.a.c.x, false), arg_2.e.x), vec2<bool>(all(vec3<bool>(var_1.x, true, var_2)), any(arg_0.a.c)), all(select(vec2<bool>(arg_0.a.c.x, arg_0.a.c.x), vec2<bool>(true, arg_0.a.c.x), vec2<bool>(arg_2.d.x, false)))));
    var_3 = Struct_3(arg_2.a, Struct_1(var_3.a.b.x), arg_2.a.d, !vec3<bool>(true && all(arg_0.a.c.yz), var_2, true), var_1.wx);
    return true;
}

fn func_2(arg_0: u32) -> vec3<u32> {
    let var_0 = arg_0;
    let var_1 = select(vec4<bool>(true, all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true)), true, true), select(vec4<bool>(~11576u == (arg_0 ^ 47056u), any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), true, func_3(Struct_5(Struct_4(Struct_1(var_0), vec3<f32>(756f, -106f, -868f), vec3<bool>(true, false, true)), 0u), _wgslsmith_f_op_f32(f32(-1f) * -291f), Struct_3(Struct_2(u_input.e.x, vec3<u32>(arg_0, 48777u, 0u), u_input.e.x, vec3<f32>(-233f, 722f, -285f), -696f), Struct_1(33927u), vec3<f32>(886f, -1585f, -426f), vec3<bool>(true, true, false), vec2<bool>(false, false)))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true)), func_3(Struct_5(Struct_4(Struct_1(arg_0), vec3<f32>(-951f, 1147f, -433f), vec3<bool>(false, true, true)), arg_0), _wgslsmith_f_op_f32(f32(-1f) * -1147f), Struct_3(Struct_2(u_input.e.x, u_input.c, -57178i, vec3<f32>(-574f, -1181f, -782f), -472f), Struct_1(u_input.b), vec3<f32>(-1897f, 1516f, 671f), vec3<bool>(true, false, false), vec2<bool>(false, false)))), vec4<bool>(func_3(Struct_5(Struct_4(Struct_1(var_0), vec3<f32>(-1200f, -316f, -1257f), vec3<bool>(false, false, false)), u_input.c.x), -108f, Struct_3(Struct_2(u_input.a, vec3<u32>(arg_0, 29112u, 1u), u_input.d.x, vec3<f32>(-1225f, 905f, 1000f), 445f), Struct_1(arg_0), vec3<f32>(866f, 1167f, 678f), vec3<bool>(false, true, true), vec2<bool>(true, true))), true, true, true)), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, select(false, false, false))));
    return vec3<u32>(arg_0, ~abs(select(reverseBits(u_input.b), _wgslsmith_clamp_u32(arg_0, 4294967295u, 33349u), false)), _wgslsmith_div_u32(0u, ~(arg_0 >> (62840u % 32u))));
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: f32) -> Struct_5 {
    return Struct_5(arg_2, arg_2.a.a);
}

fn func_1(arg_0: bool, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec2<bool>) -> vec3<i32> {
    var var_0 = vec3<f32>(arg_1.a.b.x, 1329f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2241f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.a.d.x)) - _wgslsmith_div_f32(arg_2.a.d.x, arg_2.c.x)))));
    var var_1 = vec3<f32>(-496f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.d.x)), _wgslsmith_f_op_f32(-arg_2.a.d.x));
    let var_2 = func_4(-1331f, _wgslsmith_mod_vec3_u32(~u_input.c, func_2(~(arg_1.b << (0u % 32u)))), Struct_4(Struct_1(~(~arg_1.a.a.a)), vec3<f32>(arg_1.a.b.x, var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-730f)))), select(vec3<bool>(func_3(arg_1, var_0.x, Struct_3(arg_2.a, arg_1.a.a, vec3<f32>(1000f, var_0.x, var_0.x), arg_2.d, arg_1.a.c.xy)), 1450f >= var_1.x, true), !arg_2.d, vec3<bool>(true, arg_0, false))), var_1.x);
    var var_3 = func_4(_wgslsmith_f_op_f32(ceil(var_1.x)), u_input.c, Struct_4(arg_2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-636f, -996f, 1430f)), _wgslsmith_f_op_vec3_f32(arg_2.a.d - vec3<f32>(var_2.a.b.x, 119f, var_1.x))) - _wgslsmith_f_op_vec3_f32(-var_2.a.b)), !(!(!arg_1.a.c))), _wgslsmith_f_op_f32(ceil(arg_1.a.b.x))).a.b.x;
    return abs(abs(~u_input.d.ywy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(select(u_input.d.wxw, max(vec3<i32>(u_input.a, u_input.d.x, 2147483647i), u_input.d.xyz), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true)), _wgslsmith_div_vec3_i32(~u_input.d.zyx, _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.d.x, 10477i), vec3<i32>(0i, 2147483647i, 1i)))), vec3<i32>(firstTrailingBit(~u_input.e.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d.x, 22176i) ^ u_input.d.zzz, func_1(true, Struct_5(Struct_4(Struct_1(126403u), vec3<f32>(-1000f, -532f, -2395f), vec3<bool>(true, false, false)), 4294967295u), Struct_3(Struct_2(10077i, vec3<u32>(21243u, 24457u, u_input.c.x), 2147483647i, vec3<f32>(-843f, -335f, -544f), -289f), Struct_1(u_input.c.x), vec3<f32>(348f, 893f, 2179f), vec3<bool>(false, true, true), vec2<bool>(false, false)), vec2<bool>(true, true))), 1i));
    var var_1 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2075f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(128f - -358f))))), u_input.c, func_4(func_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-825f, 193f) + _wgslsmith_f_op_f32(504f + -1161f)), _wgslsmith_add_vec3_u32(~u_input.c, vec3<u32>(u_input.c.x, 78124u, u_input.c.x)), Struct_4(func_4(-1652f, u_input.c, Struct_4(Struct_1(u_input.b), vec3<f32>(216f, -787f, 601f), vec3<bool>(true, false, false)), 1000f).a.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, -1316f)), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -550f))).a.b.x, vec3<u32>(~u_input.b << (firstTrailingBit(u_input.b) % 32u), ~_wgslsmith_div_u32(u_input.b, 27192u), u_input.c.x), Struct_4(func_4(545f, vec3<u32>(57026u, u_input.b, 0u) & u_input.c, Struct_4(Struct_1(u_input.b), vec3<f32>(-1196f, 676f, -1338f), vec3<bool>(false, false, false)), _wgslsmith_div_f32(1459f, 1269f)).a.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(158f, 630f, 1094f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-254f, 1653f, -712f)))), select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-310f, -336f))).a, _wgslsmith_f_op_f32(f32(-1f) * -805f)).a;
    var var_2 = ~(~_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.a, u_input.c.x, 60584u), vec3<u32>(82318u, u_input.b, var_1.a.a)), ~u_input.c)) & ~vec3<u32>(0u, func_2(_wgslsmith_add_u32(1u, 1u)).x, ~var_1.a.a);
    var var_3 = func_4(_wgslsmith_f_op_f32(688f * 432f), ~vec3<u32>(u_input.c.x, var_2.x, reverseBits(min(u_input.c.x, u_input.c.x))), Struct_4(func_4(_wgslsmith_f_op_f32(209f * -265f), u_input.c, Struct_4(func_4(-196f, vec3<u32>(0u, 1u, 4294967295u), Struct_4(Struct_1(var_2.x), vec3<f32>(-530f, var_1.b.x, var_1.b.x), var_1.c), 261f).a.a, _wgslsmith_div_vec3_f32(vec3<f32>(907f, var_1.b.x, var_1.b.x), vec3<f32>(1779f, 105f, 847f)), !var_1.c), 1149f).a.a, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b.x + 283f), _wgslsmith_f_op_f32(var_1.b.x * 1514f))), var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-171f + 1565f))), !vec3<bool>(var_1.c.x && false, var_1.c.x, !var_1.c.x)), _wgslsmith_f_op_f32(round(var_1.b.x))).a;
    var var_4 = ~0i;
    var var_5 = Struct_4(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x))), max(_wgslsmith_div_vec3_u32(~vec3<u32>(var_3.a.a, var_1.a.a, 4294967295u), abs(u_input.c)), _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(var_3.a.a, 4294967295u, 12866u))), Struct_4(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.a, 0u, 1u), u_input.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(739f, var_1.b.x, var_1.b.x)), vec3<bool>(true, var_3.c.x, all(var_1.c))), -2813f).a.a, var_1.b, var_1.c);
    var var_6 = any(!select(vec2<bool>(var_1.c.x, var_1.c.x), var_3.c.yy, var_3.c.xz));
    var_2 = vec3<u32>(56522u, firstLeadingBit(11521u), var_3.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>((~1u & var_5.a.a) >> (_wgslsmith_dot_vec2_u32(u_input.c.yy << (u_input.c.zx % vec2<u32>(32u)), ~vec2<u32>(1u, var_5.a.a)) % 32u), firstLeadingBit(_wgslsmith_div_u32(var_1.a.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 0u, 4294967295u), u_input.c))), _wgslsmith_mult_u32(1u | var_2.x, ~u_input.b), var_1.a.a), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-591f)), _wgslsmith_f_op_f32(var_5.b.x + var_3.b.x), -1022f, -1610f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-158f, var_1.b.x, var_3.b.x, -1187f))))), _wgslsmith_f_op_f32(-var_5.b.x), u_input.e);
}

