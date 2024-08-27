struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: f32, arg_3: u32) -> bool {
    global0 = (_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, arg_0) >> ((vec2<u32>(19780u, 4294967295u) ^ vec2<u32>(arg_1, 1u)) % vec2<u32>(32u)), -_wgslsmith_clamp_vec2_i32(vec2<i32>(7450i, u_input.c), vec2<i32>(global0.x, -3980i), vec2<i32>(2147483647i, u_input.a))) | -firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, u_input.a), vec2<i32>(-10782i, 2147483647i)))) >> (~countOneBits(vec2<u32>(~80313u, 1u)) % vec2<u32>(32u));
    global0 = ~vec2<i32>(_wgslsmith_div_i32(max(-4813i, -15494i) << (0u % 32u), 18446i), -u_input.a);
    var var_0 = firstTrailingBit(select(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(21085u, arg_1, arg_3, arg_1), vec4<u32>(1u, u_input.d, arg_3, 4294967295u)), 59u, 99659u, 0u), vec4<u32>(_wgslsmith_add_u32(19527u, arg_3), 0u, 4294967295u, 114683u >> (arg_1 % 32u)), true)) & firstTrailingBit(vec4<u32>(abs(1u), _wgslsmith_add_u32(u_input.d, arg_1), abs(40738u), arg_3) ^ vec4<u32>(arg_1, 31175u, _wgslsmith_dot_vec4_u32(vec4<u32>(35314u, u_input.d, 4294967295u, arg_1), vec4<u32>(1u, 4294967295u, u_input.d, arg_3)), ~arg_3));
    var var_1 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_3, 69732u, ~0u, _wgslsmith_div_u32(4294967295u, arg_3)), _wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(var_0.x, arg_3, arg_1, 663u)), vec4<u32>(var_0.x, 0u, u_input.d, 1u))));
    let var_2 = any(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, false, true))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, false, false), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(895f < arg_2, true, true)), select(vec3<bool>(any(vec2<bool>(false, true)), true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))));
    return 1u >= u_input.d;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: bool) -> Struct_1 {
    let var_0 = !(!vec4<bool>(select(!arg_3, arg_3, func_3(u_input.b, arg_2.a, 1784f, 98361u)), false || arg_3, true, !(!arg_3)));
    let var_1 = min(~vec4<u32>(arg_1.x, 4294967295u, abs(arg_1.x) | 75156u, arg_2.a), vec4<u32>(_wgslsmith_mult_u32(u_input.d, ~1u), ~abs(firstTrailingBit(1u)), arg_0, ~(~_wgslsmith_mult_u32(1u, 0u))));
    global0 = ~vec2<i32>(u_input.a, abs(-1i));
    let var_2 = Struct_3(_wgslsmith_dot_vec2_u32(abs(~(~arg_1)), ~arg_1));
    let var_3 = Struct_5(Struct_2(Struct_1(!vec4<bool>(true, false, false, var_0.x))), vec2<u32>(arg_1.x, var_2.a) >> (~vec2<u32>(_wgslsmith_clamp_u32(19357u, u_input.d, u_input.d), arg_1.x) % vec2<u32>(32u)));
    return var_3.a.a;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: bool, arg_3: Struct_1) -> Struct_4 {
    let var_0 = Struct_2(arg_1.a);
    var var_1 = !select(vec3<bool>(!all(vec3<bool>(false, arg_3.a.x, true)), true, true), arg_3.a.zyy, vec3<bool>(arg_3.a.x, true, false));
    return Struct_4(func_2(_wgslsmith_mult_u32(arg_0.x | u_input.d, u_input.d) | 0u, arg_0.zx, Struct_3(~_wgslsmith_sub_u32(u_input.d, 39152u)), all(vec4<bool>(true, global0.x <= global0.x, !arg_3.a.x, arg_2))));
}

