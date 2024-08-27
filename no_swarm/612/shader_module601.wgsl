struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(76619u, 4294967295u, 21620u, 4294967295u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec4<bool>) -> vec4<u32> {
    let var_0 = 0i;
    global0 = vec4<u32>(max(countOneBits(~u_input.b), 0u), _wgslsmith_add_u32(~u_input.d.x, 1u) & ~(~29835u), ~u_input.d.x, ~(~1u));
    var var_1 = Struct_2(Struct_1(all(select(!arg_3.yxz, vec3<bool>(true, arg_2.e.b.x, arg_0), select(false, arg_2.e.b.x, arg_0))), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.e.c.x, 2725f) * vec2<f32>(1000f, 892f)))))), vec2<i32>(~(u_input.a.x ^ 1i), 0i), u_input.e));
    var_1 = Struct_2(var_1.a);
    global0 = ~abs(firstTrailingBit(~(vec4<u32>(20271u, global0.x, u_input.c, u_input.d.x) << (vec4<u32>(u_input.d.x, 1u, global0.x, 389u) % vec4<u32>(32u)))));
    return max(vec4<u32>(global0.x, reverseBits(1u), _wgslsmith_sub_u32(u_input.d.x, global0.x) ^ u_input.b, u_input.b), _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(27271u, global0.x, 88287u, 0u) >> (vec4<u32>(u_input.c, global0.x, u_input.b, global0.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(vec4<u32>(87324u, 6490u, 0u, u_input.d.x) | vec4<u32>(u_input.d.x, u_input.c, 0u, global0.x), vec4<u32>(u_input.d.x, 1u, global0.x, 71275u))) & ~vec4<u32>(abs(0u), u_input.b, global0.x, ~global0.x));
}

