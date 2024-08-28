struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1731f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<u32>) -> Struct_2 {
    global0 = -378f;
    let var_0 = Struct_2(Struct_1(arg_1.x, arg_1.zzz), Struct_1(~_wgslsmith_clamp_u32(~47721u, 27746u, 37694u), arg_1.zyz), arg_1.ywy, u_input.b.x);
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-729f - -1615f) * 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -769f) * -108f)));
    global0 = 176f;
    let var_1 = var_0.a;
    return var_0;
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-436f))), _wgslsmith_f_op_f32(select(1128f, _wgslsmith_div_f32(135f, _wgslsmith_f_op_f32(floor(317f))), any(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))))));
    let var_1 = select(!select(vec4<bool>(true, true, true, u_input.d > u_input.a), vec4<bool>(true, true, true, true), true), select(vec4<bool>(select(any(vec3<bool>(false, true, true)), true, false), true, (-18050i == arg_0.d) | select(false, true, false), _wgslsmith_f_op_f32(-var_0.x) == var_0.x), vec4<bool>(true, true, true, true), vec4<bool>(true, true, arg_0.c.x > u_input.d, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true)))), vec4<bool>(true, false, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), select(false, false, true))), any(vec3<bool>(true, true, true)) & true));
    global0 = -940f;
    var var_2 = ~select(vec2<i32>(~(~33316i), ~arg_0.d), vec2<i32>(max(arg_0.d, -2147483647i), 0i), vec2<bool>(any(var_1.yzz), true));
    let var_3 = arg_0.a;
    return !select(select(!vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true), select(var_1.wz, vec2<bool>(var_1.x, true), vec2<bool>(false, true))), var_1.yx, var_1.x == var_1.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec2<u32>) -> f32 {
    var var_0 = !(!((arg_0.x | arg_0.x) || true));
    var_0 = !all(!(!(!vec4<bool>(false, false, arg_0.x, true))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(315f, 385f, true)) * _wgslsmith_f_op_f32(min(864f, -1091f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -967f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -756f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-581f, 581f)) - -765f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1056f, 470f)))));
    var var_2 = !vec4<bool>(4294967295u != (4294967295u ^ ~arg_2.x), any(vec3<bool>(true, arg_1.x, any(vec3<bool>(arg_1.x, false, false)))), (~60577u ^ ~arg_2.x) < _wgslsmith_add_u32(65949u | arg_2.x, reverseBits(u_input.a)), true);
    var var_3 = !vec3<bool>(true, ~max(u_input.a, 0u) > _wgslsmith_mod_u32(~33259u, _wgslsmith_sub_u32(u_input.d, 12310u)), 20078i > -_wgslsmith_mod_i32(u_input.b.x, u_input.c.x));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-688f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -859f)))));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_3(func_2(vec3<bool>(true, true, true), vec4<u32>(u_input.d, 49465u, u_input.a, u_input.a) | vec4<u32>(4294967295u, u_input.d, u_input.d, 61908u))), !select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, true, true))), ~_wgslsmith_add_vec2_u32(~vec2<u32>(840u, u_input.a), abs(vec2<u32>(u_input.d, 6293u))))));
    var var_1 = Struct_2(Struct_1(1u, ~_wgslsmith_div_vec3_u32(vec3<u32>(15120u, 10971u, 33383u) & vec3<u32>(u_input.a, 1u, 1024u), max(vec3<u32>(89366u, 0u, u_input.a), vec3<u32>(u_input.d, 0u, 0u)))), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(24251u, 1u), abs(min(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(0u, u_input.a)))), ~select(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.d), vec3<u32>(u_input.d, u_input.d, u_input.a)), select(vec3<u32>(41902u, 3027u, u_input.a), vec3<u32>(4294967295u, 4294967295u, u_input.d), false), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), select(~vec3<u32>(u_input.d, u_input.a, 4294967295u) << (~vec3<u32>(90984u, u_input.d, 54328u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 0u) ^ vec3<u32>(u_input.d, u_input.d, u_input.a), min(vec3<u32>(u_input.d, u_input.a, 4294967295u), vec3<u32>(43257u, u_input.d, u_input.d))), any(vec4<bool>(true, true, true, true))) ^ ~vec3<u32>(4294967295u, u_input.d, firstTrailingBit(25600u)), 0i);
    var_1 = Struct_2(func_2(vec3<bool>(true, (var_1.b.b.x != u_input.d) & true, true), countOneBits(firstLeadingBit(vec4<u32>(u_input.a, 37435u, var_1.b.b.x, var_1.c.x)))).b, func_2(select(vec3<bool>(func_3(Struct_2(Struct_1(106408u, var_1.b.b), Struct_1(var_1.c.x, var_1.c), var_1.a.b, 2147483647i)).x, all(vec2<bool>(false, true)), true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, false), all(vec2<bool>(true, false))), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_1.b.b.x, 4294967295u, 0u) | vec4<u32>(1u, 97753u, u_input.a, 9590u), vec4<u32>(1u, 0u, var_1.b.b.x, 32343u) & vec4<u32>(4294967295u, 51768u, var_1.a.a, u_input.d))).b, vec3<u32>(_wgslsmith_mod_u32(44756u, u_input.d), u_input.a, select(0u >> ((0u ^ u_input.a) % 32u), 99235u, var_0 <= _wgslsmith_f_op_f32(var_0 * var_0))), 12970i);
    var_1 = Struct_2(Struct_1(_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(65034u, u_input.a, u_input.d), vec3<u32>(36130u, 1u, 0u)), _wgslsmith_mult_u32(54373u, 0u)), var_1.c), var_1.b, vec3<u32>(_wgslsmith_sub_u32(var_1.b.a, _wgslsmith_div_u32(~var_1.c.x, u_input.d)), abs(func_2(vec3<bool>(true, true, false), vec4<u32>(var_1.c.x, var_1.c.x, 4294967295u, 4294967295u) & vec4<u32>(1u, u_input.a, u_input.d, u_input.a)).c.x), 0u), ~reverseBits(-21916i));
    var var_2 = max(min(abs(u_input.b.zy), u_input.b.zy), (vec2<i32>(arg_0, u_input.c.x >> (u_input.a % 32u)) >> (_wgslsmith_div_vec2_u32(abs(vec2<u32>(var_1.c.x, u_input.a)), vec2<u32>(u_input.a, 36071u)) % vec2<u32>(32u))) & vec2<i32>(~(-1i) ^ -var_1.d, ~(i32(-1i) * -26255i)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-833f * -820f) - 904f)))), 1f);
    var var_1 = vec3<bool>(true, firstTrailingBit(-(u_input.c.x & u_input.c.x)) != -25604i, func_1(1i));
    var var_2 = vec4<f32>(1141f, 724f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-960f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-815f + 2208f) + 302f)));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(316f, var_2.x, 671f, var_2.x) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, -1133f, var_2.x, var_2.x))))))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-164f, var_2.x) - var_2.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + var_2.x) * _wgslsmith_f_op_f32(exp2(var_2.x))))), 617f);
    let var_3 = func_2(select(vec3<bool>(false, var_1.x, 0u < ~u_input.a), select(select(vec3<bool>(var_1.x, var_1.x, var_1.x), select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, false, var_1.x), false), !vec3<bool>(var_1.x, false, true)), !vec3<bool>(var_1.x, var_1.x, var_1.x), var_1.x), vec3<bool>(select(false, func_1(-2147483647i), true), all(!vec3<bool>(true, var_1.x, var_1.x)), false)), _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(select(vec4<u32>(60638u, 6728u, u_input.a, 33666u), vec4<u32>(1u, u_input.d, u_input.d, 12684u), vec4<bool>(var_1.x, var_1.x, var_1.x, false)), vec4<u32>(55201u, 24242u, u_input.a, 0u)), ~(firstLeadingBit(vec4<u32>(u_input.d, u_input.d, u_input.d, 16557u)) ^ ~vec4<u32>(u_input.a, u_input.a, 1u, u_input.d))));
    let var_4 = var_3;
    var var_5 = -9184i;
    let x = u_input.a;
    s_output = StorageBuffer(26989i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -356f) * var_2.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -321f) + var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1345f, var_2.x))), _wgslsmith_f_op_f32(trunc(var_2.x))));
}

