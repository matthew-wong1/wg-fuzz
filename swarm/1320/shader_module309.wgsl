struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<i32>,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    var var_0 = true;
    var_0 = select(true, !(true && (u_input.a < u_input.a)) && !any(vec3<bool>(true, true, true)), true);
    var_0 = (_wgslsmith_f_op_f32(trunc(203f)) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-770f - 476f) + -1317f), 1202f, true))) & any(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true)));
    var var_1 = Struct_4(Struct_2(_wgslsmith_mult_i32(_wgslsmith_sub_i32(~(-20875i), ~(-2147483647i)), u_input.a), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -254f, -1225f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-634f, -633f, 831f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1071f, 156f, 1835f), vec3<f32>(-109f, -370f, -778f)))), vec3<bool>(false, true, true)))), Struct_1(vec3<bool>(!any(vec4<bool>(true, true, true, false)), false, any(vec4<bool>(false, false, true, true))), true, -abs(~vec4<i32>(u_input.a, u_input.a, -1i, u_input.a)), _wgslsmith_mult_u32(1u, ~_wgslsmith_mult_u32(0u, 1u)), reverseBits(-(vec3<i32>(u_input.a, -2147483647i, 41746i) << (vec3<u32>(0u, 4294967295u, 1u) % vec3<u32>(32u))))));
    let var_2 = -1171f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2 * var_1.a.b.x))) + 213f) - _wgslsmith_f_op_f32(var_1.a.b.x + _wgslsmith_f_op_f32(-var_1.a.b.x))) - _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b.x * _wgslsmith_f_op_f32(exp2(var_2))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<i32>) -> vec4<f32> {
    let var_0 = arg_1;
    var var_1 = Struct_1(vec3<bool>(true, true, false), !all(vec3<bool>(true, true, true)), vec4<i32>(var_0.a & arg_1.a, arg_2.x, ~(1i | arg_1.a) | countOneBits(countOneBits(32762i)), select(0i, abs(~1i), true)), _wgslsmith_dot_vec4_u32(~vec4<u32>(~28006u, 4294967295u, ~1u, 1u), ~min(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 19364u, 0u, 4294967295u), vec4<u32>(0u, 44210u, 1u, 65401u), vec4<u32>(6520u, 63917u, 54112u, 23836u)), ~vec4<u32>(4294967295u, 80412u, 32421u, 0u))), abs(vec3<i32>(14397i, var_0.a, countOneBits(-69275i))) >> (vec3<u32>(11251u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 3796u, 32028u, 4294967295u), vec4<u32>(14133u, 13055u, 4294967295u, 34173u)), ~vec4<u32>(1u, 63956u, 1u, 2229u)), ~16495u >> (max(1u, 1u) % 32u)) % vec3<u32>(32u)));
    var var_2 = false;
    var_2 = all(vec4<bool>(all(!(!vec4<bool>(false, var_1.a.x, true, false))), var_1.a.x, !var_1.b, false));
    let var_3 = false;
    return _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * arg_0.x), _wgslsmith_f_op_f32(step(arg_1.b.x, -1102f)), _wgslsmith_f_op_f32(f32(-1f) * -2335f), _wgslsmith_f_op_f32(var_0.b.x + 2046f))));
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -714f)), arg_1.x) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(arg_1.ww, arg_2.b.zx)))));
    let var_1 = 16663u;
    var var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(min(_wgslsmith_div_vec2_u32(~vec2<u32>(72744u, 43865u), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(arg_0, 0u), vec2<u32>(4294967295u, var_1))), vec2<u32>(~arg_0, ~arg_0)), vec2<u32>(var_1, _wgslsmith_div_u32(abs(arg_0), 0u))), _wgslsmith_add_u32((17848u | max(arg_0, 0u)) ^ _wgslsmith_div_u32(~1u, arg_0), ~_wgslsmith_div_u32(1u, ~var_1)), 1u | arg_0, reverseBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_0, 0u, var_1), ~vec4<u32>(4294967295u, 75408u, var_1, 5367u)), ~countOneBits(var_1), arg_0)));
    let var_3 = firstLeadingBit(vec4<u32>(arg_0, ~((4294967295u | var_2.x) << (13901u % 32u)), _wgslsmith_div_u32(14484u, arg_0), ~min(17275u | arg_0, 1u)));
    let var_4 = reverseBits(arg_0 ^ ~(~var_1));
    return select(arg_2.a, -41353i, false);
}

