struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> vec2<f32> {
    let var_0 = Struct_1(!(countOneBits(min(arg_0.b.x, 1014i)) != ~(arg_0.b.x ^ 29650i)), firstLeadingBit(~(arg_0.b | arg_0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_0.c, arg_0.c)), vec2<f32>(_wgslsmith_f_op_f32(arg_0.d.x - -1007f), _wgslsmith_f_op_f32(400f * _wgslsmith_f_op_f32(sign(arg_0.d.x)))), !arg_0.a);
    var var_1 = ~vec4<u32>(arg_1.x, arg_1.x >> (reverseBits(4294967295u) % 32u), abs(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 1u, 88608u), arg_1))), ~37695u);
    let var_2 = !select(select(!select(vec2<bool>(var_0.e, false), vec2<bool>(arg_0.a, var_0.e), var_0.a), vec2<bool>(var_0.e, any(vec2<bool>(arg_0.e, true))), all(select(vec2<bool>(true, var_0.e), vec2<bool>(false, arg_0.a), false))), !select(vec2<bool>(var_0.e, true), !vec2<bool>(var_0.a, var_0.e), arg_0.a), vec2<bool>(true, var_0.e));
    let var_3 = var_1.x;
    var_1 = reverseBits(~vec4<u32>(~arg_1.x, var_1.x, firstTrailingBit(4294967295u), abs(~arg_1.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, arg_0.d.x) + var_0.d), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -1208f))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    let var_0 = -273f;
    let var_1 = ~136667u;
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(arg_2.c));
    var var_3 = _wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(~(~var_1), ~_wgslsmith_sub_u32(select(var_1, var_1, false), 65402u)));
    let var_4 = _wgslsmith_f_op_vec4_f32(trunc(arg_0.c));
    return arg_0.e;
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1246f * _wgslsmith_f_op_f32(round(-1112f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -836f), -148f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(535f, 434f, true)))))));
    var var_1 = select(vec2<bool>(true, all(vec4<bool>(true, true, true, true))), select(!vec2<bool>(-501f >= var_0, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), true), !func_4(Struct_1(811f < var_0, _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(10287i, u_input.a)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, 110f, var_0, -1000f))), _wgslsmith_f_op_vec2_f32(func_3(Struct_1(true, vec2<i32>(u_input.a, arg_0), vec4<f32>(635f, var_0, -1000f, -1059f), vec2<f32>(-499f, var_0), false), vec3<u32>(4294967295u, 1u, 4294967295u))), true), vec3<f32>(_wgslsmith_f_op_f32(-var_0), var_0, _wgslsmith_f_op_f32(-var_0)), Struct_1(true, -vec2<i32>(-7836i, u_input.a), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0, var_0, var_0, var_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(-768f, var_0)), var_0 < var_0)));
    var_1 = select(vec2<bool>(all(select(!vec4<bool>(true, var_1.x, false, false), select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, false), vec4<bool>(var_1.x, false, var_1.x, var_1.x)), !var_1.x)), !((var_1.x & false) && false)), vec2<bool>(!var_1.x, (_wgslsmith_f_op_f32(min(-456f, var_0)) <= _wgslsmith_f_op_vec2_f32(func_3(Struct_1(var_1.x, vec2<i32>(-23466i, -17031i), vec4<f32>(-370f, -283f, var_0, var_0), vec2<f32>(-1373f, var_0), var_1.x), vec3<u32>(22125u, 17301u, 27949u))).x) | !any(vec4<bool>(var_1.x, true, var_1.x, var_1.x))), select(vec2<bool>(true, all(select(vec3<bool>(var_1.x, true, false), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x)))), !vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, true)));
    let var_2 = reverseBits(-(i32(-1i) * -18692i));
    var var_3 = 0u;
    return Struct_1(min(arg_0, 1i) != -2147483647i, vec2<i32>(_wgslsmith_mult_i32(-1i, var_2), firstLeadingBit(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-38096i, u_input.a), vec2<i32>(var_2, var_2))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(238f - var_0), _wgslsmith_f_op_f32(var_0 * 1000f), var_0, _wgslsmith_div_f32(var_0, var_0)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(676f, var_0, 911f, 709f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(var_0, var_0), vec2<f32>(1431f, var_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -341f) - vec2<f32>(1581f, var_0)), func_4(Struct_1(false, vec2<i32>(arg_0, 2147483647i), vec4<f32>(var_0, -154f, 434f, 655f), vec2<f32>(363f, -1830f), var_1.x), vec3<f32>(var_0, var_0, -1039f), Struct_1(false, vec2<i32>(-17214i, -2147483647i), vec4<f32>(var_0, var_0, -1000f, 2337f), vec2<f32>(-733f, var_0), var_1.x))))))), !(any(vec4<bool>(true, true, true, true)) && select(var_1.x, !var_1.x, var_1.x)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) * _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1642f * arg_1.x) + arg_2.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-112f, -610f, 1064f))) * arg_1.xxw), select(vec3<bool>(arg_0.a, !arg_2.a, !arg_0.e), select(select(vec3<bool>(arg_0.a, arg_2.e, arg_2.a), vec3<bool>(arg_0.e, arg_0.a, arg_0.e), vec3<bool>(false, arg_0.e, false)), !vec3<bool>(arg_2.a, arg_0.e, false), true), any(vec4<bool>(true, false, arg_0.e, arg_0.e)) == any(vec4<bool>(arg_2.e, arg_2.a, arg_0.a, arg_2.a))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.c.xxw)), !vec3<bool>(arg_3.x <= (arg_3.x << (13192u % 32u)), true || (arg_0.a & true), arg_0.a)));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_2.d.x, -129f), -915f, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(324f + _wgslsmith_f_op_f32(-var_0.x)))), -727f));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(766f * 828f) - _wgslsmith_f_op_f32(-278f * arg_2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x - arg_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.d.x, 1041f) - _wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_vec3_f32(func_2(u_input.a).c.zxz + func_2(i32(-1i) * -29501i).c.yxx));
    var var_1 = func_2(~35844i);
    var_1 = func_2(arg_0.b.x);
    return _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, 1272f, arg_1.x, var_0.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, -383f, var_0.x, 1000f) - var_1.c)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1146f, 239f, arg_1.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_1.c.x, -849f, 896f))) * _wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.x, 531f, var_1.c.x, arg_1.x), var_1.c))))), vec4<f32>(_wgslsmith_f_op_f32(-371f - arg_2.d.x), -300f, var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(var_0.x + 275f))) * _wgslsmith_f_op_f32(floor(var_0.x))))));
}

