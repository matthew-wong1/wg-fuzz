struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    var var_0 = Struct_2(arg_0.a);
    var var_1 = select(vec2<bool>(select(!any(vec3<bool>(true, false, false)), all(vec3<bool>(true, true, false)), true), any(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), true), all(vec4<bool>(true, true, false, true))))), select(!vec2<bool>(all(vec3<bool>(false, false, false)), true), vec2<bool>(any(vec2<bool>(true, true)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true))), any(vec2<bool>(true, all(vec2<bool>(false, false))))), true);
    let var_2 = firstLeadingBit(u_input.a.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-850f, 1099f, true)), _wgslsmith_f_op_f32(f32(-1f) * -486f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(367f + -2667f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1325f, 1122f, -916f), vec3<f32>(215f, 278f, 515f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(762f, -793f, -1702f)))))));
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(911f, 420f, var_3.x)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_3.x, var_3.x, -807f))), true)) + vec3<f32>(-323f, 1498f, var_3.x)));
    return select(select(vec3<bool>(true, false != (var_2 == 0i), false), vec3<bool>(!any(vec3<bool>(false, true, false)), all(vec3<bool>(var_1.x, false, var_1.x)), !(var_2 != 2147483647i)), vec3<bool>(var_1.x, var_1.x, true)), vec3<bool>(var_1.x, var_1.x, var_1.x), true);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32) -> Struct_2 {
    let var_0 = !(!(!any(select(vec2<bool>(true, false), vec2<bool>(true, false), false))));
    var var_1 = _wgslsmith_f_op_vec4_f32(arg_1 + arg_1);
    let var_2 = any(select(!(!(!vec3<bool>(var_0, var_0, true))), select(!(!vec3<bool>(var_0, var_0, true)), vec3<bool>(!var_0, false, var_1.x <= 933f), !(!vec3<bool>(var_0, var_0, var_0))), func_3(Struct_2(arg_0))));
    let var_3 = Struct_3(arg_0, !vec2<bool>(var_0, !(!var_2)));
    var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(325f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-214f, var_1.x, var_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), arg_2), true)), -795f, -2739f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(arg_2 * 427f)), var_1.x, 1267f, _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(select(-406f, arg_2, var_2))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-1708f)), -2495f, 505f, 399f)), vec4<bool>(false, true, true, var_3.b.x)))));
    return Struct_2(var_3.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: vec2<u32>) -> Struct_3 {
    var var_0 = true;
    var_0 = func_3(Struct_2(func_2(Struct_1(arg_3.x, _wgslsmith_add_u32(1u, arg_1.a.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(338f, -138f, -1821f, -408f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1306f, 2273f, -1266f, -262f))), 682f).a)).x;
    var var_1 = arg_0.a;
    var_0 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-426f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -582f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(162f, -249f)) * _wgslsmith_f_op_f32(max(1162f, 321f))), true)), 1f));
    return Struct_3(func_2(func_2(arg_1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<f32>(var_2.x, -393f, -2131f, var_2.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(var_2.x, 685f, 258f, var_2.x), vec4<f32>(-432f, -477f, var_2.x, -1000f))), -139f).a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1179f, var_2.x, -1636f, var_2.x)) + vec4<f32>(-1090f, var_2.x, var_2.x, 459f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(2125f, 790f, var_2.x, var_2.x))), -191f).a, vec2<bool>(true, var_2.x <= _wgslsmith_f_op_f32(min(1773f, 168f))));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    return func_4(Struct_2(Struct_1(~arg_3.a.a, arg_3.a.b)), func_2(Struct_1(arg_3.a.a, 0u), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -905f))), -594f, _wgslsmith_f_op_f32(step(-324f, -1061f)), 1f), _wgslsmith_f_op_f32(-1f)), select(-(~_wgslsmith_add_i32(-36301i, -31231i)), countOneBits(arg_0), true), countOneBits(~vec2<u32>(arg_3.a.a >> (arg_3.a.a % 32u), 131206u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32) -> u32 {
    var var_0 = func_2(func_2(arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1013f, -1000f, -1128f, _wgslsmith_div_f32(-1510f, 1000f)) * vec4<f32>(1054f, _wgslsmith_f_op_f32(max(604f, -841f)), _wgslsmith_div_f32(-337f, -522f), -1017f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1009f) - 1111f)).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(254f, 683f, 213f, -534f))))), -555f);
    var var_1 = 45742i | (reverseBits(21290i) ^ _wgslsmith_div_i32(~_wgslsmith_mod_i32(-64858i, 23623i), -33340i >> (arg_1.a.a % 32u)));
    var var_2 = countOneBits(vec4<i32>(-u_input.a.x, u_input.a.x, abs(max(4893i, ~u_input.a.x)), max(-1i, _wgslsmith_sub_i32(u_input.a.x, -37207i))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(702f, -884f) - vec2<f32>(723f, 1763f))))) * vec2<f32>(_wgslsmith_f_op_f32(step(-179f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 627f) - _wgslsmith_f_op_f32(round(-181f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1794f - -2936f), _wgslsmith_f_op_f32(-153f * 194f)))));
    var var_4 = !select(vec3<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(false, arg_1.b.x, arg_1.b.x), arg_1.b.x)), func_4(Struct_2(arg_1.a), Struct_2(Struct_1(82343u, arg_2)), 1i, vec2<u32>(arg_0.a, var_0.a.a)).b.x & true, any(select(vec4<bool>(arg_1.b.x, arg_1.b.x, true, arg_1.b.x), vec4<bool>(arg_1.b.x, false, false, true), vec4<bool>(false, false, true, true)))), select(vec3<bool>(arg_1.b.x & false, any(vec2<bool>(arg_1.b.x, true)), arg_1.b.x), select(vec3<bool>(false, false, true), !vec3<bool>(true, arg_1.b.x, true), arg_1.b.x), vec3<bool>(var_3.x <= -1116f, arg_1.b.x && arg_1.b.x, true)), ~_wgslsmith_div_u32(25460u, arg_0.b) < _wgslsmith_add_u32(~arg_0.b, arg_1.a.a));
    return arg_1.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u < _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~999u, _wgslsmith_mult_u32(8232u, 1u)), func_5(Struct_1(1u, 27443u), func_1(16817i, false, false, Struct_2(Struct_1(26873u, 1u))), _wgslsmith_div_u32(0u, 17293u))), func_5(func_2(Struct_1(54666u, 4294967295u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-815f, 556f, 259f, 1095f) * vec4<f32>(392f, -1000f, -965f, -330f)), -667f).a, Struct_3(func_2(Struct_1(0u, 13054u), vec4<f32>(-358f, 1837f, 1586f, -352f), -289f).a, vec2<bool>(true, true)), 0u));
    let var_1 = func_2(Struct_1(0u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(1u, 29432u)), 53234u)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -873f)), _wgslsmith_f_op_f32(f32(-1f) * -771f))), 1f, -2626f, 413f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -572f) - _wgslsmith_f_op_f32(select(-659f, 655f, var_0)))))));
    var var_2 = _wgslsmith_f_op_f32(-799f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-508f, _wgslsmith_f_op_f32(f32(-1f) * -689f), any(vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(sign(-515f)))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(select(-2420f, 2916f, any(select(func_3(Struct_2(Struct_1(var_1.a.a, var_1.a.a))), !vec3<bool>(var_0, var_0, true), any(vec2<bool>(var_0, true)))))), -1375f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_1.a.a, ~var_1.a.b | abs(var_1.a.a)), var_1.a.a << (~_wgslsmith_div_u32(var_1.a.a, 1u) % 32u)), _wgslsmith_sub_i32(u_input.a.x, 7532i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -903f, var_3.x, var_3.x)))))), -vec3<i32>(-countOneBits(22836i), -(~0i), u_input.a.x), vec3<i32>(_wgslsmith_mod_i32(~1i, _wgslsmith_mult_i32(u_input.a.x, -u_input.a.x)), ~select(countOneBits(u_input.a.x), 0i, var_0), u_input.a.x));
}

