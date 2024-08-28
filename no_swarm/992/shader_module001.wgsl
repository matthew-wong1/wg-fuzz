struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<i32, 28> = array<i32, 28>(0i, -1i, i32(-2147483648), 22481i, 31852i, -10674i, 47788i, i32(-2147483648), 0i, 39604i, i32(-2147483648), 0i, -12591i, 41144i, 0i, 1i, 48760i, 61271i, -61384i, -26187i, -1i, i32(-2147483648), 8583i, -1i, 2147483647i, 35884i, 24630i, -7580i);

var<private> global2: vec3<u32>;

var<private> global3: array<vec2<f32>, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32, arg_2: i32) -> vec3<bool> {
    let var_0 = arg_2;
    global2 = abs(u_input.e) >> (_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(select(_wgslsmith_add_vec3_u32(u_input.e, vec3<u32>(u_input.a, global0.a, 22595u)), max(u_input.e, vec3<u32>(global2.x, global2.x, u_input.a)), true), _wgslsmith_mult_vec3_u32(u_input.e, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.e.x, 8633u, 0u), vec3<u32>(u_input.e.x, global2.x, 38868u)))), u_input.e) % vec3<u32>(32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(593f, 469f, -537f), vec3<f32>(arg_0.x, -274f, 495f)))))) + arg_0.xzw);
    var var_2 = -2147483647i;
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), -383f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + 448f), -1683f))));
    return select(vec3<bool>(true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -434f) - -1335f) == arg_0.x), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true | (global0.a <= 4294967295u)), select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)), any(vec3<bool>(true, true, true))), true), any(vec4<bool>(true, any(vec3<bool>(true, true, false)) | true, all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false))), false)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: f32) -> vec4<u32> {
    var var_0 = Struct_3(reverseBits(~(~global2.x) ^ ~_wgslsmith_mult_u32(arg_2.c.a, u_input.a)));
    var var_1 = Struct_4(Struct_1(~0u, arg_2.c.b && any(func_3(vec4<f32>(1000f, arg_3, 383f, -1096f), 2147483647i, u_input.d.x).xx), select(select(arg_0.a.c, !vec3<bool>(arg_0.b, true, false), vec3<bool>(true, true, true)), vec3<bool>(1070f == arg_3, arg_0.a.c.x | false, arg_2.a.c.x), !(!vec3<bool>(arg_2.a.c.x, arg_2.a.b, arg_0.c.c.x)))), max(var_0.a, 37849u), all(select(!vec4<bool>(arg_2.b, false, true, arg_0.c.c.x), !vec4<bool>(arg_0.c.b, true, arg_0.b, arg_0.a.b), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_2.a.a, 28u)] > u_input.c, !arg_2.b, true))));
    let var_2 = min(u_input.e.yz, ~_wgslsmith_mod_vec2_u32(vec2<u32>(~var_1.a.a, 4715u), vec2<u32>(select(var_0.a, u_input.a, false), ~1u)));
    var var_3 = u_input.e;
    global3 = array<vec2<f32>, 3>();
    return abs(vec4<u32>(var_3.x, abs(u_input.a), global2.x, ~var_2.x)) << (_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~(~vec4<u32>(29042u, 4294967295u, 23989u, var_0.a)), min(~vec4<u32>(0u, 0u, 193u, 4294967295u), vec4<u32>(1u, 10923u, 19240u, arg_0.c.a))), max(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a, global2.x, u_input.a, arg_2.a.a), vec4<u32>(0u, global2.x, global0.a, arg_0.c.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a, var_3.x, var_1.a.a), vec4<u32>(1u, var_1.a.a, arg_2.c.a, 75826u))), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(global2.x, arg_0.c.a, 54232u, u_input.a))))) % vec4<u32>(32u));
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> u32 {
    var var_0 = ~func_4(Struct_2(Struct_1(20985u ^ global0.a, true, vec3<bool>(false, false, false)), arg_0.x <= firstLeadingBit(61691i), Struct_1(global0.a ^ 107410u, arg_1 != 1309f, vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(176f, -576f)), -888f, arg_1)), Struct_2(Struct_1(2544u, true, vec3<bool>(false, false, true)), false, Struct_1(61252u >> (global0.a % 32u), all(vec2<bool>(true, false)), func_3(vec4<f32>(-2144f, arg_1, -1164f, arg_1), u_input.b.x, -2147483647i))), -200f);
    var var_1 = arg_0;
    global2 = ~(~var_0.zxy);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(534f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -171f))));
    let var_3 = abs(1u);
    return _wgslsmith_add_u32(45054u, _wgslsmith_dot_vec2_u32(~(~(~var_0.zy)), var_0.zz));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    global1 = array<i32, 28>();
    let var_0 = arg_3;
    let var_1 = max(~1u, max(global2.x, countOneBits(select(global2.x, 11108u, false)))) << (~var_0.a.a % 32u);
    global0 = Struct_3(4294967295u);
    var var_2 = arg_0;
    return Struct_2(arg_3.a, 109322u == _wgslsmith_clamp_u32(4294967295u, 1u, select(func_2(vec2<i32>(-15017i, -1290i), -3268f), 1u, any(vec2<bool>(var_0.a.b, false)))), arg_3.c);
}

