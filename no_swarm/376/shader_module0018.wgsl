struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = abs(abs(2147483647i | ~(arg_3.b ^ arg_2.b)));
    var var_1 = arg_3;
    let var_2 = vec2<bool>(!arg_1.c.x | (_wgslsmith_add_u32(6024u & u_input.b.x, 17146u) == 57570u), any(select(!vec3<bool>(false, true, arg_1.c.x), vec3<bool>(all(arg_1.c.xy), arg_1.c.x, arg_1.c.x), false)));
    var_1 = Struct_1(arg_3.a, -2147483647i);
    let var_3 = arg_3;
    return u_input.b;
}

fn func_2(arg_0: f32, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_dot_vec3_u32(select(~func_3(~63434i, Struct_2(Struct_1(vec2<f32>(arg_0, arg_0), -39488i), -1i, vec3<bool>(false, true, false), 0i, Struct_1(vec2<f32>(arg_0, -252f), -1i)), Struct_1(vec2<f32>(arg_0, arg_0), 35863i), Struct_1(vec2<f32>(arg_0, -1974f), -16321i)), u_input.b, !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), false), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true))), select(vec3<u32>(~func_3(-16984i, Struct_2(Struct_1(vec2<f32>(791f, -1118f), 0i), 20126i, vec3<bool>(false, false, true), -34049i, Struct_1(vec2<f32>(1000f, arg_0), 33872i)), Struct_1(vec2<f32>(arg_0, arg_0), -12321i), Struct_1(vec2<f32>(arg_0, arg_0), -35831i)).x, _wgslsmith_sub_u32(65644u, abs(11520u)), max(1u, arg_1)), u_input.b, select(vec3<bool>(arg_1 >= u_input.a, select(true, true, false), select(true, true, true)), vec3<bool>(true, true, true), true != select(true, true, true))));
    return any(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_u32(~u_input.b, ~u_input.b);
    var var_1 = -1i;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(arg_2.a.x)), -147f);
    var var_3 = arg_3;
    let var_4 = u_input.b.zz;
    return Struct_2(Struct_1(arg_3.e.a, min(-(var_3.e.b & arg_2.b), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -2147483647i, -36725i, 8199i), vec4<i32>(arg_2.b, -16169i, 0i, arg_0)), reverseBits(var_3.e.b)))), arg_3.d, !vec3<bool>(!(-16596i != arg_0), !arg_1, any(arg_3.c)), arg_3.e.b, arg_2);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = arg_0.e;
    let var_1 = arg_0;
    let var_2 = Struct_1(vec2<f32>(arg_0.a.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.e.a.x), -3116f))), ~countOneBits(var_1.b));
    var var_3 = func_4(arg_0.b, select(true, var_1.c.x, true || !arg_0.c.x), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(var_0.a, vec2<f32>(var_0.a.x, arg_0.e.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x) * var_2.a) * vec2<f32>(var_0.a.x, arg_0.e.a.x)))), ~0i), Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_1.a.a)), _wgslsmith_f_op_vec2_f32(round(var_2.a))), reverseBits(arg_0.d)), -(~(-var_2.b)), arg_0.c, var_1.a.b, func_4(var_2.b | _wgslsmith_clamp_i32(arg_0.a.b, var_1.d, var_2.b), true, var_1.e, func_4(2147483647i, var_1.c.x, func_4(-1i, arg_0.c.x, arg_0.a, Struct_2(Struct_1(var_0.a, var_1.d), arg_0.d, vec3<bool>(arg_0.c.x, false, arg_0.c.x), var_2.b, var_2)).a, Struct_2(Struct_1(vec2<f32>(-977f, -1151f), var_2.b), -14142i, arg_0.c, -2147483647i, var_2))).a)).a;
    var_3 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-117f, var_3.a.x), var_3.a), func_4(-(~3456i), true, arg_0.e, func_4(arg_0.d, !select(arg_0.c.x, var_1.c.x, var_1.c.x), Struct_1(vec2<f32>(104f, var_0.a.x), ~var_0.b), Struct_2(var_2, arg_0.b ^ 32412i, vec3<bool>(arg_0.c.x, arg_0.c.x, false), -21314i, Struct_1(var_3.a, var_3.b)))).a.b);
    return var_1.a;
}

