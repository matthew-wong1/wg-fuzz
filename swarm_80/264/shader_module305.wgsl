struct Struct_1 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: f32) -> f32 {
    return _wgslsmith_f_op_f32(-arg_3);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(!(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-685f, -1000f) * 950f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(261f + 1069f) * _wgslsmith_f_op_f32(step(1631f, -886f)))), ~46484u);
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -299f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec4<f32>(988f, -846f, 334f, -1681f), vec2<bool>(var_0.a, var_0.a), Struct_1(var_0.a, var_0.b), -163f))))), _wgslsmith_div_f32(-2251f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1479f)) + _wgslsmith_f_op_f32(step(102f, 614f)))))));
    var var_2 = u_input.b;
    let var_3 = 1000f;
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(var_3)), 180f)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(622f, var_3))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_3)), _wgslsmith_f_op_f32(-920f * var_3)))))));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32) -> i32 {
    var var_0 = func_2(false, arg_0);
    var_0 = Struct_1(func_2(any(!vec3<bool>(var_0.a, var_0.a, false)), arg_0).a, u_input.d);
    let var_1 = Struct_1(true, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, u_input.a, u_input.a, var_0.b), max(vec4<u32>(var_0.b, 0u, 29890u, 30543u), vec4<u32>(arg_0.b, 20306u, arg_0.b, 0u))) & arg_2));
    var_0 = var_1;
    var var_2 = 1966f;
    return u_input.c;
}

fn func_5(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = all(select(!vec3<bool>(arg_3.a, true, true), select(vec3<bool>(any(vec3<bool>(arg_1.x, arg_3.a, false)), true, true), vec3<bool>(true, false, false), vec3<bool>(any(vec4<bool>(arg_3.a, false, arg_3.a, arg_1.x)), true, true)), false));
    var_0 = arg_1.x;
    var_0 = !(all(vec2<bool>(false, false)) && !(_wgslsmith_f_op_f32(f32(-1f) * -333f) < _wgslsmith_f_op_f32(trunc(-382f))));
    let var_1 = Struct_1(arg_2 >= arg_2, abs(arg_3.b));
    var var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(_wgslsmith_mod_u32(min(arg_0.x, 4294967295u), ~0u), 41646u)), u_input.a, countOneBits(abs(1u)) << (~(u_input.a & ~4294967295u) % 32u), (abs(49714u) << (firstTrailingBit(~u_input.a) % 32u)) & ~reverseBits(1u));
    return Struct_1(true, _wgslsmith_dot_vec2_u32(var_2.ww, var_2.xw));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    return ~(vec4<u32>(min(_wgslsmith_sub_u32(arg_0.b, 0u), abs(arg_0.b)), _wgslsmith_div_u32(abs(arg_0.b), select(1u, arg_1.b, false)), countOneBits(u_input.a & arg_1.b), _wgslsmith_mult_u32(1u, ~22208u)) ^ firstTrailingBit(max(vec4<u32>(4294967295u, arg_1.b, u_input.d, 13321u), vec4<u32>(arg_1.b, arg_1.b, arg_0.b, 4294967295u)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(74669u, u_input.d, 12330u, 57254u), vec4<u32>(arg_1.b, arg_0.b, 18526u, 12112u)) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = ~func_6(arg_0, func_5(~(~vec2<u32>(arg_0.b, 0u)), vec2<bool>(arg_0.a, true), func_4(func_2(arg_0.a, Struct_1(true, arg_0.b)), vec4<i32>(0i, u_input.b, -1i, u_input.b), 1u), func_2(arg_1, Struct_1(false, 4294967295u))));
    let var_1 = func_2(arg_1, arg_0);
    var var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1832f, 520f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(-524f, 421f), vec2<f32>(798f, 706f))))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(-344f)), _wgslsmith_f_op_f32(min(-640f, _wgslsmith_f_op_f32(1010f + 1000f)))))));
    var_0 = _wgslsmith_mod_vec4_u32(abs(vec4<u32>(~_wgslsmith_sub_u32(u_input.a, u_input.d), ~(~16678u), var_0.x, arg_0.b)), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 30697u, arg_0.b, 43299u), func_6(func_2(false, Struct_1(true, arg_0.b)), Struct_1(false, var_0.x))));
    let var_3 = countOneBits(-(~_wgslsmith_dot_vec4_i32(select(vec4<i32>(-2147483647i, 47319i, 2147483647i, 1i), vec4<i32>(2147483647i, 4179i, u_input.b, u_input.b), arg_0.a), vec4<i32>(u_input.e, -2147483647i, 25811i, 2147483647i))));
    return func_5(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(~arg_0.b, countOneBits(96497u)), u_input.a), firstTrailingBit(func_6(Struct_1(var_1.a, 44111u), Struct_1(arg_0.a, 4294967295u)).yy)), !vec2<bool>(true, func_5(select(vec2<u32>(18515u, 1u), vec2<u32>(var_1.b, 1u), vec2<bool>(false, arg_1)), !vec2<bool>(arg_0.a, arg_1), u_input.e, Struct_1(arg_0.a, var_1.b)).a), select(1i, abs(-var_3), (true & select(true, arg_1, false)) | arg_1), func_5(var_0.yz, vec2<bool>(!all(vec2<bool>(arg_1, false)), arg_0.a & all(vec2<bool>(arg_1, arg_1))), -8533i >> (select(~u_input.d, u_input.a, func_2(false, Struct_1(var_1.a, 1u)).a) % 32u), func_2(all(select(vec3<bool>(arg_0.a, var_1.a, true), vec3<bool>(arg_1, arg_0.a, var_1.a), vec3<bool>(true, arg_1, arg_0.a))), func_2(select(false, arg_1, arg_1), Struct_1(arg_0.a, u_input.d)))));
}