fn func_2() -> Struct_2 {
    global0 = func_3(!(!(global0.x <= u_input.b)) && true, _wgslsmith_mod_vec2_i32(select(-vec2<i32>(-1i, -1i), u_input.a.zz, true), -_wgslsmith_add_vec2_i32(-u_input.a.yz, -u_input.a.zy)), Struct_3(u_input.a.zxx, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1661f * 1133f), _wgslsmith_f_op_f32(select(368f, -1118f, false)), 1225f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-267f, -428f, -1286f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1081f, -232f, -340f) - vec3<f32>(492f, -1073f, -1161f)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), true), 995f, Struct_1(true, vec2<bool>(any(vec4<bool>(true, true, true, true)), u_input.e <= 0i), vec2<f32>(_wgslsmith_f_op_f32(step(701f, 960f)), 1000f), firstLeadingBit(~vec2<i32>(1i, u_input.a.x)), _wgslsmith_mult_i32(2147483647i, firstTrailingBit(u_input.a.x)))), select(vec4<bool>(true, false, all(vec2<bool>(true, true)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), false))), select(vec4<bool>(true, true, all(vec2<bool>(true, false)), true), vec4<bool>(true, true, true, true), true), true));
    var var_0 = Struct_2(Struct_1(true, vec2<bool>(false, any(vec4<bool>(true, true, false, true)) | all(vec2<bool>(false, false))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(250f))), _wgslsmith_f_op_f32(-1f)), ~((vec2<i32>(u_input.e, 2147483647i) ^ vec2<i32>(u_input.a.x, 12671i)) >> (min(vec2<u32>(1u, global0.x), vec2<u32>(global0.x, u_input.c)) % vec2<u32>(32u))), -31135i));
    global0 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.d.x, u_input.c, global0.x, 0u), vec4<u32>(u_input.c, global0.x, u_input.c, global0.x), vec4<bool>(var_0.a.a, false, var_0.a.a, var_0.a.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 27565u, 55577u, 54715u), vec4<u32>(72294u, 41617u, global0.x, u_input.b))), min(15494u, global0.x)), 4294967295u, u_input.d.x, ~(global0.x | select(u_input.b, u_input.c, false))) >> (countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 7709u, 93253u, u_input.d.x), vec4<u32>(53072u, 4294967295u, 35874u, 35433u)), ~(~vec4<u32>(0u, 1u, global0.x, 14534u)))) % vec4<u32>(32u));
    var_0 = Struct_2(Struct_1(var_0.a.b.x || true, select(select(vec2<bool>(var_0.a.a, true), !vec2<bool>(var_0.a.b.x, true), any(vec4<bool>(var_0.a.b.x, false, var_0.a.a, false))), var_0.a.b, all(select(vec4<bool>(var_0.a.a, var_0.a.b.x, true, true), vec4<bool>(var_0.a.b.x, var_0.a.a, false, var_0.a.a), vec4<bool>(var_0.a.b.x, var_0.a.a, true, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_0.a.c.x, 277f), _wgslsmith_f_op_f32(floor(var_0.a.c.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c.x, -1048f)))), var_0.a.d, -2147483647i >> (func_3(var_0.a.b.x, vec2<i32>(u_input.a.x, -34484i), Struct_3(vec3<i32>(2147483647i, u_input.e, var_0.a.d.x), vec3<f32>(var_0.a.c.x, -945f, -1642f), vec4<bool>(var_0.a.b.x, true, var_0.a.b.x, false), var_0.a.c.x, var_0.a), select(vec4<bool>(var_0.a.b.x, true, true, var_0.a.a), vec4<bool>(true, var_0.a.a, false, true), vec4<bool>(var_0.a.a, true, var_0.a.a, false))).x % 32u)));
    var_0 = Struct_2(var_0.a);
    return Struct_2(Struct_1(36037u >= max(_wgslsmith_clamp_u32(0u, global0.x, u_input.c), u_input.c), !select(select(vec2<bool>(true, var_0.a.b.x), vec2<bool>(false, var_0.a.a), vec2<bool>(false, var_0.a.b.x)), select(var_0.a.b, vec2<bool>(true, var_0.a.b.x), var_0.a.a), var_0.a.a), var_0.a.c, _wgslsmith_mod_vec2_i32(abs(vec2<i32>(var_0.a.e, -1i)), abs(_wgslsmith_mult_vec2_i32(var_0.a.d, var_0.a.d))), _wgslsmith_mult_i32(u_input.a.x, var_0.a.d.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> vec3<u32> {
    global0 = ~max(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(12349u, u_input.b, u_input.b, 0u)), vec4<u32>(global0.x, 1u, global0.x, global0.x)), ~vec4<u32>(9454u, 63187u, 1u, 4294967295u)) & _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(global0.x, 0u), firstTrailingBit(u_input.c), ~u_input.b, u_input.b) ^ vec4<u32>(~global0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, global0.x)), u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 53715u, global0.x), global0.ywz)), min(max(vec4<u32>(0u, 4294967295u, global0.x, 4294967295u), ~vec4<u32>(31231u, 8489u, u_input.b, 0u)), func_3(false, _wgslsmith_mod_vec2_i32(vec2<i32>(arg_0.x, arg_1.a.e), vec2<i32>(6531i, -26067i)), Struct_3(vec3<i32>(-8014i, 2715i, 1i), vec3<f32>(1870f, arg_1.a.c.x, arg_1.a.c.x), vec4<bool>(true, false, false, arg_1.a.a), 1022f, arg_1.a), select(vec4<bool>(false, arg_1.a.a, false, arg_1.a.b.x), vec4<bool>(true, arg_1.a.a, arg_1.a.b.x, arg_1.a.b.x), false))));
    global0 = ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(~min(vec4<u32>(0u, u_input.c, 22786u, 80974u), vec4<u32>(u_input.d.x, 1u, u_input.b, global0.x)), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.d.x, global0.x, 4294967295u, global0.x)), vec4<u32>(1u, global0.x, 20581u, u_input.c))), countOneBits(~(~vec4<u32>(global0.x, u_input.c, u_input.c, 1u))), ~vec4<u32>(u_input.b ^ u_input.b, reverseBits(global0.x), 1u, u_input.c));
    global0 = _wgslsmith_div_vec4_u32(firstLeadingBit(~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 65523u, 86044u, u_input.d.x), vec4<u32>(4294967295u, 0u, global0.x, global0.x), vec4<u32>(u_input.b, 23311u, 10035u, 33930u)), vec4<u32>(3275u, 39794u, u_input.b, global0.x))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, global0.x, global0.x, 26711u), vec4<u32>(global0.x, global0.x, 4294967295u, 1u)) ^ vec4<u32>(select(global0.x, u_input.d.x, arg_1.a.b.x), 43650u, _wgslsmith_sub_u32(1u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(4294967295u, 22891u)))));
    var var_0 = select(!arg_1.a.b, !(!vec2<bool>(all(vec4<bool>(false, arg_1.a.b.x, arg_1.a.a, arg_1.a.a)), !arg_1.a.a)), !(!arg_1.a.b.x));
    var_0 = vec2<bool>(arg_1.a.a, !var_0.x);
    return global0.yxy;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: u32, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, arg_2, ~61423u), global0.www);
    var_0 = func_4(-(~(~(~vec2<i32>(u_input.e, -12966i)))), func_2());
    global0 = ~(~select(~vec4<u32>(arg_2, global0.x, var_0.x, var_0.x), firstLeadingBit(vec4<u32>(var_0.x, u_input.b, 13314u, u_input.c)), vec4<bool>(true, true, true, true))) & _wgslsmith_add_vec4_u32(~min(abs(vec4<u32>(global0.x, 5256u, 4294967295u, 8741u)), ~vec4<u32>(1u, 0u, arg_2, 86663u)), countOneBits(~abs(vec4<u32>(25085u, 47158u, u_input.d.x, u_input.b))));
    let var_1 = global0.xxy ^ (global0.wwz ^ vec3<u32>(global0.x, 4294967295u, ~min(arg_2, global0.x)));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(arg_1.x))));
    return func_2().a;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0.c.x, arg_0.c.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(561f, arg_0.c.x, arg_0.c.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.x, arg_0.c.x, -1289f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(233f, arg_0.c.x, 814f)))))));
    var var_1 = !select(select(select(!vec3<bool>(true, arg_0.a, arg_0.a), vec3<bool>(arg_0.b.x, arg_0.a, true), select(vec3<bool>(arg_0.a, false, false), vec3<bool>(true, arg_0.a, arg_0.a), arg_0.b.x)), vec3<bool>(!arg_0.b.x, true, all(vec3<bool>(arg_0.a, false, arg_0.b.x))), !arg_0.b.x), select(!vec3<bool>(arg_0.b.x, arg_0.a, arg_0.b.x), !vec3<bool>(arg_0.b.x, true, true), arg_0.a), !vec3<bool>(arg_0.a || arg_0.b.x, select(arg_0.a, arg_0.b.x, arg_0.a), true));
    let var_2 = ~(~(~_wgslsmith_mod_vec3_u32(global0.zxx, vec3<u32>(64307u, global0.x, global0.x)) << (global0.yxy % vec3<u32>(32u))));
    global0 = ~vec4<u32>(reverseBits(u_input.c), 1u << (~(~global0.x) % 32u), 56760u, countOneBits(abs(_wgslsmith_div_u32(u_input.d.x, 82692u))));
    var var_3 = func_2();
    return Struct_3(-vec3<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.zx, arg_0.b.x), u_input.a.wy), u_input.e, _wgslsmith_clamp_i32(-81i, 2147483647i, ~var_3.a.d.x)), var_0, select(select(vec4<bool>(!var_1.x, true, all(vec3<bool>(var_3.a.a, true, false)), true), vec4<bool>(true, true, true, true), var_3.a.d.x <= -1i), !(!(!vec4<bool>(false, var_3.a.a, false, arg_0.b.x))), !(min(0u, 1u) <= var_2.x)), _wgslsmith_f_op_f32(-func_2().a.c.x), var_3.a);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> bool {
    global0 = vec4<u32>(~global0.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(1u, u_input.b, u_input.b, 1u)), vec4<u32>(global0.x, 1u, u_input.b, u_input.d.x)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 4294967295u, u_input.b, global0.x), vec4<u32>(global0.x, 1u, 36289u, global0.x))), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 43586u, 1u, 0u), vec4<u32>(58112u, global0.x, u_input.b, global0.x)))), abs(~select(~51387u, _wgslsmith_mod_u32(0u, 1u), arg_3.e.b.x)), _wgslsmith_add_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(~u_input.d.x, _wgslsmith_add_u32(global0.x, u_input.b)), 0u), 0u));
    global0 = ~((max(abs(vec4<u32>(u_input.d.x, global0.x, u_input.c, global0.x)), vec4<u32>(u_input.d.x, 4492u, 4294967295u, 22128u) >> (vec4<u32>(global0.x, u_input.b, u_input.b, u_input.c) % vec4<u32>(32u))) >> (func_3(false, _wgslsmith_add_vec2_i32(arg_1.a.xy, vec2<i32>(-1i, -2147483647i)), arg_1, vec4<bool>(false, true, false, arg_1.e.a)) % vec4<u32>(32u))) ^ countOneBits(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, global0.x, 1u, 4294967295u)), ~vec4<u32>(69524u, u_input.d.x, global0.x, 0u))));
    global0 = abs(countOneBits(_wgslsmith_div_vec4_u32(~func_3(false, u_input.a.zw, Struct_3(arg_3.a, arg_3.b, arg_1.c, arg_3.d, arg_3.e), arg_3.c), vec4<u32>(_wgslsmith_dot_vec3_u32(global0.xzx, vec3<u32>(u_input.d.x, global0.x, 4294967295u)), 1u, ~u_input.c, u_input.b))));
    let var_0 = ~u_input.a;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_1.b.xy)) - vec2<f32>(_wgslsmith_f_op_f32(select(-445f, arg_3.b.x, arg_3.c.x)), -255f));
    return true;
}

