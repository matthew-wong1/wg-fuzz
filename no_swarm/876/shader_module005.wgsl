struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global1: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    global0 = vec4<bool>(false, select(false, global0.x, 42768i < _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-22299i, u_input.b, u_input.b, 18373i)), vec4<i32>(0i, 0i, 2147483647i, u_input.b))), all(select(global0.ww, global0.zx, !select(vec2<bool>(true, false), global0.zx, global0.zy))), false | all(vec4<bool>(all(global0.zyw), u_input.a == 4294967295u, !global0.x, u_input.a == u_input.a)));
    global1 = abs(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 9401u, u_input.a), vec3<u32>(17752u, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 4294967295u)), abs(vec3<u32>(67433u, u_input.a, u_input.a))), u_input.a) >> (u_input.a % 32u));
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-911f - -159f), 1472f, _wgslsmith_f_op_f32(f32(-1f) * -1052f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2351f, 560f, -1451f), vec3<f32>(1725f, -947f, -534f))) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(803f, 916f, 376f)))))), 1u, Struct_1(true)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, 46986u, 38371u), vec4<u32>(1u, 0u, 1u, 28071u)), _wgslsmith_add_vec4_u32(vec4<u32>(8905u, 1u, 4294967295u, 0u), vec4<u32>(34466u, u_input.a, 4294967295u, u_input.a))), ~vec4<u32>(4294967295u, 4294967295u, u_input.a, 29707u)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~u_input.a, ~u_input.a), 1u)), Struct_1(!(!any(global0.wz))));
    var var_1 = ~(~vec4<i32>(~firstTrailingBit(u_input.b), _wgslsmith_clamp_i32(22529i, 30709i, u_input.b) ^ u_input.b, ~firstTrailingBit(-2147483647i), _wgslsmith_div_i32(u_input.b, u_input.b) << (_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.b, 11373u), vec2<u32>(30841u, 55949u)) % 32u)));
    global0 = vec4<bool>(select(!(true & all(vec3<bool>(false, true, false))), any(vec3<bool>(any(vec4<bool>(false, global0.x, true, var_0.a.c.a)), !var_0.c.a, -18702i > var_1.x)), false), !var_0.c.a, any(vec2<bool>(all(vec2<bool>(false, global0.x)), true)), global0.x);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-991f))));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<bool>) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(224f, -1277f)) * _wgslsmith_f_op_f32(-arg_0.x)));
    var var_1 = !select(vec4<bool>(arg_2.x, arg_2.x, all(!vec2<bool>(false, global0.x)), true), vec4<bool>(select(true, global0.x, global0.x) && arg_2.x, select(u_input.b <= -7370i, true, true), !(!global0.x), !all(vec4<bool>(arg_2.x, false, false, arg_2.x))), select(select(vec4<bool>(arg_2.x, false, false, global0.x), !vec4<bool>(global0.x, arg_2.x, false, arg_2.x), vec4<bool>(arg_2.x, global0.x, true, arg_2.x)), !(!vec4<bool>(global0.x, arg_2.x, arg_2.x, false)), global0.x));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_0.zzz))), ~57025u, Struct_1(true));
    var var_3 = false;
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), var_2.a.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1018f, 934f, var_2.a.x), vec3<f32>(1653f, -2174f, -1097f), true))))) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-273f, _wgslsmith_f_op_f32(max(-382f, -421f)), -475f))));
    return Struct_4(var_2.c, Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2697f, 1000f, -658f) * var_4) - vec3<f32>(arg_0.x, var_2.a.x, -698f)), _wgslsmith_clamp_u32(u_input.a, 45540u, _wgslsmith_div_u32(16772u, 4294967295u)), var_2.c), ~var_2.b, var_2.c));
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> Struct_5 {
    var var_0 = vec2<bool>(arg_1.b.a.a.x > _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -528f), arg_1.b.a.a.x)), _wgslsmith_f_op_f32(-arg_1.b.a.a.x)), true);
    global0 = !(!select(vec4<bool>(arg_1.a.a, true, func_2(vec4<f32>(arg_1.b.a.a.x, 445f, 186f, 1248f), u_input.b, vec2<bool>(arg_1.b.c.a, global0.x)).a.a, 1124f == arg_1.b.a.a.x), vec4<bool>(-215f > arg_1.b.a.a.x, true, arg_1.b.a.a.x < arg_1.b.a.a.x, !global0.x), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1020f, -1891f, arg_1.b.a.a.x, arg_1.b.a.a.x)), -23222i, global0.zx).a.a));
    var var_1 = arg_1.b.a.b;
    let var_2 = _wgslsmith_add_i32(arg_0, 1i);
    var var_3 = _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(u_input.b, u_input.b, _wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_0, 5448i, 2147483647i, var_2), vec4<i32>(u_input.b, 44805i, u_input.b, arg_0)), vec4<i32>(0i, arg_0, var_2, 1i)), min(u_input.b, min(arg_0, var_2)))), _wgslsmith_mult_vec4_i32(-(~vec4<i32>(var_2, u_input.b, 87808i, -52853i)) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(arg_1.b.a.b, 17127u, arg_1.b.a.b, 0u), select(vec4<u32>(64850u, arg_1.b.b, arg_1.b.b, u_input.a), vec4<u32>(8447u, 4294967295u, u_input.a, u_input.a), true)) % vec4<u32>(32u)), vec4<i32>(~u_input.b, -var_2, ~0i, 0i)));
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.b.a.a.x, _wgslsmith_f_op_f32(-arg_1.b.a.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.a.a.x * 868f), 1f))), any(vec4<bool>(false, (arg_1.b.b >> (arg_1.b.b % 32u)) > 1u, any(global0.yxz), true)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = ~arg_0.x << (28010u % 32u);
    var_0 = 0u;
    let var_1 = func_4(~_wgslsmith_mod_i32(-22772i, countOneBits(-u_input.b)), func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1244f, arg_2.a.a.x, arg_2.a.a.x, arg_2.a.a.x), vec4<f32>(arg_2.a.a.x, arg_2.a.a.x, 344f, arg_2.a.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.a.a.x, 1641f, 2290f, -364f)))))), -22300i, !vec2<bool>(true, arg_2.c.a & global0.x)));
    global1 = abs(26579u);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(722f - var_1.a))) - _wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(-arg_2.a.a.x), 1000f);
    return select(select(vec4<bool>(true, global0.x, -u_input.b == firstLeadingBit(0i), var_1.b), vec4<bool>(arg_2.a.c.a, global0.x, false, select(all(vec2<bool>(false, false)), arg_2.c.a, true)), var_1.b), vec4<bool>(any(select(!vec4<bool>(arg_2.a.c.a, true, false, var_1.b), !vec4<bool>(arg_2.a.c.a, global0.x, arg_2.c.a, false), vec4<bool>(global0.x, global0.x, global0.x, global0.x))), global0.x, arg_2.a.c.a, all(select(vec2<bool>(arg_2.c.a, global0.x), select(vec2<bool>(true, var_1.b), vec2<bool>(arg_2.c.a, var_1.b), vec2<bool>(true, var_1.b)), true))), false);
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: bool) -> Struct_2 {
    global0 = !vec4<bool>(!(!global0.x), true && arg_3, ~(-u_input.b) > _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.b, 1i), firstTrailingBit(arg_1)), !select(true, any(arg_2.wz), true));
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1963f, -1000f, 127f, -349f), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1624f, -378f, -1152f, -1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 149f, -323f, 605f), vec4<f32>(-768f, 203f, 1089f, -194f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -740f), -274f, func_2(vec4<f32>(279f, -1216f, 129f, 1145f), u_input.b, vec2<bool>(true, arg_3)).b.a.a.x, _wgslsmith_f_op_f32(trunc(1847f))) * vec4<f32>(1f, -1455f, _wgslsmith_f_op_f32(f32(-1f) * -2530f), _wgslsmith_f_op_f32(select(141f, -583f, arg_2.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(218f, 609f, -1211f, 1000f) * vec4<f32>(-1000f, 688f, 157f, -1000f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), func_2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(911f, -783f, 611f, 1442f) - vec4<f32>(-718f, -161f, -107f, 1116f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-881f, -745f, -298f, -240f) - vec4<f32>(952f, -1052f, 101f, 301f))))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(max(arg_1.x, u_input.b), _wgslsmith_mod_i32(2147483647i, u_input.b)), -arg_1.x), select(!global0.xz, !func_1(vec4<u32>(1u, 63907u, u_input.a, u_input.a), arg_0.zz, Struct_3(Struct_2(vec3<f32>(267f, 1268f, -262f), 39324u, Struct_1(false)), u_input.a, Struct_1(true))).wz, u_input.b < _wgslsmith_sub_i32(-1i, u_input.b))).a.a));
    var var_1 = vec4<u32>(4294967295u & u_input.a, countOneBits(6903u), 0u, _wgslsmith_mult_u32(arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4627u, 1u, 4294967295u) ^ ~arg_0, _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 33992u, 55613u), vec3<u32>(u_input.a, arg_0.x, 4294967295u)), countOneBits(arg_0)))));
    let var_2 = func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-1855f - -1246f))), _wgslsmith_div_f32(-194f, _wgslsmith_f_op_f32(293f - -1006f)), -1000f)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(20181i, u_input.b, 0i, 0i), vec4<i32>(30686i, arg_1.x, -2147483647i, 1i)), countOneBits(arg_1.x)), arg_1.x ^ _wgslsmith_div_i32(firstLeadingBit(arg_1.x), -2147483647i)), select(!vec2<bool>(u_input.b != 24416i, false), arg_2.xz, arg_2.wx)).b.c;
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1063f, 769f, var_0.x, -1084f)))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, 1822f, 1525f, var_0.x), vec4<f32>(var_0.x, var_0.x, -104f, -1565f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(246f, -567f, var_0.x, var_0.x) + vec4<f32>(var_0.x, var_0.x, -198f, 101f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1746f, -343f, -979f))))), var_0.wyx)), max(37292u, abs(arg_0.x)), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~countOneBits(vec3<u32>(1u, 2236u << (u_input.a % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(41785u, u_input.a, 1u), vec3<u32>(4294967295u, u_input.a, u_input.a)))), vec2<i32>(~u_input.b, u_input.b), select(func_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, 10057u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec2<u32>(u_input.a, u_input.a), Struct_3(Struct_2(vec3<f32>(1708f, 790f, -355f), 39277u, Struct_1(global0.x)), ~u_input.a, Struct_1(false))), vec4<bool>(any(vec2<bool>(true, false)) != global0.x, global0.x, global0.x, any(vec2<bool>(false, true))), func_1(countOneBits(~vec4<u32>(25795u, 5718u, u_input.a, 2497u)), vec2<u32>(abs(u_input.a), ~u_input.a), Struct_3(func_2(vec4<f32>(787f, -1000f, 1000f, 379f), 1i, global0.zz).b.a, ~u_input.a, func_2(vec4<f32>(-189f, -1943f, 993f, -1910f), u_input.b, global0.yz).a))), func_1(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) | vec4<u32>(686u, u_input.a, 71054u, 0u)), firstTrailingBit(vec4<u32>(22584u, u_input.a, 227u, 4294967295u))), vec2<u32>(~abs(5667u), u_input.a), Struct_3(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(683f, 1519f, -1566f, -1456f)), max(u_input.b, u_input.b), !global0.xw).b.a, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(1u, 13498u, u_input.a, u_input.a)), ~vec4<u32>(67712u, 4294967295u, 97945u, 28898u)), Struct_1(true))).x);
    let var_1 = Struct_4(var_0.c, Struct_3(func_5(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(u_input.a, u_input.a, u_input.a)), min(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(27331u, u_input.a, var_0.b))), -_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(-1i, -6407i)), func_1(vec4<u32>(4294967295u, 0u, u_input.a, 1u) | vec4<u32>(var_0.b, 1u, u_input.a, 4294967295u), ~vec2<u32>(0u, 1u), Struct_3(var_0, var_0.b, var_0.c)), var_0.c.a), 1u, Struct_1(var_0.c.a)));
    let var_2 = ~vec4<u32>(firstTrailingBit(var_0.b) >> (4294967295u % 32u), abs(~_wgslsmith_div_u32(var_0.b, 1089u)), var_0.b, u_input.a);
    var var_3 = global0.yz;
    var var_4 = var_2;
    var var_5 = !func_1(var_2, select(countOneBits(var_4.yx), var_4.wx & ~vec2<u32>(34576u, 26316u), !(!vec2<bool>(var_1.b.a.c.a, true))), Struct_3(Struct_2(var_1.b.a.a, 0u, var_0.c), ~0u, Struct_1(false)));
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(769f, var_0.a.x))) - -342f) - -666f);
    let var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a.a.x, var_1.b.a.a.x, 576f, 2768f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-410f, var_0.a.x, 364f, var_0.a.x) + vec4<f32>(-936f, var_1.b.a.a.x, 918f, var_1.b.a.a.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(906f, 1966f, var_1.b.a.a.x, var_0.a.x), vec4<f32>(-659f, var_1.b.a.a.x, 1000f, var_1.b.a.a.x), vec4<bool>(true, false, var_5.x, var_3.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, var_0.a.x, 241f, var_0.a.x) + vec4<f32>(var_0.a.x, var_1.b.a.a.x, 203f, var_1.b.a.a.x))))));
}

