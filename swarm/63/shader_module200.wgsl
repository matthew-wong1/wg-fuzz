struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = vec2<u32>(_wgslsmith_div_u32(~(~4294967295u ^ ~arg_0), min(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, 1u), vec3<u32>(arg_0, arg_0, arg_0)), _wgslsmith_dot_vec2_u32(~vec2<u32>(arg_0, arg_0), max(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 4294967295u))))), arg_0);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -343f))));
    var var_2 = true;
    var_1 = 159f;
    var var_3 = 1021f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -819f))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = arg_1.x;
    let var_1 = false;
    var var_2 = _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.b.b.x, arg_2.b.x, arg_2.b.x, arg_0.b.b.x), ~arg_2.b), select(5222u, 23729u, false)), _wgslsmith_div_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(arg_2.b.x, 46689u, arg_0.d.b.x), ~arg_0.b.b.x, 8586u ^ arg_2.b.x), ~_wgslsmith_sub_u32(arg_0.d.b.x, 2829u)), arg_2.b.x), arg_2.b.x, arg_2.b.x);
    var var_3 = arg_2;
    var_0 = true;
    return Struct_2(-(-1i ^ firstTrailingBit(select(u_input.b, 0i, false))), Struct_1(vec4<i32>(-1i) * -countOneBits(vec4<i32>(arg_0.d.a.x, 9516i, 10909i, var_3.a.x)), firstTrailingBit((var_3.b >> (arg_2.b % vec4<u32>(32u))) | _wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_3.b.x, arg_2.b.x, arg_0.b.b.x), vec4<u32>(arg_0.b.b.x, arg_2.b.x, arg_0.b.b.x, var_3.b.x))), _wgslsmith_f_op_f32(func_3(max(var_3.b.x, 4294967295u ^ var_3.b.x)))), 36304i, arg_2);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: i32) -> vec3<f32> {
    var var_0 = any(!(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false))));
    var_0 = -arg_3 == ~_wgslsmith_add_i32(u_input.a.x, -20687i);
    var_0 = !any(vec3<bool>(true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false)), true));
    var var_1 = Struct_1(arg_0, arg_1.d.b ^ arg_1.d.b, -1039f);
    var_1 = func_2(Struct_2(var_1.a.x, arg_1.d, _wgslsmith_mod_i32(arg_1.d.a.x, ~69845i), Struct_1(arg_0, vec4<u32>(arg_1.b.b.x, arg_1.b.b.x, 69571u, ~47823u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(580f, arg_1.b.c) + _wgslsmith_f_op_f32(select(142f, 401f, true))))), select(vec3<bool>(select(all(vec4<bool>(true, false, true, false)), any(vec3<bool>(true, true, false)), true), all(vec2<bool>(true, true)), !all(vec3<bool>(true, true, false))), vec3<bool>(all(vec4<bool>(false, true, true, false)), !any(vec4<bool>(true, true, false, true)), true), ~max(var_1.b.x, 3695u) > 25818u), arg_1.d).b;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.d.c, var_1.c))), arg_1.d.c)));
}

