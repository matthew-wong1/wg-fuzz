struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = 327f;
    let var_1 = -firstTrailingBit(firstTrailingBit(-max(arg_0, -13712i)));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1068f + arg_2.a) * _wgslsmith_f_op_f32(arg_2.b.x + var_0)))), arg_2.b.x), arg_2.b.xx, arg_2.d));
    return arg_2.d;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = 1262f;
    let var_1 = 3081i;
    let var_2 = select(-19091i & var_1, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_1, reverseBits(18096i)), -var_1, -1i), u_input.c, -var_1), true);
    var var_3 = select(!(!vec2<bool>(arg_0 && true, true)), select(select(!(!vec2<bool>(arg_0, true)), vec2<bool>(arg_0, true), vec2<bool>(arg_0, true)), vec2<bool>(func_3(-63985i, true, Struct_1(-1539f, vec3<f32>(991f, 193f, 511f), 38872i, false)), true | !arg_0), arg_0), !(!(!select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(true, true)))));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1330f, 1015f) * 1020f), -1000f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-627f, -1141f, -514f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(225f, -541f, -456f))), var_3.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-737f, -498f, -144f), vec3<f32>(-1822f, 288f, 1059f), var_3.x)), vec3<f32>(1008f, 2070f, 1508f))), 13473i, true), 4294967295u, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, -644f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-100f * -917f))), _wgslsmith_f_op_f32(f32(-1f) * -1174f)))), u_input.a);
    return var_4.a;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: u32) -> Struct_1 {
    return func_2(arg_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = Struct_1(arg_0.b.x, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(590f)), _wgslsmith_f_op_f32(max(arg_1.c.x, var_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(296f)) + 834f))), func_2(arg_1.a.d).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-967f)) * -1615f)), arg_1.d.x, var_0.a.a <= 126f);
    var var_2 = var_0.a;
    var_2 = Struct_1(700f, _wgslsmith_f_op_vec3_f32(-arg_0.b), -2147483647i, var_0.b == _wgslsmith_dot_vec2_u32(vec2<u32>(abs(arg_1.b), arg_1.b | 1u), ~firstTrailingBit(vec2<u32>(arg_1.b, arg_1.b))));
    let var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(min(0u, ~arg_1.b ^ 1u), 4294967295u, firstTrailingBit(firstTrailingBit(~arg_1.b)), countOneBits(reverseBits(~1u))), select(vec4<u32>(_wgslsmith_clamp_u32(var_0.b, ~1u, ~var_0.b), 0u, 857u, _wgslsmith_sub_u32(~0u, _wgslsmith_sub_u32(4294967295u, arg_1.b))), vec4<u32>(0u, 4294967295u, 41777u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(18611u, var_0.b, arg_1.b, arg_1.b), vec4<u32>(arg_1.b, var_0.b, arg_1.b, 35878u)), ~vec4<u32>(var_0.b, arg_1.b, 0u, 0u))), true));
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    let var_0 = 455f;
    var var_1 = arg_0.a;
    let var_2 = arg_0.a.c;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-var_1.b.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), var_0, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(func_1(vec2<bool>(true, arg_0.a.d), var_1.b.xx, 9171u).b.x)), _wgslsmith_f_op_f32(sign(1000f))))), func_2(arg_0.a.d).c, !all(select(select(vec3<bool>(arg_0.a.d, var_1.d, var_1.d), vec3<bool>(true, true, true), arg_0.a.d), !vec3<bool>(true, var_1.d, true), true)));
    var_1 = func_2(var_1.d);
    return func_4(Struct_1(_wgslsmith_f_op_f32(916f - 1747f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, -869f, var_1.a))), select(var_3.c, var_2, true), true), arg_0);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1.a;
    var var_1 = func_2(!((arg_1.b << (_wgslsmith_div_u32(arg_0.b, 1u) % 32u)) == func_4(func_2(arg_0.a.d), Struct_2(Struct_1(arg_1.a.a, vec3<f32>(arg_1.a.a, -1209f, -234f), u_input.b.x, false), 1u, var_0.b, u_input.a)).b));
    let var_2 = _wgslsmith_mult_i32(var_0.c, countOneBits(-1i));
    var var_3 = min(vec4<i32>(var_1.c, _wgslsmith_add_i32(_wgslsmith_add_i32(var_0.c, 2147483647i) << (arg_1.b % 32u), _wgslsmith_mod_i32(arg_0.d.x, -1i) >> ((11728u >> (arg_0.b % 32u)) % 32u)), -77156i, u_input.b.x), vec4<i32>(arg_0.d.x, 37225i, 0i, 2147483647i));
    let var_4 = func_1(select(vec2<bool>(func_4(func_4(Struct_1(arg_0.c.x, var_0.b, 2147483647i, arg_1.a.d), Struct_2(Struct_1(1000f, var_1.b, u_input.a.x, false), 1u, var_0.b, vec3<i32>(-2147483647i, var_3.x, -24995i))).a, Struct_2(arg_1.a, 4294967295u, var_1.b, vec3<i32>(-1i, -28888i, 48752i))).a.d, !(!var_1.d)), vec2<bool>(var_1.d && !arg_0.a.d, false), !vec2<bool>(var_0.d | arg_0.a.d, false)), vec2<f32>(func_1(select(select(vec2<bool>(true, var_0.d), vec2<bool>(var_0.d, false), false), select(vec2<bool>(var_0.d, var_1.d), vec2<bool>(false, false), vec2<bool>(var_1.d, false)), false), var_1.b.xy, _wgslsmith_div_u32(arg_1.b, arg_0.b)).a, _wgslsmith_f_op_f32(var_1.a + 380f)), reverseBits(arg_0.b)).c;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~abs(~(~0u)));
    var var_1 = _wgslsmith_sub_vec4_i32(-vec4<i32>(0i, u_input.c, u_input.a.x, 9325i), select(vec4<i32>(35374i, ~24469i, ~u_input.b.x, u_input.b.x >> (var_0 % 32u)) ^ vec4<i32>(~(-5531i), 5079i, u_input.a.x, 2147483647i), ~vec4<i32>(2147483647i, _wgslsmith_div_i32(1i, u_input.c), u_input.a.x, reverseBits(u_input.b.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(true, true, true, false)), 1u < var_0, u_input.b.x >= u_input.c, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true), true))));
    var var_2 = func_6(func_5(func_4(Struct_1(1062f, vec3<f32>(1796f, 750f, 497f), 2147483647i, true), Struct_2(func_1(vec2<bool>(true, false), vec2<f32>(-350f, 443f), var_0), ~var_0, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2099f, 379f, -1358f)), -vec3<i32>(var_1.x, -9786i, u_input.b.x))), countOneBits(firstTrailingBit(_wgslsmith_mod_u32(var_0, 1u)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2032f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1083f, 875f, 2483f), vec3<f32>(628f, -420f, -169f), vec3<bool>(true, true, false))))), u_input.a.x, true), 4294967295u, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), ~var_1.yww));
    var_1 = vec4<i32>(abs(var_1.x << (countOneBits(_wgslsmith_mod_u32(0u, var_2.b)) % 32u)), u_input.b.x, u_input.b.x, 1i);
    var_1 = select(~abs(max(vec4<i32>(0i, -2147483647i, -5008i, var_2.d.x), vec4<i32>(var_1.x, -18926i, 61930i, var_2.a.c)) & -vec4<i32>(var_1.x, var_1.x, u_input.a.x, u_input.c)), min(-(~abs(vec4<i32>(var_2.d.x, -1i, var_1.x, var_2.a.c))), -vec4<i32>(-2147483647i, var_2.d.x, 1i, var_1.x) << ((_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 76495u, var_2.b, var_2.b), vec4<u32>(var_0, 1u, var_0, 4294967295u)) | vec4<u32>(6886u, 37216u, 4294967295u, 4294967295u)) % vec4<u32>(32u))), select(select(select(select(vec4<bool>(false, true, true, var_2.a.d), vec4<bool>(var_2.a.d, false, true, var_2.a.d), vec4<bool>(true, true, var_2.a.d, var_2.a.d)), !vec4<bool>(var_2.a.d, true, false, var_2.a.d), vec4<bool>(var_2.a.d, var_2.a.d, var_2.a.d, true)), !select(vec4<bool>(var_2.a.d, false, true, var_2.a.d), vec4<bool>(var_2.a.d, var_2.a.d, true, var_2.a.d), vec4<bool>(false, var_2.a.d, false, false)), !var_2.a.d != func_6(Struct_2(var_2.a, var_0, vec3<f32>(var_2.a.b.x, var_2.a.a, 919f), var_1.wwx), Struct_2(Struct_1(var_2.a.b.x, var_2.c, var_1.x, var_2.a.d), 52601u, vec3<f32>(-789f, 234f, 289f), vec3<i32>(-27639i, -43608i, u_input.a.x))).a.d), !vec4<bool>(any(vec4<bool>(var_2.a.d, false, false, false)), var_2.a.d && true, true, var_2.a.d), select(vec4<bool>(false, 2147483647i == var_1.x, any(vec4<bool>(var_2.a.d, var_2.a.d, true, true)), true), select(vec4<bool>(true, true, true, true), !vec4<bool>(var_2.a.d, var_2.a.d, true, var_2.a.d), select(vec4<bool>(true, var_2.a.d, var_2.a.d, false), vec4<bool>(false, true, var_2.a.d, false), true)), !vec4<bool>(false, var_2.a.d, true, true))));
    var_2 = func_5(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.a + -1000f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(var_2.a.b, vec3<f32>(var_2.c.x, 2134f, var_2.c.x), vec3<bool>(true, false, var_2.a.d))))), ~_wgslsmith_mult_i32(var_1.x, 45541i), false), var_2.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.c)), _wgslsmith_div_vec3_f32(var_2.a.b, vec3<f32>(1983f, -1000f, -1551f)))), vec3<i32>(-select(u_input.c, u_input.c, true), -var_2.a.c ^ -2147483647i, _wgslsmith_mod_i32(abs(0i), abs(1i)))), 1u);
    var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 1i, 1i, 14436i), _wgslsmith_mod_vec4_i32(~(-vec4<i32>(-33173i, 0i, -31449i, var_1.x)), max(~vec4<i32>(2147483647i, var_1.x, 0i, var_1.x), vec4<i32>(-17769i, var_2.a.c, var_2.a.c, 0i) >> (vec4<u32>(var_2.b, 56633u, var_2.b, var_2.b) % vec4<u32>(32u)))) >> (_wgslsmith_mult_vec4_u32(~abs(vec4<u32>(var_2.b, var_2.b, var_2.b, var_0)), vec4<u32>(var_2.b, var_2.b & var_0, var_0, min(48395u, var_2.b))) % vec4<u32>(32u)));
    var_1 = vec4<i32>(-(~u_input.b.x ^ -var_2.d.x), -_wgslsmith_clamp_i32(var_2.d.x, var_1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, var_1.x, 10330i), u_input.a)), reverseBits(var_1.x), -u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1687f, _wgslsmith_f_op_f32(sign(var_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(884f))), 778f)), ~(~var_1.ww));
}

