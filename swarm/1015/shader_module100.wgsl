struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: u32,
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    var var_0 = u_input.a;
    let var_1 = arg_0.a.yy;
    var_0 = 1u;
    var_0 = ~_wgslsmith_div_u32(~_wgslsmith_sub_u32(~61433u, countOneBits(0u)), _wgslsmith_add_u32(u_input.a, ~_wgslsmith_div_u32(1u, 46348u)));
    let var_2 = ~vec2<u32>(reverseBits(4294967295u >> (u_input.a % 32u)), 0u) >> (arg_1.b.yz % vec2<u32>(32u));
    return Struct_2(_wgslsmith_f_op_vec4_f32(floor(arg_0.a)), -1554f, _wgslsmith_div_u32(arg_1.b.x, 33649u), firstLeadingBit(~(~u_input.a)));
}

fn func_3() -> bool {
    let var_0 = func_1(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(224f, 1348f, 100f, -688f)), vec4<f32>(1215f, -1071f, -379f, 494f), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(391f + -773f))) + -230f), _wgslsmith_div_u32(~(~u_input.a), reverseBits(36901u)), ~u_input.a), Struct_3(vec4<u32>((u_input.a ^ u_input.a) | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 32660u), vec3<u32>(u_input.a, u_input.a, u_input.a)), select(13979u, max(1u, u_input.a), u_input.a > u_input.a), 1u, u_input.a), select(~vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 0u), true) | ((vec3<u32>(u_input.a, 0u, 1u) ^ vec3<u32>(u_input.a, 25143u, u_input.a)) ^ select(vec3<u32>(175u, 1u, u_input.a), vec3<u32>(7013u, 1u, u_input.a), vec3<bool>(false, true, true)))), Struct_1(vec2<bool>(any(vec2<bool>(true, true)), false), max(_wgslsmith_mod_vec3_i32(vec3<i32>(14980i, -1i, 1i), _wgslsmith_add_vec3_i32(vec3<i32>(-17252i, 36237i, 1i), vec3<i32>(6079i, 0i, 233i))), vec3<i32>(1i, 1i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-230f, -1033f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -429f)));
    var var_1 = Struct_1(!select(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), vec2<bool>(true, true), true), vec3<i32>(1i, 53968i, i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 314i), vec2<i32>(-2147483647i, -1i))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-301f, _wgslsmith_f_op_f32(-350f - var_0.b))), var_0.b)), _wgslsmith_f_op_f32(-var_0.a.x));
    var_1 = Struct_1(vec2<bool>(select(true, false, all(!vec3<bool>(var_1.a.x, true, true))), all(vec3<bool>(all(vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x)), var_1.a.x, !var_1.a.x))), ~vec3<i32>(var_1.b.x, -18229i, abs(var_1.b.x ^ var_1.b.x)), var_1.d, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, 1442f) - var_1.d));
    var_1 = Struct_1(select(!var_1.a, var_1.a, select(!(!vec2<bool>(var_1.a.x, var_1.a.x)), vec2<bool>(!var_1.a.x, all(vec3<bool>(true, var_1.a.x, false))), var_1.a.x)), ~var_1.b, var_0.a.x, -1038f);
    var_1 = Struct_1(vec2<bool>(true, any(!vec4<bool>(var_1.a.x, false, var_1.a.x, true))), var_1.b ^ min(~(-vec3<i32>(var_1.b.x, -1i, 26261i)), _wgslsmith_mult_vec3_i32(var_1.b, vec3<i32>(1i, -1i, var_1.b.x))), -751f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1(func_1(Struct_2(var_0.a, var_0.b, 4294967295u, u_input.a), Struct_3(vec4<u32>(var_0.c, 8806u, var_0.d, var_0.d), vec3<u32>(var_0.c, var_0.d, 0u)), Struct_1(vec2<bool>(true, var_1.a.x), vec3<i32>(var_1.b.x, 11611i, 23019i), 450f, -436f)), Struct_3(vec4<u32>(u_input.a, 4294967295u, 28655u, 4294967295u), vec3<u32>(4294967295u, var_0.c, 0u)), Struct_1(vec2<bool>(var_1.a.x, false), var_1.b, -1000f, 799f)).a.x) - -1000f));
    return !(!any(vec4<bool>(var_1.a.x, true, true, all(vec4<bool>(true, true, var_1.a.x, false)))));
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> vec2<bool> {
    var var_0 = Struct_5(~vec4<u32>(u_input.a, ~88512u, _wgslsmith_dot_vec4_u32(~arg_1.a.a, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a, arg_1.a.b.x, u_input.a), vec4<u32>(u_input.a, arg_1.b.c, u_input.a, arg_1.b.d))), _wgslsmith_add_u32(_wgslsmith_div_u32(23036u, u_input.a), ~u_input.a)), arg_0 & select(arg_0, arg_0, arg_0), Struct_4(arg_1.a, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_1.b.a, arg_1.b.a))), arg_1.b.a.x, 30085u, abs(arg_1.a.a.x << (67237u % 32u))), vec3<i32>(arg_1.c.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, arg_1.c.x, arg_1.c.x, arg_1.c.x), vec4<i32>(22860i, -14385i, arg_1.c.x, arg_1.c.x) ^ vec4<i32>(1i, 9760i, arg_1.c.x, 0i)), _wgslsmith_mult_i32(arg_1.c.x, select(arg_1.c.x, 22850i, true)))), func_1(Struct_2(vec4<f32>(_wgslsmith_div_f32(586f, -2978f), func_1(Struct_2(vec4<f32>(arg_1.b.a.x, -1168f, arg_1.b.b, arg_1.b.b), -1463f, arg_1.a.a.x, 40013u), arg_1.a, Struct_1(vec2<bool>(arg_0, false), vec3<i32>(arg_1.c.x, 12260i, arg_1.c.x), 805f, arg_1.b.a.x)).b, arg_1.b.b, _wgslsmith_f_op_f32(floor(arg_1.b.a.x))), arg_1.b.a.x, firstLeadingBit(124073u), arg_1.a.b.x), arg_1.a, Struct_1(vec2<bool>(func_3(), !arg_0), vec3<i32>(arg_1.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-16414i, -1i, arg_1.c.x, -8775i), vec4<i32>(1i, 0i, -1i, arg_1.c.x)), firstLeadingBit(arg_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.b)), arg_1.b.b)).c);
    var_0 = Struct_5(arg_1.a.a | ~_wgslsmith_mod_vec4_u32(~arg_1.a.a, ~var_0.a), false, arg_1, arg_1.b.d);
    let var_1 = vec2<bool>(!(!func_3()), func_3());
    let var_2 = reverseBits(firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 18109u, u_input.a, 63656u) ^ arg_1.a.a, firstTrailingBit(vec4<u32>(arg_1.a.b.x, u_input.a, arg_1.b.d, 0u))), _wgslsmith_add_vec4_u32(arg_1.a.a, vec4<u32>(1u, u_input.a, 1u, var_0.c.a.a.x) & arg_1.a.a))));
    var_0 = Struct_5(vec4<u32>(var_0.a.x, _wgslsmith_dot_vec3_u32(var_0.a.yyx, vec3<u32>(1u, _wgslsmith_sub_u32(4294967295u, 48591u), arg_1.b.d)), ~abs(13381u), reverseBits(1u)), false, Struct_4(var_0.c.a, Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.b.b, arg_1.b.b, 137f, arg_1.b.a.x))))), var_0.c.b.a.x, ~26127u, ~(~13357u)), ~select(vec3<i32>(var_0.c.c.x, arg_1.c.x, arg_1.c.x) | arg_1.c, ~vec3<i32>(var_0.c.c.x, -2147483647i, var_0.c.c.x), select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(true, var_1.x, var_0.b), vec3<bool>(true, true, var_0.b)))), firstTrailingBit(var_2.x));
    return var_1;
}