fn func_5(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = !vec2<bool>(u_input.a.x > abs(u_input.a.x), true);
    var var_1 = false;
    var var_2 = 1i;
    let var_3 = !(1i <= reverseBits(~u_input.a.x & ~(-3646i)));
    var var_4 = Struct_2(u_input.b, func_2(Struct_2(1350i, func_2(func_2(Struct_2(u_input.b, Struct_1(vec4<i32>(-2147483647i, 2147483647i, -10893i, -1i), vec4<u32>(0u, 1u, 59844u, 24534u), -1523f), 1112i, Struct_1(vec4<i32>(u_input.a.x, -48187i, 2147483647i, u_input.a.x), vec4<u32>(63036u, 0u, 66847u, 4294967295u), arg_0.x)), vec3<bool>(false, true, var_3), Struct_1(u_input.a, vec4<u32>(4294967295u, 1u, 77696u, 6305u), 295f)), select(vec3<bool>(true, false, var_0.x), vec3<bool>(false, var_3, var_0.x), vec3<bool>(true, var_0.x, false)), func_2(Struct_2(-1i, Struct_1(u_input.a, vec4<u32>(4294967295u, 8454u, 31480u, 4294967295u), 1000f), u_input.a.x, Struct_1(u_input.a, vec4<u32>(0u, 1u, 59352u, 0u), arg_0.x)), vec3<bool>(var_0.x, true, true), Struct_1(vec4<i32>(u_input.a.x, u_input.b, u_input.a.x, 1i), vec4<u32>(4294967295u, 87776u, 6721u, 0u), 505f)).b).b, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, -1i), -2147483647i), func_2(func_2(Struct_2(u_input.b, Struct_1(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), vec4<u32>(29725u, 33664u, 52522u, 19435u), -538f), 0i, Struct_1(vec4<i32>(u_input.a.x, 0i, u_input.a.x, u_input.a.x), vec4<u32>(72386u, 59154u, 1u, 801u), 480f)), vec3<bool>(var_3, true, true), Struct_1(u_input.a, vec4<u32>(0u, 1u, 50848u, 1u), arg_0.x)), vec3<bool>(true, var_0.x, true), func_2(Struct_2(u_input.a.x, Struct_1(u_input.a, vec4<u32>(87935u, 5698u, 1u, 0u), -119f), -1i, Struct_1(u_input.a, vec4<u32>(4294967295u, 4294967295u, 1u, 26450u), 367f)), vec3<bool>(var_0.x, true, true), Struct_1(u_input.a, vec4<u32>(73338u, 4294967295u, 1u, 4294967295u), 552f)).d).d), !select(select(vec3<bool>(true, var_3, var_3), vec3<bool>(var_3, false, var_0.x), var_3), select(vec3<bool>(var_0.x, var_0.x, var_3), vec3<bool>(true, false, var_0.x), true), true && var_0.x), Struct_1(_wgslsmith_div_vec4_i32(~u_input.a, u_input.a), vec4<u32>(~17642u, 1u, ~87959u, ~4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1297f + arg_0.x) - 350f))).b, ~_wgslsmith_div_i32(-4217i, u_input.a.x) & 6245i, func_2(func_2(func_2(Struct_2(46542i, Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.b, -2147483647i), vec4<u32>(2928u, 25717u, 0u, 0u), -222f), u_input.a.x, Struct_1(vec4<i32>(1i, 1i, 5665i, 0i), vec4<u32>(1u, 4294967295u, 33980u, 1536u), -833f)), vec3<bool>(var_3, true, false), Struct_1(u_input.a, vec4<u32>(212u, 40577u, 107328u, 0u), -516f)), select(!vec3<bool>(var_3, false, var_3), vec3<bool>(true, false, true), !var_3), func_2(func_2(Struct_2(u_input.b, Struct_1(u_input.a, vec4<u32>(4294967295u, 4294967295u, 0u, 0u), 767f), u_input.b, Struct_1(u_input.a, vec4<u32>(1u, 1u, 0u, 1u), arg_0.x)), vec3<bool>(var_3, var_0.x, true), Struct_1(u_input.a, vec4<u32>(4294967295u, 4294967295u, 32234u, 29355u), -690f)), vec3<bool>(true, true, true), Struct_1(u_input.a, vec4<u32>(1u, 2215u, 51043u, 4294967295u), 946f)).b), !vec3<bool>(true, true, var_3), Struct_1(_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(1i, u_input.b, 32246i, 10726i), u_input.a & vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 15095i)), vec4<u32>(1u, 1u, 1u, _wgslsmith_mod_u32(50767u, 99389u)), -334f)).d);
    return func_2(Struct_2(0i, Struct_1(firstLeadingBit(vec4<i32>(u_input.a.x, u_input.b, -2147483647i, -1i)) & vec4<i32>(var_4.c, u_input.a.x, -13398i, u_input.b), (vec4<u32>(23535u, 4294967295u, var_4.b.b.x, var_4.d.b.x) | vec4<u32>(43302u, 4294967295u, 0u, 75701u)) | var_4.b.b, _wgslsmith_f_op_f32(f32(-1f) * -1429f)), reverseBits(var_4.d.a.x | var_4.b.a.x), var_4.b), select(vec3<bool>(all(!vec3<bool>(true, var_3, true)), all(select(vec3<bool>(var_3, var_3, true), vec3<bool>(false, false, true), vec3<bool>(var_3, var_3, false))), var_3), !(!(!vec3<bool>(false, true, var_0.x))), all(vec3<bool>(false, true, !var_0.x))), var_4.b);
}

