struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: i32, arg_3: f32) -> vec4<i32> {
    let var_0 = 16288i;
    let var_1 = vec3<bool>(arg_0.x, true, arg_0.x || false);
    var var_2 = vec4<u32>(1u, ~arg_1.x >> (0u % 32u), ~reverseBits(arg_1.x) >> (_wgslsmith_mult_u32(arg_1.x, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, arg_1.x, 27704u), vec3<u32>(0u, arg_1.x, 1u)))) % 32u), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, arg_1.x, arg_1.x) >> (arg_1 % vec3<u32>(32u))), ~(arg_1 | vec3<u32>(arg_1.x, arg_1.x, arg_1.x))) >> (85001u % 32u));
    var var_3 = Struct_1(~(~_wgslsmith_dot_vec2_u32(arg_1.zx, vec2<u32>(arg_1.x, 1u))) <= var_2.x);
    var var_4 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-183f)), _wgslsmith_f_op_f32(round(-1082f)))), _wgslsmith_f_op_f32(arg_3 * _wgslsmith_div_f32(arg_3, _wgslsmith_f_op_f32(f32(-1f) * -350f))), _wgslsmith_div_f32(arg_3, 849f)), ~max(max(min(arg_1.zx, arg_1.yy), firstTrailingBit(vec2<u32>(var_2.x, arg_1.x))), _wgslsmith_add_vec2_u32(vec2<u32>(30928u, 4294967295u), ~arg_1.zz)), var_3.a);
    return _wgslsmith_sub_vec4_i32(max(_wgslsmith_mod_vec4_i32(vec4<i32>(abs(var_0), abs(37701i), 2147483647i, -u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(arg_2, var_0, 3062i, 2147483647i), -vec4<i32>(977i, 0i, arg_2, u_input.a.x))), -vec4<i32>(var_0, -2147483647i, -1i >> (var_4.b.x % 32u), -52335i)), ~reverseBits(vec4<i32>(25318i, arg_2, -1i, -28058i) ^ countOneBits(vec4<i32>(2147483647i, -1i, 2147483647i, arg_2))));
}

fn func_4(arg_0: vec4<i32>) -> vec3<f32> {
    var var_0 = Struct_3(Struct_1(arg_0.x < _wgslsmith_clamp_i32(-arg_0.x, arg_0.x, ~u_input.a.x)), Struct_1(true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1182f)) * _wgslsmith_f_op_f32(abs(-1305f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -445f) - _wgslsmith_f_op_f32(f32(-1f) * -747f))) * -997f), Struct_1(!all(vec3<bool>(true, true, true))));
    var var_1 = true;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.c)) + _wgslsmith_f_op_f32(-108f * -867f))), 525f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * var_0.c))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(117f, -228f, var_0.c))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1349f, var_0.c, -1357f)))))) - vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c - var_0.c), _wgslsmith_f_op_f32(exp2(var_0.c)))), _wgslsmith_f_op_f32(sign(1796f)), _wgslsmith_f_op_f32(-var_0.c))));
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = Struct_1(true != (true == (countOneBits(21081i) >= firstTrailingBit(u_input.a.x))));
    var_0 = Struct_1(any(!select(vec2<bool>(true, false), vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, false), vec2<bool>(var_0.a, true)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(func_4(-func_3(vec3<bool>(var_0.a, false, true), ~vec3<u32>(9088u, 0u, 0u), -u_input.a.x, _wgslsmith_f_op_f32(sign(arg_0))))), vec2<u32>(1u, 1u), all(select(!select(vec4<bool>(var_0.a, false, var_0.a, false), vec4<bool>(var_0.a, false, false, var_0.a), vec4<bool>(false, var_0.a, false, var_0.a)), select(vec4<bool>(var_0.a, false, false, var_0.a), select(vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(var_0.a, var_0.a, false, false), var_0.a), any(vec4<bool>(true, true, true, false))), select(!vec4<bool>(false, false, var_0.a, var_0.a), vec4<bool>(false, true, var_0.a, true), !vec4<bool>(true, true, var_0.a, true)))));
    var var_2 = 0i << (_wgslsmith_mod_u32(~59558u, ~(~_wgslsmith_sub_u32(var_1.b.x, 1u))) % 32u);
    var_0 = Struct_1(true);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(sign(var_1.a.x)), select(true, var_0.a, var_1.c)));
}

