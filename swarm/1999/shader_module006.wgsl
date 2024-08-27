struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_1(~arg_0.a, _wgslsmith_f_op_f32(-arg_0.b), true, _wgslsmith_clamp_i32(~countOneBits(u_input.d.x), _wgslsmith_add_i32(countOneBits(arg_0.d) ^ reverseBits(u_input.d.x), u_input.a), u_input.a));
    let var_1 = vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(46241u, var_0.a.x, var_0.a.x)), vec3<u32>(0u, ~u_input.e, ~19848u))), u_input.e & 7844u, _wgslsmith_mult_u32(0u | reverseBits(~arg_0.a.x), ~(firstLeadingBit(6693u) >> (reverseBits(var_0.a.x) % 32u))), _wgslsmith_mod_u32(arg_0.a.x, 45704u) | 4294967295u);
    let var_2 = arg_0;
    let var_3 = var_2.a.yzw;
    var var_4 = Struct_1(var_2.a, _wgslsmith_f_op_f32(abs(var_2.b)), false, select(~_wgslsmith_dot_vec2_i32(vec2<i32>(-3765i, arg_0.d), vec2<i32>(-38272i, -11213i)), -2147483647i, true));
    return ~_wgslsmith_mod_u32(_wgslsmith_mult_u32(firstLeadingBit(var_0.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(86402u, var_2.a.x, 14795u), vec3<u32>(68987u, var_0.a.x, u_input.e))), ~(~(~47770u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = 39252i;
    var var_1 = _wgslsmith_sub_u32(~4294967295u, _wgslsmith_add_u32(~(28761u ^ arg_1.x), func_3(arg_0)) | arg_2);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1437f, 679f, _wgslsmith_f_op_f32(arg_0.b * -728f)))) - vec3<f32>(-562f, _wgslsmith_f_op_f32(sign(arg_0.b)), arg_0.b));
    var var_3 = Struct_1(arg_1, _wgslsmith_f_op_f32(-636f + 1480f), !arg_0.c, ~_wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.d.yy ^ arg_3.zy), u_input.d.yy));
    var_0 = -(countOneBits(u_input.d.x) & ~(-(-2147483647i | arg_3.x)));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = ~_wgslsmith_sub_u32(arg_0.a.x, arg_0.a.x);
    let var_1 = arg_0;
    var var_2 = arg_3;
    var var_3 = func_2(func_2(func_2(arg_3, ~abs(arg_1), _wgslsmith_div_u32(_wgslsmith_div_u32(89610u, 4294967295u), ~arg_3.a.x), ~(~u_input.d.zzw)), min(~select(var_2.a, vec4<u32>(var_2.a.x, 0u, u_input.b, arg_3.a.x), false), _wgslsmith_mod_vec4_u32(select(var_1.a, vec4<u32>(4294967295u, arg_2.a.x, var_2.a.x, arg_0.a.x), var_2.c), vec4<u32>(7151u, arg_2.a.x, 4294967295u, 0u))), func_2(func_2(Struct_1(arg_3.a, -657f, arg_0.c, arg_0.d), var_2.a, 1u, vec3<i32>(u_input.a, var_1.d, u_input.d.x)), ~vec4<u32>(arg_3.a.x, var_2.a.x, 19693u, arg_3.a.x), ~arg_3.a.x, vec3<i32>(-11615i, var_2.d, var_1.d) >> (vec3<u32>(var_1.a.x, arg_0.a.x, 3423u) % vec3<u32>(32u))).a.x ^ 4294967295u, ~u_input.d.wxz), vec4<u32>(min(u_input.e, 4294967295u), ~arg_3.a.x, _wgslsmith_mult_u32(~1u, ~(1u & var_0)), var_1.a.x), ~var_2.a.x, firstTrailingBit(vec3<i32>(i32(-1i) * -75371i, arg_0.d << (~1u % 32u), _wgslsmith_dot_vec3_i32(-u_input.d.zwy, -u_input.d.yyy))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b, -1337f, -783f, 143f) * vec4<f32>(var_1.b, var_2.b, var_2.b, var_2.b))))));
    return var_1.b;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = func_2(arg_1, arg_1.a, 33938u, abs(u_input.d.zxz));
    var var_1 = var_0.a.x;
    let var_2 = -1042f;
    var_1 = arg_2 | var_0.a.x;
    let var_3 = ~vec4<u32>(~func_3(func_2(Struct_1(vec4<u32>(var_0.a.x, u_input.c.x, 1u, 0u), -882f, false, u_input.d.x), arg_1.a, 0u, u_input.d.zzw)), _wgslsmith_mult_u32(~arg_1.a.x, _wgslsmith_add_u32(arg_2, var_0.a.x)) | 1u, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_1.a.x, 4294967295u), arg_2), func_3(Struct_1(vec4<u32>(arg_1.a.x, arg_1.a.x, 1u, 5135u), -508f, true, 1i)) ^ ~(var_0.a.x | 66292u));
    return Struct_1(vec4<u32>(~(~abs(u_input.b)), _wgslsmith_sub_u32(var_3.x, _wgslsmith_mod_u32(arg_2, 69066u)) | arg_1.a.x, arg_2, ~u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-422f * 1633f))))) * var_0.b), all(!vec4<bool>(false, arg_1.c, var_0.c, true)) | !(any(vec4<bool>(true, arg_1.c, var_0.c, false)) | (arg_1.c & false)), 0i);
}