fn func_6(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_3(~_wgslsmith_sub_u32(func_2(arg_1, vec3<bool>(false, false, true), Struct_1(u_input.a, vec4<u32>(arg_1.d.b.x, 40119u, arg_1.d.b.x, 28134u), 1000f)).d.b.x, 1u)));
    var var_1 = arg_1.b;
    let var_2 = arg_1.b;
    let var_3 = _wgslsmith_sub_u32(arg_1.b.b.x, var_2.b.x);
    let var_4 = var_2;
    return var_2;
}

fn func_7(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = func_2(Struct_2(i32(-1i) * -11091i, arg_0, reverseBits(_wgslsmith_mult_i32(~(-5907i), -u_input.a.x)), Struct_1(u_input.a, ~vec4<u32>(arg_0.b.x, arg_0.b.x, arg_0.b.x, 1u), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1141f)))), select(!vec3<bool>(all(vec4<bool>(arg_2, arg_3.x, arg_2, true)), !arg_2, arg_0.b.x <= arg_0.b.x), vec3<bool>(!(false & arg_2), true, true), vec3<bool>(any(vec4<bool>(false, arg_3.x, arg_2, arg_2)), !arg_3.x & any(arg_3), arg_2 & !arg_2)), arg_0);
    var_0 = Struct_2(var_0.d.a.x, func_2(func_2(Struct_2(_wgslsmith_mod_i32(arg_0.a.x, 0i), Struct_1(vec4<i32>(u_input.b, -2147483647i, 1i, 42470i), arg_0.b, arg_0.c), ~6369i, Struct_1(u_input.a, vec4<u32>(arg_0.b.x, arg_0.b.x, 9170u, 4294967295u), arg_0.c)), arg_3.zxz, func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(439f, -869f, var_0.d.c) - vec3<f32>(456f, arg_0.c, var_0.b.c))).b), vec3<bool>(!all(vec2<bool>(arg_3.x, arg_3.x)), true, !arg_3.x & true), var_0.d).d, ~31773i, func_2(Struct_2(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(2147483647i, u_input.a.x, -108777i)), _wgslsmith_mod_vec3_i32(arg_0.a.wyx, vec3<i32>(u_input.a.x, var_0.b.a.x, arg_1.x))), arg_0, 50664i, Struct_1(arg_0.a, arg_0.b, arg_0.c)), select(select(arg_3.xwy, arg_3.wxw, vec3<bool>(true, arg_3.x, true)), !arg_3.wwy, !arg_3.x), func_6(u_input.b, func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, -2694f, 846f))))).d);
    var_0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-399f, _wgslsmith_f_op_f32(arg_0.c + arg_0.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-299f)) - _wgslsmith_f_op_f32(arg_0.c * arg_0.c)), _wgslsmith_f_op_f32(-var_0.d.c)));
    let var_1 = Struct_2(_wgslsmith_mod_i32(_wgslsmith_mult_i32(min(-12586i, arg_0.a.x), _wgslsmith_add_i32(arg_1.x, -1i)) ^ 33508i, func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.c, 1053f, 788f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(2547f, arg_0.c, arg_0.c)))).c), arg_0, firstTrailingBit(min(-8387i, -(~u_input.b))), arg_0);
    let var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(~(-13655i), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a, ~(-15878i)), -(~var_0.b.a.zy))), vec3<i32>(arg_0.a.x, -(u_input.b >> (_wgslsmith_add_u32(0u, arg_0.b.x) % 32u)), 20176i));
    return Struct_1(vec4<i32>(var_2.x, -2147483647i, arg_1.x, 55278i), vec4<u32>(1u, arg_0.b.x, ~(~(~arg_0.b.x)), ~(arg_0.b.x | var_0.b.b.x) ^ _wgslsmith_div_u32(_wgslsmith_sub_u32(25143u, 11244u), 1u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b.c, _wgslsmith_f_op_f32(func_3(~var_0.b.b.x)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = u_input.b;
    let var_1 = _wgslsmith_div_f32(1010f, -1000f);
    var_0 = arg_1.x;
    let var_2 = vec3<u32>(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(43414u, 1u, 0u)), ~vec3<u32>(0u, 1u, 68786u)), 107u), 66289u, (abs(~65738u) >> (_wgslsmith_clamp_u32(~22917u, abs(4294967295u), ~1u) % 32u)) >> (~(1040u << (_wgslsmith_dot_vec4_u32(vec4<u32>(24976u, 27268u, 7700u, 38697u), vec4<u32>(25341u, 4294967295u, 1u, 1u)) % 32u)) % 32u));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(step(440f, _wgslsmith_f_op_f32(floor(1f)))))));
    return func_7(func_6(firstTrailingBit(select(arg_1.x, 2147483647i, true)), func_5(_wgslsmith_f_op_vec3_f32(func_4(select(u_input.a, u_input.a, false), func_2(Struct_2(arg_0.x, Struct_1(vec4<i32>(-1i, -1i, -23122i, -9159i), vec4<u32>(var_2.x, var_2.x, var_2.x, var_2.x), var_1), 2147483647i, Struct_1(vec4<i32>(3503i, -2147483647i, u_input.b, u_input.b), vec4<u32>(var_2.x, 49509u, 42692u, 0u), var_1)), vec3<bool>(true, true, false), Struct_1(vec4<i32>(arg_0.x, 26593i, -4586i, 8223i), vec4<u32>(var_2.x, 1999u, var_2.x, var_2.x), -941f)), abs(arg_0), arg_1.x ^ -5717i)))), _wgslsmith_clamp_vec4_i32(u_input.a << (vec4<u32>(max(4294967295u, var_2.x), ~8006u, ~19082u, 0u) % vec4<u32>(32u)), ~func_2(func_5(vec3<f32>(1073f, var_1, -127f)), vec3<bool>(true, true, true), Struct_1(vec4<i32>(-2147483647i, -22706i, 2147483647i, arg_1.x), vec4<u32>(60701u, 1u, 1u, var_2.x), var_1)).b.a, _wgslsmith_div_vec4_i32(vec4<i32>(1i, arg_0.x, -u_input.a.x, 1i), ~u_input.a)), !(!(!any(vec2<bool>(false, true)))), vec4<bool>(!(false == (var_1 == 976f)), true, all(vec2<bool>(true, true)) && true, false));
}

