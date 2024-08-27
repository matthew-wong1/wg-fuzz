struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(true, false, false, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = !arg_1.a.wz;
    var var_1 = i32(-1i) * -33716i;
    let var_2 = arg_1;
    var var_3 = -28100i;
    var var_4 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_0, 4247u), vec3<u32>(4294967295u, arg_0, 11362u)), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 68127u, 30946u), vec4<u32>(1u, 1u, u_input.c, u_input.b))), ~(~vec2<u32>(4294967295u, u_input.c))) >> (~countOneBits(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 17204u), vec2<u32>(4294967295u, 1u))) % vec2<u32>(32u)), vec2<u32>(arg_0, ~1u));
    return arg_0;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<u32>(49424u, u_input.c, ~_wgslsmith_div_u32(47659u, u_input.b) >> (u_input.b % 32u), u_input.c);
    global0 = true;
    let var_1 = arg_2;
    var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(firstTrailingBit(abs(func_3(11219u, Struct_1(global2.a), 2147483647i))), 1u, ~var_0.x, firstTrailingBit(u_input.c >> (u_input.b % 32u))), ~vec4<u32>(43917u, var_0.x, var_0.x, ~var_0.x));
    var var_2 = Struct_1(arg_2.a);
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(!vec4<bool>(all(func_2(vec4<i32>(u_input.a.x, -20168i, -1i, u_input.a.x), 779f, Struct_1(arg_0.a)).a.yyz), u_input.a.x > u_input.a.x, !(!arg_0.a.x), global1.a.x));
    let var_1 = true;
    global1 = var_0;
    let var_2 = global1.a.yz;
    let var_3 = var_0;
    return func_2(-reverseBits(~vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(211f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -167f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-522f)), _wgslsmith_f_op_f32(sign(157f)))))), Struct_1(arg_0.a));
}

fn func_5(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = arg_0;
    var var_1 = var_0;
    global0 = false;
    var_1 = Struct_1(vec4<bool>(false, _wgslsmith_add_u32(abs(u_input.c), u_input.b | 43608u) < (~u_input.c << (u_input.c % 32u)), all(global1.a), !all(global2.a) & true));
    var var_2 = _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(67432u, 4294967295u, u_input.b) ^ vec3<u32>(7905u, 27573u, 0u), vec3<u32>(u_input.b, u_input.b, u_input.c) << (vec3<u32>(4294967295u, u_input.b, u_input.b) % vec3<u32>(32u)), true), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, 20658u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.c) >> (vec3<u32>(u_input.c, u_input.b, 19974u) % vec3<u32>(32u)))) ^ firstLeadingBit(vec3<u32>(1u >> (u_input.b % 32u), 16168u, u_input.c ^ 4294967295u)), vec3<u32>(u_input.c, 0u, ~42437u));
    return func_2(select(reverseBits(vec4<i32>(84404i, u_input.a.x, u_input.a.x, 1i) >> (vec4<u32>(u_input.b, 8390u, 4294967295u, var_2.x) % vec4<u32>(32u))), -countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, 6420i, -12388i)), arg_0.a) ^ reverseBits(~_wgslsmith_div_vec4_i32(vec4<i32>(-9789i, 1i, u_input.a.x, u_input.a.x), vec4<i32>(8579i, 12475i, u_input.a.x, -2147483647i))), 1122f, var_0).a.zw;
}

fn func_1() -> Struct_1 {
    global0 = global1.a.x;
    var var_0 = func_5(func_4(Struct_1(!(!vec4<bool>(false, global1.a.x, false, global1.a.x))), func_2(vec4<i32>(2147483647i, -54195i, ~(-14676i), _wgslsmith_add_i32(u_input.a.x, u_input.a.x)), 815f, Struct_1(vec4<bool>(false, global2.a.x, global2.a.x, true)))));
    global0 = !((!func_5(Struct_1(vec4<bool>(var_0.x, false, true, true))).x & global2.a.x) && global1.a.x);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1039f, 1074f))), _wgslsmith_f_op_f32(f32(-1f) * -1338f)))), -121f));
    global0 = global2.a.x;
    return func_2(_wgslsmith_mult_vec4_i32(min(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, -13954i), vec4<i32>(-1i, u_input.a.x, 0i, -2147483647i), vec4<i32>(u_input.a.x, 1i, -50460i, u_input.a.x)), ~vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 43448i)), vec4<i32>(1i, firstTrailingBit(u_input.a.x), 1i, -2147483647i)), abs(~vec4<i32>(u_input.a.x, u_input.a.x, 21169i, -2147483647i)) << (vec4<u32>(func_3(1u, Struct_1(global1.a), u_input.a.x), 45865u, 12399u, func_3(u_input.b, Struct_1(vec4<bool>(false, true, true, false)), u_input.a.x)) % vec4<u32>(32u))), var_1, func_4(func_2(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 1027i), vec4<i32>(u_input.a.x, u_input.a.x, 7896i, 0i), vec4<i32>(25159i, 29191i, u_input.a.x, 9735i)), vec4<i32>(22923i, 1i, u_input.a.x, 1i) & vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(trunc(var_1)), func_2(vec4<i32>(24387i, u_input.a.x, -57266i, -1i), _wgslsmith_f_op_f32(-var_1), Struct_1(global1.a))), Struct_1(global1.a)));
}

