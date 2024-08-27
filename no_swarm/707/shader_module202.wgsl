struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(true, false), Struct_3(false, true), Struct_3(false, true), Struct_3(false, true), Struct_3(false, true), Struct_3(true, false), Struct_3(true, false), Struct_3(true, true), Struct_3(true, true));

var<private> global1: Struct_2 = Struct_2(-1000f, true, Struct_1(1u, vec4<f32>(1027f, 159f, -115f, 1000f), 30691i, vec3<f32>(384f, -1506f, 1164f), vec2<u32>(57015u, 1u)), vec4<bool>(false, true, true, true));

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = !(!(_wgslsmith_f_op_f32(-global2.a) <= -716f) | any(select(select(global1.d.wxz, vec3<bool>(global2.d.x, true, false), vec3<bool>(true, global2.b, false)), select(global1.d.yzx, global1.d.xzw, vec3<bool>(global1.b, global2.b, global1.d.x)), vec3<bool>(global1.b, false, global2.d.x))));
    global2 = Struct_2(208f, select(global2.b, (global1.d.x & true) | true, any(global1.d.zzw)), Struct_1(~(~_wgslsmith_mod_u32(global1.c.a, 1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-911f)), _wgslsmith_f_op_f32(f32(-1f) * -1018f), 1085f, _wgslsmith_f_op_f32(arg_0.d.x + global1.c.b.x)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.b.x, 291f, arg_2.d.x, 119f)) + arg_0.b)), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(20400i, 1i), -arg_2.c, 1i, global2.c.c), min(~vec4<i32>(global2.c.c, 11275i, global1.c.c, global2.c.c), min(vec4<i32>(global2.c.c, 6299i, global2.c.c, -39738i), vec4<i32>(7856i, 2147483647i, -4814i, global2.c.c)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global2.c.b.x), _wgslsmith_f_op_f32(-669f + 457f), arg_2.b.x))), arg_2.e), global2.d);
    var var_1 = true;
    let var_2 = vec2<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(3660u, u_input.a.x, 4294967295u, arg_0.e.x), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, u_input.a.x, 4294967295u, global1.c.e.x) | vec4<u32>(8908u, global2.c.a, 0u, arg_1), vec4<u32>(u_input.a.x, 1u, 46434u, global1.c.e.x))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(select(4294967295u, 3611u, false) << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1, 14020u, 0u), u_input.a) % 32u), firstLeadingBit(0u) << ((0u << (global2.c.a % 32u)) % 32u)), 23898u));
    global2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-818f, 1000f))), !all(global1.d), global1.c, vec4<bool>(true, global1.d.x, global2.b, global2.d.x));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.c.b) + vec4<f32>(_wgslsmith_f_op_f32(arg_0.d.x * 595f), _wgslsmith_f_op_f32(-791f + global2.a), _wgslsmith_f_op_f32(floor(361f)), arg_0.b.x)) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global2.c.d.x, 1660f)), _wgslsmith_f_op_f32(-arg_0.b.x)), 1f, -1000f, 707f)) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x - -1440f)), arg_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(852f + global2.a)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global1.c.d.x, -371f, global1.b))))), global2.a, 538f));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(arg_0.b.xzy + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b.wyx - _wgslsmith_f_op_vec3_f32(vec3<f32>(991f, arg_0.d.x, global1.a) * global2.c.d))));
    let var_1 = Struct_1(_wgslsmith_mod_u32(u_input.a.x >> (0u % 32u), global2.c.e.x), global2.c.b, 5262i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.c.d)), countOneBits(~(~vec2<u32>(global2.c.a, u_input.a.x))) | (vec2<u32>(global2.c.e.x, arg_0.a) << (_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.e.x, global2.c.a), global2.c.e), ~global1.c.e) % vec2<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.d.x, var_1.d.x, global1.a)));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1739f * var_1.d.x), 316f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -493f)))));
    let var_3 = (abs(0u) << (var_1.a % 32u)) >> (global2.c.a % 32u);
    return global1.d.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: vec2<f32>) -> u32 {
    global2 = Struct_2(1024f, func_4(Struct_1(~(~30421u), _wgslsmith_f_op_vec4_f32(func_3(global1.c, ~global2.c.a, global2.c)), ~(~arg_0.x), vec3<f32>(_wgslsmith_f_op_f32(730f * -1029f), -1135f, _wgslsmith_f_op_vec4_f32(func_3(Struct_1(1u, vec4<f32>(1461f, arg_1, global1.c.b.x, 690f), global1.c.c, global1.c.b.zzz, global1.c.e), u_input.a.x, global2.c)).x), firstLeadingBit(select(vec2<u32>(0u, u_input.a.x), global2.c.e, vec2<bool>(global1.d.x, global1.d.x)))), global1.c.d.zz), Struct_1(1264u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(global1.c.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 1000f, arg_1, -778f))))), reverseBits(firstLeadingBit(~global2.c.c)), _wgslsmith_f_op_vec3_f32(-global1.c.b.wyw), vec2<u32>(~18103u ^ (47927u & global2.c.a), ~(~global1.c.e.x))), !select(!(!vec4<bool>(true, false, false, global2.b)), select(vec4<bool>(true, true, true, global1.b), vec4<bool>(global1.b, true, true, false), true), global2.d.x));
    global1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.c.d.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.b.x, _wgslsmith_f_op_f32(max(global2.a, arg_1))) + global2.a) == global2.a, global1.c, global1.d);
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-409f, arg_2.x)) * arg_2.x), select(!(!(global2.d.x && false)), true, false), Struct_1(1u, vec4<f32>(global2.c.b.x, _wgslsmith_f_op_f32(max(arg_2.x, _wgslsmith_f_op_f32(global2.a * 1240f))), 1012f, 878f), 1i >> (1u % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_2.x, global2.a)), _wgslsmith_f_op_vec3_f32(-global2.c.b.zzw)))), ~(~(~global2.c.e))), !vec4<bool>(-global1.c.c < arg_0.x, false, false, global1.b));
    global2 = Struct_2(702f, select(any(global2.d.zxw) == global2.b, !any(global1.d), all(select(!global2.d.zxz, global1.d.wwx, vec3<bool>(global2.d.x, true, false)))), global1.c, select(vec4<bool>(~4294967295u >= reverseBits(u_input.a.x), global2.b, global2.d.x, false), global2.d, global2.d));
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1091f), _wgslsmith_div_f32(arg_1, -282f))))), true, global1.c, select(select(vec4<bool>(global2.d.x, func_4(global2.c, vec2<f32>(global2.a, -423f)), global2.d.x, global2.b), select(select(vec4<bool>(global2.d.x, global1.d.x, global2.b, true), global2.d, vec4<bool>(global1.b, true, true, true)), global2.d, global2.d), global2.d), select(!global1.d, vec4<bool>(global2.b, true, !global1.d.x, true), true), true));
    return ~_wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_sub_vec3_u32(u_input.a.wwx, _wgslsmith_mult_vec3_u32(u_input.a.xxy, u_input.a.xww))), vec3<u32>(~countOneBits(1u), ~global2.c.e.x, global1.c.e.x));
}

