struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-595f, 1172f, arg_0.x)) * _wgslsmith_f_op_f32(-1311f + 1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-526f + -547f)), _wgslsmith_f_op_f32(trunc(-185f))))), _wgslsmith_f_op_f32(abs(-1000f)));
    return _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_mult_u32(~34329u, _wgslsmith_mult_u32(~u_input.a.x, abs(66474u)))));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec4<bool> {
    let var_0 = Struct_4(~(~(~abs(56104u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(252f, _wgslsmith_f_op_f32(-1057f + arg_0)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_0, arg_0))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 2267f) + vec2<f32>(arg_0, arg_0))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_0 + var_0.b.x), arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * -1691f)), _wgslsmith_div_f32(-1248f, _wgslsmith_f_op_f32(arg_0 + var_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1996f * -679f)))));
    var var_2 = Struct_2(select((u_input.a.yy ^ (u_input.a.xy << (u_input.a.zy % vec2<u32>(32u)))) | ~(~u_input.a.zz), vec2<u32>(select(min(u_input.a.x, var_0.a), ~var_0.a, any(vec2<bool>(true, true))), ~22351u), any(vec2<bool>(any(vec3<bool>(false, true, false)), 2147483647i == arg_1))), Struct_1(vec3<bool>(true, true, any(vec2<bool>(true, true)))), Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, false)))), _wgslsmith_dot_vec3_i32(max(vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(24070i, arg_1, 2147483647i)) << (u_input.a % vec3<u32>(32u)), -vec3<i32>(arg_1, 0i, 1i) | ~vec3<i32>(17419i, 4667i, arg_1)) > max(-20479i, arg_1), false);
    var var_3 = var_0;
    var_2 = Struct_2(countOneBits(_wgslsmith_mult_vec2_u32(reverseBits(~vec2<u32>(var_2.a.x, u_input.a.x)), select(abs(vec2<u32>(var_0.a, 85348u)), vec2<u32>(4294967295u, 4294967295u), select(vec2<bool>(true, var_2.e), vec2<bool>(var_2.c.a.x, false), false)))), Struct_1(!select(vec3<bool>(var_2.c.a.x, var_2.d, var_2.b.a.x), vec3<bool>(var_2.b.a.x, true, var_2.d), !vec3<bool>(var_2.b.a.x, false, var_2.c.a.x))), Struct_1(!(!vec3<bool>(true, var_2.b.a.x, var_2.d))), !var_2.c.a.x, !all(var_2.c.a.yx));
    return !vec4<bool>(!(false || any(vec2<bool>(false, var_2.e))), !(!var_2.d), select(all(var_2.b.a.xz), true, false), all(vec4<bool>(true, true, true, true)));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = func_3(-446f, firstLeadingBit(-1i));
    let var_1 = Struct_3(Struct_2(vec2<u32>(~49480u, u_input.b) >> (u_input.a.xz % vec2<u32>(32u)), Struct_1(select(func_3(arg_2.x, -2147483647i).yxw, var_0.www, arg_1.x)), Struct_1(vec3<bool>(arg_1.x, all(vec4<bool>(var_0.x, var_0.x, var_0.x, arg_1.x)), false)), func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, 268f)), arg_0).x, all(vec4<bool>(false, any(var_0.zxz), !var_0.x, false))), _wgslsmith_mod_vec3_i32(vec3<i32>(-63601i | arg_0, -27994i, -2147483647i), -(~(~vec3<i32>(arg_0, -27275i, arg_0)))), _wgslsmith_div_i32(reverseBits(1i), ~(~arg_0)), _wgslsmith_div_u32(~0u, u_input.b << (firstTrailingBit(1u) % 32u)), max(1175u, _wgslsmith_sub_u32(~countOneBits(u_input.a.x), 84327u << (_wgslsmith_mod_u32(1u, u_input.b) % 32u))));
    var_0 = select(func_3(arg_2.x, _wgslsmith_sub_i32(arg_0, firstTrailingBit(var_1.b.x))), !(!(!vec4<bool>(arg_1.x, false, true, var_1.a.b.a.x))), select(vec4<bool>(true && all(arg_1), func_3(345f, _wgslsmith_clamp_i32(arg_0, arg_0, var_1.c)).x, var_1.a.c.a.x, true), vec4<bool>(true, any(!var_1.a.c.a), all(var_0.xxx), true), true));
    var var_2 = var_1;
    var var_3 = firstLeadingBit(vec3<u32>(select(var_2.a.a.x | ~u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 0u), arg_1.x), 17021u, reverseBits(var_2.a.a.x)));
    return var_2.a.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(func_1(vec4<bool>(true, true, true, true), vec2<i32>(-31317i, 5873i)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.a.x), ~vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 40097u))), ~(vec2<u32>(u_input.b, 14927u) >> ((u_input.a.zz ^ u_input.a.zy) % vec2<u32>(32u)))), func_2(max(-(6657i >> (u_input.b % 32u)), 2147483647i), vec2<bool>(~5501u < u_input.b, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(501f, 1702f), vec2<f32>(-975f, -2157f))) * vec2<f32>(-179f, -499f)))), Struct_1(vec3<bool>(func_2(74035i, vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-168f, 847f))).a.x, false & func_3(-423f, 2147483647i).x, func_3(776f, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 43351i, 0i, 0i), vec4<i32>(37600i, 24637i, 80153i, -3537i))).x)), true, !all(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))));
    let var_1 = Struct_3(Struct_2(select(~vec2<u32>(29949u, 63598u) & u_input.a.xx, var_0.a, vec2<bool>(any(vec3<bool>(false, false, var_0.b.a.x)), var_0.b.a.x)), var_0.c, var_0.c, func_3(_wgslsmith_f_op_f32(f32(-1f) * -586f), 2147483647i).x, false), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-28274i, ~1i, 1i, ~(-84836i)), vec4<i32>(~46921i, 1i, 2147483647i << (u_input.a.x % 32u), -2147483647i)), min(1i, -_wgslsmith_div_i32(-1i, 53794i)), 1i), ~(select(-39080i, ~2147483647i, var_0.b.a.x) ^ _wgslsmith_dot_vec2_i32(-vec2<i32>(18876i, -35246i), _wgslsmith_div_vec2_i32(vec2<i32>(-26492i, 14439i), vec2<i32>(-2147483647i, 22592i)))), _wgslsmith_mod_u32(19403u, _wgslsmith_dot_vec3_u32(u_input.a, u_input.a << (u_input.a % vec3<u32>(32u))) >> ((1u >> (0u % 32u)) % 32u)), ~4294967295u);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-436f, -349f, true))))), _wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1205f)) - _wgslsmith_f_op_f32(1000f * -231f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -598f), _wgslsmith_f_op_f32(f32(-1f) * -680f)))), -551f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1420f, 628f, 1203f, 301f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2016f, 187f, 1086f, -1334f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-541f, -904f, 469f, -131f)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1885f, 903f, 1611f, -2050f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-337f, -632f, -1000f, -593f)), var_0.e)))), all(vec4<bool>(any(!var_0.b.a), true, select(false, var_1.b.x != -2147483647i, !var_0.d), !var_1.a.c.a.x))));
    var var_3 = var_1;
    var_3 = Struct_3(Struct_2(vec2<u32>(var_0.a.x, var_3.a.a.x), Struct_1(func_3(_wgslsmith_f_op_f32(f32(-1f) * -957f), -1i).zyw), var_3.a.b, var_0.d, true), ~_wgslsmith_div_vec3_i32(-countOneBits(vec3<i32>(-2147483647i, -23971i, -45634i)), -firstLeadingBit(vec3<i32>(var_3.b.x, 7835i, var_1.c))), _wgslsmith_div_i32(_wgslsmith_mult_i32(countOneBits(~var_1.b.x), ~abs(var_3.b.x)), _wgslsmith_dot_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, var_3.c, var_1.c, -2147483647i), vec4<i32>(2147483647i, -1i, var_3.c, 1i))), _wgslsmith_add_vec4_i32(abs(vec4<i32>(1i, -41379i, -38124i, var_1.c)), ~vec4<i32>(var_1.c, var_1.c, var_1.c, var_1.c)))), 1u, var_3.a.a.x);
    let var_4 = _wgslsmith_sub_vec2_i32(reverseBits(-vec2<i32>(var_3.c, ~2147483647i)), vec2<i32>(_wgslsmith_clamp_i32(0i, -13908i, -26043i) << (~var_0.a.x % 32u), 35757i));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, var_2, -vec4<i32>(19814i, ~(~(-1i)), var_1.b.x, _wgslsmith_div_i32(~var_1.c, _wgslsmith_mult_i32(var_3.b.x, 1i))), vec4<i32>(-1i) * -firstLeadingBit(~vec4<i32>(var_1.b.x, -7867i, 18889i, -1i)));
}

