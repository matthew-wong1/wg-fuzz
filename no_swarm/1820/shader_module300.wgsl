struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<bool>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    var var_0 = any(select(select(vec3<bool>(arg_1.c.x, arg_0.x, any(arg_1.c.zwz)), arg_1.c.yzx, !(!arg_0.x)), vec3<bool>(_wgslsmith_f_op_f32(trunc(-1622f)) <= arg_1.b, false, !(false || arg_1.c.x)), arg_1.c.x));
    var var_1 = vec3<u32>(arg_1.a.x, ~(~(~arg_1.a.x)) & 0u, arg_1.a.x);
    var_1 = countOneBits(select(vec3<u32>(var_1.x, var_1.x, ~_wgslsmith_clamp_u32(100579u, var_1.x, 10875u)), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(20631u, var_1.x, 4294967295u)), ~vec3<u32>(0u, 32612u, arg_1.a.x)), all(select(vec3<bool>(true, arg_0.x, false), select(arg_0, vec3<bool>(false, true, arg_1.c.x), arg_1.c.yww), vec3<bool>(arg_1.c.x, false, arg_0.x)))));
    var var_2 = Struct_2(arg_0, Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u >> (arg_1.a.x % 32u), ~68033u), countOneBits(vec2<u32>(arg_1.a.x, 8255u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.x * arg_1.b), arg_2.x))), arg_1.c, vec3<i32>(firstLeadingBit(58790i), -2147483647i, abs(-2147483647i)) >> ((countOneBits(vec3<u32>(1u, 4294967295u, 19765u)) | ~vec3<u32>(arg_1.a.x, var_1.x, var_1.x)) % vec3<u32>(32u)), arg_1.e), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.b)) + _wgslsmith_f_op_f32(1536f * 785f))), _wgslsmith_f_op_f32(min(arg_1.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.b))))), _wgslsmith_f_op_f32(arg_2.x * arg_1.b)), Struct_1(var_1.xy, -994f, select(vec4<bool>(false && arg_0.x, true, arg_1.c.x, arg_1.a.x >= var_1.x), arg_1.c, any(arg_0.yx) && true), vec3<i32>(arg_1.d.x, -min(arg_1.d.x, arg_1.d.x), u_input.a), arg_1.e), arg_1);
    var var_3 = countOneBits(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, var_2.b.a.x, 1u), vec3<u32>(0u, var_1.x, 1u), vec3<u32>(0u, 0u, 25592u)), max(vec3<u32>(3460u, arg_1.a.x, var_1.x), vec3<u32>(var_1.x, 0u, 74310u))), firstTrailingBit(countOneBits(vec3<u32>(var_2.d.a.x, var_1.x, arg_1.a.x))))) << (vec3<u32>(~var_2.d.a.x, ~arg_1.a.x, ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(40621u, var_2.b.a.x), 1u)) % vec3<u32>(32u));
    return var_2.c.x;
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_1 {
    let var_0 = Struct_2(vec3<bool>(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, true, true), Struct_1(vec2<u32>(0u, 4294967295u), -631f, vec4<bool>(false, false, true, false), vec3<i32>(arg_1, arg_1, arg_1), vec2<i32>(20905i, -15658i)), vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_f32(-874f - -483f))) == arg_0, true), Struct_1(vec2<u32>(firstLeadingBit(reverseBits(1u)), 1u), arg_0, !select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true)), max(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -8817i, 10867i), abs(vec3<i32>(3428i, 0i, 28159i))), _wgslsmith_add_vec3_i32(abs(vec3<i32>(arg_1, u_input.a, u_input.a)), firstLeadingBit(vec3<i32>(-11554i, u_input.a, -7823i)))), _wgslsmith_sub_vec2_i32(vec2<i32>(select(0i, -1i, false), 1i), vec2<i32>(_wgslsmith_add_i32(arg_1, -24422i), ~(-1i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-269f, arg_0, arg_0) - vec3<f32>(844f, arg_0, -1984f))))), Struct_1(abs(vec2<u32>(~41660u, ~73403u)), arg_0, !select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(~(~vec3<i32>(arg_1, 0i, 0i)), vec3<i32>(arg_1, firstTrailingBit(1i), -48134i), true), -abs(countOneBits(vec2<i32>(arg_1, 25596i)))), Struct_1(_wgslsmith_mult_vec2_u32(min(~vec2<u32>(1u, 53060u), min(vec2<u32>(0u, 13123u), vec2<u32>(101787u, 4294967295u))), vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_0))))), !vec4<bool>(true, true, all(vec3<bool>(true, true, true)), true), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-46773i, arg_1, 45413i), vec3<i32>(arg_1, -30335i, 2147483647i), vec3<i32>(arg_1, u_input.a, 2147483647i)) >> (select(~vec3<u32>(1u, 46468u, 0u), max(vec3<u32>(4294967295u, 1u, 72722u), vec3<u32>(0u, 0u, 16068u)), true) % vec3<u32>(32u)), _wgslsmith_add_vec2_i32(~(~vec2<i32>(-25618i, arg_1)), firstLeadingBit(firstTrailingBit(vec2<i32>(-2147483647i, u_input.a))))));
    var var_1 = Struct_2(!select(select(var_0.e.c.yyz, select(vec3<bool>(var_0.b.c.x, true, false), vec3<bool>(true, var_0.e.c.x, var_0.e.c.x), var_0.b.c.x), var_0.e.c.yxz), !(!var_0.e.c.ywx), !var_0.b.c.ywx), var_0.b, var_0.c, var_0.e, var_0.d);
    var var_2 = 44526u;
    var var_3 = Struct_3(u_input.a, false, var_1.c, Struct_2(vec3<bool>(any(select(vec3<bool>(var_1.d.c.x, var_1.e.c.x, var_1.d.c.x), var_1.a, true)), var_0.e.c.x, any(!var_0.a)), Struct_1(vec2<u32>(var_1.d.a.x, select(0u, 0u, var_0.e.c.x)), -1000f, !select(vec4<bool>(var_1.e.c.x, var_0.a.x, false, true), vec4<bool>(var_0.a.x, var_1.a.x, var_1.a.x, var_0.a.x), var_1.a.x), _wgslsmith_sub_vec3_i32(var_0.e.d, ~vec3<i32>(2147483647i, -1i, arg_1)), var_0.d.e), _wgslsmith_div_vec3_f32(var_1.c, _wgslsmith_div_vec3_f32(var_1.c, _wgslsmith_f_op_vec3_f32(var_1.c + vec3<f32>(-1528f, var_1.e.b, 750f)))), Struct_1(vec2<u32>(~2290u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(385f))), vec4<bool>(true, true, var_0.d.c.x, var_0.e.c.x & var_0.d.c.x), -abs(var_0.e.d), _wgslsmith_div_vec2_i32(-var_0.b.e, _wgslsmith_mod_vec2_i32(var_1.d.e, vec2<i32>(-2147483647i, 66653i)))), var_0.d));
    let var_4 = all(var_0.d.c);
    return var_1.e;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(arg_0.b - arg_0.b);
    var var_1 = arg_0.c.zyy;
    let var_2 = func_2(173f, u_input.a);
    return ~(~max(~_wgslsmith_mod_i32(1i, u_input.a), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.a, arg_0.e.x), arg_1.x)));
}

