struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
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

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 3533u, 4294967295u, 52873u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec3<u32> {
    global0 = vec4<u32>(arg_0.d, global0.x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(arg_0.d, arg_0.b, 8643u)) & (global0.zyw & vec3<u32>(0u, arg_0.b, arg_0.b)), abs(global0.xxw)), firstLeadingBit(abs(arg_0.d))) ^ vec4<u32>(u_input.a.x, ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(global0.x, u_input.d.x), _wgslsmith_clamp_u32(arg_0.d, 61367u, arg_0.b)), ~(~3249u | ~arg_0.b), 21536u);
    let var_0 = arg_0;
    var var_1 = all(select(vec4<bool>(arg_0.c, false && all(vec3<bool>(arg_0.c, var_0.c, true)), any(vec2<bool>(var_0.c, var_0.c)), !any(vec3<bool>(arg_0.c, false, false))), vec4<bool>(select(arg_0.c, all(vec4<bool>(false, true, arg_0.c, var_0.c)), true), all(!vec3<bool>(arg_0.c, true, arg_0.c)), var_0.c, false), !select(vec4<bool>(false, var_0.c, arg_0.c, true), !vec4<bool>(true, false, false, var_0.c), -1492f > arg_2)));
    var var_2 = u_input.a;
    global0 = vec4<u32>(var_0.b, select(_wgslsmith_add_u32(~40076u, 0u), var_2.x, var_0.d != ~_wgslsmith_clamp_u32(1u, 11816u, var_0.d)), var_0.d, 1u);
    return select(global0.zwy, vec3<u32>(firstLeadingBit(~u_input.a.x & ~1u), 1u, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 4294967295u, 4294967295u, 5053u), vec4<u32>(73557u, 32859u, global0.x, var_0.b)) | abs(global0.x))), var_0.c);
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> Struct_1 {
    global0 = firstLeadingBit(~(~vec4<u32>(1u, global0.x, _wgslsmith_mod_u32(1u, 1u), firstTrailingBit(u_input.d.x))));
    global0 = ~vec4<u32>(0u, 4294967295u, ~select(108894u, 4294967295u, any(vec2<bool>(arg_0, arg_1.x))), global0.x);
    let var_0 = Struct_1(~_wgslsmith_dot_vec3_i32(-reverseBits(vec3<i32>(2147483647i, u_input.c, u_input.c)), ~vec3<i32>(1i, u_input.b, u_input.c)), ~(~global0.x) & (u_input.a.x ^ 1u), !arg_1.x, u_input.d.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1977f)))) + 1242f);
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(~global0.x ^ ~u_input.d.x, min(reverseBits(_wgslsmith_mult_u32(4294967295u, u_input.d.x)), max(~4294967295u, ~1u)), u_input.d.x), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(u_input.a), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.d, 4294967295u, 49017u), vec3<u32>(43251u, 33561u, u_input.d.x))), reverseBits(vec3<u32>(u_input.d.x, 1u, 0u) ^ func_3(Struct_1(u_input.b, u_input.d.x, arg_1.x, global0.x), var_0.a, var_1))));
    return Struct_1(-select(-8333i, 11615i & u_input.b, arg_0 | arg_1.x) << (min(_wgslsmith_mult_u32(_wgslsmith_mult_u32(44759u, global0.x), ~var_0.b), 6241u) % 32u), min(u_input.d.x | _wgslsmith_div_u32(var_0.d, 4294967295u), 4294967295u) << (countOneBits(_wgslsmith_mult_u32(var_2 >> (1u % 32u), firstTrailingBit(global0.x))) % 32u), !(var_0.a > ~u_input.c), var_0.b);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec2<u32> {
    global0 = reverseBits(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 0u, 1u, 0u) << (vec4<u32>(global0.x, global0.x, 32511u, 3108u) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, u_input.d.x, arg_1.b, 0u)), min(~vec4<u32>(global0.x, 4294967295u, 14404u, 4294967295u), ~vec4<u32>(arg_1.d, arg_0, 4294967295u, arg_1.d))));
    global0 = _wgslsmith_mod_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(max(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.d, 36076u, 0u, 4294967295u), vec4<u32>(arg_1.d, 4294967295u, u_input.a.x, u_input.d.x)), vec4<u32>(4294967295u, arg_0, u_input.d.x, 4401u)), ~(~vec4<u32>(4294967295u, u_input.a.x, 51402u, arg_1.d)))), abs(vec4<u32>(_wgslsmith_div_u32(0u, arg_0), _wgslsmith_clamp_u32(38454u, arg_1.d, global0.x), ~global0.x, global0.x) ^ ~(~vec4<u32>(51095u, u_input.d.x, 4294967295u, arg_0))));
    global0 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(abs(~arg_1.b), 58817u), 0u), ~(~(1u << (_wgslsmith_sub_u32(arg_0, arg_0) % 32u))), 0u, func_3(arg_1, u_input.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))).x);
    var var_0 = all(!vec2<bool>(true, select(any(vec2<bool>(false, true)), arg_1.c || true, u_input.b == u_input.c)));
    let var_1 = select(vec3<i32>(arg_1.a, -23495i, 2147483647i) | _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.a << (28954u % 32u), u_input.c, -34759i), min(vec3<i32>(-30331i, arg_1.a, arg_1.a), vec3<i32>(u_input.c, -36484i, arg_1.a)) & -vec3<i32>(arg_1.a, u_input.b, -9301i)), vec3<i32>(18527i, u_input.b, arg_1.a), all(select(vec2<bool>(all(vec2<bool>(true, false)), true), vec2<bool>(true, arg_1.c), true)));
    return _wgslsmith_add_vec2_u32(u_input.d.xx, select(global0.wx, vec2<u32>(10064u, 0u), vec2<bool>(any(vec3<bool>(true, true, false)), true)));
}