fn func_2(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: bool) -> Struct_2 {
    var var_0 = arg_0.c.b;
    var var_1 = Struct_1(select(vec2<bool>(!arg_0.b, select(false, arg_0.b, true) | !arg_0.b), !func_4(func_3(), arg_0.c), all(select(vec3<bool>(arg_3, true, arg_0.b), select(vec3<bool>(false, arg_0.b, arg_3), vec3<bool>(arg_0.b, true, arg_3), true), all(vec4<bool>(false, true, true, arg_3))))), _wgslsmith_clamp_vec3_i32(arg_0.c.c, vec3<i32>(-11025i, arg_2.x, arg_2.x) << (~arg_0.c.a.a.xwy % vec3<u32>(32u)), arg_2.yxx) << (~_wgslsmith_add_vec3_u32(vec3<u32>(15291u, 43524u, 21800u), _wgslsmith_div_vec3_u32(arg_1.wyx, arg_0.c.a.a.zyz)) % vec3<u32>(32u)), arg_0.c.b.b, _wgslsmith_f_op_f32(-func_1(func_1(arg_0.c.b, Struct_3(vec4<u32>(arg_0.a.x, arg_1.x, var_0.d, var_0.d), vec3<u32>(var_0.d, 1u, 1u)), Struct_1(vec2<bool>(arg_0.b, true), vec3<i32>(arg_0.c.c.x, -5960i, -11851i), var_0.a.x, arg_0.c.b.a.x)), Struct_3(~vec4<u32>(0u, 0u, var_0.d, 74846u), vec3<u32>(1465u, arg_1.x, 55831u)), Struct_1(vec2<bool>(false, arg_3), abs(vec3<i32>(-2147483647i, -2147483647i, arg_0.c.c.x)), _wgslsmith_f_op_f32(min(var_0.a.x, var_0.b)), _wgslsmith_f_op_f32(floor(-704f)))).a.x));
    var var_2 = true;
    var_1 = Struct_1(select(!vec2<bool>(any(vec3<bool>(arg_0.b, arg_3, false)), !arg_3), !vec2<bool>(false, var_1.d > arg_0.c.b.b), arg_3), ~vec3<i32>(_wgslsmith_div_i32(arg_0.c.c.x, ~1i), 35194i | -arg_2.x, arg_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.c)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.c.b.a.x))) - _wgslsmith_f_op_f32(f32(-1f) * -670f))), -200f);
    var var_3 = arg_0.b;
    return func_1(func_1(arg_0.c.b, arg_0.c.a, Struct_1(func_4(func_4(true, Struct_4(Struct_3(vec4<u32>(1u, 0u, u_input.a, u_input.a), arg_1.zwx), arg_0.c.b, vec3<i32>(arg_2.x, arg_2.x, -1i))).x, arg_0.c), _wgslsmith_div_vec3_i32(~vec3<i32>(32414i, 0i, 29267i), vec3<i32>(40915i, arg_0.c.c.x, -20199i) << (arg_0.c.a.b % vec3<u32>(32u))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1000f, var_1.d, true)), _wgslsmith_f_op_f32(f32(-1f) * -619f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -586f) + _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)))), Struct_3(vec4<u32>(arg_0.a.x, min(~16044u, abs(1u)), _wgslsmith_dot_vec3_u32(arg_0.c.a.a.wyz, arg_1.wxy), ~81519u), vec3<u32>(var_0.c, u_input.a, reverseBits(4294967295u))), Struct_1(vec2<bool>(var_1.a.x, !(arg_3 && arg_3)), var_1.b, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b.b)))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_5(_wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(0u, arg_1.c), arg_1.d, _wgslsmith_mult_u32(arg_0.d, 16333u), 1u), vec4<u32>(u_input.a, 1u, 1u, 1u)), vec4<u32>(u_input.a << (u_input.a % 32u), ~u_input.a, ~0u, 4294967295u) & min(vec4<u32>(u_input.a, arg_1.d, arg_0.c, 20533u), vec4<u32>(arg_0.c, arg_1.c, 32647u, 1u))), !select(any(vec4<bool>(false, false, false, false)), 0u <= arg_0.c, true) | ((true || any(vec4<bool>(true, false, false, true))) == func_4(true, Struct_4(Struct_3(vec4<u32>(29633u, 0u, 8222u, 9143u), vec3<u32>(4294967295u, u_input.a, 0u)), arg_1, vec3<i32>(24297i, 873i, 15358i))).x), Struct_4(Struct_3(vec4<u32>(~arg_0.d, select(u_input.a, 0u, false), ~59380u, _wgslsmith_div_u32(arg_1.c, 12634u)), ~(~vec3<u32>(4294967295u, arg_0.c, arg_1.d))), arg_1, vec3<i32>(-1i) * -abs(vec3<i32>(-63683i, 0i, -1i))), arg_0.c);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(var_0.c.b.b, 1000f)), var_0.c.b.b, arg_0.a.x, func_2(Struct_5(~vec4<u32>(var_0.c.a.b.x, 1u, u_input.a, u_input.a), var_0.b, Struct_4(Struct_3(vec4<u32>(arg_0.d, u_input.a, u_input.a, u_input.a), vec3<u32>(var_0.d, 0u, arg_0.d)), func_1(Struct_2(vec4<f32>(-415f, 857f, arg_1.b, arg_0.a.x), var_0.c.b.a.x, 1u, 0u), var_0.c.a, Struct_1(vec2<bool>(false, var_0.b), vec3<i32>(-1i, -1i, 1i), arg_1.b, var_0.c.b.a.x)), -vec3<i32>(37366i, 0i, 1i)), _wgslsmith_mod_u32(71322u, arg_1.d | 0u)), vec4<u32>(72264u, abs(firstLeadingBit(arg_1.c)), arg_1.c, ~max(arg_1.c, arg_1.d)), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(-2147483647i, var_0.c.c.x, var_0.c.c.x, var_0.c.c.x) << (vec4<u32>(1u, arg_0.c, 4294967295u, arg_1.c) % vec4<u32>(32u))), firstLeadingBit(vec4<i32>(var_0.c.c.x, -7460i, var_0.c.c.x, -1i)) | abs(vec4<i32>(47471i, var_0.c.c.x, 38745i, 64786i)), min(vec4<i32>(var_0.c.c.x, -24666i, var_0.c.c.x, var_0.c.c.x), abs(vec4<i32>(-35991i, var_0.c.c.x, var_0.c.c.x, var_0.c.c.x)))), func_3()).b);
    var var_2 = var_0.c;
    let var_3 = var_2.b.a;
    var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-var_2.b.a), func_1(arg_1, var_2.a, Struct_1(vec2<bool>(true, true), var_2.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(838f)), _wgslsmith_f_op_f32(1000f - var_2.b.b))), _wgslsmith_f_op_f32(-arg_1.b))).a));
    return _wgslsmith_f_op_f32(round(var_0.c.b.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(countOneBits(~vec4<u32>(firstLeadingBit(1u), ~u_input.a, 4294967295u, ~105660u)), firstTrailingBit(~vec3<u32>(u_input.a, u_input.a, u_input.a) << ((select(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(1u, u_input.a, 0u), true) >> (countOneBits(vec3<u32>(0u, 4294967295u, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u))));
    var var_1 = ~30020i;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-681f)) - -636f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -253f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 271f) - _wgslsmith_f_op_f32(f32(-1f) * -372f)), _wgslsmith_f_op_f32(func_5(func_1(Struct_2(vec4<f32>(-738f, 175f, 623f, 1779f), -1219f, var_0.b.x, 72595u), Struct_3(var_0.a, var_0.a.xwx), Struct_1(vec2<bool>(true, false), vec3<i32>(-2147483647i, 3915i, 1i), 1065f, -2023f)), func_2(Struct_5(vec4<u32>(4294967295u, u_input.a, 26161u, 51u), false, Struct_4(Struct_3(vec4<u32>(4294967295u, u_input.a, var_0.a.x, u_input.a), var_0.a.wxy), Struct_2(vec4<f32>(677f, -193f, -1542f, 805f), -226f, 57637u, u_input.a), vec3<i32>(2147483647i, -30829i, -7132i)), u_input.a), vec4<u32>(13666u, var_0.b.x, var_0.b.x, u_input.a), vec4<i32>(-2147483647i, 1i, -1730i, -4889i), true)))), 1000f, _wgslsmith_div_f32(-1000f, 1f)));
    let var_3 = -_wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -49601i, -1i), vec3<i32>(0i, -2147483647i, -26743i)), ~9845i), 1i), select(-2147483647i, reverseBits(-1i), true) << (firstTrailingBit(var_0.a.x ^ 785u) % 32u));
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1(Struct_2(var_2, 264f, 4294967295u, u_input.a), Struct_3(vec4<u32>(u_input.a, u_input.a, 25703u, var_0.a.x), var_0.a.xzy), Struct_1(vec2<bool>(true, false), vec3<i32>(1i, var_3, var_3), -945f, var_2.x)).a.x, _wgslsmith_f_op_f32(var_2.x * 250f), _wgslsmith_f_op_f32(-var_2.x), -193f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), var_0.a.x, ~4294967295u);
    var_0 = Struct_3(abs(~abs(_wgslsmith_clamp_vec4_u32(var_0.a, vec4<u32>(var_4.d, var_0.a.x, 19576u, 42168u), var_0.a))), vec3<u32>(reverseBits(~1u), ~(abs(var_0.a.x) | var_4.d), _wgslsmith_sub_u32(var_0.a.x, ~var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -(~vec2<i32>(1i, 1i)));
}