fn func_5(arg_0: vec3<u32>, arg_1: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(397f - -521f);
    var var_1 = select(global2.d, select(select(!(!global1.d), global1.d, vec4<bool>(true, false, true, true)), !(!vec4<bool>(false, false, global2.b, global1.d.x)), global2.d), global2.d);
    var var_2 = -477f;
    var var_3 = ~max(global2.c.c, -global2.c.c);
    var var_4 = arg_0.x;
    return _wgslsmith_clamp_i32(-26042i, _wgslsmith_mult_i32(_wgslsmith_mult_i32(global2.c.c, -global2.c.c << (func_2(vec4<i32>(-1i, -2147483647i, global1.c.c, global2.c.c), 627f, vec2<f32>(1423f, 429f)) % 32u)), _wgslsmith_dot_vec4_i32(~countOneBits(vec4<i32>(global2.c.c, global1.c.c, global1.c.c, global1.c.c)), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.c.c, global2.c.c, global1.c.c, -19060i) | vec4<i32>(9760i, global2.c.c, global1.c.c, -2147483647i), vec4<i32>(global2.c.c, -1i, global1.c.c, global1.c.c)))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(global2.c.c, ~(3425i >> (global1.c.a % 32u)), -(i32(-1i) * -2147483647i)), -2147483647i));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global2 = Struct_2(global2.a, true, global1.c, global1.d);
    var var_0 = func_5((u_input.a.zwz ^ firstTrailingBit(u_input.a.zyz)) >> ((vec3<u32>(global1.c.e.x, func_2(vec4<i32>(global1.c.c, 0i, 1351i, global1.c.c), global2.a, vec2<f32>(global2.a, -206f)), _wgslsmith_mod_u32(5724u, global2.c.a)) ^ (~u_input.a.wxw | firstLeadingBit(u_input.a.zyx))) % vec3<u32>(32u)), global1.a);
    return Struct_1(u_input.a.x << (reverseBits(u_input.a.x | _wgslsmith_dot_vec4_u32(vec4<u32>(17798u, arg_0, 1u, 0u), vec4<u32>(1u, 0u, 3634u, arg_0))) % 32u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c.b), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.c.d.x * global2.a), -1371f, _wgslsmith_f_op_f32(-144f - global2.c.b.x), _wgslsmith_div_f32(global1.c.d.x, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1300f, -1000f, -1000f, 580f)))), -25039i, _wgslsmith_f_op_vec3_f32(-global1.c.d), firstTrailingBit(global1.c.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -40558i;
    global1 = Struct_2(_wgslsmith_div_f32(global2.c.b.x, -3909f), true, func_1(~0u), select(global2.d, global2.d, _wgslsmith_add_u32(firstTrailingBit(38076u), global2.c.a) > _wgslsmith_dot_vec3_u32(u_input.a.xzz, u_input.a.zxz)));
    global0 = array<Struct_3, 9>();
    let var_1 = vec4<u32>(max(0u, select(global2.c.e.x, 40764u, true)), global2.c.a, 1u, u_input.a.x | func_2(vec4<i32>(global2.c.c, -1582i, -1i, global1.c.c) >> (min(vec4<u32>(0u, 0u, 13104u, 4211u), vec4<u32>(39286u, 0u, 81425u, 0u)) % vec4<u32>(32u)), global2.a, _wgslsmith_f_op_vec4_f32(func_3(Struct_1(global2.c.e.x, global1.c.b, global1.c.c, vec3<f32>(115f, 1035f, -1580f), vec2<u32>(u_input.a.x, 10429u)), u_input.a.x, func_1(u_input.a.x))).wz));
    let var_2 = vec4<i32>(-1i, _wgslsmith_mod_i32((-global2.c.c | 13059i) >> (~func_2(vec4<i32>(global1.c.c, -1i, -3318i, 1i), -1670f, global1.c.b.xy) % 32u), global2.c.c), global2.c.c, -59548i);
    let var_3 = _wgslsmith_f_op_f32(trunc(global1.a));
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.e.x, -(~global1.c.c), 337f, -739f);
}

