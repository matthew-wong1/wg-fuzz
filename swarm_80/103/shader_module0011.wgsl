struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<f32>,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_2(Struct_1(arg_1.a & _wgslsmith_mult_i32(~arg_1.a, -30315i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.e, -978f)) + _wgslsmith_div_f32(867f, arg_1.e)) == 867f, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-897f)), _wgslsmith_f_op_f32(-368f - arg_1.c.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1795f))))), arg_1.d & u_input.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_1.c.x, arg_1.c.x, any(vec3<bool>(true, arg_1.b, arg_1.b))))))), arg_1);
    let var_1 = vec3<bool>(arg_1.b, all(select(vec3<bool>(u_input.b.x >= u_input.b.x, !arg_1.b, var_0.a.b), !select(vec3<bool>(false, arg_1.b, false), vec3<bool>(true, false, false), true), select(vec3<bool>(true, var_0.b.b, true), vec3<bool>(true, var_0.b.b, arg_1.b), !vec3<bool>(false, arg_1.b, var_0.b.b)))), !(any(!vec2<bool>(true, var_0.a.b)) | true));
    let var_2 = Struct_2(Struct_1(var_0.b.a, any(vec3<bool>(arg_1.b, var_1.x, !arg_1.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.c * _wgslsmith_f_op_vec2_f32(-var_0.a.c))), ~(~select(50044u, u_input.b.x, false)), _wgslsmith_div_f32(468f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0))))), var_0.b);
    var var_3 = vec4<bool>(select(var_0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1.e))) < arg_1.e, false), any(!vec3<bool>(arg_1.e < -400f, var_0.b.d > arg_1.d, 253f == var_0.b.c.x)), any(!vec4<bool>(true, arg_1.d > 68972u, false, var_2.a.e != 996f)), !(arg_1.b & var_2.b.b));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-930f, 815f, var_0.b.c.x) + vec3<f32>(var_2.b.e, -1990f, 1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.b.e, arg_0, 1000f), vec3<f32>(1522f, -1652f, -682f), arg_1.b))))))));
    return _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, 74337u, u_input.b.x, arg_1.d)), vec4<u32>(var_0.a.d, u_input.b.x, u_input.b.x, 48373u) ^ vec4<u32>(var_2.a.d, 1u, arg_1.d, 44207u)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 1u), select(u_input.b.zx, vec2<u32>(25890u, 15683u), var_1.zx)), reverseBits(~var_2.b.d)), (u_input.b >> (~u_input.b % vec3<u32>(32u))) >> (~u_input.b % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec4<bool>, arg_3: vec4<bool>) -> vec2<bool> {
    var var_0 = Struct_1(-8738i, all(select(select(select(arg_2.yy, arg_2.xz, arg_2.wy), arg_3.xw, false), vec2<bool>(true, arg_2.x != false), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-124f, arg_0.a.c.x))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.a.e, arg_0.a.c.x)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-595f, -538f))), (4294967295u >> (arg_1 % 32u)) < select(6170u, 1u, arg_3.x))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.e, -839f)) * vec2<f32>(-321f, arg_0.b.e))))), 21146u, arg_0.b.c.x);
    let var_1 = true;
    var_0 = arg_0.a;
    let var_2 = vec2<bool>(!(false & all(select(arg_3.zyy, arg_2.xwx, arg_2.x))), false);
    let var_3 = !arg_3;
    return vec2<bool>(true, true);
}

