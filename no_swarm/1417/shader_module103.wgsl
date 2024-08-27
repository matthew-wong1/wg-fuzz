struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = arg_0.a;
    let var_1 = arg_0;
    var var_2 = Struct_1(~arg_0.e.a, var_1.d.x, var_1.c.c);
    let var_3 = _wgslsmith_div_f32(arg_0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.d.x, -119f)))), var_1.e.b));
    var_2 = var_1.e;
    return !select(!(!select(vec2<bool>(false, arg_0.c.c.x), vec2<bool>(var_2.c.x, var_2.c.x), vec2<bool>(true, true))), !(!var_1.c.c), true);
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = arg_3.c;
    var var_1 = ~select(~abs(arg_3.c.a) >> (~_wgslsmith_add_u32(arg_2.a, 4294967295u) % 32u), ~_wgslsmith_dot_vec4_u32(~u_input.a, vec4<u32>(u_input.a.x, u_input.c, arg_2.a, 4294967295u)), ((74337u ^ arg_3.e.a) ^ 26746u) <= 44339u);
    let var_2 = arg_2;
    var_0 = Struct_1(arg_3.e.a, _wgslsmith_f_op_f32(var_2.b + arg_1.x), !select(vec2<bool>(any(vec4<bool>(true, true, arg_2.c.x, false)), var_0.c.x), func_3(arg_3), arg_3.c.c.x));
    var_1 = 3420u;
    return !vec4<bool>(arg_3.c.c.x, arg_3.e.c.x, false, any(vec4<bool>(var_0.b == arg_0, u_input.b <= u_input.b, true, arg_2.c.x)));
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1315f, 559f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1014f), _wgslsmith_f_op_f32(select(-451f, -1000f, true)))))), !all(!func_2(-1292f, vec4<f32>(-1088f, -1091f, 2912f, -1237f), Struct_1(84221u, -943f, vec2<bool>(true, false)), Struct_2(-632f, false, Struct_1(u_input.a.x, -299f, vec2<bool>(true, false)), vec2<f32>(-208f, -448f), Struct_1(44031u, 505f, vec2<bool>(true, false))))), Struct_1(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-274f)))), select(func_2(-275f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(983f, 1420f, 605f, 961f)), Struct_1(1u, 1202f, vec2<bool>(false, false)), Struct_2(-1866f, true, Struct_1(0u, -928f, vec2<bool>(true, true)), vec2<f32>(-604f, 108f), Struct_1(arg_0, -1666f, vec2<bool>(false, true)))).xz, vec2<bool>(true, true), all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(486f, 975f) + vec2<f32>(364f, 133f)), vec2<f32>(378f, -1152f)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(387f, -555f))))), Struct_1(~(_wgslsmith_sub_u32(arg_1.x, 17736u) ^ ~arg_0), -582f, vec2<bool>(true, abs(arg_1.x) >= 4294967295u)));
    let var_1 = false;
    let var_2 = func_2(var_0.d.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.d.x, -580f, -569f, -801f))))), vec4<f32>(-1498f, 1042f, var_0.e.b, var_0.a)), var_0.e, Struct_2(-198f, true, Struct_1(u_input.a.x, var_0.c.b, func_3(Struct_2(var_0.e.b, true, var_0.e, var_0.d, Struct_1(26203u, var_0.a, var_0.c.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.d, vec2<f32>(var_0.a, var_0.a))), Struct_1(4294967295u, -1709f, !select(vec2<bool>(var_0.c.c.x, var_1), var_0.c.c, var_0.c.c)))).yyz;
    var var_3 = Struct_1(_wgslsmith_add_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, 40548u, 1u, 24669u)), 38290u << (~4294967295u % 32u)), _wgslsmith_mod_u32(~u_input.a.x, arg_0)), var_0.e.b, !vec2<bool>(var_1, any(select(vec4<bool>(var_0.c.c.x, var_1, var_2.x, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, var_1, var_1)))));
    var_0 = Struct_2(var_3.b, any(vec2<bool>(!func_3(Struct_2(-162f, var_2.x, var_0.c, var_0.d, Struct_1(u_input.c, -1129f, vec2<bool>(var_2.x, var_3.c.x)))).x, func_2(-159f, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.b, -876f, 680f, var_3.b))), var_0.c, Struct_2(-545f, false, var_0.e, vec2<f32>(var_0.d.x, 106f), Struct_1(var_0.e.a, 764f, var_3.c))).x)), Struct_1(_wgslsmith_mod_u32(var_0.c.a, abs(~arg_1.x)), _wgslsmith_f_op_f32(floor(var_0.a)), func_2(-1000f, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1129f, 1928f, 1539f, var_3.b))), var_0.e, Struct_2(_wgslsmith_f_op_f32(-var_3.b), false, Struct_1(99265u, -361f, vec2<bool>(true, var_1)), _wgslsmith_f_op_vec2_f32(-var_0.d), Struct_1(arg_1.x, var_0.a, vec2<bool>(var_1, var_0.c.c.x)))).xx), vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -237f) + _wgslsmith_f_op_f32(var_3.b * -616f))))), Struct_1(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a, 510f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.e.b * -908f), _wgslsmith_f_op_f32(trunc(var_0.a))))), !var_3.c));
    return var_0.e;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(arg_1.b, func_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-870f, -1190f))), arg_1.c.x, func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(70015u, u_input.c), vec2<u32>(arg_1.a, 0u)), u_input.a.xzz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-659f, 1266f)), Struct_1(_wgslsmith_sub_u32(0u, arg_1.a), _wgslsmith_div_f32(1623f, -398f), vec2<bool>(arg_1.c.x, true)))).x, arg_1, vec2<f32>(1f, arg_1.b), Struct_1(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.b)) + _wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_f32(floor(arg_1.b))), !select(select(arg_1.c, arg_1.c, true), arg_1.c, true)));
    var_0 = Struct_2(arg_0, false, func_1(func_1(abs(u_input.a.x), vec3<u32>(arg_1.a, u_input.a.x, ~0u)).a, u_input.a.xzw), _wgslsmith_f_op_vec2_f32(max(var_0.d, var_0.d)), var_0.e);
    var var_1 = vec2<i32>(~u_input.b ^ ((firstTrailingBit(u_input.b) & -1i) << (4294967295u % 32u)), u_input.b);
    let var_2 = -(min(~vec2<i32>(var_1.x, u_input.b), vec2<i32>(var_1.x, ~var_1.x)) ^ _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-24414i, 2399i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, var_1.x), vec2<i32>(u_input.b, var_1.x), vec2<i32>(-41277i, 21982i))), select(vec2<i32>(var_1.x, 0i), vec2<i32>(-2147483647i, -2147483647i), arg_1.c.x) ^ -vec2<i32>(1i, var_1.x)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a, _wgslsmith_f_op_f32(1956f - arg_1.b))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))) - _wgslsmith_f_op_f32(-arg_0)), var_0.e.c.x, var_0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, var_0.c.b) - var_0.d)), var_0.d)) - var_0.d), Struct_1(_wgslsmith_sub_u32(_wgslsmith_div_u32(arg_1.a, u_input.c) | _wgslsmith_mod_u32(23241u, 50190u), _wgslsmith_add_u32(~u_input.c, 14930u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), var_0.c.c));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-564f))), !select(var_0.c.c.x & !var_3.c.c.x, !var_0.e.c.x, !var_0.c.c.x), Struct_1(~(~max(1u, var_3.e.a)), -213f, func_1(_wgslsmith_sub_u32(~var_3.c.a, u_input.c), firstLeadingBit(vec3<u32>(var_3.e.a, var_0.c.a, var_3.e.a))).c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, -199f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(802f, var_3.d.x))))), true)) + var_0.d), var_3.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, u_input.a.x), u_input.a.xw), select(u_input.a.xw, vec2<u32>(0u, 1u), vec2<bool>(true, true)), u_input.a.yw) & ~(~vec2<u32>(1u, 1u)), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(1u, 0u)), vec2<u32>(73906u, 6161u))), ~(~(~(~vec2<u32>(u_input.c, 0u)))));
    var_0 = u_input.a.xx;
    var_0 = ~abs(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(u_input.c, 0u)), u_input.a.yy));
    let var_1 = -1i;
    var var_2 = func_4(-204f, func_1(~countOneBits(_wgslsmith_div_u32(u_input.c, var_0.x)), ~u_input.a.wwz));
    var_0 = u_input.a.yw;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(1494f * -575f), _wgslsmith_f_op_f32(sign(var_2.e.b)), -421f))) - vec3<f32>(var_2.e.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1954f))), func_1(countOneBits(21895u), ~u_input.a.xxw).b)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-2147483647i | u_input.b));
}