fn func_1(arg_0: u32, arg_1: f32) -> i32 {
    var var_0 = Struct_2(func_5(func_4(~firstLeadingBit(-9875i), !func_2(752f, arg_0), Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-167f, -1000f))), firstTrailingBit(-2147483647i)), Struct_2(Struct_1(vec2<f32>(arg_1, 671f), -46894i), -1i, vec3<bool>(true, true, true), _wgslsmith_add_i32(-81347i, 28574i), Struct_1(vec2<f32>(arg_1, arg_1), 12489i)))), select(_wgslsmith_sub_i32(reverseBits(55119i), _wgslsmith_sub_i32(0i, -1i)), firstLeadingBit(~0i), _wgslsmith_div_u32(u_input.a, u_input.b.x) >= arg_0) ^ -17118i, select(!vec3<bool>(true, true, func_4(-2147483647i, false, Struct_1(vec2<f32>(-952f, arg_1), -2147483647i), Struct_2(Struct_1(vec2<f32>(1000f, -328f), -43952i), -5228i, vec3<bool>(true, true, true), 20064i, Struct_1(vec2<f32>(-544f, arg_1), -36006i))).c.x), vec3<bool>(_wgslsmith_f_op_f32(-arg_1) >= arg_1, true, true), func_4(22635i, all(vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), 0i), Struct_2(func_4(24656i, false, Struct_1(vec2<f32>(arg_1, arg_1), -1i), Struct_2(Struct_1(vec2<f32>(arg_1, 1587f), -66679i), -1i, vec3<bool>(false, true, false), 1i, Struct_1(vec2<f32>(arg_1, arg_1), -2147483647i))).e, 0i, func_4(1i, false, Struct_1(vec2<f32>(arg_1, arg_1), 2147483647i), Struct_2(Struct_1(vec2<f32>(arg_1, 945f), -2147483647i), -42857i, vec3<bool>(true, false, true), 7435i, Struct_1(vec2<f32>(arg_1, arg_1), -1i))).c, reverseBits(1i), func_4(1i, false, Struct_1(vec2<f32>(arg_1, 1141f), -25219i), Struct_2(Struct_1(vec2<f32>(arg_1, arg_1), -2147483647i), -1i, vec3<bool>(true, false, false), 12546i, Struct_1(vec2<f32>(-1339f, -501f), 33967i))).e)).c), -45933i, func_4(_wgslsmith_div_i32(~1i, countOneBits(_wgslsmith_mult_i32(71427i, 26417i))), true, func_5(Struct_2(Struct_1(vec2<f32>(arg_1, 1000f), -1i), func_5(Struct_2(Struct_1(vec2<f32>(arg_1, -976f), 7169i), 7i, vec3<bool>(false, true, false), -2147483647i, Struct_1(vec2<f32>(966f, arg_1), -1i))).b, select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), ~1i, Struct_1(vec2<f32>(-782f, -274f), 62642i))), Struct_2(func_4(~1i, true, func_5(Struct_2(Struct_1(vec2<f32>(arg_1, arg_1), 8344i), 0i, vec3<bool>(true, false, false), -2147483647i, Struct_1(vec2<f32>(507f, -1489f), 0i))), func_4(-2147483647i, false, Struct_1(vec2<f32>(192f, arg_1), 0i), Struct_2(Struct_1(vec2<f32>(arg_1, arg_1), -42669i), -2147483647i, vec3<bool>(false, false, true), 35624i, Struct_1(vec2<f32>(1509f, arg_1), -3714i)))).a, -19310i, vec3<bool>(true, true, u_input.b.x >= 4294967295u), -2147483647i, func_4(max(-1i, -2147483647i), true, Struct_1(vec2<f32>(266f, -1483f), -24380i), Struct_2(Struct_1(vec2<f32>(-292f, -1112f), 1i), -4725i, vec3<bool>(true, true, true), 96443i, Struct_1(vec2<f32>(arg_1, 246f), -1i))).e)).a);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-933f, -510f, arg_1)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1495f, var_0.e.a.x, arg_1), vec3<f32>(-495f, -472f, var_0.a.a.x))), !var_0.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-175f, 1401f, var_0.e.a.x))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(499f, -1508f, -644f), vec3<f32>(arg_1, 1132f, arg_1)))), var_0.c)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-869f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, arg_1, var_0.c.x)))), 1175f, arg_1));
    let var_2 = true;
    var_0 = func_4(firstLeadingBit(var_0.b), false, Struct_1(func_4(firstTrailingBit(-2147483647i), true & var_2, var_0.a, Struct_2(Struct_1(var_1.zx, 2147483647i), max(2147483647i, 26431i), vec3<bool>(var_0.c.x, var_0.c.x, true), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, var_0.e.b), vec2<i32>(var_0.d, 0i)), Struct_1(var_1.yx, var_0.a.b))).a.a, min(-51699i, var_0.b)), func_4(_wgslsmith_div_i32(var_0.e.b, _wgslsmith_div_i32(-30778i, _wgslsmith_add_i32(var_0.b, -474i))), var_0.c.x, func_5(func_4(~(-1i), 26380u != u_input.a, var_0.e, func_4(var_0.d, var_0.c.x, Struct_1(vec2<f32>(-1000f, var_0.a.a.x), -1i), Struct_2(var_0.e, var_0.b, var_0.c, 0i, Struct_1(var_1.yx, var_0.e.b))))), Struct_2(func_5(func_4(-1738i, var_0.c.x, var_0.a, Struct_2(Struct_1(vec2<f32>(-464f, -1226f), var_0.d), var_0.e.b, vec3<bool>(true, false, var_0.c.x), var_0.e.b, Struct_1(vec2<f32>(-1288f, -1000f), var_0.b)))), ~6959i, select(select(var_0.c, var_0.c, var_0.c.x), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), min(~var_0.e.b, _wgslsmith_mod_i32(-53811i, 55655i)), func_5(Struct_2(Struct_1(vec2<f32>(-329f, 143f), 1i), var_0.d, vec3<bool>(false, true, false), -2147483647i, Struct_1(var_0.e.a, var_0.d))))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.e.a), var_0.a.a, var_2)) * _wgslsmith_f_op_vec2_f32(trunc(var_0.a.a))), select(_wgslsmith_sub_i32(-var_0.a.b, 1i), min(var_0.e.b, var_0.b >> (4294967295u % 32u)), any(vec3<bool>(false, true, var_2)))), var_0.d, !func_4(var_0.b, func_2(_wgslsmith_div_f32(var_1.x, var_1.x), firstTrailingBit(arg_0)), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(var_1.yx)), var_0.a.b >> (u_input.b.x % 32u)), func_4(~var_0.a.b, true, var_0.e, Struct_2(Struct_1(vec2<f32>(arg_1, arg_1), var_0.d), var_0.e.b, var_0.c, 42957i, var_0.a))).c, _wgslsmith_dot_vec4_i32(-(vec4<i32>(var_0.a.b, var_0.e.b, 2147483647i, var_0.a.b) & firstTrailingBit(vec4<i32>(var_0.b, var_0.d, -1i, var_0.a.b))), abs(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(1i, 2147483647i, 2147483647i, -2147483647i)), vec4<i32>(0i, var_0.d, var_0.d, -21598i) & vec4<i32>(32633i, 7497i, -23272i, 2147483647i)))), func_4(var_0.e.b, false, var_0.a, Struct_2(var_0.e, ~var_0.a.b, !var_0.c, var_0.b, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a.x, -932f) + var_1.yy), var_0.d))).a);
    return var_3.d;
}

