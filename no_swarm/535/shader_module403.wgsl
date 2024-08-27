struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> f32 {
    let var_0 = countOneBits(~abs(firstLeadingBit(arg_1.b.a.zx)));
    global1 = true;
    let var_1 = max(~(select(vec4<u32>(1u, 51393u, 15166u, var_0.x), _wgslsmith_div_vec4_u32(vec4<u32>(22394u, arg_0.a, 19911u, arg_0.a), vec4<u32>(73170u, 4068u, var_0.x, arg_0.b.a.x)), true) << ((_wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_0.x, 0u, 4294967295u), vec4<u32>(1u, 36508u, 1u, arg_0.b.a.x)) << (~vec4<u32>(var_0.x, var_0.x, 1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), select(select(_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.b.b, arg_0.b.b, 86391u, 3969u), ~vec4<u32>(4294967295u, arg_0.a, 14586u, 0u)), vec4<u32>(~arg_0.a, 0u, var_0.x, countOneBits(arg_1.a)), global0.b), _wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_1.a, 0u, var_0.x), vec4<u32>(arg_0.a, arg_0.a, var_0.x, 33450u)) << (~abs(vec4<u32>(var_0.x, arg_0.a, var_0.x, 1u)) % vec4<u32>(32u)), global0.b));
    let var_2 = _wgslsmith_f_op_f32(sign(arg_0.b.d));
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(var_2)), var_2, 144f, _wgslsmith_f_op_f32(-var_2))))), vec4<bool>(true, arg_0.b.c.x, arg_3, !(-1489f != _wgslsmith_f_op_f32(-arg_1.b.d))));
    return _wgslsmith_f_op_f32(round(global0.a.x));
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> Struct_4 {
    let var_0 = 69180i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_1) - -1673f) * arg_1);
    global1 = arg_0.b.c.x;
    var var_2 = vec4<f32>(2090f, _wgslsmith_f_op_f32(-arg_1), var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(arg_0, arg_0, var_0, _wgslsmith_div_f32(var_1, -476f) < _wgslsmith_f_op_f32(678f + 315f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(406f * _wgslsmith_f_op_f32(abs(395f)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-global0.a);
    return Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(arg_1, arg_1, arg_1, var_2.x))), vec4<f32>(arg_1, var_2.x, -1660f, 1f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1831f, arg_1, _wgslsmith_f_op_f32(arg_1 * global0.a.x), _wgslsmith_f_op_f32(step(global0.a.x, -1748f)))))), vec4<bool>(true, all(arg_0.b.c.zy), select(arg_0.b.c.x, countOneBits(arg_0.a) != arg_0.a, true), true));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: bool) -> bool {
    global0 = func_2(Struct_2(1u, Struct_1(vec3<u32>(firstTrailingBit(4294967295u), 1u, 1u), countOneBits(4294967295u) << (0u % 32u), select(global0.b.wzx, select(vec3<bool>(arg_2, arg_0, false), vec3<bool>(false, global0.b.x, false), global0.b.wzw), any(global0.b.zxy)), 1000f)), 2749f);
    var var_0 = Struct_1(select(_wgslsmith_div_vec3_u32(min(abs(vec3<u32>(35547u, 0u, 0u)), vec3<u32>(17865u, 33409u, 1u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_mod_vec3_u32(firstTrailingBit(select(vec3<u32>(744u, 45001u, 0u), vec3<u32>(36359u, 41263u, 90376u), vec3<bool>(arg_2, true, arg_0))), ~(~vec3<u32>(0u, 1u, 4294967295u))), global0.b.x), 1u << ((abs(4294967295u) << ((1u << (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 22099u), vec2<u32>(52422u, 0u)) % 32u)) % 32u)) % 32u), vec3<bool>(arg_2, true, any(!global0.b.yx)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.a.x)))));
    let var_1 = 1u;
    global0 = Struct_4(vec4<f32>(1107f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-252f, arg_1) * 560f), 977f, 426f), !select(vec4<bool>(true, false, true, !var_0.c.x), !(!global0.b), true));
    let var_2 = !(any(!global0.b.xy) || true);
    return global0.b.x;
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: bool) -> f32 {
    var var_0 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(select(73234u, 1u, true), 12737u, 2888u) >> (firstLeadingBit(firstLeadingBit(1404u)) % 32u), abs(1u)), firstTrailingBit(abs(_wgslsmith_add_u32(firstTrailingBit(0u), 19047u))));
    let var_1 = global0.a.zyz;
    global0 = Struct_4(vec4<f32>(-881f, _wgslsmith_f_op_f32(func_3(Struct_2(min(var_0.x, var_0.x), Struct_1(vec3<u32>(88851u, var_0.x, var_0.x), 4294967295u, global0.b.xzy, arg_1.x)), Struct_2(0u, Struct_1(vec3<u32>(var_0.x, 9174u, 1u), var_0.x, vec3<bool>(true, true, true), var_1.x)), ~38457i, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), vec2<u32>(var_0.x, var_0.x)) != var_0.x)), arg_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(796f * 1538f)))))), global0.b);
    var_0 = vec2<u32>(var_0.x, select(~abs(var_0.x), var_0.x, all(func_2(Struct_2(20538u, Struct_1(vec3<u32>(26357u, var_0.x, 1u), var_0.x, global0.b.yzw, 436f)), -1827f).b.xw))) ^ ~(~vec2<u32>(firstTrailingBit(5831u), 0u));
    var var_2 = -2147483647i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -658f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a.x), -372f)))))) + _wgslsmith_f_op_f32(ceil(-1434f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~_wgslsmith_add_u32(~1u, ~_wgslsmith_clamp_u32(0u, 0u, 0u)), 1u);
    global1 = !(_wgslsmith_f_op_f32(-238f - _wgslsmith_div_f32(global0.a.x, global0.a.x)) < global0.a.x);
    let var_1 = Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, _wgslsmith_mod_u32(var_0.x, var_0.x), ~var_0.x), vec3<u32>(71654u, 11667u, 31055u) >> (abs(vec3<u32>(var_0.x, 18786u, 1u)) % vec3<u32>(32u))) | (~(~vec3<u32>(4294967295u, 1u, 35566u)) | _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(32253u, 1801u, 64380u)), countOneBits(vec3<u32>(13568u, var_0.x, 4294967295u)))), 4294967295u, global0.b.ywz, _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(func_4(true, global0.a.wz, func_1(global0.b.x | global0.b.x, global0.a.x, true)))));
    global1 = !var_1.c.x;
    global0 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, var_1.d, global0.a.x, 1002f)), vec4<f32>(-1085f, global0.a.x, global0.a.x, -1190f), vec4<bool>(false, var_1.c.x, true, false))))), !global0.b);
    var var_2 = Struct_3(Struct_2(~(var_0.x | firstTrailingBit(var_0.x)), Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(var_1.a.yz, vec2<u32>(72871u, 143509u)), var_1.a.x, 1u), ~4294967295u, func_2(Struct_2(var_0.x, Struct_1(vec3<u32>(var_0.x, 4294967295u, var_1.a.x), var_0.x, vec3<bool>(global0.b.x, global0.b.x, var_1.c.x), -1107f)), global0.a.x).b.xzy, 450f)), u_input.a, Struct_2(11480u, Struct_1(vec3<u32>(var_0.x, 58339u, var_0.x), ~_wgslsmith_add_u32(var_1.b, 41519u), func_2(Struct_2(var_1.b, Struct_1(var_1.a, 21409u, vec3<bool>(false, true, true), var_1.d)), _wgslsmith_f_op_f32(global0.a.x * -678f)).b.xzy, _wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(global0.a.x * -971f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)));
    global1 = true;
    let var_3 = var_2.a.b;
    var_2 = Struct_3(Struct_2(firstTrailingBit(_wgslsmith_add_u32(var_0.x, 2448u)) ^ 1u, Struct_1(vec3<u32>(~53630u, ~25417u, var_1.a.x & var_2.c.b.a.x), select(_wgslsmith_mod_u32(var_1.a.x, var_3.a.x), 4294967295u, any(vec2<bool>(false, false))), func_2(Struct_2(var_3.a.x, Struct_1(vec3<u32>(4294967295u, var_2.a.a, 0u), var_1.a.x, var_3.c, -269f)), 194f).b.www, -1000f)), ~u_input.a, Struct_2(26823u, Struct_1(~vec3<u32>(4294967295u, var_1.b, 1u), var_2.a.b.a.x, var_1.c, -589f)), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a >> (25087u % 32u), _wgslsmith_f_op_vec3_f32(-var_2.d.zyw), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -917f))))), vec4<i32>(~select(u_input.b, u_input.b, !var_3.c.x), u_input.a, 0i, min(4648i, -_wgslsmith_mod_i32(24530i, u_input.b))), 16273u << (var_1.a.x % 32u));
}

