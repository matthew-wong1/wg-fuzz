struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>) -> vec2<f32> {
    let var_0 = arg_1;
    var var_1 = ~3139u;
    var_1 = 1u;
    var var_2 = Struct_2(var_0.a, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(~9021u, arg_2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.x, 4294967295u, 51183u, arg_1.a.e.x), vec4<u32>(0u, 38319u, arg_0.e.x, 4294967295u)), ~u_input.b), ~vec4<u32>(var_0.e.e.x, arg_0.e.x, 0u, arg_0.e.x) << (~vec4<u32>(var_0.a.e.x, var_0.b, var_0.c.e.x, 0u) % vec4<u32>(32u)))), var_0.e, ~_wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(20997u, u_input.b, arg_2.x)), ~_wgslsmith_sub_vec3_u32(arg_0.e, vec3<u32>(41161u, 4294967295u, 1u)), ~arg_0.e), arg_1.c);
    var_1 = ~43343u;
    return vec2<f32>(636f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-1208f)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<i32>(max(min(1i, 1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(13767i, 4586i, 4593i), firstTrailingBit(vec3<i32>(29900i, 9335i, 0i)))), -1i, 0i) & (vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-56812i, 24558i, -41878i, -43618i), vec4<i32>(0i, -23180i, -15588i, 1546i)), (i32(-1i) * -19984i) << (u_input.c % 32u), -(2147483647i << (0u % 32u))) & vec3<i32>(min(0i, select(2147483647i, -2147483647i, true)), ~14075i >> (~u_input.c % 32u), 25193i));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(712f, 639f)))), var_0.x, false, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec3<u32>(u_input.b, 31057u, ~25825u)), Struct_2(Struct_1(vec2<f32>(414f, -455f), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 15396i, var_0.x), vec3<i32>(520i, 62402i, var_0.x)), false, vec2<bool>(true, true), vec3<u32>(57168u, u_input.c, u_input.b)), ~(~19205u), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1303f, -329f))), 1i, false, vec2<bool>(true, true), min(vec3<u32>(u_input.b, 4004u, u_input.b), u_input.a)), vec3<u32>(1u, _wgslsmith_mult_u32(u_input.c, 74510u), 76299u), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -987f)), _wgslsmith_mod_i32(1i, var_0.x), true, vec2<bool>(false, false), u_input.a << (vec3<u32>(u_input.a.x, u_input.b, 4294967295u) % vec3<u32>(32u)))), ~vec2<u32>(8887u, ~74639u))), var_0.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x << (3187u % 32u), min(51904u, u_input.a.x)), vec2<u32>(firstTrailingBit(u_input.b), reverseBits(u_input.b))) % 32u), var_0.x > countOneBits(-12657i), vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true)), true), reverseBits(~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.b, u_input.c, u_input.c), u_input.a)));
    var var_2 = _wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.a.x, _wgslsmith_f_op_f32(select(var_1.a.x, var_1.a.x, all(vec3<bool>(var_1.d.x, var_1.d.x, true))))))));
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_1.a.x)), 1217f);
    var var_3 = var_1.a.x;
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-136f + 982f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-675f)) * _wgslsmith_f_op_f32(1366f + -379f)))), _wgslsmith_dot_vec3_i32(var_0, var_0), true, !var_1.d, u_input.a);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_1.a.x), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.a.x, arg_2)))))), abs(arg_0.b >> (35895u % 32u)), 1i > _wgslsmith_sub_i32(firstLeadingBit(firstTrailingBit(13789i)), -arg_0.b), arg_0.d, u_input.a);
    let var_1 = Struct_2(func_2(), 1u, func_2(), ~(~_wgslsmith_clamp_vec3_u32(arg_0.e, ~var_0.e, vec3<u32>(31418u, arg_1.e.x, 15686u))), arg_0);
    let var_2 = arg_1.a.x;
    let var_3 = vec3<i32>(2147483647i, -2147483647i, -arg_1.b);
    var var_4 = var_1.e;
    return func_2();
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = func_1(func_1(Struct_1(arg_0.yx, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(0i, -14142i)), vec2<i32>(-1i, arg_2.b)), arg_2.d.x, vec2<bool>(true | arg_2.d.x, true), (vec3<u32>(61141u, arg_2.e.x, arg_2.e.x) ^ arg_2.e) & countOneBits(vec3<u32>(arg_1, arg_1, arg_2.e.x))), arg_2, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-arg_2.a.x))), arg_2, _wgslsmith_div_f32(func_2().a.x, arg_0.x));
    var_0 = arg_2;
    let var_1 = func_1(func_2(), arg_2, _wgslsmith_f_op_f32(f32(-1f) * -313f));
    var var_2 = var_1;
    let var_3 = func_2();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.yz)) <= func_4(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-281f, -1141f, -445f))), 36064u, func_1(Struct_1(vec2<f32>(-643f, 981f), 12389i, false, vec2<bool>(false, false), u_input.a), Struct_1(vec2<f32>(1124f, 193f), 1i, true, vec2<bool>(false, true), u_input.a), 842f)), any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), false)) & true, any(vec4<bool>(true, true, true, true))));
    var_0 = all(select(select(vec3<bool>(true, true, true), vec3<bool>(true, select(false, true, false), true), true), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, true), vec3<bool>(select(true, any(vec4<bool>(false, true, true, false)), true), false, any(vec3<bool>(false, true, false)) | false)));
    var var_1 = Struct_2(func_2(), 34552u, func_2(), vec3<u32>(abs(u_input.b), 1u, ~56498u), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-358f, -1000f)))))), min(1i, -1i), false, !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), ~vec3<u32>(u_input.a.x, 52088u, u_input.b) & firstTrailingBit(max(u_input.a, vec3<u32>(u_input.b, 16580u, u_input.b)))));
    var var_2 = Struct_2(func_1(func_2(), var_1.c, var_1.c.a.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(36711u | u_input.c, ~var_1.d.x), var_1.c.e.yx), ~func_1(var_1.a, var_1.e, -780f).e.yy), func_2(), ~var_1.e.e, var_1.a);
    var var_3 = Struct_2(func_2(), var_2.b, func_2(), ~abs(min(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), u_input.a)), var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_1.c.a.x, var_1.c.a.x, 1073f, 228f), ~vec2<u32>(~26380u ^ _wgslsmith_add_u32(var_1.a.e.x, var_1.a.e.x), u_input.a.x), 1u | _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, var_2.b, 4294967295u), 4294967295u));
}

