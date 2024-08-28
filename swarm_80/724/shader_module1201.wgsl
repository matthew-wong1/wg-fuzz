struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31>;

var<private> global1: f32 = 1259f;

var<private> global2: u32 = 4294967295u;

var<private> global3: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> u32 {
    global3 = 40204u;
    var var_0 = Struct_2(_wgslsmith_dot_vec2_u32(abs(u_input.a.yz & u_input.a.zy), reverseBits(vec2<u32>(u_input.a.x, 4294967295u)) << (min(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, u_input.a.x)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(ceil(1f)), Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-614f, 299f)), -1873f)))), 63949u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-517f, -1278f, 837f, -640f) * vec4<f32>(-775f, 1129f, -737f, -1131f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(335f, 302f, 932f, -1570f) + vec4<f32>(-1659f, 1083f, -850f, -1404f))))), vec4<i32>(select(1i, i32(-1i) * -1i, true), -2147483647i, abs(abs(-40310i)), -max(-37891i, -1i))), -1i);
    global0 = array<vec2<i32>, 31>();
    var var_1 = var_0.c;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, -1000f) + 1643f);
    return 1u;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2) -> Struct_2 {
    global2 = u_input.a.x;
    var var_0 = select(select(!vec4<bool>(true, all(vec3<bool>(true, true, true)), true, arg_1.d != arg_0.x), !select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false))), true), select(vec4<bool>(true, true, false, all(vec2<bool>(true, true))), vec4<bool>(~arg_0.x > 13280i, true, all(vec3<bool>(true, false, true)), true), true), select(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false)), vec4<bool>(!all(vec3<bool>(true, true, false)), false, all(vec2<bool>(true, false)), _wgslsmith_mod_u32(1u, 4294967295u) < _wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1.a, arg_1.c.b, 1u), vec4<u32>(u_input.a.x, u_input.a.x, arg_1.c.b, 127365u))), true));
    var_0 = vec4<bool>(true, (_wgslsmith_mod_u32(arg_1.a, ~0u) << (min(~34817u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x), u_input.a.xy)) % 32u)) == reverseBits(max(~u_input.a.x, 6551u)), any(!select(vec4<bool>(var_0.x, false, true, true), vec4<bool>(false, true, var_0.x, true), var_0.x)) | true, false);
    let var_1 = arg_1;
    var_0 = vec4<bool>(all(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(var_0.x, true), true), true)), var_0.x, true | var_0.x, all(select(vec3<bool>(var_1.c.b < u_input.a.x, any(var_0.zw), all(var_0.wxw)), !vec3<bool>(var_0.x, true, true), !(!vec3<bool>(var_0.x, false, true)))));
    return Struct_2(1u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.c.a * 707f))), Struct_1(-1344f, 67u, var_1.c.c, vec4<i32>(2147483647i, arg_0.x ^ 1i, ~arg_0.x, arg_0.x) >> ((abs(vec4<u32>(u_input.a.x, 12704u, u_input.a.x, 4294967295u)) & vec4<u32>(u_input.a.x, var_1.c.b, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))), _wgslsmith_sub_i32(2147483647i, -var_1.d ^ -8525i));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = ~u_input.a;
    var var_1 = func_3(vec4<i32>(1i, 1i, 1i, 1i), Struct_2(~max(func_2(), ~22391u), _wgslsmith_f_op_f32(-345f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1435f, 629f, true)) + -354f)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -886f), 45988u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1211f, -1765f, 555f, -325f)), _wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(46043i, 0i, 1i, 29448i)), vec4<i32>(39790i, 2147483647i, 2147483647i, -1188i), ~vec4<i32>(-51331i, -2147483647i, 0i, 7184i))), -1i));
    let var_2 = select(vec3<bool>(true, true, true), vec3<bool>(!(select(2147483647i, var_1.c.d.x, true) == (var_1.d | var_1.d)), true, !(!(var_0.x == 15075u))), !any(vec2<bool>(true, true)));
    let var_3 = Struct_3(Struct_2(_wgslsmith_clamp_u32(u_input.a.x, abs(7268u), _wgslsmith_div_u32(var_1.a, 36565u)) >> (~(var_0.x | 4294967295u) % 32u), 1237f, func_3(vec4<i32>(var_1.d >> (var_1.a % 32u), var_1.d, var_1.d, -var_1.c.d.x), func_3(vec4<i32>(33210i, 16838i, 8955i, -25484i), Struct_2(var_0.x, var_1.b, var_1.c, var_1.c.d.x))).c, 1i), -_wgslsmith_mod_i32(var_1.c.d.x ^ _wgslsmith_clamp_i32(-11136i, 22037i, var_1.c.d.x), var_1.d));
    global2 = var_1.c.b;
    return 6627u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = reverseBits(~func_1(0u << (u_input.a.x % 32u)) << (~(37690u & u_input.a.x) % 32u));
    let var_0 = vec3<i32>(2147483647i, reverseBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, -2147483647i, 1i), firstLeadingBit(-vec3<i32>(1i, 37287i, 34646i)))), min(_wgslsmith_mod_i32(abs(~(-15868i)), 1i), 1i));
    let var_1 = u_input.a.yx;
    global0 = array<vec2<i32>, 31>();
    var var_2 = _wgslsmith_mod_i32(30061i, -12133i);
    var var_3 = ~_wgslsmith_add_vec3_u32(min(_wgslsmith_add_vec3_u32(firstTrailingBit(u_input.a), ~u_input.a), u_input.a >> (u_input.a % vec3<u32>(32u))), vec3<u32>(~1u, var_1.x, 1u));
    var var_4 = -abs(_wgslsmith_mod_i32(select(i32(-1i) * -2147483647i, var_0.x, true), -24975i));
    var_4 = -1i;
    global2 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_0.x, 31390i), vec3<f32>(247f, _wgslsmith_f_op_f32(328f * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1012f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-803f, func_3(vec4<i32>(30909i, 0i, 20779i, var_0.x), func_3(vec4<i32>(0i, 2147483647i, var_0.x, var_0.x), Struct_2(89993u, -728f, Struct_1(815f, 4294967295u, vec4<f32>(888f, 1087f, 2798f, -230f), vec4<i32>(-31945i, 30343i, var_0.x, var_0.x)), -44854i))).b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 2770f), -335f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -555f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(288f, 616f, 653f, 1251f) * vec4<f32>(1289f, 1454f, -1157f, 803f))))));
}

