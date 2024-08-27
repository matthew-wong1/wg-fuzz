struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_3) -> i32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1361f * -995f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(285f, 273f)) + 224f)) + _wgslsmith_f_op_f32(-473f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1201f)))));
    var var_0 = -(~(arg_3.a & countOneBits(arg_3.a)));
    let var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(~arg_3.c.x >> (~u_input.a % 32u), abs(u_input.a), u_input.e.x), min(select(u_input.e.yxw, vec3<u32>(arg_3.d, u_input.b.x, arg_0), arg_3.b) ^ ~vec3<u32>(48231u, u_input.b.x, arg_2), vec3<u32>(_wgslsmith_add_u32(0u, arg_0), ~arg_2, ~u_input.b.x))), ~vec3<u32>(1u, ~(~arg_0), _wgslsmith_mult_u32(~arg_3.d, arg_2)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-229f)), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(abs(2466f))))), 1125f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.x - 434f))))));
    return -1i;
}

fn func_4(arg_0: Struct_3) -> bool {
    global0 = 415f;
    let var_0 = arg_0.a;
    let var_1 = u_input.e.wz;
    let var_2 = countOneBits(_wgslsmith_mod_vec2_i32(var_0.xw, vec2<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_0.a.x, 0i), vec2<i32>(u_input.c, 0i), arg_0.b), vec2<i32>(0i, var_0.x)), ~func_3(var_1.x, vec2<f32>(611f, 1862f), 33173u, arg_0))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1437f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-438f)) - _wgslsmith_f_op_f32(min(1113f, -1000f)))) * 1877f));
    return arg_0.b;
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: i32, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(floor(-1246f)), _wgslsmith_div_vec2_u32(~abs(u_input.e.wz), u_input.e.zw) & ~(~vec2<u32>(1u, u_input.b.x)), func_4(Struct_3(vec4<i32>(u_input.c, arg_2, func_3(65957u, vec2<f32>(1272f, -928f), 4294967295u, Struct_3(vec4<i32>(arg_2, -14271i, 0i, -22419i), false, u_input.e, u_input.e.x)), -28445i), arg_0.x, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.d.x, u_input.a, u_input.b.x), ~u_input.e), u_input.a)));
    global0 = _wgslsmith_f_op_f32(sign(var_0.a));
    let var_1 = Struct_3(~vec4<i32>(i32(-1i) * -57981i, -1i, u_input.c, arg_2), var_0.c, ~vec4<u32>(_wgslsmith_clamp_u32(1u, u_input.b.x >> (5487u % 32u), 1u), ~(~var_0.b.x), ~var_0.b.x, 0u), ((u_input.b.x & 1u) | ~(~61520u)) & 58566u);
    let var_2 = vec4<u32>(~var_1.d, _wgslsmith_dot_vec4_u32(u_input.e, _wgslsmith_div_vec4_u32(vec4<u32>(0u & var_1.c.x, 0u, u_input.a >> (66700u % 32u), _wgslsmith_add_u32(u_input.a, 1u)), vec4<u32>(1u, _wgslsmith_sub_u32(var_1.c.x, var_1.c.x), var_1.c.x >> (u_input.b.x % 32u), _wgslsmith_clamp_u32(var_0.b.x, 4294967295u, 1u)))), var_0.b.x, var_1.d);
    global1 = -(~(~(-arg_1) ^ arg_1));
    return Struct_2(select(vec3<bool>(arg_0.x, all(vec2<bool>(false, var_1.b)) & true, any(vec2<bool>(true, true))), !vec3<bool>(any(vec3<bool>(false, var_1.b, var_1.b)), arg_0.x, arg_0.x), !select(select(vec3<bool>(var_0.c, true, false), vec3<bool>(arg_0.x, true, true), var_1.b), vec3<bool>(false, var_1.b, true), !vec3<bool>(var_1.b, true, false))), var_1.c.wxx, Struct_1(var_0.a, var_2.wx, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1000f)), -1527f))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_3 {
    global1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -24176i, -1i, u_input.c) | vec4<i32>(u_input.c, u_input.c, -38087i, u_input.c), countOneBits(firstLeadingBit(vec4<i32>(0i, u_input.c, u_input.c, 2147483647i)))), ~_wgslsmith_mult_i32(-1435i, min(-1i, -19675i))), vec2<i32>(~(-1i >> (0u % 32u)) ^ u_input.c, (u_input.c ^ (u_input.c & u_input.c)) >> (_wgslsmith_dot_vec3_u32(~arg_3.b, _wgslsmith_sub_vec3_u32(arg_2, u_input.e.xwy)) % 32u)));
    let var_0 = func_2(func_2(vec2<bool>(!(!arg_0.a.x), func_2(arg_3.a.xz, ~u_input.c, select(2147483647i, u_input.c, arg_3.a.x), ~31222i).c.c), min(firstLeadingBit(-20727i), -10115i), -1i, -39830i).a.xy, _wgslsmith_add_i32(u_input.c, _wgslsmith_clamp_i32(u_input.c, -u_input.c, u_input.c)), 0i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, _wgslsmith_div_i32(0i, 14787i), select(1i, u_input.c, false)), vec4<i32>(reverseBits(0i), ~u_input.c, 0i, ~u_input.c)));
    global1 = u_input.c;
    global1 = 22615i;
    var var_1 = Struct_2(select(arg_0.a, select(select(arg_3.a, arg_0.a, var_0.a), func_2(select(var_0.a.yy, arg_0.a.xz, arg_0.a.yx), _wgslsmith_mod_i32(u_input.c, 1i), ~(-1i), _wgslsmith_add_i32(u_input.c, u_input.c)).a, any(func_2(vec2<bool>(arg_0.a.x, true), 0i, u_input.c, u_input.c).a.zz)), arg_3.a.x), arg_2, var_0.c, var_0.c.a);
    return Struct_3(vec4<i32>(_wgslsmith_div_i32(u_input.c << (61375u % 32u), ~43522i ^ u_input.c), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(select(u_input.c, 19144i, arg_1.c), -18168i, u_input.c, -50417i), abs(~vec4<i32>(-2147483647i, u_input.c, -20418i, 343i))), ~(-1i)), _wgslsmith_sub_u32(arg_0.c.b.x, arg_2.x | 1u) >= ~1u, vec4<u32>(~_wgslsmith_dot_vec2_u32(countOneBits(var_1.b.zx), ~u_input.d), _wgslsmith_sub_u32(4294967295u, abs(_wgslsmith_div_u32(u_input.e.x, 0u))), _wgslsmith_mult_u32(~(arg_3.b.x & arg_0.b.x), 1u ^ _wgslsmith_div_u32(arg_2.x, u_input.e.x)), ~func_2(var_1.a.xy, _wgslsmith_dot_vec2_i32(vec2<i32>(-3281i, u_input.c), vec2<i32>(u_input.c, u_input.c)), 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -19474i, -1i, 0i), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))).b.x), _wgslsmith_mult_u32(~(~reverseBits(1u)), arg_3.c.b.x));
}

