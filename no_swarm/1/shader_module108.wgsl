struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<bool>,
    d: Struct_3,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-791f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1308f * 294f)))))));
    var var_1 = 33303u;
    var_1 = ~(~(~abs(~4294967295u)));
    let var_2 = Struct_2(vec3<bool>(!all(vec4<bool>(true, false, false, false)), true, any(vec2<bool>(true, true)) || false), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(429f, -931f, 571f, -1569f), vec4<f32>(-786f, -834f, -113f, -1804f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(725f, 147f)), _wgslsmith_f_op_f32(sign(-592f)), 168f, _wgslsmith_f_op_f32(min(-565f, 755f)))))), firstTrailingBit(~_wgslsmith_mod_vec3_u32(~vec3<u32>(53542u, 4294967295u, 0u), select(vec3<u32>(98625u, 1u, 0u), vec3<u32>(78190u, 44956u, 103431u), false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-814f, -161f) - vec2<f32>(-494f, 1332f))))), ~(1u << (_wgslsmith_div_u32(_wgslsmith_mod_u32(35635u, 4294967295u), abs(1405u)) % 32u)));
    var var_3 = Struct_3(select(vec4<u32>(~(26763u >> (1u % 32u)), _wgslsmith_mult_u32(var_2.c.x << (4294967295u % 32u), 1u ^ var_2.e), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.e, 7427u, 1u, var_2.c.x), vec4<u32>(0u, 20627u, 0u, var_2.c.x))), firstTrailingBit(reverseBits(var_2.c.x))), ~(~firstTrailingBit(vec4<u32>(var_2.c.x, 17597u, 4294967295u, var_2.e))), any(vec4<bool>(var_2.a.x, var_2.a.x, true, var_2.a.x)) & var_2.a.x), Struct_1(~_wgslsmith_add_u32(~var_2.c.x, _wgslsmith_sub_u32(var_2.e, 4294967295u)), vec2<bool>(!(!var_2.a.x), any(vec3<bool>(var_2.a.x, false, var_2.a.x)))));
    return var_2.a.x;
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    var var_0 = any(vec4<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(false, true), false)), any(vec3<bool>(true, true, func_3())), true, true));
    var_0 = select(!select(true, true, true), func_3(), !select(true, true, true));
    var_0 = !any(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))) || any(vec3<bool>(true, true, true));
    let var_1 = ~(u_input.a << ((~(vec3<u32>(11753u, arg_0.x, arg_0.x) | vec3<u32>(arg_0.x, 4294967295u, 16977u)) | vec3<u32>(max(arg_0.x, 4294967295u), _wgslsmith_clamp_u32(43737u, arg_0.x, 4294967295u), _wgslsmith_dot_vec2_u32(arg_0.zx, arg_0.xx))) % vec3<u32>(32u)));
    var var_2 = func_3();
    return Struct_3(vec4<u32>(max(1u, _wgslsmith_div_u32(48535u, arg_0.x << (77477u % 32u))), _wgslsmith_dot_vec4_u32(select(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4294967295u, arg_0.x, 0u), vec4<u32>(30231u, arg_0.x, arg_0.x, 0u)), ~vec4<u32>(arg_0.x, 4294967295u, arg_0.x, arg_0.x), true), select(reverseBits(vec4<u32>(arg_0.x, 1u, arg_0.x, 65979u)), vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 1u), true)), max(~arg_0.x, 6762u), firstLeadingBit(~abs(1u))), Struct_1(arg_0.x, select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec3<f32>) -> f32 {
    var var_0 = 4294967295u;
    var var_1 = func_2(arg_0.d.a.xyw);
    let var_2 = 19624u;
    let var_3 = Struct_1(firstTrailingBit(_wgslsmith_clamp_u32(39749u, var_2, 1u) ^ ~11429u) << (1u % 32u), select(vec2<bool>(true, all(vec4<bool>(true, var_1.b.b.x, var_1.b.b.x, false))), var_1.b.b, !any(vec4<bool>(true, true, false, true))));
    var_1 = func_2(var_1.a.www);
    return -488f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1608f)) - _wgslsmith_f_op_f32(trunc(-1479f))));
    var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -969f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(vec3<u32>(7363u, 40042u, 48468u), vec3<bool>(false, false, false), vec2<bool>(true, true), Struct_3(vec4<u32>(75050u, 0u, 1u, 4221u), Struct_1(4294967295u, vec2<bool>(false, false))), vec2<bool>(false, false)), countOneBits(vec3<u32>(16291u, 9849u, 84539u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-143f, 373f, 498f) - vec3<f32>(1112f, -1153f, -266f))))))));
    var var_1 = select(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), true), !(!vec3<bool>(all(vec3<bool>(false, true, false)), false, true)), vec3<bool>(true, false, false));
    let var_2 = any(var_1.xy);
    var var_3 = u_input.a.x;
    var_0 = -180f;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(-2147483647i, countOneBits(~(-2147483647i)), firstTrailingBit(-u_input.b.x), _wgslsmith_div_i32(-44428i, abs(u_input.a.x))), min(vec4<i32>(i32(-1i) * -1i, u_input.b.x, 1i, ~u_input.b.x), vec4<i32>(_wgslsmith_add_i32(2147483647i, u_input.b.x), -38851i, ~(-6407i), ~u_input.a.x)), select(vec4<bool>(var_2, false, true & var_1.x, true), vec4<bool>(var_2, u_input.a.x <= 2147483647i, select(true, false, true), var_2), !(!vec4<bool>(false, true, false, var_2)))), _wgslsmith_div_vec3_u32(~(~(~vec3<u32>(0u, 60597u, 22743u))), ~(~vec3<u32>(30497u, 1u, 16707u))), _wgslsmith_mult_vec4_i32(vec4<i32>((i32(-1i) * -44020i) ^ countOneBits(u_input.b.x), u_input.b.x, -u_input.a.x, u_input.a.x), ~select(-vec4<i32>(1i, u_input.a.x, 1i, -4164i), -vec4<i32>(1i, -15213i, -20062i, -8324i), true)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-302f, 737f), vec2<f32>(-190f, -493f), vec2<bool>(var_2, true)))))))), 45101u);
}

