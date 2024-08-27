struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<bool>) -> vec4<i32> {
    let var_0 = ~(-_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(2147483647i, -16060i, 0i, -38056i)), vec4<i32>(1i, 1i, 1i, 1i)));
    let var_1 = true | !all(!(!vec3<bool>(arg_1.x, true, true)));
    var var_2 = select(~_wgslsmith_mult_i32(max(var_0.x, 40917i), max(-1i, var_0.x)), 9555i, arg_1.x) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(~47194i, -2147483647i, -var_0.x, (-2147483647i << (u_input.a.x % 32u)) | min(var_0.x, var_0.x)), select(-var_0, ~vec4<i32>(-2147483647i, 1i, 1i, var_0.x), arg_0.x));
    var var_3 = ~u_input.b;
    var_3 = 4294967295u | min(u_input.a.x, 4294967295u);
    return -abs(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(max(var_0, vec4<i32>(var_0.x, var_0.x, 1i, 22417i)), select(vec4<i32>(-17994i, var_0.x, 22252i, var_0.x), vec4<i32>(var_0.x, var_0.x, 1i, var_0.x), vec4<bool>(false, arg_0.x, arg_1.x, var_1))), -(~var_0)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    let var_0 = Struct_1(func_3(!vec2<bool>(arg_0.b, true), !select(vec2<bool>(false, true), !vec2<bool>(arg_1.b, false), arg_0.b)), ~u_input.b, -max(firstLeadingBit(1i), 2147483647i), _wgslsmith_f_op_f32(sign(-260f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-1694f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(204f, 1917f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-256f + 1739f))), _wgslsmith_f_op_f32(f32(-1f) * -358f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    var var_1 = Struct_1(reverseBits(var_0.a), firstTrailingBit(~(~var_0.b)), var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x - -1092f)) * _wgslsmith_f_op_f32(trunc(var_0.e.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_0.e, vec4<f32>(var_0.d, -530f, var_0.e.x, var_0.d)))))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -274f);
    let var_3 = Struct_3(_wgslsmith_clamp_i32(35957i, -2147483647i, ~abs(_wgslsmith_mod_i32(0i, arg_0.a))), true);
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(var_1.d + var_0.e.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.x * _wgslsmith_f_op_f32(var_1.d * -573f)) + 1110f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1765f)) + 879f)))));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: vec3<u32>) -> vec4<i32> {
    let var_0 = countOneBits(vec4<u32>(1u, select(11501u, _wgslsmith_dot_vec3_u32(arg_3, vec3<u32>(1u, 0u, 1u)), false), _wgslsmith_div_u32(4294967295u, arg_3.x), 0u));
    let var_1 = Struct_2(func_2(arg_1, arg_1), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d * arg_0.d), _wgslsmith_f_op_f32(max(-1230f, -332f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(548f, _wgslsmith_div_f32(-356f, _wgslsmith_f_op_f32(f32(-1f) * -685f))))));
    var var_2 = firstTrailingBit(~(vec4<i32>(-1i) * -vec4<i32>(0i, -1i, 1i, var_1.a.a.x)) | (var_1.a.a | vec4<i32>(_wgslsmith_dot_vec3_i32(var_1.a.a.yzx, var_1.a.a.yxw), _wgslsmith_dot_vec2_i32(var_1.a.a.yz, vec2<i32>(-21474i, arg_0.a.x)), ~var_1.a.a.x, min(arg_1.a, -1i))));
    let var_3 = vec2<u32>(18701u, _wgslsmith_div_u32(u_input.b, ~(var_0.x << (4294967295u % 32u))));
    let var_4 = func_2(arg_1, arg_1);
    return _wgslsmith_div_vec4_i32(-reverseBits(vec4<i32>(arg_1.a, arg_0.a.x, var_1.a.a.x, -6280i)), _wgslsmith_sub_vec4_i32(func_2(Struct_3(arg_0.c, arg_1.b), Struct_3(2147483647i, arg_1.b)).a, arg_0.a)) | vec4<i32>(var_4.c, arg_1.a << (~min(var_0.x, 53781u) % 32u), func_2(Struct_3(arg_0.a.x ^ var_2.x, false), Struct_3(arg_0.c, true)).c, var_1.a.a.x | var_4.c);
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: i32) -> bool {
    let var_0 = arg_1.x;
    var var_1 = max(0u, select(0u, max(u_input.a.x, ~u_input.a.x) ^ 39480u, !(true | arg_1.x)));
    var_1 = arg_0;
    let var_2 = Struct_1(abs(~func_4(func_2(Struct_3(48171i, false), Struct_3(arg_2, arg_1.x)), Struct_3(arg_2, var_0), ~14283u, ~vec3<u32>(arg_0, 1u, u_input.b))), _wgslsmith_sub_u32(~_wgslsmith_add_u32(0u, 4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, arg_0, arg_0, 356u), vec4<u32>(firstLeadingBit(u_input.a.x), 1u, _wgslsmith_mult_u32(28083u, u_input.b), 1u))), ~(-48584i), -337f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1000f + -1070f), -1365f, _wgslsmith_f_op_f32(-1345f * 228f), _wgslsmith_f_op_f32(ceil(-1221f)))))));
    var var_3 = _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(4546u), (arg_0 | 27821u) >> (~0u % 32u), _wgslsmith_div_u32(1u, reverseBits(u_input.a.x)), 1u), _wgslsmith_mod_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(67508u, 30081u, 1u, 44221u), vec4<u32>(var_2.b, 1u, var_2.b, var_2.b))), vec4<u32>(10920u, 0u, 4294967295u, var_2.b) & abs(vec4<u32>(var_2.b, 0u, 0u, 12238u)))) << (reverseBits(~(~abs(vec4<u32>(arg_0, 1u, u_input.a.x, u_input.a.x)))) % vec4<u32>(32u));
    return true;
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(vec4<i32>(-2955i, 0i, func_3(vec2<bool>(true, u_input.b < 0u), select(select(vec2<bool>(arg_0, true), vec2<bool>(true, true), arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0), arg_0), arg_0)).x, select(firstLeadingBit(arg_1 >> (arg_3.b % 32u)), (i32(-1i) * -783i) >> (_wgslsmith_mult_u32(arg_3.b, 1u) % 32u), true || (arg_3.b != arg_2.x))), arg_3.b, firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_mult_i32(1i, -32574i), _wgslsmith_add_i32(arg_3.c, -15151i))), arg_3.e.x, arg_3.e);
    var var_1 = arg_3.e.x;
    var var_2 = func_2(Struct_3(select(var_0.c, ~(~1i), !(false | arg_0)), false), Struct_3(var_0.c, ~func_2(Struct_3(arg_3.a.x, false), Struct_3(-2147483647i, arg_0)).a.x <= var_0.a.x));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1241f - var_0.e.x), func_2(Struct_3(65714i, true), Struct_3(-20365i, true)).d, arg_0)), var_0.e.x)), 1000f) * _wgslsmith_f_op_f32(floor(var_0.e.x)));
    var var_3 = Struct_2(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e.x - -263f))) * var_0.e.x), arg_3.e.x);
    return Struct_2(func_2(Struct_3(_wgslsmith_dot_vec3_i32(select(arg_3.a.zzz, var_3.a.a.zww, vec3<bool>(arg_0, false, arg_0)), -var_0.a.wzy), true), Struct_3(50166i, arg_0)), 495f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.e.x), -1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(select(!any(vec3<bool>(false, true, false)), true, all(vec4<bool>(true, any(vec2<bool>(true, true)), true, func_1(0u, vec3<bool>(false, false, true), -1i)))), func_3(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(false, true), true))).x | 1i, reverseBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(91931u, 4294967295u, u_input.a.x, 29464u) >> ((vec4<u32>(u_input.b, u_input.b, 10713u, 1u) & vec4<u32>(54341u, u_input.b, 82877u, u_input.a.x)) % vec4<u32>(32u)), select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 1u, 1u, u_input.b), vec4<u32>(1u, 5181u, 0u, 4294967295u)), vec4<u32>(83838u, u_input.a.x, u_input.b, u_input.a.x), all(vec4<bool>(true, true, true, true))))), Struct_1(_wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(0i, -1i, -22745i, -20896i)), select(vec4<i32>(24512i, 2147483647i, -1i, -1i), vec4<i32>(72544i, 1i, 2147483647i, 26610i), vec4<bool>(false, false, false, false))) << (abs(min(vec4<u32>(u_input.b, u_input.a.x, 0u, u_input.b), vec4<u32>(u_input.b, 0u, u_input.a.x, 4294967295u))) % vec4<u32>(32u)), 1u | u_input.b, -14905i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-2707f, 524f)), _wgslsmith_f_op_f32(floor(-1230f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1626f, 1252f, 1271f, -624f)), vec4<f32>(1000f, 628f, 1781f, 2348f)))))));
    let var_1 = select(vec2<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true))), vec2<bool>(true, true), vec2<bool>(true, true));
    var var_2 = select(vec3<bool>(var_1.x && (u_input.b < 51416u), 613f != var_0.a.d, true), vec3<bool>(any(!(!vec4<bool>(false, var_1.x, var_1.x, false))), all(vec2<bool>(all(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), !var_1.x)), true | any(vec2<bool>(false, var_1.x))), select(vec3<bool>(true, !any(vec2<bool>(var_1.x, var_1.x)), any(select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(true, false, var_1.x, var_1.x), vec4<bool>(var_1.x, true, true, var_1.x)))), select(vec3<bool>(true, var_1.x || true, false), !(!vec3<bool>(true, var_1.x, true)), vec3<bool>(!var_1.x, any(vec2<bool>(false, var_1.x)), !var_1.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(max(~_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.b, 1u, u_input.a.x, 1u), vec4<u32>(u_input.b, 26769u, 0u, u_input.b)), vec4<u32>(4294967295u, ~_wgslsmith_mod_u32(18135u, 55174u), abs(var_0.a.b), ~4294967295u)), -var_0.a.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(122f + var_0.b), var_0.c, 1935f, _wgslsmith_f_op_f32(-1570f + var_0.b)) - var_0.a.e), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 49803u, var_0.a.b), vec3<u32>(u_input.a.x, 75855u, 1u)), select(abs(76734u), _wgslsmith_mod_u32(50126u, 79719u), var_0.a.a.x <= 1i)), ~(~vec2<u32>(1u, 1u))), ~(vec3<u32>(var_0.a.b, 46932u, firstTrailingBit(4045u)) & ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 23012u, 1u), vec3<u32>(4294967295u, u_input.a.x, 1u))));
}

