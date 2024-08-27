struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global0 = false;
    global0 = all(!select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(true, true)));
    let var_0 = Struct_2(max(firstTrailingBit(_wgslsmith_mod_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(u_input.c, u_input.c, u_input.c)))), u_input.a), u_input.a.x);
    global0 = all(!select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(true, true)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(f32(-1f) * -247f)))), -46490i, -_wgslsmith_mod_i32(~(u_input.c & 1i), 1i), vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(~var_0.b ^ select(u_input.a.x, u_input.a.x, false), -1i), var_0.b, _wgslsmith_mult_i32(u_input.c, _wgslsmith_mod_i32(u_input.c, 1i)) | -max(-2147483647i, var_0.b)), firstTrailingBit(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, 68972u) << (_wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)))));
    return 1f;
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-843f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1157f * -1000f) * _wgslsmith_f_op_f32(func_3())), -596f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) + vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-928f, -1294f)))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(990f * _wgslsmith_f_op_f32(func_3())))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-945f, var_0.x)) + -1209f)) * 1000f), ~u_input.a.x, 22767i, abs(~(-(~vec4<i32>(25178i, 62631i, -9799i, 53677i)))), ~_wgslsmith_clamp_vec2_u32(~max(vec2<u32>(69321u, 4294967295u), vec2<u32>(u_input.b, 1u)), _wgslsmith_mod_vec2_u32(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 5038u), false), ~vec2<u32>(u_input.b, u_input.b)), ~(~vec2<u32>(u_input.b, 29241u))));
    var var_2 = vec3<f32>(var_1.a, _wgslsmith_f_op_f32(-var_0.x), 888f);
    var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.a, var_2.x, 562f), vec3<f32>(296f, var_0.x, -610f), false)) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, -828f, -364f) - vec3<f32>(var_0.x, var_2.x, var_2.x)), vec3<f32>(-291f, var_1.a, 1000f), any(vec2<bool>(false, true))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.a)), var_2.x, _wgslsmith_f_op_f32(round(var_2.x))))), !any(vec4<bool>(true, true, true, true)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-710f, var_0.x, var_1.a)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(540f, 1078f, var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_2.x, 215f))), 1f))));
    global0 = true;
    return var_1.a;
}