fn func_5(arg_0: f32) -> Struct_2 {
    var var_0 = ~23060i;
    var_0 = 0i;
    let var_1 = u_input.a.x;
    let var_2 = Struct_1(true);
    var_0 = firstTrailingBit(firstLeadingBit(-2147483647i) | _wgslsmith_add_i32(-2147483647i, -(var_1 & -61076i)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-639f, -1199f, arg_0) - vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(func_4(-vec4<i32>(var_1, var_1, var_1, 0i))))), firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(21353u, 4294967295u, 0u), vec3<u32>(15226u, 4294967295u, 52967u)), 1u)) & vec2<u32>(_wgslsmith_div_u32(abs(59270u), 137688u), 0u), var_2.a);
}

fn func_1(arg_0: f32, arg_1: f32) -> vec3<f32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 445f) - -587f), -763f, arg_0);
    let var_1 = ~_wgslsmith_mod_vec2_u32(~(~vec2<u32>(1u, 1u)), ~vec2<u32>(~1u, ~4294967295u));
    let var_2 = func_5(_wgslsmith_f_op_f32(min(-1697f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_1))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-2370f)), _wgslsmith_f_op_f32(step(-3071f, -706f)), _wgslsmith_f_op_f32(-var_2.a.x)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.a * vec3<f32>(arg_0, -424f, arg_0)) + _wgslsmith_f_op_vec3_f32(var_2.a - _wgslsmith_div_vec3_f32(var_2.a, vec3<f32>(var_0.x, var_2.a.x, var_0.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, var_2.a.x, -882f) - var_2.a), var_2.a)), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_4(vec4<i32>(-2147483647i, 11892i, u_input.a.x, u_input.a.x))).x, _wgslsmith_f_op_f32(1184f + 1414f), _wgslsmith_div_f32(-149f, 1303f)), true)))));
    var var_3 = Struct_2(var_2.a, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(~42201u, 61233u >> (var_1.x % 32u)), ~var_2.b, vec2<u32>(~1u, var_1.x)), var_2.c);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a + var_3.a));
}

fn func_6(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: vec3<f32>) -> Struct_3 {
    let var_0 = arg_3;
    let var_1 = Struct_2(var_0, arg_1 | arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1757f)), _wgslsmith_f_op_f32(-arg_0)), arg_0)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_1(arg_3.x, _wgslsmith_f_op_f32(arg_0 * -1867f))).x * arg_3.x));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-var_0.x) < _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(var_1.a.x + 282f))), Struct_1(false), -217f, Struct_1(select(~u_input.a.x, 14899i, all(vec2<bool>(arg_2.x, false))) >= u_input.a.x));
    var_2 = Struct_3(Struct_1(arg_2.x && (true && var_2.a.a)), var_2.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2656f)), _wgslsmith_f_op_f32(-var_1.a.x)))), var_2.d);
    var_2 = Struct_3(Struct_1(all(vec2<bool>(!arg_2.x, true))), Struct_1(var_2.a.a), _wgslsmith_f_op_f32(-var_1.a.x), var_2.d);
    return Struct_3(var_2.a, var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(-firstTrailingBit(vec4<i32>(1i, 52397i, u_input.a.x, -1i)))).x - -618f), var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-113f, 894f))))))), ~select(_wgslsmith_mod_vec2_u32(vec2<u32>(56796u, 0u), vec2<u32>(1u, 1u)), vec2<u32>(109901u, 133827u) << (_wgslsmith_div_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(2394u, 1u)) % vec2<u32>(32u)), true), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1094f, -206f, -977f), _wgslsmith_f_op_vec3_f32(vec3<f32>(130f, 191f, 148f) + vec3<f32>(-1611f, 747f, 368f)), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-870f, -2432f, -1623f), vec3<f32>(376f, 652f, -287f)) + vec3<f32>(351f, 1632f, -1031f))), _wgslsmith_f_op_vec3_f32(func_1(-1653f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-587f * 515f)))), vec3<bool>(true, true, true))));
    let var_1 = func_5(-1878f);
    let var_2 = 1323f;
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-273f - 714f), var_1.a.x, var_1.a.x > _wgslsmith_f_op_f32(476f * var_1.a.x)));
    var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u);
}