fn func_6(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec3<i32>(~arg_0.x, arg_0.x, min(~countOneBits(_wgslsmith_sub_i32(1i, 6865i)), ~(-(9223i | u_input.a.x))));
    global1 = arg_1;
    let var_1 = global1.a.yw;
    return arg_2;
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec4<u32>(1u, 41733u, _wgslsmith_add_u32(~(~u_input.b), u_input.c), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, ~1u, ~u_input.b, 42830u), vec4<u32>(~u_input.c, abs(59747u), 19410u, ~0u))));
    global2 = func_2(-_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-u_input.a.x, -36940i, -1i, u_input.a.x)), 1407f, Struct_1(arg_0.a));
    global0 = global1.a.x;
    global2 = Struct_1(global1.a);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(693f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1537f, _wgslsmith_f_op_f32(round(680f))))) + 969f);
    return arg_0;
}

fn func_8(arg_0: f32, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> Struct_1 {
    let var_0 = reverseBits(_wgslsmith_mod_vec4_u32(~(vec4<u32>(u_input.b, arg_2, u_input.c, arg_2) ^ vec4<u32>(23210u, 4294967295u, 10527u, 1u)), ~vec4<u32>(0u, arg_2, u_input.c, u_input.c) >> (select(vec4<u32>(arg_2, 16512u, arg_3, arg_2), vec4<u32>(125578u, arg_2, u_input.c, arg_3), vec4<bool>(true, global2.a.x, global2.a.x, global1.a.x)) % vec4<u32>(32u))) << (~vec4<u32>(arg_2, _wgslsmith_add_u32(53165u, arg_3), _wgslsmith_div_u32(1u, arg_3), arg_2) % vec4<u32>(32u)));
    global2 = func_6(-u_input.a | firstTrailingBit(u_input.a), func_2(vec4<i32>(-1i) * -(~vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, 2147483647i)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(arg_0 - arg_0), any(global1.a))), arg_1), Struct_1(func_4(Struct_1(global1.a), func_2(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 3169i, -58951i, 4658i), vec4<i32>(2147483647i, -22718i, 54843i, u_input.a.x)), _wgslsmith_f_op_f32(arg_0 + arg_0), arg_1)).a));
    var var_1 = func_7(func_6(vec3<i32>(select(u_input.a.x, u_input.a.x, func_2(vec4<i32>(-28142i, -6230i, -1i, u_input.a.x), -1000f, Struct_1(global1.a)).a.x), 2147483647i, i32(-1i) * -5759i), Struct_1(func_7(Struct_1(global2.a)).a), func_7(func_1()))).a;
    global2 = Struct_1(!(!func_4(func_2(vec4<i32>(u_input.a.x, -46497i, u_input.a.x, u_input.a.x), arg_0, arg_1), Struct_1(vec4<bool>(false, false, arg_1.a.x, false))).a));
    var var_2 = Struct_1(func_2(vec4<i32>(_wgslsmith_add_i32(-2147483647i, _wgslsmith_sub_i32(29180i, -40205i)), 1i, 53299i & ~u_input.a.x, _wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a.x, 4631i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -33279i, 1i), arg_1.a), vec4<i32>(u_input.a.x, 2316i, -23282i, -1i))), 1000f, Struct_1(!arg_1.a)).a);
    return Struct_1(vec4<bool>(!any(var_1.xyy), var_2.a.x, 25114i != u_input.a.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_8(1583f, func_7(func_6(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)) << (vec3<u32>(10627u, u_input.c, 34424u) % vec3<u32>(32u)), func_1(), func_1())), ~min(_wgslsmith_mod_u32(~1u, countOneBits(u_input.b)), 12058u), 0u);
    var var_0 = vec4<i32>(-abs(~(-1i)), ~_wgslsmith_dot_vec2_i32(~select(u_input.a.xy, u_input.a.xz, global2.a.x), vec2<i32>(select(-15021i, u_input.a.x, global2.a.x), ~(-2147483647i))), _wgslsmith_sub_i32(10247i, 2147483647i), i32(-1i) * -countOneBits(_wgslsmith_mod_i32(-2147483647i, u_input.a.x)));
    let var_1 = !(!vec4<bool>(global2.a.x, global2.a.x, any(global2.a), false));
    global1 = Struct_1(!func_1().a);
    var var_2 = func_4(Struct_1(func_7(func_1()).a), func_4(Struct_1(vec4<bool>(true, true, true, all(vec4<bool>(true, var_1.x, var_1.x, global2.a.x)))), Struct_1(vec4<bool>(var_1.x, select(global2.a.x, var_1.x, true), all(var_1.yw), all(var_1)))));
    var_0 = vec4<i32>(abs(var_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(~(u_input.a.x >> (67027u % 32u)), 11306i), -u_input.a.xy), _wgslsmith_div_i32(1i, u_input.a.x), ~39872i);
    var_0 = ~_wgslsmith_add_vec4_i32(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, u_input.a.x, 4589i, var_0.x), vec4<i32>(0i, 20655i, u_input.a.x, -2147483647i), vec4<i32>(u_input.a.x, 0i, -2147483647i, -14527i))), -firstLeadingBit(vec4<i32>(var_0.x, u_input.a.x, 1i, u_input.a.x))) & vec4<i32>(_wgslsmith_sub_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -1555i), vec2<i32>(-2147483647i, var_0.x)), 1i << (_wgslsmith_dot_vec2_u32(vec2<u32>(27753u, u_input.c), vec2<u32>(1u, 1u)) % 32u)), var_0.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(var_0.x, u_input.a.x, var_0.x), firstLeadingBit(vec3<i32>(-2147483647i, var_0.x, 11680i))), -36435i);
    var var_3 = func_7(Struct_1(!global2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -574f), _wgslsmith_div_f32(722f, -744f), _wgslsmith_f_op_f32(max(-1408f, -1670f)), _wgslsmith_f_op_f32(-1619f * -679f)) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -287f), -745f, -940f, -1206f))), u_input.c, max(vec2<u32>(~u_input.b, ~(~u_input.b)), vec2<u32>(~49908u, 12132u) | ~vec2<u32>(16221u, u_input.c)));
}