fn func_5(arg_0: i32, arg_1: vec2<u32>, arg_2: u32) -> vec4<u32> {
    global0 = vec4<u32>(~reverseBits(58318u), 4294967295u, ~u_input.d.x, arg_1.x);
    var var_0 = !(!any(vec4<bool>(-24093i >= arg_0, true, all(vec2<bool>(true, true)), func_2(true, vec2<bool>(true, false)).c)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -693f), 157f);
    var_0 = true;
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec2_u32(global0.wz, select(global0.zw, arg_1, vec2<bool>(true, true)))) > func_2(true || func_2(true, select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))).c, select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(var_1.x >= var_1.x, any(vec3<bool>(false, false, true))))).b;
    return _wgslsmith_clamp_vec4_u32(countOneBits(firstLeadingBit(~vec4<u32>(global0.x, arg_1.x, u_input.d.x, u_input.a.x))), vec4<u32>(~(~4294967295u >> (~arg_1.x % 32u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 51904u, 1u, arg_1.x), vec4<u32>(49810u, 16858u, u_input.a.x, u_input.d.x)), ~countOneBits(arg_2)), arg_1.x, ~u_input.d.x), firstTrailingBit(vec4<u32>(arg_1.x, 4294967295u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.d.x, 41624u, arg_1.x, global0.x)), ~vec4<u32>(global0.x, u_input.a.x, arg_1.x, arg_1.x)), 53u)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<f32>) -> i32 {
    global0 = func_5(0i, func_4(global0.x, func_2(true, select(select(vec2<bool>(arg_1.c, false), vec2<bool>(arg_1.c, false), arg_1.c), select(vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(arg_1.c, arg_1.c), vec2<bool>(false, arg_1.c)), true))), u_input.d.x | _wgslsmith_div_u32(_wgslsmith_div_u32(60184u, global0.x ^ u_input.a.x), 9682u));
    let var_0 = select(select(!vec4<bool>(arg_1.c | arg_1.c, !arg_1.c, 46154u >= u_input.a.x, any(vec2<bool>(true, arg_1.c))), select(vec4<bool>(false, arg_1.c, arg_1.c, true), vec4<bool>(true, all(vec4<bool>(arg_1.c, arg_1.c, true, false)), any(vec4<bool>(true, true, arg_1.c, arg_1.c)), false | arg_1.c), any(select(vec3<bool>(arg_1.c, false, arg_1.c), vec3<bool>(arg_1.c, arg_1.c, arg_1.c), arg_1.c))), vec4<bool>(true, ~arg_0.x <= abs(arg_0.x), true, any(vec2<bool>(true, true)))), vec4<bool>(all(vec4<bool>(4294967295u <= u_input.a.x, func_2(arg_1.c, vec2<bool>(arg_1.c, false)).c, arg_1.c, arg_1.c)), false, func_2(all(vec2<bool>(false, true)), vec2<bool>(true, true)).c | (_wgslsmith_add_i32(28667i, -2147483647i) != func_2(arg_1.c, vec2<bool>(arg_1.c, false)).a), all(vec3<bool>(arg_1.c, arg_1.c, true)) & all(vec4<bool>(false, false, arg_1.c, arg_1.c))), select(!select(!vec4<bool>(true, arg_1.c, arg_1.c, arg_1.c), vec4<bool>(arg_1.c, arg_1.c, arg_1.c, arg_1.c), vec4<bool>(arg_1.c, true, true, false)), select(vec4<bool>(true, arg_1.c, all(vec2<bool>(arg_1.c, true)), all(vec2<bool>(true, true))), vec4<bool>(all(vec3<bool>(arg_1.c, arg_1.c, true)), arg_1.c, any(vec2<bool>(arg_1.c, arg_1.c)), true), true), select(arg_1.c, (arg_2.x <= 246f) || arg_1.c, any(vec4<bool>(arg_1.c, arg_1.c, true, arg_1.c)))));
    global0 = func_5(firstLeadingBit(arg_1.a), ~u_input.a.yx, ~countOneBits(u_input.a.x) << (~(func_3(arg_1, arg_0.x, arg_2.x).x << (1u % 32u)) % 32u));
    var var_1 = var_0.xyw;
    var var_2 = -(~select(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(u_input.b, u_input.c, -15676i, -2147483647i)), abs(vec4<i32>(0i, u_input.b, 3248i, arg_0.x)), vec4<i32>(arg_1.a, arg_0.x, u_input.c, arg_0.x) & vec4<i32>(0i, -19946i, -2147483647i, 2147483647i)), reverseBits(vec4<i32>(arg_1.a, -1i, arg_1.a, 0i) << (vec4<u32>(global0.x, u_input.d.x, 0u, global0.x) % vec4<u32>(32u))), var_0));
    return ~(2147483647i | max(_wgslsmith_mod_i32(~var_2.x, -37177i | arg_0.x), -13462i));
}