fn func_1() -> StorageBuffer {
    let var_0 = 301f;
    let var_1 = Struct_1(!all(vec2<bool>(true, var_0 >= var_0)), ~(~vec2<i32>(-2147483647i, ~(-60787i))), _wgslsmith_f_op_vec4_f32(func_5(func_2(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), -vec3<i32>(u_input.a, u_input.a, u_input.a))), func_2(u_input.a).c, Struct_1(select(u_input.a < u_input.a, true, true), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, false)) & select(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, 97284i), vec2<bool>(false, true)), vec4<f32>(_wgslsmith_f_op_f32(var_0 * 2114f), _wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(1053f, 453f), _wgslsmith_f_op_f32(-1000f * -627f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) - vec2<f32>(var_0, var_0)))), true), ~vec2<u32>(4598u, 1u))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(549f, 327f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1649f, 1081f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1394f, var_0), vec2<f32>(var_0, -841f))))))), select(any(vec3<bool>(true, true, true)), func_2(func_2(u_input.a).b.x | u_input.a).e, _wgslsmith_dot_vec2_u32(select(vec2<u32>(29029u, 27087u), vec2<u32>(0u, 55280u), vec2<bool>(true, false)), _wgslsmith_mult_vec2_u32(vec2<u32>(29604u, 1u), vec2<u32>(32289u, 0u))) < ~(~23175u)));
    let var_2 = select(vec4<bool>(var_1.e, var_1.a, all(vec3<bool>(var_1.e, var_1.a, var_1.a)) || !(2147483647i >= var_1.b.x), false), select(vec4<bool>(true, !var_1.a, var_1.e, true), vec4<bool>(true, var_1.e, any(!vec2<bool>(true, var_1.e)), var_1.e), !(!select(vec4<bool>(var_1.a, var_1.a, false, var_1.a), vec4<bool>(false, var_1.a, var_1.e, var_1.a), true))), vec4<bool>(var_1.e, _wgslsmith_div_f32(var_1.c.x, -186f) != var_0, true, ~firstTrailingBit(4294967295u) > 4294967295u));
    var var_3 = u_input.a;
    let var_4 = Struct_1(!var_1.a, var_1.b, var_1.c, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - _wgslsmith_f_op_vec4_f32(func_5(Struct_1(false, var_1.b, vec4<f32>(var_0, -1126f, -2193f, -2388f), var_1.d, false), var_1.c, Struct_1(false, vec2<i32>(1i, u_input.a), var_1.c, vec2<f32>(911f, var_0), false), vec2<u32>(4722u, 62208u))).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1486f + var_1.c.x) * _wgslsmith_div_f32(var_0, 1286f)))), func_4(var_1, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(var_1.c.yzz)))), _wgslsmith_f_op_vec3_f32(var_1.c.yxx + vec3<f32>(385f, var_0, -158f)), !var_2.yzy)), var_1));
    return StorageBuffer(_wgslsmith_f_op_f32(-var_4.c.x), firstTrailingBit(26385u >> (1u % 32u)), _wgslsmith_f_op_f32(floor(174f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-reverseBits(~vec2<i32>(u_input.a, u_input.a))) << (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~(~vec2<u32>(4294967295u, 8418u))) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-416f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1613f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1858f - 1047f))))));
    let x = u_input.a;
    s_output = func_1();
}