fn func_1() -> u32 {
    var var_0 = max(max(vec3<i32>(50572i, ~reverseBits(-1i), func_4(func_2(-3006f, u_input.a), -vec2<i32>(u_input.a, -2147483647i))), abs(vec3<i32>(-26237i, 1166i, ~(-18946i)))), vec3<i32>(-2147483647i, 0i, ~(~61696i)) >> ((firstLeadingBit(~vec3<u32>(0u, 4294967295u, 42443u)) >> (_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(12714u, 46120u, 24332u)), firstLeadingBit(vec3<u32>(43104u, 0u, 1u))) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_1 = ~(~u_input.a) << (~_wgslsmith_div_u32(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(22757u, 0u, 8463u, 30428u), vec4<u32>(11999u, 4294967295u, 4294967295u, 34159u))) % 32u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1535f, 606f))))))));
    var var_3 = select(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~abs(vec4<u32>(26184u, 4294967295u, 4294967295u, 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 30890u, 4294967295u, 1u), select(vec4<u32>(4294967295u, 1u, 25496u, 109389u), vec4<u32>(0u, 0u, 3742u, 4294967295u), true))), min(reverseBits(firstTrailingBit(vec4<u32>(0u, 56735u, 34809u, 12920u))), ~vec4<u32>(1u, 1u, 1u, 1u))), countOneBits(abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(13179u, 55531u), vec2<u32>(158u, 4294967295u)))), all(func_2(_wgslsmith_f_op_f32(round(var_2.x)), select(var_0.x | u_input.a, reverseBits(u_input.a), true)).c.wzw));
    var_3 = 67636u;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(~func_1(), firstLeadingBit(1u) & ~_wgslsmith_dot_vec3_u32(vec3<u32>(56539u, 62679u, 6084u), vec3<u32>(4294967295u, 32136u, 79327u)), _wgslsmith_div_u32(82750u, _wgslsmith_dot_vec4_u32(vec4<u32>(44589u, 8090u, 0u, 37345u), vec4<u32>(0u, 48529u, 65543u, 4294967295u))), 187u), ~reverseBits(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u), _wgslsmith_mult_u32(1u, 1u), 28052u, reverseBits(31611u))));
    var_0 = _wgslsmith_clamp_vec4_u32(~(countOneBits(min(vec4<u32>(var_0.x, 1u, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x))) & (~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x) ^ countOneBits(vec4<u32>(72727u, var_0.x, 0u, var_0.x)))), _wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, 62859u, var_0.x, 1u)) | abs(vec4<u32>(var_0.x, var_0.x, var_0.x, 86616u) ^ vec4<u32>(var_0.x, 42292u, 0u, var_0.x)), vec4<u32>(_wgslsmith_mod_u32(39760u, var_0.x), var_0.x, var_0.x, var_0.x) << (max(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x) & vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 77768u) | vec4<u32>(var_0.x, 1u, var_0.x, var_0.x)) % vec4<u32>(32u))), ~firstTrailingBit(abs(~vec4<u32>(var_0.x, 70862u, var_0.x, 0u))));
    var var_1 = _wgslsmith_f_op_f32(step(-1035f, 1634f));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1567f - _wgslsmith_f_op_f32(f32(-1f) * -875f))));
    let var_2 = ~select(4294967295u, var_0.x, any(vec3<bool>(true, true, false)));
    var_1 = _wgslsmith_f_op_f32(step(-1000f, 1535f));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-vec3<i32>(1i, 0i, reverseBits(-1i))), 9527u, vec3<u32>(_wgslsmith_mult_u32(~(~var_0.x), ~(~14017u)), var_0.x, _wgslsmith_mod_u32(4294967295u, ~47176u)), var_0.x);
}