fn func_2() -> bool {
    let var_0 = all(select(func_4(Struct_2(Struct_1(u_input.a, false, vec2<f32>(344f, 1000f), 4294967295u, 844f), Struct_1(u_input.a, false, vec2<f32>(-199f, 635f), 1u, -274f)), func_3(_wgslsmith_f_op_f32(1375f + 337f), Struct_1(u_input.a, true, vec2<f32>(656f, 260f), u_input.b.x, 958f)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, u_input.a >= u_input.a)), vec2<bool>(all(vec4<bool>(false, true, true, false)), 2147483647i >= u_input.a), select(u_input.a >= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<i32>(1164i, u_input.a, u_input.a)), 5980i == u_input.a, true)));
    let var_1 = ~(~(~u_input.b.x));
    let var_2 = Struct_1(-u_input.a >> (0u % 32u), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(985f, -1007f))))), func_3(-496f, Struct_1(2147483647i, var_0, vec2<f32>(_wgslsmith_f_op_f32(sign(687f)), _wgslsmith_f_op_f32(min(-1252f, 359f))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1731f))))), 582f);
    let var_3 = var_0;
    let var_4 = firstTrailingBit(u_input.a);
    return !var_0;
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-146f + -420f))))));
    let var_1 = var_0;
    let var_2 = Struct_1(u_input.a ^ 2147483647i, !(!(!all(vec4<bool>(true, false, false, false)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-632f * 1489f)) + -811f), var_1), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(352f + -379f))))));
    return select(vec2<bool>(func_2(), !(!(var_2.b & false))), vec2<bool>(~(var_2.d ^ var_2.d) <= 14401u, false), func_4(Struct_2(Struct_1(-var_2.a, var_2.b | false, var_2.c, var_2.d, _wgslsmith_f_op_f32(-var_0)), var_2), ~(~_wgslsmith_clamp_u32(u_input.b.x, var_2.d, 12872u)), select(vec4<bool>(true, all(vec2<bool>(var_2.b, var_2.b)), !var_2.b, var_2.b), !vec4<bool>(var_2.b, var_2.b, var_2.b, false), select(vec4<bool>(var_2.b, false, var_2.b, var_2.b), !vec4<bool>(var_2.b, var_2.b, var_2.b, var_2.b), all(vec3<bool>(true, false, var_2.b)))), select(select(select(vec4<bool>(var_2.b, true, var_2.b, false), vec4<bool>(var_2.b, true, false, var_2.b), vec4<bool>(var_2.b, false, true, true)), select(vec4<bool>(var_2.b, var_2.b, var_2.b, var_2.b), vec4<bool>(var_2.b, false, true, var_2.b), vec4<bool>(var_2.b, var_2.b, false, false)), true), vec4<bool>(true, var_2.b, any(vec3<bool>(false, true, false)), var_2.b), select(!vec4<bool>(var_2.b, false, true, var_2.b), !vec4<bool>(true, var_2.b, false, false), !vec4<bool>(false, var_2.b, true, var_2.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(select(u_input.b.yx, _wgslsmith_add_vec2_u32(vec2<u32>(0u, _wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), u_input.b.xy), func_1()));
    var_0 = _wgslsmith_mult_vec2_u32(~countOneBits(vec2<u32>(u_input.b.x, u_input.b.x ^ 4294967295u)), ~(~u_input.b.xy) >> (_wgslsmith_div_vec2_u32(u_input.b.yx, ~u_input.b.yz) % vec2<u32>(32u)));
    let var_1 = true;
    var_0 = u_input.b.zz;
    var_0 = _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_clamp_u32(9058u, _wgslsmith_add_u32(u_input.b.x, 0u), var_0.x & 35799u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b.x, 29315u, 40874u), _wgslsmith_mod_u32(1674u, var_0.x)))), _wgslsmith_sub_vec2_u32(u_input.b.zz, select(u_input.b.yy, abs(u_input.b.yx), select(vec2<bool>(false, false), vec2<bool>(false, var_1), var_1))) >> (~(~vec2<u32>(u_input.b.x, u_input.b.x)) % vec2<u32>(32u)));
    let var_2 = vec4<u32>((~(~0u) | u_input.b.x) & var_0.x, _wgslsmith_mod_u32(4294967295u, 11759u), _wgslsmith_add_u32(~firstTrailingBit(~1u), func_3(1f, Struct_1(u_input.a << (u_input.b.x % 32u), true, _wgslsmith_f_op_vec2_f32(vec2<f32>(1191f, 1798f) * vec2<f32>(234f, 404f)), _wgslsmith_div_u32(4294967295u, var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -246f)))), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(reverseBits(4294967295u), abs(var_0.x)), _wgslsmith_mod_u32(1u, var_0.x << (0u % 32u))), ~(~firstTrailingBit(u_input.b.x)), var_0.x));
    var_0 = abs(var_2.zx) ^ reverseBits(var_2.zz);
    let var_3 = all(!vec4<bool>(var_1, !var_1, var_1, func_4(Struct_2(Struct_1(u_input.a, true, vec2<f32>(612f, 808f), 1u, -391f), Struct_1(-1i, var_1, vec2<f32>(512f, 460f), 31520u, -2893f)), var_0.x, vec4<bool>(var_1, false, var_1, true), vec4<bool>(false, var_1, true, false)).x & var_1));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(1f)), var_2.x, ~(-1i), countOneBits(vec2<i32>(-u_input.a, _wgslsmith_div_i32(-1i, u_input.a)) ^ vec2<i32>(u_input.a | -19107i, -2764i)));
}

