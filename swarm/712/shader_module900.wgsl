struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> i32 {
    let var_0 = false;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-684f * _wgslsmith_div_f32(328f, _wgslsmith_f_op_f32(abs(141f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(492f + 1016f) + 1f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(363f, -682f)), _wgslsmith_div_f32(-173f, 269f)))), ~(~u_input.b) == 1i)), 377f, 158f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -572f), 1124f)));
    var var_2 = ~(_wgslsmith_add_vec4_i32(~max(vec4<i32>(0i, 2147483647i, 16032i, -26296i), vec4<i32>(-4222i, -27157i, 0i, arg_0.a)), -firstLeadingBit(vec4<i32>(arg_2.a, 1i, arg_2.a, arg_0.a))) << (_wgslsmith_add_vec4_u32(~(~vec4<u32>(arg_1, arg_1, 5830u, arg_1)), ~(vec4<u32>(1u, u_input.a.x, u_input.c, arg_1) << (vec4<u32>(arg_1, 79933u, 7835u, u_input.c) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-554f, var_1.x) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1034f, -1015f) + vec2<f32>(-124f, 809f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f + var_1.x), var_1.x))));
    var var_4 = _wgslsmith_div_vec2_f32(var_3, _wgslsmith_f_op_vec2_f32(-var_1.xw));
    return ~(~arg_0.a);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> vec4<u32> {
    let var_0 = ~2147483647i;
    var var_1 = ~vec4<i32>(func_3(arg_1, arg_2.x, arg_1), -1i, -20798i, 33522i);
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(855f + 711f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -652f) - -340f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-300f * 919f))), _wgslsmith_f_op_f32(f32(-1f) * -1304f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 161f, 155f, 1129f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1803f, -1601f, -2375f, -436f))))))));
    var var_3 = -vec4<i32>(-var_1.x | -50845i, -385i, u_input.b, 1i) | countOneBits(abs(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.x, 2147483647i, var_1.x, 0i), vec4<i32>(-2147483647i, -1i, -20803i, var_1.x))));
    var_1 = min(select(vec4<i32>(-1i) * -vec4<i32>(arg_1.a, -2147483647i, -1i, 2147483647i), vec4<i32>(abs(var_0), max(-28721i, var_1.x), _wgslsmith_div_i32(28040i, u_input.b), 0i), all(vec4<bool>(true, false, true, false))), vec4<i32>(-42878i, arg_1.a, -var_1.x, -30321i >> (~arg_2.x % 32u))) & ~(~reverseBits(vec4<i32>(arg_1.a, var_0, var_1.x, u_input.b)));
    return ~vec4<u32>(~(~abs(26367u)), ~71390u, 22600u, ~abs(~arg_2.x));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.x, ~(4294967295u & u_input.a.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_1.x, u_input.c, u_input.a.x), vec3<u32>(arg_1.x, 10611u, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.x, u_input.c, 118173u), vec3<u32>(u_input.c, 21968u, u_input.c))), ~arg_1.x), arg_1.x), vec4<u32>(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 0u, 1u, arg_1.x)), ~vec4<u32>(arg_1.x, u_input.c, u_input.a.x, u_input.a.x)), ~1u, arg_1.x, ~(~4294967295u)), ~(~(~func_2(78729u, Struct_1(1i), vec2<u32>(0u, 4294967295u)))));
    let var_1 = -2147483647i >> (~u_input.c % 32u);
    var var_2 = Struct_1(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1, u_input.b), vec2<i32>(arg_0, arg_0)), _wgslsmith_sub_i32(arg_0, var_1), 1i, arg_0)), ~_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 16189i, -2147483647i, 2147483647i), vec4<i32>(arg_0, u_input.b, arg_0, -2147483647i)), vec4<i32>(arg_0, var_1, u_input.b, var_1) | vec4<i32>(8952i, var_1, 17050i, arg_0))));
    var var_3 = Struct_1(var_1);
    var var_4 = Struct_1(abs(_wgslsmith_mult_i32(u_input.b, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(21433i, -5910i, 0i, var_1), vec4<i32>(2147483647i, arg_0, 4656i, -1i)), select(vec4<i32>(-1i, u_input.b, u_input.b, var_1), vec4<i32>(-1i, var_1, -51754i, arg_0), vec4<bool>(false, false, false, true))))));
    return Struct_1(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(6173i, 23158i, var_3.a), -2147483647i), 0i & func_3(Struct_1(var_4.a), 0u, Struct_1(arg_0))) & firstTrailingBit(0i));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = min(vec2<u32>(firstTrailingBit(~(~u_input.a.x)), ~(~(~u_input.a.x))), vec2<u32>(64787u, u_input.c));
    var var_1 = arg_3.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - arg_3.x));
    var var_3 = arg_0;
    var_3 = func_1(-2147483647i, u_input.a);
    return func_1(-94598i, ~reverseBits(u_input.a >> (vec2<u32>(4294967295u, 67602u) % vec2<u32>(32u))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec3<i32> {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * -509f) - _wgslsmith_f_op_f32(-1248f + arg_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(sign(985f))))), _wgslsmith_f_op_f32(floor(arg_2)), _wgslsmith_f_op_f32(796f * arg_2));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(866f))), arg_2, _wgslsmith_div_f32(212f, var_0.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(round(arg_2))))) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.x), -410f)), -1393f)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -1650f), arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(879f)) + -1156f)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2))), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + -1000f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x), vec3<f32>(arg_2, var_0.x, arg_2))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, arg_2, arg_2)))))));
    let var_1 = func_4(arg_1, false, abs(select(-vec3<i32>(1i, 0i, 24513i), vec3<i32>(_wgslsmith_mult_i32(-2147483647i, arg_0.a), arg_0.a << (u_input.a.x % 32u), arg_1.a), false)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(943f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_2)))), _wgslsmith_f_op_f32(-524f - arg_2)), vec3<f32>(var_0.x, 2001f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(990f, var_0.x) - -846f))));
    var var_2 = -vec2<i32>(_wgslsmith_add_i32(abs(-arg_1.a), u_input.b), -2147483647i);
    return vec3<i32>(~(74213i << (abs(u_input.a.x) % 32u)), 1i, 29071i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.b, 1i, ~(-u_input.b)), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.b, -1898i), vec3<i32>(0i, u_input.b, 23800i)) | _wgslsmith_div_vec3_i32(vec3<i32>(-41758i, u_input.b, u_input.b), vec3<i32>(-2231i, u_input.b, -12721i)), select(vec3<i32>(2147483647i, u_input.b, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<bool>(true, true, true)) << (firstLeadingBit(vec3<u32>(u_input.c, 1u, 1u)) % vec3<u32>(32u))) & func_5(func_4(func_1(42367i, vec2<u32>(1u, 4294967295u)), false, vec3<i32>(1i, 1i, 1i), vec3<f32>(-773f, 2531f, -541f)), func_4(func_4(Struct_1(0i), true, vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<f32>(596f, 352f, 1145f)), true, reverseBits(vec3<i32>(-15699i, u_input.b, -66587i)), vec3<f32>(1f, 1f, 1f)), -1523f));
    var var_1 = ~1u;
    let var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1000f, -964f, -1000f))))))) * vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1066f * 112f), _wgslsmith_f_op_f32(abs(558f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1524f)), _wgslsmith_f_op_f32(step(440f, -489f))), -141f));
    let var_4 = select(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-43255i, ~20171i), vec2<i32>(~2147483647i, abs(var_0.x)), vec2<i32>(abs(-2147483647i), ~u_input.b)), var_0.xy), select(var_0.yz, -_wgslsmith_clamp_vec2_i32(select(var_0.xz, var_0.yx, true), vec2<i32>(1i, 1i), var_0.yz << (u_input.a % vec2<u32>(32u))), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(false, true, true)), false & any(vec2<bool>(false, true)))), vec2<bool>(true, false));
    let var_5 = func_4(func_4(Struct_1(-1i), true, _wgslsmith_sub_vec3_i32(~vec3<i32>(var_0.x, -1i, 61861i) >> (select(vec3<u32>(u_input.c, 1u, var_2), vec3<u32>(u_input.a.x, 0u, 4294967295u), vec3<bool>(false, false, false)) % vec3<u32>(32u)), -firstTrailingBit(vec3<i32>(1i, 2147483647i, var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_3.x, -1283f), var_3.x, var_3.x) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1294f, -246f, -527f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_3.x, var_3.x) - vec3<f32>(703f, 1159f, var_3.x)))))), true, ~vec3<i32>(1i, 1i, 1i) ^ -select(select(vec3<i32>(0i, -2147483647i, 0i), var_0, true), vec3<i32>(var_4.x, 1i, -1i), true), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.x))), _wgslsmith_f_op_f32(var_3.x - var_3.x)), var_3.x, _wgslsmith_f_op_f32(trunc(var_3.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_3.x, 557f));
}