fn func_5(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> Struct_3 {
    let var_0 = Struct_1(40818u, all(vec2<bool>(all(vec3<bool>(false, arg_2.b, true)), any(!vec2<bool>(arg_2.b, arg_2.c.b)))), select(vec3<bool>(all(vec4<bool>(false, arg_1, false, arg_2.b)) & false, true, false), arg_2.a.c, arg_1));
    let var_1 = -1i ^ global1[_wgslsmith_index_u32(global2.x, 28u)];
    global0 = Struct_3(_wgslsmith_mod_u32(~u_input.a ^ max(firstLeadingBit(arg_2.a.a), 1u), global0.a));
    global3 = array<vec2<f32>, 3>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 310f, 194f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(657f, -194f, 987f) - vec3<f32>(2822f, 1982f, -425f))) - vec3<f32>(_wgslsmith_f_op_f32(select(501f, 2171f, false)), _wgslsmith_f_op_f32(min(647f, 312f)), _wgslsmith_f_op_f32(146f - -1486f)))));
    return Struct_3(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(var_0.a, 4294967295u)), global2.yy));
}

fn func_6(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: u32, arg_3: f32) -> u32 {
    let var_0 = (-select(-u_input.b.xx, max(vec2<i32>(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)]), u_input.b.ww), select(vec2<bool>(arg_1.x, true), arg_1.zy, arg_1.zx)) ^ -(~(~u_input.d))) | ~_wgslsmith_sub_vec2_i32(vec2<i32>(~u_input.b.x, ~global1[_wgslsmith_index_u32(u_input.e.x, 28u)]), select(u_input.d, -u_input.d, !vec2<bool>(false, arg_1.x)));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + 1420f)), arg_3)) - arg_3)));
    global1 = array<i32, 28>();
    var var_2 = all(!(!(!(!arg_1))));
    var var_3 = arg_0;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_div_u32(func_6(func_5(u_input.d, true, func_1(Struct_3(u_input.a), u_input.c, true, Struct_2(Struct_1(1u, true, vec3<bool>(true, true, false)), true, Struct_1(1u, false, vec3<bool>(false, false, true)))), _wgslsmith_clamp_i32(u_input.d.x, u_input.b.x, u_input.d.x)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), func_1(Struct_3(global0.a), 23620i, true, Struct_2(Struct_1(u_input.e.x, true, vec3<bool>(false, false, true)), true, Struct_1(u_input.e.x, false, vec3<bool>(true, false, false)))).b), 38874u, _wgslsmith_f_op_f32(f32(-1f) * -645f)), _wgslsmith_add_u32(23403u, u_input.a) << (func_6(Struct_3(7498u), func_3(vec4<f32>(-1000f, -243f, -281f, -889f), u_input.d.x, u_input.d.x), func_5(vec2<i32>(1i, u_input.d.x), true, Struct_2(Struct_1(global2.x, true, vec3<bool>(true, true, false)), true, Struct_1(0u, true, vec3<bool>(false, true, true))), global1[_wgslsmith_index_u32(21280u, 28u)]).a, _wgslsmith_div_f32(-529f, -524f)) % 32u)), global2.x);
    let var_1 = true;
    let var_2 = vec3<bool>(all(!(!vec3<bool>(false, false, var_1))) == false, true, !var_1);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(463f, -1000f)) * _wgslsmith_f_op_f32(min(-823f, -1439f))) - _wgslsmith_f_op_f32(1000f * -286f)), -527f, -2023f) - vec3<f32>(-2139f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1095f)))))), 1697f));
    var var_4 = Struct_1(0u, var_2.x, func_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.x, var_3.x, var_3.x, -1000f), vec4<f32>(var_3.x, var_3.x, -133f, var_3.x)))))), _wgslsmith_dot_vec4_i32(u_input.b, countOneBits(~u_input.b)), firstTrailingBit(43258i)));
    let var_5 = func_2(u_input.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - -158f))))));
    let var_6 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2177f * 852f) * _wgslsmith_f_op_f32(trunc(2142f))), _wgslsmith_div_f32(852f, _wgslsmith_f_op_f32(-var_3.x)), -392f)), _wgslsmith_mod_vec4_i32(select(u_input.b, vec4<i32>(global1[_wgslsmith_index_u32(12011u, 28u)] >> (73996u % 32u), 2147483647i, ~0i, max(-1i, 1945i)), select(vec4<bool>(false, false, var_4.c.x, false), vec4<bool>(true, true, false, var_2.x), select(vec4<bool>(var_2.x, var_2.x, var_6.x, true), vec4<bool>(true, var_2.x, true, var_1), vec4<bool>(var_2.x, var_4.b, true, false)))), u_input.b), abs(~firstTrailingBit(global0.a) & countOneBits(max(34371u, global0.a))));
}