fn func_6(arg_0: Struct_3, arg_1: i32) -> vec2<i32> {
    let var_0 = select(select(vec3<bool>(~arg_0.a.x < -33134i, arg_0.b && arg_0.b, any(vec2<bool>(true, false))), select(vec3<bool>(arg_0.b, true, true), vec3<bool>(func_4(arg_0), all(vec4<bool>(false, arg_0.b, true, true)), true), !(!vec3<bool>(arg_0.b, true, arg_0.b))), !(!vec3<bool>(false, arg_0.b, arg_0.b))), !vec3<bool>(func_2(select(vec2<bool>(false, true), vec2<bool>(true, true), arg_0.b), _wgslsmith_sub_i32(-38953i, arg_0.a.x), arg_1 | -47782i, u_input.c).c.c, arg_0.b, false), any(vec3<bool>(false, !arg_0.b, true)));
    global0 = -765f;
    let var_1 = var_0;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-909f)))), -570f)) - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1423f, _wgslsmith_f_op_f32(f32(-1f) * -211f))))), ~(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 55404u), vec2<u32>(u_input.b.x, u_input.a)), func_5(Struct_2(vec3<bool>(true, true, var_1.x), u_input.e.zzw, Struct_1(1149f, vec2<u32>(4294967295u, 1u), var_1.x), 356f), Struct_1(-401f, vec2<u32>(arg_0.d, 14537u), var_1.x), u_input.e.yww, Struct_2(var_1, vec3<u32>(arg_0.d, arg_0.d, 55759u), Struct_1(1285f, arg_0.c.ww, false), -150f)).d) & ((vec2<u32>(arg_0.c.x, 88329u) | vec2<u32>(u_input.d.x, 28802u)) << (arg_0.c.xw % vec2<u32>(32u)))), 0u > ((max(u_input.d.x, 55666u) ^ u_input.b.x) & (59506u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.d, arg_0.d), arg_0.c.xx) % 32u))));
    var var_3 = u_input.c;
    return func_5(Struct_2(func_2(var_1.xx, func_5(Struct_2(var_1, u_input.e.xyw, Struct_1(-250f, u_input.b, false), var_2.a), func_2(var_0.yy, 8579i, -1i, 23315i).c, u_input.e.zyy, func_2(vec2<bool>(false, false), 0i, -1i, 23707i)).a.x, abs(arg_1), countOneBits(~arg_1)).a, arg_0.c.xzx, Struct_1(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -1080f)), arg_0.c.ww, all(!vec2<bool>(true, var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1260f)), Struct_1(191f, vec2<u32>(94562u, 52557u ^ min(1u, u_input.e.x)), var_0.x && var_1.x), ~(~u_input.e.zxz), func_2(select(!vec2<bool>(var_2.c, var_2.c), vec2<bool>(arg_0.b, any(var_0)), true), ~0i, _wgslsmith_dot_vec3_i32(func_5(func_2(vec2<bool>(var_2.c, false), -1i, 40425i, arg_1), func_2(vec2<bool>(var_1.x, true), 15142i, u_input.c, 0i).c, vec3<u32>(4294967295u, 0u, 1u), func_2(var_0.yy, -1i, arg_0.a.x, u_input.c)).a.yyw, vec3<i32>(arg_0.a.x & arg_1, arg_1 | -40755i, -28722i)), 2147483647i)).a.zw;
}

