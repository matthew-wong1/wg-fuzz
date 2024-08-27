struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<f32> {
    let var_0 = any(!select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(all(vec3<bool>(false, true, true)), false)));
    let var_1 = Struct_1(select(select(select(!vec4<bool>(var_0, true, var_0, false), !vec4<bool>(var_0, true, var_0, var_0), vec4<bool>(var_0, var_0, true, false)), !select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(var_0, var_0, var_0, var_0), false), false), select(vec4<bool>(var_0, true, false, any(vec3<bool>(false, var_0, true))), vec4<bool>(select(var_0, true, true), var_0, false, u_input.a != 81589i), true), var_0), vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_div_f32(-2308f, _wgslsmith_f_op_f32(f32(-1f) * -571f)))), _wgslsmith_f_op_f32(min(907f, -381f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(633f + 1000f)) - _wgslsmith_f_op_f32(-1161f * _wgslsmith_f_op_f32(sign(-522f)))), -970f));
    var var_2 = select(true, true, false);
    var_2 = !(!(!var_1.a.x));
    let var_3 = var_1;
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(403f * var_3.b.x) - 280f), -2343f)), var_1.b.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.b.xwx, _wgslsmith_f_op_vec3_f32(vec3<f32>(-562f, var_3.b.x, var_3.b.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.x, var_3.b.x, 1000f) + vec3<f32>(var_3.b.x, var_3.b.x, -260f))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_2.d.b.xz);
    var var_1 = Struct_1(select(!arg_2.d.a, arg_0.d.a, arg_2.d.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(trunc(873f)), -578f, _wgslsmith_f_op_f32(var_0.x + arg_1.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(arg_0.d.b * _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.d.b.x, arg_1.x, 1184f, arg_0.a), vec4<f32>(arg_0.a, 575f, arg_1.x, arg_1.x))))), vec4<bool>(true || (true | arg_2.b), _wgslsmith_f_op_f32(arg_1.x + arg_0.d.b.x) >= arg_0.d.b.x, !(!arg_0.d.a.x), u_input.b.x <= select(73019u, u_input.b.x, true)))));
    var var_2 = -30544i;
    var var_3 = Struct_1(select(!select(select(vec4<bool>(true, true, true, arg_0.b), vec4<bool>(true, arg_2.d.a.x, true, true), vec4<bool>(true, false, false, true)), arg_2.d.a, !vec4<bool>(var_1.a.x, false, true, arg_2.b)), arg_2.d.a, arg_2.d.a.x), var_1.b);
    let var_4 = -u_input.c.x;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_1.b.xw - arg_0.d.b.xw), _wgslsmith_f_op_vec2_f32(-var_1.b.zz)))), var_1.b.zx)) + _wgslsmith_f_op_vec2_f32(exp2(var_1.b.xw)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: vec2<f32>) -> vec4<bool> {
    let var_0 = u_input.b.x;
    var var_1 = ~vec3<u32>(20274u, _wgslsmith_sub_u32(var_0, ~_wgslsmith_sub_u32(4294967295u, arg_0.c)), ~(~(~2344u)));
    var_1 = vec3<u32>(54116u, 57830u, ~92652u);
    var var_2 = _wgslsmith_f_op_vec2_f32(func_4(arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())), arg_0));
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(trunc(arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * 570f))), -951f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -544f)))))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3.x, -237f, -996f, arg_0.d.b.x))));
    return select(vec4<bool>(true, !arg_2.x, !(1i != reverseBits(u_input.c.x)), all(!(!arg_1.d.a.wxy))), arg_1.d.a, vec4<bool>(!all(arg_1.d.a.wwx), !arg_2.x, all(arg_0.d.a), false != any(vec3<bool>(arg_0.d.a.x, false, false))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(arg_2.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, 1000f, _wgslsmith_f_op_f32(-arg_2.b.x), arg_0.a))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = arg_0.d;
    var_0 = func_5(Struct_2(arg_1.b.x, (2147483647i << (arg_0.c % 32u)) > max(reverseBits(0i), min(u_input.a, -1i)), arg_0.c, Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, var_0.b.x, arg_0.d.b.x, 1258f))))), _wgslsmith_mod_u32(49162u, arg_0.c), Struct_1(select(vec4<bool>(false, true & arg_0.b, false, any(vec4<bool>(true, arg_0.d.a.x, true, arg_1.a.x))), func_2(Struct_2(-336f, true, u_input.b.x, arg_0.d), arg_0, vec2<bool>(arg_1.a.x, true), var_0.b.xy), true), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(-arg_0.d.b.x), _wgslsmith_f_op_f32(round(-450f)), -354f) - arg_1.b)));
    let var_1 = arg_0;
    var_0 = func_5(var_1, arg_0.c, func_5(var_1, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(arg_0.c, arg_0.c)) << (1u % 32u)), var_1.d));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_4(Struct_2(var_1.d.b.x, any(vec2<bool>(true, var_0.a.x)), ~1u, var_1.d), _wgslsmith_div_vec3_f32(arg_1.b.wzy, _wgslsmith_f_op_vec3_f32(ceil(var_0.b.zwz))), arg_0)).x), true, 0u, arg_1);
    return _wgslsmith_mod_u32(countOneBits(_wgslsmith_clamp_u32(4294967295u, ~0u << (arg_0.c % 32u), countOneBits(~var_2.c))), 23933u);
}