fn func_2() -> vec4<u32> {
    let var_0 = func_5(31683u, _wgslsmith_f_op_vec4_f32(func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -714f), _wgslsmith_f_op_f32(f32(-1f) * -772f), any(vec2<bool>(true, false)))), 646f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1092f * 2043f), _wgslsmith_f_op_f32(838f - -1060f))), Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), ~vec3<i32>(2147483647i, -29745i, 36762i)), vec3<f32>(1f, 1f, 1f)), vec3<i32>(u_input.a, select(u_input.a, ~u_input.a, true), ~2147483647i))), Struct_2(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a, -39790i) << (vec2<u32>(12595u, 33330u) % vec2<u32>(32u))), vec2<i32>(1i, u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(trunc(2115f)), _wgslsmith_f_op_f32(1240f - _wgslsmith_f_op_f32(2602f - -781f)), -1876f)));
    return abs(vec4<u32>(58057u, ~1u, 0u, 107031u));
}

fn func_6(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(max(-2147483647i >> (1u % 32u), abs(0i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b.b)))), Struct_1(select(vec3<bool>(arg_1.x | arg_1.x, true, arg_1.x), !arg_1.yyw, arg_1.x), false, -select(arg_2.c, max(arg_2.c, arg_2.c), true), abs(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_0.x, arg_2.d, 68482u), vec4<u32>(22342u, 4454u, arg_2.d, 4294967295u), arg_0), vec4<u32>(arg_2.d, 1u, arg_2.d, arg_0.x) << (arg_0 % vec4<u32>(32u)))), arg_2.c.yyw));
    var var_1 = select(var_0.b.b, (select(!var_0.b.b, all(arg_1), var_0.b.d == var_0.b.d) || select(var_0.b.b && true, false, any(arg_1.wy))) | all(select(select(vec2<bool>(false, false), vec2<bool>(false, var_0.b.b), vec2<bool>(true, arg_1.x)), arg_1.xz, arg_0.x > 1u)), all(select(!vec4<bool>(arg_1.x, true, false, false), !vec4<bool>(false, false, arg_1.x, var_0.b.a.x), arg_1.x)));
    var var_2 = Struct_4(var_0.a, Struct_1(!(!(!vec3<bool>(arg_1.x, arg_1.x, true))), false || all(select(vec2<bool>(false, arg_1.x), vec2<bool>(arg_1.x, var_0.b.b), vec2<bool>(true, var_0.b.b))), _wgslsmith_div_vec4_i32(abs(vec4<i32>(var_0.a.a, -2147483647i, arg_2.c.x, 0i)), -vec4<i32>(24110i, u_input.a, var_0.a.a, 0i)), arg_0.x, vec3<i32>(-1i | abs(arg_2.b.a), 1i, -40461i)));
    var_1 = !var_0.b.a.x | select(any(var_0.b.a), true, !select(true, !var_2.b.b, true));
    let var_3 = var_2.b.a.x;
    return Struct_2(u_input.a >> (1u % 32u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(var_2.a.b)))) * vec3<f32>(var_2.a.b.x, _wgslsmith_f_op_f32(-var_0.a.b.x), _wgslsmith_f_op_f32(floor(286f)))) + vec3<f32>(_wgslsmith_f_op_f32(step(1562f, arg_3.x)), _wgslsmith_f_op_f32(step(-534f, -1326f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1141f), var_0.a.b.x))));
}