fn func_7(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<i32>, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = -(~vec3<i32>((arg_1.x >> (arg_0 % 32u)) ^ (arg_1.x | arg_1.x), countOneBits(arg_2.x), u_input.c));
    let var_1 = !arg_3.x;
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-2070f))));
    return func_2(select(select(!(!vec2<bool>(false, arg_3.x)), arg_3, false), select(select(arg_3, vec2<bool>(true, true), arg_0 <= 4294967295u), arg_3, select(vec2<bool>(var_1, false), vec2<bool>(var_1, arg_3.x), !arg_3.x)), !var_1), _wgslsmith_div_i32(-2147483647i, _wgslsmith_sub_i32(var_0.x, _wgslsmith_clamp_i32(func_6(Struct_3(vec4<i32>(9324i, arg_2.x, var_0.x, u_input.c), arg_3.x, vec4<u32>(u_input.d.x, u_input.a, 0u, 30739u), 1u), arg_2.x).x, u_input.c, -arg_2.x))), 0i, arg_1.x).c;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>, arg_3: vec2<i32>) -> bool {
    let var_0 = func_7(~(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b.x, 0u), u_input.d.x)), func_6(func_5(func_2(!vec2<bool>(arg_0.c, true), arg_1, abs(0i), ~24050i), func_2(!vec2<bool>(arg_0.c, arg_0.c), _wgslsmith_mult_i32(-26185i, 16203i), u_input.c, arg_1).c, _wgslsmith_div_vec3_u32(vec3<u32>(1u, 29794u, 10128u), vec3<u32>(59563u, u_input.d.x, arg_2.x)), func_2(!vec2<bool>(arg_0.c, arg_0.c), arg_3.x >> (20103u % 32u), ~(-16326i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -21584i), vec2<i32>(u_input.c, 0i)))), max(-2147483647i, _wgslsmith_mod_i32(-2147483647i, func_5(Struct_2(vec3<bool>(false, arg_0.c, false), u_input.e.zzw, arg_0, arg_0.a), arg_0, u_input.e.zxz, Struct_2(vec3<bool>(arg_0.c, true, false), u_input.e.yyx, arg_0, arg_0.a)).a.x))), firstLeadingBit(_wgslsmith_div_vec3_i32(countOneBits(-vec3<i32>(58777i, u_input.c, -66220i)), ~func_5(Struct_2(vec3<bool>(arg_0.c, arg_0.c, arg_0.c), arg_2, Struct_1(arg_0.a, arg_2.yx, arg_0.c), arg_0.a), arg_0, arg_2, Struct_2(vec3<bool>(arg_0.c, arg_0.c, false), arg_2, arg_0, arg_0.a)).a.wwy)), vec2<bool>((_wgslsmith_add_u32(arg_2.x, 4294967295u) & 1u) <= _wgslsmith_add_u32(~79484u, ~u_input.d.x), false));
    var var_1 = func_2(select(func_2(vec2<bool>(func_5(Struct_2(vec3<bool>(var_0.c, true, var_0.c), vec3<u32>(51878u, u_input.a, arg_0.b.x), Struct_1(1000f, vec2<u32>(4294967295u, var_0.b.x), var_0.c), var_0.a), var_0, u_input.e.wyy, Struct_2(vec3<bool>(arg_0.c, arg_0.c, false), vec3<u32>(arg_0.b.x, arg_0.b.x, arg_2.x), Struct_1(496f, vec2<u32>(55368u, 1u), arg_0.c), arg_0.a)).b, true), func_5(func_2(vec2<bool>(true, true), 56798i, arg_1, arg_3.x), func_2(vec2<bool>(arg_0.c, true), arg_1, u_input.c, u_input.c).c, vec3<u32>(u_input.b.x, var_0.b.x, arg_2.x), func_2(vec2<bool>(true, false), 58198i, 2147483647i, arg_3.x)).a.x, func_5(Struct_2(vec3<bool>(true, arg_0.c, var_0.c), arg_2, arg_0, arg_0.a), Struct_1(arg_0.a, u_input.d, var_0.c), u_input.e.zxz | vec3<u32>(arg_2.x, arg_2.x, 12665u), func_2(vec2<bool>(false, false), u_input.c, 58083i, 2147483647i)).a.x, firstLeadingBit(_wgslsmith_mod_i32(u_input.c, 2147483647i))).a.zz, select(vec2<bool>(true, any(vec4<bool>(false, true, arg_0.c, var_0.c))), !select(vec2<bool>(true, arg_0.c), vec2<bool>(true, arg_0.c), var_0.c), func_2(!vec2<bool>(arg_0.c, true), ~arg_1, arg_3.x | arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_3.x, arg_3.x), vec3<i32>(u_input.c, arg_1, -28169i))).a.yy), true), ~(-1i), 25884i, -15778i).c;
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(select(vec3<bool>(true, false, true), vec3<bool>(true, func_1(Struct_1(470f, vec2<u32>(38291u, u_input.e.x), true), 32611i, vec3<u32>(4294967295u, 68066u, 71083u), vec2<i32>(u_input.c, 39579i)), func_2(vec2<bool>(false, false), u_input.c, u_input.c, u_input.c).a.x), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), func_2(vec2<bool>(false, false), 58058i, -2147483647i, 0i).a))) || (all(vec3<bool>(true, func_5(Struct_2(vec3<bool>(false, true, true), u_input.e.www, Struct_1(452f, vec2<u32>(4294967295u, 35881u), false), -483f), Struct_1(877f, vec2<u32>(u_input.a, 4294967295u), true), u_input.e.wyx, Struct_2(vec3<bool>(false, true, false), vec3<u32>(u_input.d.x, u_input.a, 0u), Struct_1(-1719f, vec2<u32>(55154u, 0u), true), -1024f)).b, any(vec2<bool>(true, true)))) && any(vec3<bool>(true, func_4(Struct_3(vec4<i32>(-11337i, 2147483647i, u_input.c, u_input.c), true, u_input.e, u_input.d.x)), true)));
    var_0 = true;
    global1 = ~abs(i32(-1i) * -_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(u_input.c, u_input.c)));
    let var_1 = _wgslsmith_mult_vec3_u32(u_input.e.wzw, func_5(func_2(vec2<bool>(true, true), 1i, u_input.c, ~abs(u_input.c)), func_2(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), abs(-24307i), ~u_input.c, 1i).c, vec3<u32>(_wgslsmith_mod_u32(u_input.d.x & u_input.d.x, u_input.e.x), firstLeadingBit(select(u_input.d.x, u_input.b.x, true)), u_input.d.x), Struct_2(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), u_input.e.xyw, Struct_1(522f, vec2<u32>(u_input.d.x, 145940u) | vec2<u32>(0u, u_input.e.x), u_input.e.x >= u_input.b.x), func_2(func_2(vec2<bool>(true, true), u_input.c, u_input.c, u_input.c).a.xx, countOneBits(41151i), -37507i & u_input.c, u_input.c ^ u_input.c).c.a)).c.zzw);
    var_0 = min(u_input.c, _wgslsmith_dot_vec3_i32(func_5(func_2(vec2<bool>(true, true), -2822i, -2217i, u_input.c), func_2(vec2<bool>(true, false), -1936i, u_input.c, 33162i).c, ~vec3<u32>(var_1.x, 5893u, 21704u), Struct_2(vec3<bool>(false, false, true), u_input.e.yyx, Struct_1(-911f, u_input.e.zx, true), 358f)).a.xwz, -vec3<i32>(-13762i, 1i, 1i) & func_5(Struct_2(vec3<bool>(true, false, false), vec3<u32>(4543u, 4294967295u, u_input.e.x), Struct_1(1363f, vec2<u32>(u_input.a, u_input.b.x), true), 2610f), Struct_1(1000f, vec2<u32>(4294967295u, 4294967295u), false), var_1, Struct_2(vec3<bool>(true, true, true), var_1, Struct_1(-630f, vec2<u32>(u_input.a, 4294967295u), true), 924f)).a.wzy)) >= _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(min(-2147483647i, u_input.c), _wgslsmith_add_i32(23107i, 1i)), _wgslsmith_div_i32(1i, 2147483647i)), abs(max(u_input.c, func_5(Struct_2(vec3<bool>(false, false, false), vec3<u32>(53433u, u_input.e.x, 0u), Struct_1(-2661f, var_1.yy, false), -1901f), Struct_1(-131f, vec2<u32>(4294967295u, 0u), true), vec3<u32>(116024u, 44170u, 1u), Struct_2(vec3<bool>(true, true, true), vec3<u32>(u_input.b.x, 0u, var_1.x), Struct_1(119f, vec2<u32>(var_1.x, u_input.e.x), true), 889f)).a.x)), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c >> (var_1.x % 32u), _wgslsmith_add_i32(u_input.c, -22485i)), 1i));
    var var_2 = Struct_2(!func_2(vec2<bool>(func_2(vec2<bool>(true, true), u_input.c, u_input.c, u_input.c).a.x, false), u_input.c, -_wgslsmith_add_i32(1i, -1i), _wgslsmith_mult_i32(u_input.c, -48362i) & -9247i).a, _wgslsmith_add_vec3_u32(u_input.e.yzw, var_1), func_7(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, select(u_input.d.x, u_input.e.x, true)), vec2<u32>(1u, var_1.x)), select(-(~vec2<i32>(u_input.c, 2147483647i)), firstLeadingBit(vec2<i32>(u_input.c, -1i) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), true), _wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.c, 2147483647i, u_input.c), _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(-22666i, 2147483647i, u_input.c)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, u_input.c, -2147483647i), vec3<i32>(u_input.c, u_input.c, -35851i))), -(vec3<i32>(u_input.c, u_input.c, u_input.c) & vec3<i32>(13016i, u_input.c, 0i))), select(select(func_2(vec2<bool>(false, false), -44434i, -2147483647i, 31159i).a.yx, vec2<bool>(true, true), vec2<bool>(false, false)), select(func_2(vec2<bool>(true, true), -2318i, 1765i, 0i).a.zx, func_2(vec2<bool>(true, true), 10348i, u_input.c, u_input.c).a.xz, false), vec2<bool>(true, true))), func_7(firstLeadingBit(0u), ~(~vec2<i32>(u_input.c, 46830i) ^ max(vec2<i32>(-1464i, u_input.c), vec2<i32>(7643i, -2147483647i))), select(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, u_input.c, 0i), vec3<i32>(55711i, u_input.c, 17743i))), ~select(vec3<i32>(u_input.c, -29100i, u_input.c), vec3<i32>(u_input.c, -9692i, 2147483647i), true), true), vec2<bool>(true, all(vec2<bool>(true, true)))).a);
    var var_3 = 21529i;
    var var_4 = ~u_input.c;
    var var_5 = func_5(func_2(vec2<bool>(!(var_2.b.x > var_2.b.x), true), 8540i, -4139i, u_input.c), Struct_1(-860f, ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, u_input.e.x), vec2<u32>(u_input.d.x, 6841u)), var_2.a.x), vec3<u32>(select(_wgslsmith_mult_u32(~var_1.x, u_input.d.x), var_2.c.b.x, !var_2.c.c), 20308u, 1u), Struct_2(vec3<bool>(true, true | var_2.a.x, true), vec3<u32>(func_5(func_2(vec2<bool>(true, var_2.c.c), -1i, u_input.c, 52412i), Struct_1(var_2.d, vec2<u32>(var_2.b.x, 41712u), var_2.a.x), select(vec3<u32>(4294967295u, var_2.b.x, 46772u), u_input.e.yzx, vec3<bool>(false, false, var_2.c.c)), Struct_2(vec3<bool>(true, false, var_2.c.c), vec3<u32>(var_2.c.b.x, 0u, 40241u), Struct_1(-1278f, var_1.xz, var_2.c.c), var_2.c.a)).d, var_1.x, countOneBits(_wgslsmith_mult_u32(1u, 29696u))), func_7(4250u, select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, -8499i), vec2<bool>(true, true)) ^ select(vec2<i32>(u_input.c, u_input.c), vec2<i32>(2147483647i, 27142i), var_2.a.x), vec3<i32>(-1i, firstTrailingBit(0i), firstTrailingBit(-40914i)), vec2<bool>(func_1(var_2.c, u_input.c, var_2.b, vec2<i32>(u_input.c, u_input.c)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d - _wgslsmith_f_op_f32(-var_2.d))))).c.zw;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-u_input.c) & _wgslsmith_add_i32(u_input.c, 1i), u_input.b.x | u_input.b.x);
}