fn func_6(arg_0: Struct_1, arg_1: u32) -> StorageBuffer {
    var var_0 = arg_0.a <= u_input.c;
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -967f), _wgslsmith_f_op_f32(sign(-360f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-458f, -1000f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(345f, -899f) - vec2<f32>(594f, 430f))), vec2<f32>(_wgslsmith_f_op_f32(trunc(777f)), -709f))))), vec2<f32>(_wgslsmith_f_op_f32(719f + _wgslsmith_f_op_f32(f32(-1f) * -270f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, -3406f)) - 1000f))));
    global0 = min(~vec4<u32>(arg_0.b, ~(4294967295u | global0.x), 42610u, arg_0.b), abs(func_5(_wgslsmith_dot_vec4_i32(vec4<i32>(18003i, 34523i, u_input.b, arg_0.a), vec4<i32>(865i, u_input.c, 1i, -79625i)) & _wgslsmith_mod_i32(arg_0.a, arg_0.a), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(global0.wz, u_input.d.yx), ~vec2<u32>(arg_1, u_input.d.x)), abs(select(u_input.d.x, 1u, true)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1242f, 175f, -654f, -180f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, 582f, -146f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, -213f, var_1.x), vec4<f32>(805f, var_1.x, -379f, var_1.x))))));
    let var_3 = func_2(!all(select(!vec3<bool>(arg_0.c, arg_0.c, arg_0.c), vec3<bool>(false, false, false), !vec3<bool>(arg_0.c, false, true))), select(!select(select(vec2<bool>(arg_0.c, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec4<bool>(false, arg_0.c, arg_0.c, true))), select(select(vec2<bool>(false, arg_0.c), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, arg_0.c)), true && arg_0.c), true), true));
    return StorageBuffer(select(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_add_i32(14615i, -74i), -arg_0.a), ~(-vec2<i32>(2147483647i, var_3.a))), -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 1i), min(vec2<i32>(-11788i, arg_0.a), vec2<i32>(60213i, var_3.a))), vec2<bool>(!var_3.c, arg_0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(global0.x, _wgslsmith_mod_u32(~(~(~109849u)), ~global0.x));
    var var_1 = max(~_wgslsmith_mod_u32(var_0, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, 5286u), 1u)), ~u_input.d.x);
    let var_2 = -min(~(~u_input.c << ((4294967295u << (u_input.a.x % 32u)) % 32u)), ~1202i);
    let var_3 = true;
    var var_4 = !select(select(false, true, any(vec3<bool>(false, var_3, true))), true, var_3);
    let x = u_input.a;
    s_output = func_6(Struct_1(countOneBits(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c, -1i), vec3<i32>(u_input.c, var_2, 0i)), func_1(vec2<i32>(u_input.c, var_2), Struct_1(-40580i, 1u, var_3, 17782u), vec4<f32>(-629f, -1257f, -191f, -1679f)))), countOneBits(_wgslsmith_mult_u32(global0.x, 28999u)), var_3, ~(~1u)), _wgslsmith_div_u32(var_0, 61179u));
}