fn func_7(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2019f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1303f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1207f, -1313f)))), 1356f);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-504f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-225f))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(118f, 334f, 1009f, var_0.x), vec4<f32>(var_0.x, var_0.x, 946f, var_0.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-205f, var_0.x, var_0.x, 1226f), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) * vec4<f32>(580f, -991f, var_0.x, 1536f)))), vec2<bool>(arg_3.a, false), arg_3, var_0.x)));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(747f, -1937f, var_0.x, -353f)), vec2<bool>(true, true), func_5(arg_2.yz, vec2<bool>(arg_3.a, arg_3.a), u_input.c, arg_0), -594f))), 1242f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-394f - 1644f), _wgslsmith_f_op_f32(func_3(vec4<f32>(var_0.x, -264f, var_0.x, 1131f), vec2<bool>(arg_0.a, arg_0.a), arg_0, -361f)))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-978f + _wgslsmith_f_op_f32(ceil(2874f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-364f)))), _wgslsmith_f_op_f32(floor(var_0.x))));
    var_1 = vec2<f32>(_wgslsmith_div_f32(-1874f, _wgslsmith_f_op_f32(var_1.x - var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -613f)), 153f)));
    return vec3<i32>(u_input.c & u_input.c, _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(0i, u_input.e) << (arg_2.x % 32u), u_input.c), abs((u_input.c & -1i) ^ _wgslsmith_add_i32(u_input.c, 2147483647i))), firstLeadingBit(u_input.e));
}