fn func_6(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_1(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(func_4(2147483647i, arg_0.x, Struct_1(vec2<f32>(193f, 1000f), 1i), Struct_2(Struct_1(vec2<f32>(-365f, 504f), -35798i), 1i, arg_0.yyz, 2147483647i, Struct_1(vec2<f32>(588f, 227f), 38301i))).e.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1994f, -585f))))), _wgslsmith_f_op_f32(f32(-1f) * -700f)), reverseBits(1i));
    var var_1 = !arg_0.x;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_5(Struct_2(var_0, -1i, arg_0.yww, 7606i, var_0)).a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(546f)) + var_0.a.x))), _wgslsmith_f_op_f32(-913f - _wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -306f)))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_2.x)))), _wgslsmith_f_op_f32(1191f + _wgslsmith_f_op_f32(-277f + var_0.a.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(var_2.x + -1080f)))));
    var_1 = arg_0.x;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(select(!vec4<bool>(all(vec2<bool>(true, false)), true, true, false), vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), func_1(u_input.a, 1048f) > (-2147483647i << (u_input.b.x % 32u)), true, true), !select(true, true, true)));
    let var_1 = func_4(~(-_wgslsmith_add_i32(2147483647i | var_0.b, -2147483647i)), all(select(vec4<bool>(true, true, all(vec2<bool>(true, false)), all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), true)), Struct_1(var_0.a, _wgslsmith_div_i32(-54871i, select(_wgslsmith_clamp_i32(var_0.b, var_0.b, 56443i), -54379i, all(vec3<bool>(true, false, false))))), func_4(var_0.b, !all(vec3<bool>(true, true, true)) && any(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), func_4(-var_0.b, _wgslsmith_f_op_f32(-var_0.a.x) < _wgslsmith_f_op_f32(max(-835f, 198f)), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), var_0.b), func_4(_wgslsmith_add_i32(2147483647i, -2408i), true, func_5(Struct_2(Struct_1(var_0.a, 4070i), var_0.b, vec3<bool>(false, true, true), -2147483647i, Struct_1(vec2<f32>(var_0.a.x, var_0.a.x), 31701i))), func_4(41114i, false, Struct_1(vec2<f32>(-1000f, var_0.a.x), var_0.b), Struct_2(Struct_1(var_0.a, -30698i), var_0.b, vec3<bool>(false, true, false), var_0.b, Struct_1(vec2<f32>(var_0.a.x, -2146f), var_0.b))))).a, func_4(~var_0.b, true, func_5(func_4(2147483647i, true, Struct_1(var_0.a, 3885i), Struct_2(Struct_1(var_0.a, -9801i), var_0.b, vec3<bool>(true, true, false), -1i, Struct_1(var_0.a, 0i)))), Struct_2(Struct_1(vec2<f32>(var_0.a.x, var_0.a.x), var_0.b), firstTrailingBit(var_0.b), func_4(-2147483647i, true, Struct_1(vec2<f32>(var_0.a.x, 768f), var_0.b), Struct_2(Struct_1(var_0.a, var_0.b), var_0.b, vec3<bool>(false, true, true), var_0.b, Struct_1(var_0.a, -27385i))).c, 0i, func_5(Struct_2(Struct_1(vec2<f32>(var_0.a.x, var_0.a.x), var_0.b), var_0.b, vec3<bool>(false, true, true), var_0.b, Struct_1(vec2<f32>(var_0.a.x, -862f), 0i))))))).c.x;
    let var_2 = 7038u;
    var var_3 = var_0.a;
    var_3 = vec2<f32>(var_3.x, -434f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