fn func_1() -> i32 {
    global0 = vec2<i32>(abs(-(~(-1848i))), 1i);
    let var_0 = func_4(~vec3<u32>(u_input.d, 4294967295u, ~18938u), Struct_4(func_2(u_input.d, select(vec2<u32>(u_input.d, u_input.d) >> (vec2<u32>(4294967295u, u_input.d) % vec2<u32>(32u)), ~vec2<u32>(18950u, u_input.d), select(vec2<bool>(true, false), vec2<bool>(true, false), false)), Struct_3(~u_input.d), -2122f < _wgslsmith_f_op_f32(select(631f, -161f, true)))), any(vec3<bool>(~0i == global0.x, false, false)), Struct_1(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true))));
    var var_1 = var_0;
    let var_2 = func_4(vec3<u32>(u_input.d, ~u_input.d, abs(~_wgslsmith_add_u32(u_input.d, 1u))), var_0, true, func_2(firstTrailingBit(u_input.d) >> (u_input.d % 32u), vec2<u32>(~29010u, 0u), Struct_3(~(~u_input.d)), var_0.a.a.x));
    var_1 = Struct_4(Struct_1(select(vec4<bool>(!var_2.a.a.x, var_1.a.a.x, true, all(vec4<bool>(true, false, true, true))), select(select(vec4<bool>(true, var_2.a.a.x, var_1.a.a.x, true), vec4<bool>(var_0.a.a.x, var_1.a.a.x, true, true), var_0.a.a), !var_2.a.a, true), var_0.a.a)));
    return ~min(1i, global0.x);
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: i32) -> Struct_2 {
    var var_0 = vec2<u32>(15220u >> (_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(4294967295u, u_input.d, 0u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.d, u_input.d), vec3<u32>(14689u, u_input.d, u_input.d))) % 32u), u_input.d);
    global0 = vec2<i32>(max(_wgslsmith_div_i32(reverseBits(~(-61423i)), reverseBits(firstLeadingBit(6302i))), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 14471i, -2147483647i, u_input.a) << (vec4<u32>(var_0.x, 4294967295u, 1u, u_input.d) % vec4<u32>(32u)), -vec4<i32>(0i, 2147483647i, 2147483647i, arg_0)), -9017i)), 1i);
    global0 = vec2<i32>(abs(-2147483647i), arg_0);
    let var_1 = abs(firstTrailingBit(vec2<u32>(firstTrailingBit(~0u), ~min(11177u, 39927u))));
    let var_2 = Struct_5(Struct_2(func_2(reverseBits(7296u), _wgslsmith_div_vec2_u32(var_1 >> (vec2<u32>(68058u, var_1.x) % vec2<u32>(32u)), var_1), Struct_3(u_input.d ^ u_input.d), arg_1)), _wgslsmith_mod_vec2_u32(select(vec2<u32>(~1u, var_0.x), var_1 << (var_1 % vec2<u32>(32u)), vec2<bool>(arg_2 <= 18820i, true)), var_1));
    return var_2.a;
}

