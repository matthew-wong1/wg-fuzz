struct Struct_1 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -212f;

var<private> global1: array<vec4<f32>, 14>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>) -> vec2<bool> {
    global1 = array<vec4<f32>, 14>();
    let var_0 = ~reverseBits(36880i) & arg_0;
    let var_1 = 13473i;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1038f, -361f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(299f, 875f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(373f, -296f, -638f) * vec3<f32>(-1480f, 165f, -1053f))) * vec3<f32>(_wgslsmith_div_f32(931f, -204f), _wgslsmith_f_op_f32(f32(-1f) * -765f), _wgslsmith_f_op_f32(round(832f))))));
    let var_3 = Struct_2(vec2<bool>(all(vec4<bool>(any(vec3<bool>(false, true, true)), true, true, arg_1.x == arg_1.x)), true), true, ~vec3<u32>(arg_1.x >> ((arg_1.x << (39861u % 32u)) % 32u), 1u, _wgslsmith_dot_vec2_u32(~arg_1, arg_1 ^ vec2<u32>(arg_1.x, arg_1.x))), Struct_1(var_2, countOneBits(max(_wgslsmith_sub_vec2_i32(u_input.b.xy, vec2<i32>(-2147483647i, -28071i)), u_input.b.yy))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, _wgslsmith_sub_u32(min(90580u, arg_1.x), reverseBits(arg_1.x)), _wgslsmith_add_u32(arg_1.x, arg_1.x)), vec3<u32>(4294967295u, _wgslsmith_add_u32(arg_1.x, ~arg_1.x), max(~19864u, ~arg_1.x))));
    return vec2<bool>(var_3.b, all(select(vec4<bool>(var_3.a.x, true, var_3.b, var_3.a.x || true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_3.b, true, true, var_3.a.x), false), !vec4<bool>(var_3.b, var_3.a.x, var_3.b, var_3.a.x), vec4<bool>(false, false, false, true)), var_3.a.x | true)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-847f, -1350f, 907f), vec3<f32>(235f, 478f, 423f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1000f, -2143f, -797f)))))), _wgslsmith_sub_vec2_i32(-vec2<i32>(min(u_input.b.x, u_input.b.x), u_input.a), u_input.b.xy));
    var var_1 = vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -min(6400i, u_input.b.x), u_input.a), 0i ^ reverseBits(var_0.b.x), -u_input.b.x);
    var var_2 = Struct_2(arg_0.yy, all(!(!func_3(var_0.b.x, vec2<u32>(4294967295u, 1u)))), vec3<u32>(1u, 1u, 1u) | _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(0u, 34135u, 29171u)) | vec3<u32>(1u, 1u, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(36928u, 4294967295u, 4294967295u), vec3<u32>(1u, 8332u, 42012u))), var_0, _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(1u, 1u, 1u), abs(min(vec3<u32>(34284u, 4294967295u, 10047u), vec3<u32>(4294967295u, 1u, 2084u)))), ~select(_wgslsmith_mult_vec3_u32(vec3<u32>(17954u, 1u, 103863u), vec3<u32>(0u, 4294967295u, 32739u)), vec3<u32>(1u, 0u, 0u), select(vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, false, arg_0.x), arg_0.x)), reverseBits(vec3<u32>(1u, 1u, 1u))));
    var var_3 = var_2.e.x ^ var_2.e.x;
    let var_4 = abs(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~var_2.c.xy, ~vec2<u32>(0u, var_2.c.x)) & (var_2.c.zz << (countOneBits(var_2.c.yz) % vec2<u32>(32u))), ~(~var_2.e.yy)));
    return Struct_2(vec2<bool>(false, arg_0.x), arg_0.x, ~(~vec3<u32>(var_4.x, var_4.x, var_2.e.x) >> (~min(var_2.e, var_2.e) % vec3<u32>(32u))), var_2.d, var_2.e);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec3<i32>, arg_3: i32) -> Struct_1 {
    var var_0 = func_2(vec3<bool>(-2147483647i < _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_2.x, 20893i, -1i, u_input.b.x), vec4<i32>(1i, 1i, 1i, 1i)), true, true));
    global0 = var_0.d.a.x;
    let var_1 = Struct_2(select(func_2(vec3<bool>(var_0.b, var_0.a.x, var_0.a.x)).a, vec2<bool>(var_0.b, var_0.b), !vec2<bool>(var_0.b, all(vec4<bool>(var_0.a.x, var_0.b, var_0.b, var_0.a.x)))), !(var_0.b || var_0.a.x), var_0.c ^ vec3<u32>(2341u, var_0.e.x, ~1u), func_2(vec3<bool>(func_3(select(arg_2.x, arg_2.x, true), vec2<u32>(1u, 1u) | var_0.c.zz).x, !all(vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x)), any(var_0.a))).d, ~var_0.e);
    var var_2 = Struct_2(var_0.a, true, var_0.e, func_2(select(vec3<bool>(all(vec3<bool>(var_1.a.x, false, true)), !var_1.a.x, true), !select(vec3<bool>(var_1.b, false, var_1.b), vec3<bool>(false, var_0.b, true), vec3<bool>(var_0.b, false, false)), select(select(vec3<bool>(var_0.a.x, var_1.b, false), vec3<bool>(false, true, true), var_1.a.x), select(vec3<bool>(false, true, var_1.a.x), vec3<bool>(true, true, false), var_0.a.x), !vec3<bool>(var_1.b, false, false)))).d, ~_wgslsmith_sub_vec3_u32(var_0.c, ~vec3<u32>(var_0.c.x, 78659u, var_0.e.x)));
    let var_3 = select(select(vec4<bool>(!(var_0.d.a.x > 950f), var_0.b, all(!vec3<bool>(true, false, var_0.b)), true), vec4<bool>(var_0.b, var_2.b, !var_2.a.x | true, (false | var_2.a.x) | func_3(-1i, var_0.e.xz).x), any(select(select(vec3<bool>(var_2.b, var_1.b, var_1.b), vec3<bool>(true, false, false), true), vec3<bool>(var_1.b, var_0.a.x, var_2.a.x), vec3<bool>(var_0.b, false, var_2.a.x)))), !(!vec4<bool>(!var_2.a.x, var_0.b, true, func_3(11641i, var_1.e.zz).x)), !(!vec4<bool>(var_0.a.x, false, true, 18789i >= arg_3)));
    return Struct_1(_wgslsmith_f_op_vec3_f32(var_0.d.a - _wgslsmith_f_op_vec3_f32(round(var_0.d.a))), ~var_1.d.b);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<bool>) -> vec2<bool> {
    let var_0 = arg_2.x;
    var var_1 = -min(arg_2.x ^ arg_1.b.x, -13267i);
    var var_2 = ~arg_1.b;
    let var_3 = _wgslsmith_mod_vec2_u32(~max(~_wgslsmith_mod_vec2_u32(vec2<u32>(61237u, 55814u), vec2<u32>(4294967295u, 29292u)), func_2(vec3<bool>(arg_3.x, arg_3.x, false)).e.xz), abs(_wgslsmith_div_vec2_u32(~abs(vec2<u32>(1u, 0u)), ~(~vec2<u32>(1u, 92570u)))));
    let var_4 = -(arg_2.wz << ((reverseBits(~var_3) << (~vec2<u32>(var_3.x, 1u) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return !(!(!(!func_2(vec3<bool>(arg_0, false, false)).a)));
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = arg_1;
    global1 = array<vec4<f32>, 14>();
    global1 = array<vec4<f32>, 14>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-var_0.d.a);
    let var_2 = func_1(~firstLeadingBit(35686u), ~50818i, u_input.b ^ min(~(u_input.b >> (vec3<u32>(1u, arg_1.e.x, 24650u) % vec3<u32>(32u))), -_wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(16272i, -36417i, var_0.d.b.x), vec3<i32>(-2288i, -7817i, -2147483647i))), var_0.d.b.x).a.x;
    return _wgslsmith_clamp_vec3_u32(var_0.c, var_0.c, arg_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 14>();
    let var_0 = 2335i << (0u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~(-2147483647i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1707f))) - _wgslsmith_f_op_f32(f32(-1f) * -1366f)), 2077f)), vec2<i32>(select(firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b)), u_input.b.x | -var_0, true), -7015i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1686f, _wgslsmith_f_op_f32(303f - 1062f), _wgslsmith_div_f32(339f, -136f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(select(595f, 1000f, true)), _wgslsmith_f_op_f32(f32(-1f) * -646f)))), func_5(1u, Struct_2(func_4(true, func_1(4294967295u, u_input.b.x, u_input.b, 277i), vec4<i32>(var_0, -2147483647i, u_input.b.x, -1i) >> (vec4<u32>(0u, 0u, 48468u, 17224u) % vec4<u32>(32u)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)), true, countOneBits(select(vec3<u32>(4294967295u, 1u, 43331u), vec3<u32>(47318u, 55831u, 0u), vec3<bool>(true, true, false))), func_1(1u, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -36683i), vec2<i32>(u_input.a, -26773i)), ~u_input.b, -2147483647i), _wgslsmith_mod_vec3_u32(vec3<u32>(158213u, 0u, 1u), firstLeadingBit(vec3<u32>(24473u, 31210u, 14408u))))));
}

