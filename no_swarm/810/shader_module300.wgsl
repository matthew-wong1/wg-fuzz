struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    var var_0 = -1023f;
    let var_1 = vec3<u32>(1u, ~select(4294967295u, 14197u, true), 78563u << (_wgslsmith_sub_u32(reverseBits(select(11238u, 0u, true)), min(0u, 1u)) % 32u));
    var var_2 = 53310i;
    var_2 = 2147483647i;
    let var_3 = Struct_1(-1071f);
    return -611f;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<i32>) -> f32 {
    let var_0 = Struct_2(Struct_1(-188f), Struct_1(arg_1), !select(vec4<bool>(true, all(vec2<bool>(true, true)), arg_0, arg_0), vec4<bool>(true, false, true, true), true));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(func_3()), 171f, arg_1), vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.b.a)), _wgslsmith_f_op_f32(-605f + _wgslsmith_f_op_f32(arg_1 * arg_1)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))), var_0.b.a), select(!var_0.c, !select(var_0.c, var_0.c, var_0.c), var_0.c))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, arg_1, -1676f, -325f)))))) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -888f))), var_0.a.a, arg_1, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(f32(-1f) * -859f)))));
    let var_2 = -901f;
    var var_3 = select(~(~vec3<i32>(arg_2.x, u_input.a << (0u % 32u), -2147483647i)), firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(abs(-18893i), ~(-51059i)), u_input.b.x, -1i)), vec3<bool>(true, false, !arg_0));
    let var_4 = var_0;
    return _wgslsmith_f_op_f32(f32(-1f) * -462f);
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(401f - -696f), _wgslsmith_f_op_f32(min(1733f, 1000f)), !arg_0))), Struct_1(_wgslsmith_f_op_f32(func_2(arg_0, _wgslsmith_f_op_f32(step(-972f, -1000f)), u_input.b))), vec4<bool>(true, true, false && arg_0, false)), firstTrailingBit(vec3<u32>(min(_wgslsmith_clamp_u32(4294967295u, 1u, 80943u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 88008u))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(61866u, 13888u), vec2<u32>(13297u, 42333u)), reverseBits(vec2<u32>(4294967295u, 1u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(65879u, 34104u), countOneBits(vec2<u32>(59642u, 63836u))))), 1u);
    var var_1 = Struct_2(var_0.a.b, var_0.a.b, !var_0.a.c);
    var_1 = Struct_2(Struct_1(var_0.a.a.a), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - var_1.b.a)), vec4<bool>(!var_0.a.c.x, var_0.a.c.x | (true || any(vec3<bool>(var_0.a.c.x, false, var_1.c.x))), false, false));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.b.a, var_0.a.a.a)) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.b.a, -973f), vec2<f32>(var_1.b.a, 505f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.a.a, -939f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-208f, -155f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.b.a, 1246f) - vec2<f32>(-986f, var_0.a.a.a)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.b.a, -241f), vec2<f32>(-1342f, var_0.a.a.a), vec2<bool>(var_0.a.c.x, arg_0))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0, -405f, u_input.b))), var_1.a.a)), false | var_0.a.c.x));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(true, var_1.b.a, -u_input.b)))))));
    return Struct_3(var_0.a, max(max(firstTrailingBit(var_0.b), var_0.b) | max(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.c, var_0.b.x, 1u), vec3<u32>(4294967295u, var_0.c, var_0.c)), ~vec3<u32>(1u, var_0.b.x, 50303u)), _wgslsmith_div_vec3_u32(var_0.b, select(vec3<u32>(4294967295u, 90296u, var_0.b.x), vec3<u32>(34112u, 33039u, var_0.c), false)) & var_0.b), countOneBits(abs(var_0.c)));
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    let var_0 = vec4<i32>(u_input.b.x, u_input.a, -u_input.b.x, _wgslsmith_sub_i32(~u_input.b.x, u_input.a));
    var var_1 = !(arg_2.a.c.x && !(!(arg_2.a.c.x || arg_0.x)));
    return func_1(arg_2.a.c.x || false).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_4(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-248f + 261f)))), func_1(!any(vec4<bool>(false, false, true, false)))), ~(~_wgslsmith_clamp_vec3_u32(func_1(true).b, vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))), 0u);
    let var_1 = var_0;
    var var_2 = select(select(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.b.x, -45602i), vec4<i32>(14951i, -59502i, -2147483647i, u_input.a)), firstTrailingBit(vec4<i32>(20305i, -2116i, u_input.b.x, u_input.b.x))), vec4<i32>(1i, _wgslsmith_mod_i32(u_input.b.x, 2147483647i), u_input.b.x << (1u % 32u), 1i)), vec4<i32>(max(1i, u_input.a), _wgslsmith_div_i32(u_input.a, -2147483647i) << (var_1.b.x % 32u), 1i, _wgslsmith_dot_vec2_i32(u_input.b | u_input.b, vec2<i32>(u_input.b.x, -7172i))), !(!(var_0.a.c.x | var_1.a.c.x))), firstTrailingBit(select(vec4<i32>(-u_input.b.x, -11971i, -u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, u_input.b.x), vec3<i32>(2147483647i, u_input.b.x, -1i))), (vec4<i32>(-19879i, u_input.b.x, 32025i, 0i) ^ vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.a)) | (vec4<i32>(u_input.a, -2147483647i, u_input.a, 0i) | vec4<i32>(u_input.b.x, u_input.a, -33758i, u_input.a)), vec4<bool>(var_0.a.c.x, var_0.a.c.x, any(vec4<bool>(false, var_0.a.c.x, true, true)), all(var_0.a.c.wz)))), var_0.a.c);
    var var_3 = _wgslsmith_clamp_vec2_u32(~(~(~vec2<u32>(var_0.c, var_0.b.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.b.x, var_1.b.x), _wgslsmith_clamp_vec2_u32(min(var_0.b.xz, var_1.b.xz), reverseBits(vec2<u32>(var_1.c, 1u)), vec2<u32>(13071u, var_1.b.x))) << (~firstTrailingBit(var_0.b.yy) % vec2<u32>(32u)), var_0.b.yx << (_wgslsmith_add_vec2_u32(vec2<u32>(0u, var_0.c), vec2<u32>(var_1.c, ~9553u)) % vec2<u32>(32u)));
    var_3 = abs(vec2<u32>(~(~var_3.x), _wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(var_3.x, 1u, var_1.b.x, var_3.x)), vec4<u32>(~var_1.c, ~var_0.c, ~1u, var_1.c))));
    let var_4 = var_1.a.b;
    let var_5 = vec3<u32>(1597u, _wgslsmith_clamp_u32(~firstLeadingBit(1u), 12357u, func_1(var_0.a.c.x).c), _wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(~25472u, _wgslsmith_mod_u32(var_0.c, var_1.c & var_3.x), ~27377u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, ~firstTrailingBit(vec4<i32>(u_input.a, 19347i, var_2.x ^ var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, var_2.x, 2630i), vec4<i32>(30551i, 0i, -20904i, -1i)))), var_3.x);
}