fn func_8(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = !(!(!(!select(vec3<bool>(false, arg_2.a, arg_2.a), vec3<bool>(arg_1.a, true, false), vec3<bool>(true, true, true)))));
    var var_1 = ~vec2<u32>(func_1(Struct_1(true, 63046u), arg_1.a).b, arg_1.b);
    var var_2 = vec3<bool>(!((true != arg_1.a) | true), true, true);
    var_1 = ~(~_wgslsmith_sub_vec2_u32(~vec2<u32>(var_1.x, var_1.x), _wgslsmith_mod_vec2_u32(select(vec2<u32>(92652u, arg_3.b), vec2<u32>(arg_2.b, arg_3.b), vec2<bool>(var_2.x, true)), ~vec2<u32>(92480u, u_input.a))));
    var var_3 = abs(abs(max(vec2<u32>(arg_2.b, arg_2.b), ~abs(vec2<u32>(var_1.x, u_input.d)))));
    return Struct_1(true, abs(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(arg_3.b, 0u, 1u, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.b, 0u, 15445u, 4511u), vec4<u32>(9962u, var_3.x, 1u, 38892u), vec4<u32>(var_3.x, arg_1.b, arg_2.b, 56141u)), ~vec4<u32>(arg_3.b, 4294967295u, 1u, 4294967295u)), vec4<u32>(0u, 46842u, 4294967295u, 29730u) << (vec4<u32>(76635u, var_3.x, var_3.x, var_1.x) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(abs(func_7(func_1(Struct_1(false, u_input.d), true), ~(~u_input.a), vec3<u32>(~u_input.d, u_input.d, u_input.d), Struct_1(true, 0u))), func_2(all(vec4<bool>(false, true, all(vec4<bool>(false, true, true, true)), true)), Struct_1(!(u_input.e == u_input.c), u_input.d)), func_1(func_5(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 39180u), ~vec2<u32>(371u, 36599u)), vec2<bool>(true, true), ~54398i, Struct_1(true, ~u_input.a)), func_1(func_5(reverseBits(vec2<u32>(1u, 16172u)), vec2<bool>(false, false), select(u_input.b, 0i, true), func_2(false, Struct_1(false, 0u))), true).a), Struct_1(!(u_input.c <= u_input.c), _wgslsmith_mult_u32(func_2(true, func_5(vec2<u32>(u_input.d, u_input.a), vec2<bool>(true, false), -2147483647i, Struct_1(false, u_input.d))).b, ~u_input.d)));
    let var_1 = _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(func_5(vec2<u32>(u_input.a, 0u), vec2<bool>(var_0.a, var_0.a), u_input.c, Struct_1(var_0.a, u_input.a)).b, 5203u, ~1u), vec3<u32>(_wgslsmith_add_u32(~20412u, func_6(Struct_1(false, var_0.b), Struct_1(var_0.a, 4294967295u)).x), func_1(Struct_1(var_0.a, 0u), var_0.a).b ^ 5907u, var_0.b)), ~select(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.b, 4294967295u, 54622u), vec3<u32>(4294967295u, var_0.b, 32368u)), abs(vec3<u32>(4294967295u, 43961u, var_0.b)), false));
    let var_2 = func_2(!(abs(_wgslsmith_mult_i32(u_input.e, u_input.e)) != -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -48080i, u_input.c, u_input.c), vec4<i32>(u_input.b, u_input.c, 16719i, -15777i))), Struct_1(reverseBits(2147483647i | u_input.b) <= 20890i, var_0.b));
    let var_3 = vec2<i32>(12420i, u_input.e) << (var_1.yy % vec2<u32>(32u));
    var var_4 = any(vec2<bool>(var_0.a && var_0.a, true));
    var var_5 = _wgslsmith_add_vec4_i32(countOneBits(max(-(~vec4<i32>(2147483647i, u_input.c, u_input.b, -2147483647i)), abs(vec4<i32>(u_input.b, u_input.b, 38665i, u_input.c)))), vec4<i32>(_wgslsmith_mult_i32(abs(0i << (var_1.x % 32u)), _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.e, u_input.c), 0i)), _wgslsmith_mult_i32(-u_input.c >> (u_input.d % 32u), -5262i), -var_3.x, func_4(var_2, max(vec4<i32>(var_3.x, 17513i, u_input.c, 29752i), _wgslsmith_mult_vec4_i32(vec4<i32>(16592i, 1i, var_3.x, 48931i), vec4<i32>(-22283i, -1i, var_3.x, var_3.x))), _wgslsmith_div_u32(_wgslsmith_sub_u32(var_0.b, 65363u), 1u))));
    var_4 = true;
    var_0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1137f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -789f) + _wgslsmith_f_op_f32(round(-797f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3223f)) - -1000f));
}