fn func_7(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: Struct_1) -> i32 {
    global0 = vec4<u32>(global0.x, select(u_input.d.x, ~(~global0.x) >> (reverseBits(~u_input.b) % 32u), !arg_2.a), 0u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(countOneBits(func_3(arg_0.a, arg_0.d, Struct_3(vec3<i32>(arg_0.d.x, u_input.e, -2147483647i), vec3<f32>(-799f, arg_0.c.x, -1441f), vec4<bool>(arg_2.a, arg_2.b.x, arg_2.a, true), -520f, Struct_1(true, arg_2.b, vec2<f32>(arg_2.c.x, arg_1.x), vec2<i32>(1i, 31731i), arg_0.e)), vec4<bool>(false, true, arg_2.a, arg_2.a)).x), ~global0.x, global0.x << (~global0.x % 32u)), countOneBits(15877u)));
    let var_0 = -2147483647i;
    return _wgslsmith_dot_vec3_i32(u_input.a.yww, u_input.a.zyy);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(_wgslsmith_div_u32(4294967295u, _wgslsmith_add_u32(u_input.c, 1u)), ~(~(~58033u)), ~_wgslsmith_div_u32(31174u, 15620u), _wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(global0.x ^ u_input.d.x, global0.x)));
    let var_0 = func_7(Struct_1(func_6(vec2<i32>(u_input.e, u_input.e) >> ((global0.yx >> (global0.xz % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_3(~u_input.a.yxw, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1268f, 1148f, -600f) + vec3<f32>(191f, -662f, 348f)), vec4<bool>(true, false, true, false), _wgslsmith_f_op_f32(f32(-1f) * -944f), Struct_1(true, vec2<bool>(true, true), vec2<f32>(-1356f, -1008f), vec2<i32>(0i, u_input.e), -1i)), _wgslsmith_f_op_f32(738f + 293f), func_5(func_1(vec3<f32>(-1000f, -386f, 578f), vec3<f32>(-333f, -287f, -1000f), global0.x, vec4<f32>(-1000f, -436f, -519f, -338f)), u_input.a.x)), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-853f, -1000f)), _wgslsmith_f_op_f32(443f - 1352f)) - vec2<f32>(1f, 1f)), -vec2<i32>(_wgslsmith_clamp_i32(u_input.a.x, -12365i, u_input.e), 27062i >> (global0.x % 32u)), ~(u_input.e >> (u_input.c % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-400f, 1322f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1720f, -490f))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -521f))))))), func_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_div_f32(-362f, -319f), func_2().a.c.x, -125f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-842f, 1719f, -108f), vec3<f32>(972f, -595f, -1061f), true)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1240f, 788f, -214f))))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(185f, 881f, 952f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-524f, -1131f, 550f) * vec3<f32>(220f, 1541f, 890f)), any(vec4<bool>(false, false, false, true)))))), ~u_input.c, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1440f, -1085f, 792f, -1948f)))))));
    var var_1 = Struct_1((_wgslsmith_mult_i32(u_input.a.x >> (17547u % 32u), func_5(Struct_1(true, vec2<bool>(true, true), vec2<f32>(664f, -1000f), vec2<i32>(var_0, -38247i), 0i), u_input.e).e.e) & ~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, 29984i), vec2<i32>(0i, var_0))) > select(u_input.e, ~func_2().a.d.x, true), !select(vec2<bool>(true, func_5(Struct_1(false, vec2<bool>(false, false), vec2<f32>(-302f, -1746f), u_input.a.zx, u_input.e), u_input.e).c.x), vec2<bool>(true, true), select(vec2<bool>(false, false), func_1(vec3<f32>(-1209f, 1119f, 604f), vec3<f32>(-351f, -1364f, 1000f), u_input.d.x, vec4<f32>(1000f, -529f, -2255f, 288f)).b, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(func_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-143f, -264f, 1063f), vec3<f32>(1572f, 651f, 1721f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1071f, 424f, -2635f), vec3<f32>(-312f, 939f, 1846f)), ~1u, _wgslsmith_f_op_vec4_f32(vec4<f32>(132f, 1609f, -1324f, -505f) * vec4<f32>(-555f, -356f, -1000f, -1305f))).c, vec2<f32>(_wgslsmith_f_op_f32(693f * 165f), _wgslsmith_f_op_f32(1136f + 330f))) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(-1044f, -758f), -1363f)))), u_input.a.zz, func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(701f, -735f, -507f) * vec3<f32>(-1075f, -834f, 1220f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -648f), _wgslsmith_f_op_f32(round(-339f)), func_2().a.c.x)), vec3<f32>(-282f, -1082f, 1f), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(4294967295u, global0.x), 1u << (u_input.b % 32u), 1u, global0.x), ~(~vec4<u32>(76835u, global0.x, 4294967295u, u_input.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-782f, 1136f, 1000f, -589f)) * vec4<f32>(1832f, 599f, -1138f, 1652f)))).d.x);
    global0 = ~vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(global0.zzw, global0.zxy), _wgslsmith_add_vec3_u32(global0.wxx, vec3<u32>(u_input.d.x, 22019u, 68397u))), ~u_input.d.x, 60315u, global0.x) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, ~reverseBits(u_input.b), _wgslsmith_dot_vec2_u32(vec2<u32>(57853u, global0.x), ~vec2<u32>(global0.x, 34038u)), _wgslsmith_mod_u32(0u, min(u_input.b, u_input.d.x))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(1734u, global0.x)), u_input.c, 0u, firstTrailingBit(97262u)) | _wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 4294967295u, global0.x, 4294967295u), vec4<u32>(0u, 1u, 1u, 75693u))) % vec4<u32>(32u));
    global0 = _wgslsmith_sub_vec4_u32(select(~vec4<u32>(u_input.d.x, ~global0.x, 4294967295u, ~global0.x), vec4<u32>(global0.x, _wgslsmith_div_u32(global0.x, u_input.c), ~u_input.d.x, 1u) | ~countOneBits(vec4<u32>(4294967295u, 4294967295u, 2286u, 71596u)), select(vec4<bool>(true | var_1.b.x, var_1.a, any(vec4<bool>(var_1.a, var_1.a, false, var_1.a)), true), vec4<bool>(all(vec4<bool>(var_1.a, true, var_1.a, true)), true, true, true), !(!vec4<bool>(true, false, false, var_1.a)))), select(vec4<u32>(u_input.b, ~(~65567u), min(_wgslsmith_add_u32(0u, 65893u), 44978u), 0u), _wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(5123u, u_input.b, global0.x, 57918u) ^ vec4<u32>(4492u, 0u, u_input.d.x, u_input.d.x)), _wgslsmith_mult_vec4_u32(~vec4<u32>(480u, u_input.d.x, 0u, global0.x), vec4<u32>(global0.x, 1u, u_input.b, 0u))), false));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.x, var_1.c.x, -585f, var_1.c.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.c.x, -237f, -1000f, -287f) * vec4<f32>(var_1.c.x, -1438f, -474f, -716f)), var_1.b.x)))), 73848u, vec4<u32>(~(~_wgslsmith_mult_u32(44965u, u_input.b)), 0u, 41081u, ~(~global0.x)), _wgslsmith_div_f32(-374f, func_5(Struct_1(var_1.b.x, func_1(vec3<f32>(var_1.c.x, -487f, var_1.c.x), vec3<f32>(-1144f, -438f, var_1.c.x), u_input.c, vec4<f32>(-1156f, var_1.c.x, 1278f, 457f)).b, _wgslsmith_f_op_vec2_f32(select(var_1.c, vec2<f32>(var_1.c.x, 415f), false)), func_1(vec3<f32>(1115f, -241f, var_1.c.x), vec3<f32>(351f, var_1.c.x, var_1.c.x), 4294967295u, vec4<f32>(-1000f, -189f, 2334f, 496f)).d, -27464i), abs(var_0)).d));
}