fn func_6(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: u32) -> u32 {
    let var_0 = -vec2<i32>(countOneBits(firstLeadingBit(abs(u_input.a))), arg_0.x);
    var var_1 = u_input.d.xzw;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, arg_2.b, arg_2.b))))));
    var var_3 = select(select(select(!(!vec2<bool>(arg_2.c, false)), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(arg_2.c, arg_2.c, true)), true)), !select(vec2<bool>(true, true), vec2<bool>(arg_2.c, arg_2.c), !vec2<bool>(arg_2.c, false)), vec2<bool>(any(vec3<bool>(arg_2.c, arg_2.c, false)), false)), select(vec2<bool>(true, !(arg_2.c == true)), select(select(!vec2<bool>(arg_2.c, arg_2.c), vec2<bool>(arg_2.c, true), arg_2.c != arg_2.c), select(!vec2<bool>(arg_2.c, arg_2.c), !vec2<bool>(false, arg_2.c), !arg_2.c), !select(vec2<bool>(true, arg_2.c), vec2<bool>(arg_2.c, true), arg_2.c)), ~_wgslsmith_mod_u32(0u, arg_2.a.x) != ~countOneBits(arg_2.a.x)), true);
    var var_4 = -1i;
    return countOneBits(~38810u);
}

fn func_1() -> f32 {
    var var_0 = ~5482u != func_6(reverseBits(u_input.d.zxw), u_input.d.yxx, func_5(_wgslsmith_f_op_f32(func_4(func_2(Struct_1(vec4<u32>(4294967295u, u_input.b, u_input.c.x, 71504u), -1841f, false, u_input.a), vec4<u32>(u_input.c.x, 0u, 33783u, 0u), u_input.e, u_input.d.zwx), vec4<u32>(u_input.c.x, 9901u, u_input.e, 9394u), func_2(Struct_1(vec4<u32>(4294967295u, 0u, 36397u, 3913u), 102f, true, u_input.a), vec4<u32>(u_input.c.x, 48019u, 8856u, u_input.c.x), 61385u, vec3<i32>(u_input.d.x, u_input.d.x, 0i)), Struct_1(vec4<u32>(u_input.b, 80597u, u_input.c.x, u_input.b), 318f, true, u_input.a))), Struct_1(~vec4<u32>(u_input.e, 38175u, u_input.c.x, 1u), _wgslsmith_f_op_f32(-1601f + -948f), true, 106101i), min(1u, firstTrailingBit(1179u))), u_input.e);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1677f, 297f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<u32>(u_input.e, 42709u, 0u, u_input.b), -396f, true, u_input.a), vec4<u32>(9736u, 19751u, u_input.c.x, u_input.c.x), 4294967295u, u_input.d.yzy).b - _wgslsmith_f_op_f32(max(355f, -1473f))) * _wgslsmith_f_op_f32(1000f - -206f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2465f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(433f))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1000f)))))) * -448f);
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, 75618i), ~u_input.d.x), u_input.d.x, 0i));
}