fn func_6(arg_0: u32, arg_1: f32) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(438f + -1435f) + _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(823f * -479f))), all(select(vec4<bool>(all(vec4<bool>(true, false, false, false)), true, all(vec2<bool>(true, true)), false), vec4<bool>(any(vec2<bool>(true, false)), false, true, true), false)), ~18543u, func_5(Struct_2(_wgslsmith_div_f32(var_0, var_0), !any(vec3<bool>(true, false, false)), select(firstTrailingBit(0u), u_input.b.x, true), func_5(Struct_2(arg_1, false, 0u, Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(var_0, -1067f, -270f, var_0))), countOneBits(arg_0), Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(1446f, 1000f, -2936f, -536f)))), arg_0, func_5(Struct_2(_wgslsmith_f_op_f32(sign(345f)), any(vec2<bool>(true, false)), u_input.b.x | 0u, Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(var_0, -1579f, var_0, -408f))), abs(52291u), func_5(Struct_2(arg_1, false, u_input.b.x, Struct_1(vec4<bool>(true, false, true, true), vec4<f32>(arg_1, -1000f, -977f, arg_1))), 0u, func_5(Struct_2(-526f, false, 0u, Struct_1(vec4<bool>(false, true, true, false), vec4<f32>(var_0, var_0, 514f, -979f))), 4294967295u, Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(908f, var_0, 784f, arg_1)))))));
    let var_2 = false;
    var var_3 = _wgslsmith_f_op_f32(274f + var_0);
    var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1749f);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_u32(~u_input.b, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b) ^ ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 5129u), vec3<u32>(4294967295u, 0u, u_input.b.x)), ~firstLeadingBit(u_input.b.x >> (u_input.b.x % 32u))));
    var_0 = u_input.b;
    var_0 = _wgslsmith_add_vec2_u32(u_input.b, _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(4294967295u, var_0.x)));
    let var_1 = func_6(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(var_0.x, var_0.x), u_input.b.x, var_0.x, func_1(Struct_2(-562f, false, 29112u, Struct_1(vec4<bool>(true, false, false, true), vec4<f32>(941f, 787f, 900f, 1000f))), Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(377f, 471f, -1441f, -718f)))), vec4<u32>(0u, 20558u, 0u, u_input.b.x)), u_input.b.x), _wgslsmith_f_op_f32(1f + -115f));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-var_1.d.b.x), true, _wgslsmith_div_u32(~14041u, _wgslsmith_dot_vec3_u32(max(_wgslsmith_mod_vec3_u32(vec3<u32>(43680u, var_0.x, var_0.x), vec3<u32>(4294967295u, 1u, var_0.x)), _wgslsmith_mult_vec3_u32(vec3<u32>(78686u, 4294967295u, 22832u), vec3<u32>(9433u, 62020u, var_1.c))), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.c, u_input.b.x, 1u), firstLeadingBit(vec3<u32>(var_1.c, u_input.b.x, 47512u))))), func_6(17154u, var_1.a).d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.x, firstTrailingBit(~reverseBits(var_2.c)), var_2.c));
}