fn func_8(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = func_5(vec3<f32>(arg_0.c, -896f, _wgslsmith_f_op_f32(ceil(arg_0.c))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.c), var_0.b.c);
    var_0 = Struct_2(var_0.d.a.x, var_0.b, var_0.b.a.x, func_5(vec3<f32>(var_1, -856f, _wgslsmith_f_op_f32(trunc(1000f)))).d);
    var_0 = Struct_2(arg_0.a.x, Struct_1(vec4<i32>(abs(1i), -2147483647i, -48769i, var_0.d.a.x), func_7(arg_0, vec4<i32>(select(var_0.d.a.x, u_input.b, false), ~u_input.b, -1i, ~(-5479i)), any(vec3<bool>(true, true, false)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)))).b, func_2(func_2(Struct_2(var_0.a, var_0.d, var_0.d.a.x, Struct_1(var_0.b.a, vec4<u32>(78u, 1u, var_0.b.b.x, 10638u), -153f)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), arg_0), vec3<bool>(true, true, true), arg_0).b.c), var_0.b.a.x, arg_0);
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1738f, -1360f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + -647f) - _wgslsmith_div_f32(arg_0.c, 1347f)), _wgslsmith_f_op_f32(trunc(1538f)), _wgslsmith_div_f32(var_0.d.c, var_1)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-218f, arg_0.c, var_0.d.c, var_1), vec4<f32>(1130f, 1000f, -623f, -1479f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, -106f, 384f, var_1)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, 393f, var_0.b.c, -597f), vec4<f32>(133f, 1325f, var_1, var_1), vec4<bool>(false, false, false, false))))))));
    return vec2<f32>(857f, -1535f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_8(func_1(-(~vec2<i32>(u_input.b, -1i)), vec2<i32>(~(-14489i), -1i))))));
    var var_1 = Struct_1(vec4<i32>(2147483647i, _wgslsmith_mult_i32(u_input.a.x, func_5(vec3<f32>(var_0.x, -997f, var_0.x)).b.a.x), u_input.a.x, u_input.b) ^ vec4<i32>(2147483647i, 2147483647i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.b, u_input.b), u_input.b, 1i), u_input.a.x), vec4<u32>(4294967295u, 1u, 1u, 1u), var_0.x);
    var var_2 = func_2(func_5(vec3<f32>(-1693f, var_0.x, 676f)), !select(vec3<bool>(true, false, false), vec3<bool>(any(vec4<bool>(false, true, true, false)), any(vec3<bool>(false, true, true)), any(vec3<bool>(true, true, true))), vec3<bool>(true, true, any(vec4<bool>(true, false, false, true)))), func_7(func_2(Struct_2(_wgslsmith_add_i32(u_input.a.x, -7908i), func_1(vec2<i32>(var_1.a.x, var_1.a.x), var_1.a.wy), 0i, Struct_1(var_1.a, vec4<u32>(4294967295u, 0u, var_1.b.x, 20433u), var_0.x)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), func_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(394f, var_0.x, 268f) - vec3<f32>(var_0.x, var_0.x, var_1.c))).d).d, -var_1.a, any(vec3<bool>(false, any(vec4<bool>(false, true, true, false)), var_0.x != var_0.x)), vec4<bool>(true, true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), true))).d;
    let var_3 = (var_1.b.x << (var_2.b.x % 32u)) ^ 13247u;
    var_0 = _wgslsmith_f_op_vec2_f32(func_8(func_1(vec2<i32>(var_1.a.x, ~(1i ^ var_2.a.x)), ~_wgslsmith_mult_vec2_i32(u_input.a.wy, countOneBits(vec2<i32>(var_2.a.x, var_2.a.x))))));
    var var_4 = func_7(func_7(func_5(vec3<f32>(var_0.x, -824f, var_2.c)).d, _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(var_2.a, vec4<i32>(1i, -1i, u_input.a.x, var_2.a.x)), max(u_input.a, var_1.a)), true, !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))), ~_wgslsmith_mult_vec4_i32(u_input.a >> (vec4<u32>(1u, var_1.b.x, var_1.b.x, var_3) % vec4<u32>(32u)), func_5(vec3<f32>(1186f, var_2.c, var_1.c)).d.a), true, vec4<bool>(-559f > _wgslsmith_f_op_f32(step(618f, var_1.c)), true, !select(false, true, false), true)).b.x < (~var_1.b.x >> ((firstTrailingBit(0u) >> (var_1.b.x % 32u)) % 32u));
    var var_5 = vec3<f32>(1246f, 866f, _wgslsmith_f_op_f32(trunc(func_6(1i, Struct_2(-u_input.a.x, func_2(Struct_2(0i, Struct_1(u_input.a, var_1.b, -674f), -2147483647i, Struct_1(u_input.a, var_2.b, 962f)), vec3<bool>(true, false, true), Struct_1(var_2.a, vec4<u32>(var_1.b.x, 0u, var_1.b.x, 1u), var_0.x)).b, _wgslsmith_add_i32(u_input.b, var_1.a.x), Struct_1(var_2.a, vec4<u32>(var_3, 0u, 56252u, 2951u), -903f))).c)));
    var var_6 = func_7(func_5(vec3<f32>(var_2.c, _wgslsmith_f_op_f32(-495f + _wgslsmith_f_op_f32(-848f + -1212f)), _wgslsmith_f_op_vec3_f32(func_4(abs(var_1.a), func_2(Struct_2(2147483647i, Struct_1(vec4<i32>(var_1.a.x, var_2.a.x, var_1.a.x, var_1.a.x), var_1.b, var_2.c), 51091i, Struct_1(vec4<i32>(-2147483647i, 1i, -3574i, u_input.b), var_1.b, 441f)), vec3<bool>(true, false, false), Struct_1(var_1.a, var_1.b, -375f)), u_input.a.yx, countOneBits(var_2.a.x))).x)).b, firstLeadingBit(var_1.a), !(false || (_wgslsmith_sub_u32(4294967295u, 9988u) >= var_1.b.x)), vec4<bool>(!all(vec4<bool>(true, true, false, false)), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), false)), false, (countOneBits(34808i) >= var_2.a.x) & ((49330u & var_2.b.x) != _wgslsmith_sub_u32(var_1.b.x, 1u)))).a.zz;
    var var_7 = _wgslsmith_f_op_f32(f32(-1f) * -1246f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_mod_u32(~(var_3 | 117027u), 24553u), 1u, _wgslsmith_mod_u32(~abs(var_2.b.x), 24166u), var_2.b.x), -_wgslsmith_div_vec2_i32(func_1(func_2(Struct_2(u_input.a.x, Struct_1(var_2.a, vec4<u32>(1u, var_1.b.x, var_1.b.x, 4294967295u), 1781f), var_2.a.x, Struct_1(vec4<i32>(-1i, -1i, u_input.a.x, var_2.a.x), var_2.b, var_2.c)), vec3<bool>(true, false, true), Struct_1(u_input.a, var_1.b, var_1.c)).b.a.zw, u_input.a.xx).a.zx, u_input.a.wy), _wgslsmith_add_u32(var_2.b.x, 4294967295u));
}

