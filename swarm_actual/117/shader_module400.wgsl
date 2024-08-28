struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>) -> vec4<f32> {
    let var_0 = ~0u;
    var var_1 = -1125f;
    var_1 = _wgslsmith_f_op_f32(-1035f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -328f))) * -1757f)));
    let var_2 = 1396f;
    var var_3 = any(!(!select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(506f, 1894f, 639f, 919f), vec4<f32>(var_2, 606f, var_2, 923f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(165f, var_2, -962f, var_2)))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, 1574f, -968f, var_2) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -1784f, 1651f, var_2)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2336f, -1147f, var_2, -1065f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 262f, var_2, 958f)) + vec4<f32>(var_2, 1175f, var_2, -445f)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32, arg_3: Struct_2) -> u32 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(vec4<bool>(arg_0.a.x, !all(select(vec4<bool>(arg_0.a.x, false, true, arg_0.a.x), vec4<bool>(false, false, false, true), vec4<bool>(true, arg_3.a.c.x, arg_3.a.c.x, arg_0.a.x))), u_input.d.x <= _wgslsmith_add_u32(58u >> (0u % 32u), 88965u), !any(select(vec4<bool>(true, arg_3.a.a.x, true, true), vec4<bool>(true, true, true, true), false))), _wgslsmith_mod_u32(0u, select(36539u, arg_0.b, false) << (591u % 32u)) | arg_3.a.b, arg_3.a.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.wxy)));
    var var_2 = u_input.d.wzz;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.a.ww)).x);
    var_2 = (~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.d.wyy, u_input.d.xww), u_input.d.ywz >> (u_input.d.xzw % vec3<u32>(32u)), u_input.d.zzx & u_input.d.zyz) >> (_wgslsmith_add_vec3_u32(u_input.d.xxz, _wgslsmith_add_vec3_u32(~u_input.d.wxy, max(vec3<u32>(4294967295u, 80875u, arg_0.b), vec3<u32>(38045u, 37536u, 1u)))) % vec3<u32>(32u))) >> ((abs(u_input.d.yzx) ^ _wgslsmith_mod_vec3_u32(max(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, var_2.x), vec3<u32>(0u, 0u, arg_3.a.b)), ~u_input.d.zzx), vec3<u32>(_wgslsmith_sub_u32(1u, 0u), ~var_2.x, var_2.x))) % vec3<u32>(32u));
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_3.a.b, 19583u), ~43010u), abs(~arg_3.a.b)), ~var_2.xy);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> i32 {
    let var_0 = arg_3.a.x;
    var var_1 = !(!(!(!arg_3.a.x))) & (_wgslsmith_sub_i32(~max(u_input.a.x, 1i), u_input.b) == 20076i);
    let var_2 = func_4(arg_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.a.xw))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d.x) + _wgslsmith_f_op_f32(arg_3.d.x + arg_3.d.x))))), Struct_2(Struct_1(arg_3.a, _wgslsmith_dot_vec3_u32(u_input.d.wyx, u_input.d.xzx) ^ (4294967295u << (arg_1 % 32u)), arg_3.a.xw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_3.d)))), ~(-(vec3<i32>(u_input.a.x, arg_2, u_input.b) >> (u_input.d.zwx % vec3<u32>(32u)))), -vec2<i32>(2147483647i, 1i), -915f));
    var var_3 = ~_wgslsmith_clamp_u32(u_input.c << (~(~1u) % 32u), var_2, _wgslsmith_mult_u32(_wgslsmith_div_u32(57204u, var_2), arg_3.b) | 21216u);
    var_3 = ~arg_0;
    return firstLeadingBit(~2147483647i);
}

fn func_1() -> StorageBuffer {
    let var_0 = vec2<i32>(2147483647i, func_2(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x), u_input.d), vec4<u32>(u_input.d.x, ~0u, u_input.c, u_input.d.x)), 1i, Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), false), true), select(_wgslsmith_add_u32(6502u, 52352u), u_input.d.x << (1u % 32u), true), vec2<bool>(true, true), vec3<f32>(-848f, _wgslsmith_f_op_f32(1000f + 1648f), _wgslsmith_f_op_f32(f32(-1f) * -402f)))));
    let var_1 = Struct_2(Struct_1(select(vec4<bool>(any(vec4<bool>(false, true, false, true)), true, select(false, false, false), select(true, true, true)), vec4<bool>(true, true, true, true), true || all(vec3<bool>(false, true, true))), u_input.c, select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), all(vec4<bool>(true, false, true, true)) & true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(981f, -115f, 1901f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1710f, 1472f, -1552f) + vec3<f32>(-550f, 470f, 219f)))))), u_input.a.xyy, _wgslsmith_div_vec2_i32(firstTrailingBit(-abs(u_input.a.zz)), vec2<i32>(var_0.x, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 959f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1260f - -948f) + -236f), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(var_0.x, u_input.a.x))).x + _wgslsmith_f_op_f32(-217f - -584f)))));
    let var_2 = _wgslsmith_clamp_u32(~_wgslsmith_mult_u32(~var_1.a.b, firstLeadingBit(4294967295u)), abs(var_1.a.b), func_4(Struct_1(select(vec4<bool>(var_1.a.c.x, false, true, var_1.a.c.x), var_1.a.a, false), ~var_1.a.b, !vec2<bool>(var_1.a.a.x, true), vec3<f32>(1087f, -1000f, var_1.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, var_1.d, var_1.d, var_1.d))), 1368f, var_1)) | ~4255u;
    return StorageBuffer(countOneBits(min(select(_wgslsmith_clamp_vec3_u32(u_input.d.zzz, u_input.d.ywz, u_input.d.zwy), vec3<u32>(var_2, u_input.d.x, u_input.c), vec3<bool>(var_1.a.a.x, true, true)), u_input.d.zyw)), u_input.a.zy, _wgslsmith_f_op_f32(1604f - var_1.a.d.x), -1i, vec3<u32>(var_1.a.b, _wgslsmith_dot_vec4_u32(u_input.d, u_input.d), u_input.c ^ _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.a.b, var_2, 8886u), select(vec3<u32>(24599u, 3760u, 7290u), u_input.d.xzy, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

