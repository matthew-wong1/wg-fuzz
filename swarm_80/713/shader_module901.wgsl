struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: bool) -> vec4<f32> {
    var var_0 = ~_wgslsmith_clamp_u32(u_input.c & _wgslsmith_dot_vec4_u32(~u_input.e, firstTrailingBit(u_input.b)), u_input.d.x, firstTrailingBit(~61026u));
    var var_1 = Struct_3(1000f, Struct_2(reverseBits(countOneBits(u_input.b.x)), true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(258f * 253f) + _wgslsmith_f_op_f32(1961f + -1250f)))), Struct_1(!select(vec4<bool>(arg_0, true, arg_0, true), vec4<bool>(true, arg_0, true, arg_0), true)), Struct_1(!(!vec4<bool>(true, arg_0, arg_0, arg_0)))));
    var_0 = ~abs(u_input.e.x);
    let var_2 = u_input.b.xzw;
    let var_3 = var_1.b.e.a.zwz;
    return vec4<f32>(-682f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1822f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(294f, var_1.a))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1488f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1583f)), _wgslsmith_f_op_f32(max(-1660f, var_1.a)))))), 1000f);
}

fn func_4(arg_0: u32, arg_1: vec4<f32>) -> bool {
    var var_0 = min(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), ~(-72341i)), firstTrailingBit(-11420i), abs(14489i) & reverseBits(u_input.a), -_wgslsmith_clamp_i32(u_input.a, -15030i, u_input.a)), ~_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<i32>(u_input.a, u_input.a, -27371i, u_input.a)), abs(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 2147483647i, u_input.a, 49426i), vec4<i32>(u_input.a, u_input.a, 15049i, -2147483647i)), -vec4<i32>(u_input.a, -2147483647i, -1184i, u_input.a)))), vec4<i32>(0i, _wgslsmith_sub_i32(_wgslsmith_mod_i32(3709i, u_input.a), -2147483647i) >> (_wgslsmith_dot_vec2_u32(~u_input.e.xx, min(vec2<u32>(1u, u_input.c), vec2<u32>(0u, 21089u))) % 32u), u_input.a, -u_input.a));
    var_0 = ~countOneBits(-_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 19641i, -20917i, 41471i), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<i32>(2147483647i, 0i, u_input.a, u_input.a))));
    var var_1 = Struct_2(select(_wgslsmith_mod_u32(~(~arg_0), min(u_input.e.x, 1u) | 56278u), ~1u, false), true, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(-1235f, _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(arg_1.x - -469f))))), Struct_1(select(vec4<bool>(true, true, var_0.x < var_0.x, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(all(vec4<bool>(false, false, true, true)), true, true, select(false, true, false)))), Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), -2147483647i == u_input.a)));
    var_1 = Struct_2(~arg_0 >> (~(~u_input.e.x) % 32u), false, _wgslsmith_f_op_f32(f32(-1f) * -978f), Struct_1(select(select(select(vec4<bool>(var_1.d.a.x, false, true, true), var_1.e.a, true), var_1.e.a, var_0.x > u_input.a), !select(var_1.d.a, var_1.e.a, var_1.b), !var_1.d.a.x)), Struct_1(vec4<bool>(var_1.e.a.x, true, var_1.e.a.x | (-2032f == var_1.c), all(select(vec4<bool>(true, true, false, true), vec4<bool>(var_1.e.a.x, true, var_1.b, var_1.e.a.x), var_1.d.a)))));
    var var_2 = (_wgslsmith_add_u32(firstLeadingBit(arg_0), 56877u) ^ 76707u) << (arg_0 % 32u);
    return _wgslsmith_mod_u32(1u, 1u) >= (1u ^ firstTrailingBit(~var_1.a | (var_1.a >> (var_1.a % 32u))));
}

