struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> vec2<u32> {
    var var_0 = Struct_5(global0.c, -1119f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -340f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(102f, -1268f))))));
    var_0 = Struct_5(global0.c, var_0.c, var_0.b);
    let var_1 = Struct_5(Struct_1(global0.c.b.yz, min(firstLeadingBit(var_0.a.b), vec4<u32>(~var_0.a.a.x, 1u, _wgslsmith_mult_u32(var_0.a.a.x, 4294967295u), _wgslsmith_sub_u32(10017u, 0u)))), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, _wgslsmith_div_f32(var_0.b, var_0.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))) + _wgslsmith_f_op_f32(sign(-1042f))));
    global0 = Struct_2(var_0.a.b >> (var_0.a.b % vec4<u32>(32u)), ~(~var_1.a.b) | (global0.b << (_wgslsmith_sub_vec4_u32(global0.b, var_0.a.b) % vec4<u32>(32u))), Struct_1(~_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(var_0.a.b.ww, var_0.a.b.zy), select(var_0.a.b.xw, global0.a.wz, global0.e.zw)), ~firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(19897u, var_0.a.b.x, 6380u, 1u), var_1.a.b))), _wgslsmith_mod_u32(4294967295u, 8101u), global0.e);
    global0 = Struct_2(~(vec4<u32>(var_0.a.b.x, 59200u, var_1.a.b.x, _wgslsmith_clamp_u32(64852u, 1u, u_input.a)) & max(~vec4<u32>(1u, global0.d, var_0.a.b.x, 4294967295u), vec4<u32>(var_0.a.a.x, var_1.a.b.x, 50539u, 1u))), var_0.a.b, global0.c, 0u, global0.e);
    return ~global0.a.zz | firstTrailingBit(_wgslsmith_mult_vec2_u32(~reverseBits(vec2<u32>(var_1.a.b.x, 1u)), min(global0.a.ww << (var_0.a.b.wz % vec2<u32>(32u)), var_0.a.a)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4) -> f32 {
    var var_0 = vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~5135u), vec2<u32>(0u, u_input.a)), 4294967295u, 1u);
    let var_1 = Struct_1(abs(firstTrailingBit(~func_3(1i))), vec4<u32>(~1u, u_input.a, countOneBits(abs(global0.a.x) | abs(1u)), u_input.a));
    var_0 = var_1.b.wwy & firstLeadingBit(vec3<u32>(~(~u_input.a), 1u, ~_wgslsmith_mult_u32(u_input.a, 35798u)));
    var_0 = max(_wgslsmith_sub_vec3_u32(~(~(~vec3<u32>(0u, u_input.a, 13066u))), firstLeadingBit(var_1.b.zzw) ^ vec3<u32>(1u, ~var_1.a.x, 2186u)), vec3<u32>(~global0.c.b.x, 4294967295u, reverseBits(max(global0.c.b.x, 4294967295u) << (_wgslsmith_mod_u32(global0.c.b.x, 1180u) % 32u))));
    var var_2 = vec2<bool>(_wgslsmith_clamp_u32(var_0.x, ~abs(var_1.b.x), var_1.a.x) > 1u, true);
    return _wgslsmith_f_op_f32(-1456f + _wgslsmith_f_op_f32(-341f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1479f, _wgslsmith_f_op_f32(285f + 1169f))))));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>) -> i32 {
    var var_0 = arg_1.x;
    var_0 = !(!any(arg_1));
    global0 = arg_0;
    var var_1 = u_input.b;
    let var_2 = Struct_5(global0.c, _wgslsmith_f_op_f32(func_2(u_input.b.yyw, Struct_4(1i < u_input.b.x, arg_0.e))), _wgslsmith_div_f32(492f, _wgslsmith_f_op_f32(f32(-1f) * -176f)));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a.wwz;
    let var_1 = -(vec3<i32>(func_1(Struct_2(global0.c.b, vec4<u32>(41814u, 22672u, 14835u, var_0.x), global0.c, 0u, vec4<bool>(true, global0.e.x, global0.e.x, true)), !vec3<bool>(false, global0.e.x, global0.e.x)), -2147483647i, 1i) >> (firstTrailingBit(select(global0.a.xwx, global0.b.wxx, any(global0.e.yxz))) % vec3<u32>(32u)));
    global0 = Struct_2(global0.a, vec4<u32>((countOneBits(32815u) ^ firstTrailingBit(u_input.a)) & min(0u, 29768u), abs(firstLeadingBit(0u)), global0.a.x >> ((var_0.x & _wgslsmith_dot_vec4_u32(global0.b, global0.a)) % 32u), 4294967295u), global0.c, global0.c.a.x, vec4<bool>(select(true, global0.e.x, true) & false, true, global0.e.x, all(global0.e.xyw)));
    global0 = Struct_2(~(firstLeadingBit(vec4<u32>(4294967295u, global0.d, global0.b.x, 8274u)) | (vec4<u32>(4294967295u, global0.c.a.x, u_input.a, u_input.a) & _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, u_input.a, 22062u, 4294967295u), global0.c.b))), firstTrailingBit(global0.c.b), global0.c, 18740u, vec4<bool>(true, (i32(-1i) * -u_input.b.x) >= u_input.b.x, all(select(!global0.e.zy, global0.e.zy, vec2<bool>(true, true))), true));
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-603f, -1486f), -912f, _wgslsmith_f_op_f32(-501f * 880f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1690f, -1000f, 1166f)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-147f, 549f, -501f))))), global0.e.zyx))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1170f - -620f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(var_2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - 571f)))));
    let var_4 = Struct_5(Struct_1(global0.c.a, vec4<u32>(u_input.a, select(~58668u, max(0u, 28u), all(global0.e)), var_0.x, 4294967295u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(var_3 + 1000f)), var_3)), var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), -608f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1429f - var_3), -2080f)) * _wgslsmith_f_op_f32(-1364f * -611f)));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(global0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), 1i);
}