fn func_4(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1) -> Struct_1 {
    global0 = (arg_2.b != arg_2.d.x) && any(vec4<bool>(!(arg_2.a >= arg_2.a), 5613i == arg_2.b, true, any(vec4<bool>(true, true, true, true))));
    let var_0 = _wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(u_input.c, countOneBits(u_input.c), _wgslsmith_add_i32(arg_2.c, min(arg_2.d.x, -1i)), 0i)), arg_2.d, select(arg_2.d, _wgslsmith_mod_vec4_i32(-(vec4<i32>(-35921i, u_input.a.x, arg_2.d.x, 27030i) | arg_2.d), min(_wgslsmith_sub_vec4_i32(arg_2.d, vec4<i32>(3417i, arg_2.c, arg_2.c, arg_2.d.x)), arg_2.d)), select(vec4<bool>(4294967295u <= u_input.b, arg_2.e.x == 1u, u_input.c != arg_2.c, true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true))));
    var var_1 = Struct_2(firstLeadingBit(vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -45895i, 5596i), -34110i, u_input.a.x)), u_input.a.x);
    global0 = (_wgslsmith_clamp_i32(42102i, var_1.a.x, 1111i) << (69914u % 32u)) <= u_input.a.x;
    var var_2 = Struct_2(~(-(~_wgslsmith_mult_vec3_i32(var_1.a, var_1.a))), -(arg_2.d.x >> (_wgslsmith_sub_u32(arg_1.x, abs(39675u)) % 32u)));
    return Struct_1(_wgslsmith_f_op_f32(arg_2.a + arg_0), arg_2.b << (arg_1.x % 32u), u_input.c, select(abs(-(~vec4<i32>(2147483647i, var_1.a.x, var_2.a.x, var_0.x))), var_0, select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, false, false, false), true), vec4<bool>(false, true, arg_2.e.x == 33735u, true), 7251u <= ~arg_1.x)), _wgslsmith_mult_vec2_u32(~countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 82843u), vec2<u32>(0u, 4294967295u), arg_2.e)), ~select(arg_2.e, vec2<u32>(4294967295u, arg_2.e.x), vec2<bool>(false, true)) | ~(~vec2<u32>(110988u, arg_2.e.x))));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> bool {
    var var_0 = 30499u;
    let var_1 = func_4(796f, ~(countOneBits(abs(vec3<u32>(0u, 0u, 1u))) ^ (~vec3<u32>(4294967295u, u_input.b, u_input.b) >> ((vec3<u32>(0u, 1u, arg_0.x) >> (vec3<u32>(arg_0.x, 0u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1227f)), _wgslsmith_f_op_f32(func_2())), u_input.a.x, -(_wgslsmith_mult_i32(u_input.c, u_input.a.x) | -2147483647i), abs(_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.c, 23079i, 24850i, u_input.a.x), vec4<i32>(-12147i, u_input.c, -1i, u_input.c), false), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.c) << (vec4<u32>(0u, 14151u, 0u, 23186u) % vec4<u32>(32u)))), vec2<u32>(1437u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, 5544u, arg_1), vec4<u32>(38390u, 38907u, 1u, 32691u)), vec4<u32>(u_input.b, 28328u, 1u, arg_0.x)))));
    var var_2 = ~_wgslsmith_mod_vec2_i32(max(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, var_1.b), vec2<i32>(65208i, var_1.c)) ^ var_1.d.yy, _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-10808i, u_input.a.x), u_input.a.zy), _wgslsmith_add_vec2_i32(u_input.a.xy, vec2<i32>(0i, var_1.b)))), vec2<i32>(2147483647i, countOneBits(u_input.a.x)));
    let var_3 = Struct_1(1f, u_input.c, -1i, vec4<i32>(_wgslsmith_add_i32(var_2.x, _wgslsmith_add_i32(17013i, ~u_input.c)), var_2.x, -1i, _wgslsmith_add_i32(u_input.a.x, abs(func_4(var_1.a, vec3<u32>(var_1.e.x, u_input.b, u_input.b), Struct_1(var_1.a, -2147483647i, -2147483647i, var_1.d, vec2<u32>(arg_1, var_1.e.x))).d.x))), vec2<u32>(0u, ~0u));
    let var_4 = var_1;
    return _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.c, ~14644i, countOneBits(var_2.x)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(-5504i, -34387i, -27038i), vec3<i32>(var_2.x, -44848i, -19459i))) > ~(-2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.b) << (vec2<u32>(u_input.b, 25001u) % vec2<u32>(32u)), ~vec2<u32>(1u, u_input.b))), 20650u);
    var var_1 = vec4<u32>(~(~u_input.b), firstTrailingBit(u_input.b), _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(0u, u_input.b, u_input.b)), vec3<u32>(1u, 41236u, u_input.b) >> (vec3<u32>(0u, u_input.b, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, 0u), vec3<u32>(u_input.b, 4294967295u, 0u))), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(33862u, u_input.b, 1u), vec3<u32>(u_input.b, 4294967295u, 11014u)))), u_input.b);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(round(-324f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + 1046f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-435f - 303f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(814f, 1771f, -1986f), vec3<f32>(-1312f, -1050f, 367f)))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1173f, 445f, 1369f)))))));
    var_0 = false;
    var var_3 = select(!select(vec4<bool>(true, false, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false)), true | (var_1.x < 0u)), select(vec4<bool>(!all(vec4<bool>(false, false, false, true)), all(vec2<bool>(true, true)), select(true, true, true), !any(vec3<bool>(false, false, false))), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, all(vec3<bool>(false, true, true)), false), true), (1i ^ u_input.c) >= -min(-10549i, 1i)), !select(select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(2926f <= var_2.x, all(vec3<bool>(true, true, true)), true, true), false));
    let x = u_input.a;
    s_output = StorageBuffer(43998u, _wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -u_input.a.x, firstTrailingBit(u_input.a.x | 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c) << (var_1.yw % vec2<u32>(32u)), u_input.a.xy)), countOneBits(vec3<i32>(_wgslsmith_mod_i32(-2147483647i, u_input.a.x), countOneBits(-2303i), _wgslsmith_div_i32(2147483647i, u_input.a.x)))), var_1.x & _wgslsmith_add_u32(70770u, 27733u), ~(~(_wgslsmith_mult_u32(u_input.b, 25864u) >> (~var_1.x % 32u))), _wgslsmith_add_vec3_i32(vec3<i32>(-_wgslsmith_div_i32(31816i, u_input.c), ~_wgslsmith_add_i32(-57089i, u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, ~u_input.c)), u_input.a & vec3<i32>(-u_input.a.x, u_input.a.x, 24050i)));
}