fn func_6(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec2<f32>) -> Struct_2 {
    global0 = vec2<i32>(2147483647i, 2147483647i);
    var var_0 = vec3<u32>(~max(0u, u_input.d), max(~reverseBits(~u_input.d), max(abs(0u), 0u)), arg_1.x);
    let var_1 = Struct_1(vec4<bool>(true, func_5(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(1i, u_input.b, arg_0, -1i)), abs(vec4<i32>(global0.x, global0.x, 33908i, arg_0))), !any(vec4<bool>(arg_2.a.a.x, arg_2.a.a.x, arg_2.a.a.x, arg_2.a.a.x)), 2147483647i).a.a.x, all(func_4(~vec3<u32>(arg_1.x, 4294967295u, u_input.d), Struct_4(Struct_1(vec4<bool>(arg_2.a.a.x, arg_2.a.a.x, arg_2.a.a.x, false))), !arg_2.a.a.x, Struct_1(arg_2.a.a)).a.a), true));
    let var_2 = _wgslsmith_mult_i32(global0.x, arg_0);
    let var_3 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(62372u, 21481u, 1u), countOneBits(vec3<u32>(var_0.x, 24751u, arg_1.x))), countOneBits(~(vec3<u32>(1u, 120279u, u_input.d) & vec3<u32>(10753u, 13476u, 1u)))) >> (max((_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 0u, 1u), vec3<u32>(47421u, arg_1.x, u_input.d)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.d), vec3<u32>(0u, 4294967295u, 44304u)) % vec3<u32>(32u))) ^ ~select(vec3<u32>(arg_1.x, 1u, 8144u), vec3<u32>(var_0.x, 4060u, var_0.x), var_1.a.x), ~select(countOneBits(vec3<u32>(var_0.x, 4294967295u, var_0.x)), min(vec3<u32>(1u, var_0.x, 93160u), vec3<u32>(u_input.d, 4294967295u, 1u)), vec3<bool>(arg_2.a.a.x, false, arg_2.a.a.x))) % vec3<u32>(32u));
    return arg_2;
}

fn func_7(arg_0: Struct_5, arg_1: u32, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = vec4<bool>(true, !all(!func_5(1i, false, 2147483647i).a.a.xy), arg_0.a.a.a.x, arg_0.a.a.a.x);
    let var_1 = ~(~vec3<u32>(max(u_input.d, u_input.d), ~14859u, select(0u, arg_1, var_0.x)) & reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_0.b.x, u_input.d), ~vec3<u32>(50146u, 25311u, arg_1))));
    var var_2 = vec2<u32>(u_input.d, 107076u ^ min(26272u >> (arg_1 % 32u), 122285u));
    var_2 = vec2<u32>(u_input.d, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.b, var_1.zx), var_1.yy));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-275f, 552f, -184f)) * vec3<f32>(_wgslsmith_f_op_f32(abs(arg_3)), _wgslsmith_f_op_f32(floor(arg_3)), arg_3)) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_3, -130f, -1480f), vec3<f32>(852f, arg_3, arg_3)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3, 887f, arg_3), vec3<f32>(arg_3, -1159f, -1000f), arg_0.a.a.a.yyx)))))));
    return func_2(var_1.x, countOneBits(abs(~vec2<u32>(u_input.d, var_2.x)) << (vec2<u32>(~u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, arg_1), var_1)) % vec2<u32>(32u))), Struct_3(_wgslsmith_div_u32(var_2.x, firstTrailingBit(_wgslsmith_mult_u32(80281u, 1u)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1149f, 405f)))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(606f - 1981f) - 1758f))))));
    let var_1 = _wgslsmith_f_op_f32(1000f * -288f);
    var var_2 = u_input.d;
    let var_3 = func_7(Struct_5(func_6(firstTrailingBit(_wgslsmith_clamp_i32(3853i, -48309i, u_input.a)), vec2<u32>(u_input.d, 3531u) ^ _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(1u, u_input.d)), func_5(~11674i, true, func_1()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(561f, -224f))))), vec2<u32>(~(4294967295u & u_input.d), 107977u)), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.d, 31836u)) & _wgslsmith_mult_vec2_u32(max(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4294967295u, u_input.d)), vec2<u32>(u_input.d, u_input.d) & vec2<u32>(u_input.d, u_input.d)), ~firstLeadingBit(countOneBits(vec2<u32>(u_input.d, 9410u)))), -11121i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-624f)) + 1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0)))) + 720f)));
    var_2 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mod_u32(~abs(1u), u_input.d)), u_input.d, vec3<i32>(-13843i, u_input.c, ~u_input.c >> (abs(1u) % 32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) * var_0), _wgslsmith_f_op_f32(-861f - _wgslsmith_f_op_f32(-var_1)), false || (~u_input.b <= ~(-15835i)))));
}