fn func_5(arg_0: vec3<i32>, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(238f + -585f)), _wgslsmith_f_op_f32(sign(114f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<u32>) -> vec2<u32> {
    let var_0 = Struct_1(vec4<bool>(true, !(!(-874f < arg_0.x)), arg_1, arg_1));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + arg_0.x));
    var var_2 = _wgslsmith_f_op_f32(func_5(-vec3<i32>(2147483647i, 4015i & ~u_input.a, ~_wgslsmith_sub_i32(u_input.a, u_input.a)), 30073i, select(all(vec3<bool>(false, false, false)) != var_0.a.x, any(var_0.a.zy), var_0.a.x) && func_4(arg_2.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_1)))), var_0));
    var_2 = 1000f;
    var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -140f)));
    return _wgslsmith_sub_vec2_u32(arg_2, _wgslsmith_div_vec2_u32(firstTrailingBit(firstLeadingBit(vec2<u32>(u_input.d.x, arg_2.x))), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_2.x), max(u_input.e.zy, vec2<u32>(27537u, u_input.c))))));
}

fn func_6(arg_0: vec2<u32>) -> i32 {
    let var_0 = 998f;
    var var_1 = vec2<bool>(true, select(!(true || (-583f < var_0)), false, true));
    var var_2 = _wgslsmith_mod_vec2_i32(select(abs(select(vec2<i32>(u_input.a, 0i), vec2<i32>(1i, u_input.a), vec2<bool>(var_1.x, true)) ^ vec2<i32>(1i, u_input.a)), select(firstLeadingBit(vec2<i32>(-10156i, u_input.a)), vec2<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), -u_input.a), select(var_1.x, var_1.x, !var_1.x)), true), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(select(vec2<i32>(-16026i, u_input.a), vec2<i32>(15370i, 2147483647i), var_1.x), -vec2<i32>(2147483647i, 0i)) ^ vec2<i32>(~u_input.a, u_input.a), max(firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), ~(~vec2<i32>(1i, u_input.a)))));
    let var_3 = var_0;
    var_1 = vec2<bool>(all(select(vec4<bool>(true && var_1.x, false, var_1.x, var_1.x), select(select(vec4<bool>(false, var_1.x, var_1.x, true), vec4<bool>(true, var_1.x, var_1.x, var_1.x), false), select(vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(false, false, var_1.x, false), vec4<bool>(false, false, false, false)), var_1.x), select(!vec4<bool>(var_1.x, true, true, var_1.x), select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(var_1.x, true, false, false)), vec4<bool>(var_1.x, true, var_1.x, false)))), var_1.x);
    return var_2.x;
}

fn func_1() -> vec4<f32> {
    var var_0 = func_6(func_2(vec2<f32>(946f, 458f), true, ~u_input.e.wx)) <= u_input.a;
    var_0 = false & select(any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false, false);
    var var_1 = Struct_2(1u >> (~u_input.c % 32u), true, _wgslsmith_f_op_vec4_f32(func_3(false)).x, Struct_1(vec4<bool>(true, true, true, true)), Struct_1(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, any(vec4<bool>(false, true, false, false)), any(vec3<bool>(true, false, true)), true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)))));
    var var_2 = _wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(53687u, var_1.a, 14671u), vec3<u32>(0u, u_input.c, 38972u)) ^ _wgslsmith_div_vec3_u32(~u_input.e.xzx, vec3<u32>(var_1.a, var_1.a, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, u_input.b.x), u_input.d.xz))), ~vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, min(9399u, u_input.b.x)), 27149u, _wgslsmith_dot_vec3_u32(vec3<u32>(41280u, u_input.d.x, 4294967295u), firstLeadingBit(vec3<u32>(var_1.a, var_1.a, var_1.a)))));
    var_2 = vec3<u32>(~var_2.x, ~u_input.b.x, 1u);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(var_2.x == 1u)).x, _wgslsmith_f_op_f32(-1441f - _wgslsmith_f_op_f32(round(var_1.c))), _wgslsmith_f_op_f32(abs(var_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.c, var_1.c)))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.c), var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -211f), _wgslsmith_div_f32(306f, 665f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c, var_1.c, var_1.c, 211f) * vec4<f32>(-874f, var_1.c, var_1.c, -1579f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_1())));
    var var_1 = var_0.zzw;
    let var_2 = ~vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.c, u_input.c), 4294967295u), ~1u), 0u, u_input.c, ~_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.e.x, u_input.e.x), ~u_input.e.x));
    let var_3 = max(0i, -9485i);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.xyx), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1190f, 1146f) * var_0.zxw), _wgslsmith_f_op_vec4_f32(func_3(true)).xxw)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) * 1062f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(79584u & u_input.d.x);
}