fn func_1() -> vec4<f32> {
    var var_0 = select(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)) ^ (~abs(vec4<u32>(9599u, 10607u, 6140u, 2037u)) & min(select(vec4<u32>(4496u, 0u, 17356u, 51713u), vec4<u32>(1u, 0u, 4294967295u, 44830u), false), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 27275u, 52718u, 1u), vec4<u32>(1u, 26686u, 1u, 43816u), vec4<u32>(1u, 4294967295u, 62078u, 1u)))), ~vec4<u32>(_wgslsmith_div_u32(66496u, 40842u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(139751u, 73459u, 40648u, 35554u), vec4<u32>(29042u, 9960u, 1u, 1849u)), 610u) << (~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 119959u, 14227u), vec3<u32>(1u, 1u, 1u)), 0u >> (0u % 32u), ~86762u, 1u) % vec4<u32>(32u)), vec4<bool>(any(select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), true)), any(vec2<bool>(true, true)), true, true));
    var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(~48050u, min((4294967295u ^ var_0.x) | firstLeadingBit(var_0.x), var_0.x), var_0.x, firstTrailingBit(0u)), max(reverseBits((vec4<u32>(var_0.x, 4294967295u, 3215u, 0u) >> (vec4<u32>(var_0.x, 1u, var_0.x, var_0.x) % vec4<u32>(32u))) | _wgslsmith_div_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(11445u, var_0.x, 4294967295u, 1u))), _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.x, var_0.x, 23363u, var_0.x), vec4<u32>(var_0.x | var_0.x, var_0.x, var_0.x, 44511u))));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(294f - -1524f)) - _wgslsmith_f_op_f32(max(903f, _wgslsmith_f_op_f32(trunc(2072f))))) * _wgslsmith_f_op_f32(-1344f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -223f)))), func_6(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 24748u, 0u, var_0.x), func_2(), ~(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x))), vec4<bool>(var_0.x != var_0.x, select(true, false, true), select(any(vec4<bool>(false, false, true, true)), any(vec4<bool>(false, true, true, false)), any(vec4<bool>(false, true, true, false))), true), Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-577f + -1000f), -223f)), Struct_2(1i, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(937f, 323f, 305f), vec3<f32>(103f, 914f, 1302f)))), -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), 20333u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-2227f, 1118f)), _wgslsmith_f_op_f32(f32(-1f) * -940f)) * vec2<f32>(_wgslsmith_f_op_f32(1000f + -102f), -217f))), reverseBits(_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(-1i, u_input.a, 0i, 36642i)), min(max(vec4<i32>(-32862i, u_input.a, u_input.a, u_input.a), vec4<i32>(-2147483647i, u_input.a, -2147483647i, -78650i)), vec4<i32>(25737i, u_input.a, 2147483647i, u_input.a)), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a, -39891i, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a, u_input.a, -19768i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))))), min(54322u, max(func_2().x, 0u)));
    var var_2 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -458f))) - _wgslsmith_f_op_f32(round(var_1.a))), 761f), var_1.b, _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(24058i, var_1.b.a, -2147483647i, 1i), var_1.c), max(var_1.c, vec4<i32>(var_1.b.a, var_1.c.x, var_1.c.x, var_1.c.x)), var_1.c), var_1.c ^ (vec4<i32>(7502i, -26222i, var_1.b.a, -1i) | var_1.c)) >> (vec4<u32>(var_1.d, _wgslsmith_sub_u32(var_0.x, select(4294967295u, 4294967295u, true)), 42810u, var_1.d) % vec4<u32>(32u)), _wgslsmith_div_u32(func_2().x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_1.d, 60185u, var_1.d), vec4<u32>(3716u, 19508u, var_1.d, 4294967295u)) << (17164u % 32u)));
    return vec4<f32>(-950f, var_2.b.b.x, 1275f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(147f, var_1.b.b.x, var_2.a, var_1.b.b.x), vec4<f32>(1137f, 1519f, 314f, -894f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1183f, 1607f, 173f, var_2.b.b.x) + vec4<f32>(623f, var_2.b.b.x, 560f, var_2.b.b.x))), var_2.b, select(vec3<i32>(u_input.a, var_2.c.x, var_1.c.x), var_1.c.xwy, vec3<bool>(false, false, true)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 8368i, -16782i), vec3<i32>(9130i, var_1.c.x, var_2.c.x)))).x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(~1u)), -526f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1()), vec4<f32>(_wgslsmith_f_op_f32(493f + -250f), _wgslsmith_f_op_f32(round(151f)), _wgslsmith_f_op_f32(-263f * -173f), -1686f), vec4<bool>(true, true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-291f)) - 133f), _wgslsmith_f_op_f32(f32(-1f) * -577f), -977f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(388f * -719f), _wgslsmith_f_op_f32(select(-1000f, 827f, true))))), false)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(894f + 755f)), _wgslsmith_f_op_f32(max(-286f, _wgslsmith_f_op_f32(min(-1630f, 448f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-912f)) * _wgslsmith_f_op_f32(select(-1249f, -1302f, false))))), !any(vec4<bool>(true, true, true, true)))));
}

